@interface USBDFUUpdater
- (USBDFUUpdater)initWithVendorID:(unsigned __int16)a3 productID:(unsigned __int16)a4 serialNumber:(id)a5 dfuModeActive:(BOOL)a6 simulator:(BOOL)a7;
- (int)closeDfuDevice;
- (int)dfuDetachToAppCmd;
- (int)dfuDnLoadCmd:(unsigned __int16)a3 data:(void *)a4 length:(unsigned __int16)a5;
- (int)dfuGetStateCmd:(char *)a3;
- (int)dfuGetStatusCmd:(DFUStatus *)a3;
- (int)dfuGetVersionCmdMajor:(unsigned int *)a3 minor:(unsigned int *)a4 release:(unsigned int *)a5 build:(unsigned int *)a6;
- (int)dfuSetState:(unsigned __int8)a3;
- (int)dfuSetVersionCmdMajor:(unsigned int)a3 minor:(unsigned int)a4 release:(unsigned int)a5 build:(unsigned int)a6;
- (int)hvciAppDetachToDfuCmd;
- (int)initCurrentState;
- (int)openDfuDevice;
- (int)sendHIDReport:(unsigned int)a3 reportID:(int)a4 report:(char *)a5 length:(int)a6;
- (int)setDfuMode;
@end

@implementation USBDFUUpdater

- (USBDFUUpdater)initWithVendorID:(unsigned __int16)a3 productID:(unsigned __int16)a4 serialNumber:(id)a5 dfuModeActive:(BOOL)a6 simulator:(BOOL)a7
{
  v8 = a6;
  v12 = a5;
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
    v13->_vid = a3;
    v13->_pid = a4;
    v17 = [[NSString alloc] initWithString:v12];
    serialNumber = v13->_serialNumber;
    v13->_serialNumber = v17;

    v13->_dfuMode = v8;
    if (v8)
    {
      [(USBDFUUpdater *)v13 initCurrentState];
    }

    v13->_simulator = a7;
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

- (int)dfuGetStateCmd:(char *)a3
{
  if (!self->_dev)
  {
    return -536870195;
  }

  *a3 = 11;
  v8 = 0;
  v10 = 0;
  v4 = 1441;
  v5 = 0;
  v6 = 1;
  v7 = a3;
  v9 = 0x3E800001388;
  return ((*self->_dev)->DeviceRequestTO)(self->_dev, &v4);
}

- (int)dfuSetState:(unsigned __int8)a3
{
  if (!self->_dev)
  {
    return -536870195;
  }

  v3 = a3;
  if (a3 > 0xAu)
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
  if (v3 <= 2)
  {
    if (v3)
    {
      if (v3 != 1)
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

  if (v3 > 0xA)
  {
    goto LABEL_27;
  }

  if (((1 << v3) & 0x570) != 0)
  {
    return v4;
  }

  if (v3 != 7)
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

- (int)dfuGetStatusCmd:(DFUStatus *)a3
{
  if (!self->_dev)
  {
    return -536870195;
  }

  v5 = 5;
  do
  {
    a3->usableTimeoutMs = 0;
    *&a3->bStatus = 0;
    v15 = 0;
    v17 = 0;
    v11 = 929;
    v12 = 0;
    v13 = 6;
    v14 = a3;
    v16 = 0x3E800001388;
    v6 = ((*self->_dev)->DeviceRequestTO)(self->_dev, &v11);
    v7 = *a3->bwPollTimeout | (a3->bwPollTimeout[2] << 16);
    a3->usableTimeoutMs = v7;
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

- (int)dfuDnLoadCmd:(unsigned __int16)a3 data:(void *)a4 length:(unsigned __int16)a5
{
  dev = self->_dev;
  if (!dev)
  {
    return -536870195;
  }

  v9 = 0;
  v11 = 0;
  v7[0] = 289;
  v7[1] = a3;
  v7[2] = 0;
  v7[3] = a5;
  v8 = a4;
  v10 = 0x3E800001388;
  if (!a5)
  {
    v8 = 0;
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

- (int)dfuSetVersionCmdMajor:(unsigned int)a3 minor:(unsigned int)a4 release:(unsigned int)a5 build:(unsigned int)a6
{
  dev = self->_dev;
  if (!dev)
  {
    return -536870195;
  }

  v11 = 0;
  v13 = 0;
  v8[0] = 2593;
  v8[1] = (a3 << 12) | ((a4 & 0xF) << 8) | (16 * (a5 & 0xF)) | a6 & 0xF;
  v9 = 0;
  v10 = 0;
  v12 = 0x3E800001388;
  return ((*dev)->DeviceRequestTO)(dev, v8);
}

- (int)dfuGetVersionCmdMajor:(unsigned int *)a3 minor:(unsigned int *)a4 release:(unsigned int *)a5 build:(unsigned int *)a6
{
  dev = self->_dev;
  if (!dev)
  {
    return -536870195;
  }

  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  *a6 = 0;
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
    *a3 = v12[0];
    *a4 = v12[1];
    *a5 = v12[2];
    *a6 = v12[3];
  }

  return result;
}

- (int)sendHIDReport:(unsigned int)a3 reportID:(int)a4 report:(char *)a5 length:(int)a6
{
  v9 = IOHIDDeviceCreate(kCFAllocatorDefault, a3);
  if (!v9)
  {
    return -536870212;
  }

  v10 = v9;
  v11 = IOHIDDeviceOpen(v9, 0);
  if (!v11)
  {
    v11 = IOHIDDeviceSetReport(v10, kIOHIDReportTypeFeature, a4, a5, a6);
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

  v4 = [(USBDFUUpdater *)self hvciAppDetachToDfuCmd];
  if (v4)
  {
    v5 = self->_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100015CA8(v5);
    }
  }

  return v4;
}

@end