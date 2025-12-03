@interface USBDFUUpdater
- (USBDFUUpdater)initWithVendorID:(unsigned __int16)d productID:(unsigned __int16)iD serialNumber:(id)number dfuModeActive:(BOOL)active simulator:(BOOL)simulator;
- (int)closeDfuDevice;
- (int)dfuDetachToAppCmd;
- (int)dfuDnLoadCmd:(unsigned __int16)cmd data:(void *)data length:(unsigned __int16)length;
- (int)dfuGetStateCmd:(char *)cmd;
- (int)dfuGetStatusCmd:(DFUStatus *)cmd;
- (int)dfuGetVersionCmdMajor:(unsigned int *)major minor:(unsigned int *)minor release:(unsigned int *)release build:(unsigned int *)build;
- (int)dfuSetState:(unsigned __int8)state;
- (int)dfuSetVersionCmdMajor:(unsigned int)major minor:(unsigned int)minor release:(unsigned int)release build:(unsigned int)build;
- (int)hvciAppDetachToDfuCmd;
- (int)initCurrentState;
- (int)openDfuDevice;
- (int)sendHIDReport:(unsigned int)report reportID:(int)d report:(char *)a5 length:(int)length;
- (int)setDfuMode;
@end

@implementation USBDFUUpdater

- (USBDFUUpdater)initWithVendorID:(unsigned __int16)d productID:(unsigned __int16)iD serialNumber:(id)number dfuModeActive:(BOOL)active simulator:(BOOL)simulator
{
  activeCopy = active;
  numberCopy = number;
  v20.receiver = self;
  v20.super_class = USBDFUUpdater;
  v13 = [(USBDFUUpdater *)&v20 init];
  if (v13)
  {
    v14 = os_log_create("com.apple.accessoryupdater.uarp", "dfuUpdater");
    log = v13->_log;
    v13->_log = v14;

    v16 = v13->_log;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_100015B08(v16);
    }

    v13->_dev = 0;
    v13->_vid = d;
    v13->_pid = iD;
    v17 = [[NSString alloc] initWithString:numberCopy];
    serialNumber = v13->_serialNumber;
    v13->_serialNumber = v17;

    v13->_dfuMode = activeCopy;
    if (activeCopy)
    {
      [(USBDFUUpdater *)v13 initCurrentState];
    }

    v13->_simulator = simulator;
  }

  return v13;
}

- (int)initCurrentState
{
  result = [(USBDFUUpdater *)self openDfuDevice];
  if (!result)
  {
    v4 = [(USBDFUUpdater *)self dfuGetStateCmd:&self->_currentStatus.bState];
    [(USBDFUUpdater *)self closeDfuDevice];
    return v4;
  }

  return result;
}

- (int)openDfuDevice
{
  p_dev = &self->_dev;
  if (!self->_dev)
  {
    v3 = -536870212;
    if (![(USBDFUUpdater *)self dfuMode])
    {
      return v3;
    }

    v5 = [USBDFUUpdater matchingDictionaryForVendorID:self->_vid productId:self->_pid serialNumber:self->_serialNumber];
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v5);
    if (MatchingService)
    {
      v7 = MatchingService;
      theScore = 0;
      theInterface = 0;
      v8 = CFUUIDGetConstantUUIDWithBytes(0, 0x9Du, 0xC7u, 0xB7u, 0x80u, 0x9Eu, 0xC0u, 0x11u, 0xD4u, 0xA5u, 0x4Fu, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
      v9 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
      v10 = IOCreatePlugInInterfaceForService(v7, v8, v9, &theInterface, &theScore);
      if (v10)
      {
        v3 = v10;
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v22 = v3;
          v12 = "Unable to create an intermediate plug-in (%08x)";
LABEL_11:
          _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, v12, buf, 8u);
        }
      }

      else
      {
        v13 = theInterface;
        QueryInterface = (*theInterface)->QueryInterface;
        v15 = CFUUIDGetConstantUUIDWithBytes(0, 0x5Cu, 0x81u, 0x87u, 0xD0u, 0x9Eu, 0xF3u, 0x11u, 0xD4u, 0x8Bu, 0x45u, 0, 0xAu, 0x27u, 5u, 0x28u, 0x61u);
        v16 = CFUUIDGetUUIDBytes(v15);
        v3 = (QueryInterface)(v13, *&v16.byte0, *&v16.byte8, p_dev);
        ((*theInterface)->Release)(theInterface);
        if (!v3)
        {
          v3 = ((**p_dev)->USBDeviceOpen)(*p_dev);
          if (v3)
          {
            v18 = self->_log;
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              *buf = 67109120;
              v22 = v3;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Unable to open device: %08x\n", buf, 8u);
            }

            ((**p_dev)->Release)(*p_dev);
          }

          goto LABEL_12;
        }

        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v22 = v3;
          v12 = "Couldn’t create a device interface (%08x)";
          goto LABEL_11;
        }
      }
    }

LABEL_12:

    return v3;
  }

  return 0;
}

- (int)closeDfuDevice
{
  dev = self->_dev;
  if (dev)
  {
    ((*dev)->USBDeviceClose)(dev, a2);
    ((*self->_dev)->Release)(self->_dev);
    self->_dev = 0;
  }

  return 0;
}

- (int)dfuGetStateCmd:(char *)cmd
{
  if (!self->_dev)
  {
    return -536870195;
  }

  *cmd = 11;
  v8 = 0;
  v10 = 0;
  v4 = 1441;
  v5 = 0;
  v6 = 1;
  cmdCopy = cmd;
  v9 = 0x3E800001388;
  return ((*self->_dev)->DeviceRequestTO)(self->_dev, &v4);
}

- (int)dfuSetState:(unsigned __int8)state
{
  if (!self->_dev)
  {
    return -536870195;
  }

  stateCopy = state;
  if (state > 0xAu)
  {
    return -536870206;
  }

  v6 = [(USBDFUUpdater *)self dfuGetStateCmd:&self->_currentStatus.bState];
  if (v6)
  {
    v4 = v6;
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100015B8C(v4, log);
    }

    return v4;
  }

  v4 = -536870911;
  if (stateCopy <= 2)
  {
    if (stateCopy)
    {
      if (stateCopy != 1)
      {
        bState = self->_currentStatus.bState;
        if (bState == 2)
        {
          return 0;
        }

        else if (bState == 10)
        {
          v10 = self->_log;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v13 = 136315138;
            v14 = "[USBDFUUpdater dfuSetState:]";
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s: Change to kDFU_IDLE through DFU_CLRSTATUS", &v13, 0xCu);
          }

          return -536870212;
        }

        else
        {
          v12 = self->_log;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = 136315138;
            v14 = "[USBDFUUpdater dfuSetState:]";
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s: Change to kDFU_IDLE through DFU_ABORT", &v13, 0xCu);
          }

          v4 = 0;
          self->_currentDataBlock = 0;
        }
      }
    }

    else
    {
      v11 = self->_log;
      if (self->_currentStatus.bState == 2)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v13 = 136315138;
          v14 = "[USBDFUUpdater dfuSetState:]";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s: Change to kAPP_IDLE through DFU_DETACH_TO_APP", &v13, 0xCu);
        }

        return [(USBDFUUpdater *)self dfuDetachToAppCmd];
      }

      else
      {
        v4 = -536870206;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100015C18(&self->_currentStatus.bState, v11);
        }
      }
    }

    return v4;
  }

  if (stateCopy > 0xA)
  {
    goto LABEL_27;
  }

  if (((1 << stateCopy) & 0x570) != 0)
  {
    return v4;
  }

  if (stateCopy != 7)
  {
LABEL_27:
    if (self->_currentStatus.bState == 2)
    {
      return -536870212;
    }

    else
    {
      return -536870206;
    }
  }

  v4 = -536870212;
  if (self->_currentStatus.bState != 6)
  {
    return v4;
  }

  return [(USBDFUUpdater *)self dfuGetStatusCmd:&self->_currentStatus];
}

- (int)dfuGetStatusCmd:(DFUStatus *)cmd
{
  if (!self->_dev)
  {
    return -536870195;
  }

  v5 = 5;
  do
  {
    cmd->usableTimeoutMs = 0;
    *&cmd->bStatus = 0;
    v15 = 0;
    v17 = 0;
    v11 = 929;
    v12 = 0;
    v13 = 6;
    cmdCopy = cmd;
    v16 = 0x3E800001388;
    v6 = ((*self->_dev)->DeviceRequestTO)(self->_dev, &v11);
    v7 = *cmd->bwPollTimeout | (cmd->bwPollTimeout[2] << 16);
    cmd->usableTimeoutMs = v7;
    if (!v6)
    {
      break;
    }

    v8 = v7 < 0x3E8 ? 1 : ((8589935 * v7) >> 32) >> 1;
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Will retry dfuGetStatus in %d second(s)", buf, 8u);
    }

    sleep(v8);
    --v5;
  }

  while (v5);
  return v6;
}

- (int)dfuDnLoadCmd:(unsigned __int16)cmd data:(void *)data length:(unsigned __int16)length
{
  dev = self->_dev;
  if (!dev)
  {
    return -536870195;
  }

  v9 = 0;
  v11 = 0;
  v7[0] = 289;
  v7[1] = cmd;
  v7[2] = 0;
  v7[3] = length;
  dataCopy = data;
  v10 = 0x3E800001388;
  if (!length)
  {
    dataCopy = 0;
  }

  return ((*dev)->DeviceRequestTO)(dev, v7);
}

- (int)dfuDetachToAppCmd
{
  dev = self->_dev;
  if (!dev)
  {
    return -536870195;
  }

  v5 = 0;
  v7 = 0;
  v4[0] = 1825;
  memset(&v4[1], 0, 14);
  v6 = 0x3E800001388;
  return ((*dev)->DeviceRequestTO)(dev, v4);
}

- (int)dfuSetVersionCmdMajor:(unsigned int)major minor:(unsigned int)minor release:(unsigned int)release build:(unsigned int)build
{
  dev = self->_dev;
  if (!dev)
  {
    return -536870195;
  }

  v11 = 0;
  v13 = 0;
  v8[0] = 2593;
  v8[1] = (major << 12) | ((minor & 0xF) << 8) | (16 * (release & 0xF)) | build & 0xF;
  v9 = 0;
  v10 = 0;
  v12 = 0x3E800001388;
  return ((*dev)->DeviceRequestTO)(dev, v8);
}

- (int)dfuGetVersionCmdMajor:(unsigned int *)major minor:(unsigned int *)minor release:(unsigned int *)release build:(unsigned int *)build
{
  dev = self->_dev;
  if (!dev)
  {
    return -536870195;
  }

  *major = 0;
  *minor = 0;
  *release = 0;
  *build = 0;
  v17 = 0;
  v19 = 0;
  v13 = 2977;
  v14 = 0;
  v15 = 4;
  v16 = v12;
  v18 = 0x3E800001388;
  result = ((*dev)->DeviceRequestTO)(dev, &v13);
  if (!result)
  {
    *major = v12[0];
    *minor = v12[1];
    *release = v12[2];
    *build = v12[3];
  }

  return result;
}

- (int)sendHIDReport:(unsigned int)report reportID:(int)d report:(char *)a5 length:(int)length
{
  v9 = IOHIDDeviceCreate(kCFAllocatorDefault, report);
  if (!v9)
  {
    return -536870212;
  }

  v10 = v9;
  v11 = IOHIDDeviceOpen(v9, 0);
  if (!v11)
  {
    v11 = IOHIDDeviceSetReport(v10, kIOHIDReportTypeFeature, d, a5, length);
    IOHIDDeviceClose(v10, 0);
  }

  CFRelease(v10);
  return v11;
}

- (int)hvciAppDetachToDfuCmd
{
  v3 = [USBDFUUpdater matchingDictionaryHIDForVendorID:self->_vid productId:self->_pid serialNumber:self->_serialNumber];
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v3);
  if (MatchingService)
  {
    v5 = MatchingService;
    v8 = 1129054721;
    v6 = [(USBDFUUpdater *)self sendHIDReport:MatchingService reportID:1 report:&v8 length:4];
    IOObjectRelease(v5);
  }

  else
  {
    v6 = -536870212;
  }

  return v6;
}

- (int)setDfuMode
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[USBDFUUpdater setDfuMode]";
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Change to kDFU_IDLE through HVCI_APP_DETACH_TO_DFU", &v7, 0xCu);
  }

  hvciAppDetachToDfuCmd = [(USBDFUUpdater *)self hvciAppDetachToDfuCmd];
  if (hvciAppDetachToDfuCmd)
  {
    v5 = self->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100015CA8(v5);
    }
  }

  return hvciAppDetachToDfuCmd;
}

@end