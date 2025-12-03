@interface USBCAccessoryFirmwareUpdater
- (USBCAccessoryFirmwareUpdater)initWithCoder:(id)coder;
- (USBCAccessoryFirmwareUpdater)initWithDeviceClass:(id)class delegate:(id)delegate info:(id *)info options:(id)options;
- (id)buildFirmwareUpdaterObject;
- (id)retrievePlistDeviceEntryFromDeviceClass:(id)class;
- (unsigned)getConnectionForRegistryID:(int64_t *)d;
- (unsigned)getServiceForRegistryID:(int64_t *)d;
- (void)applyFirmwareWithOptions:(id)options;
- (void)attemptErrorRecovery:(id)recovery delegate:(id)delegate;
- (void)bootstrapWithOptions:(id)options;
- (void)dealloc;
- (void)disconnectTimer:(id)timer;
- (void)downloadFirmwareWithOptions:(id)options;
- (void)encodeWithCoder:(id)coder;
- (void)finishWithOptions:(id)options;
- (void)getFWAssetInfo;
- (void)prepareFirmwareWithOptions:(id)options;
- (void)setDelegate:(id)delegate;
@end

@implementation USBCAccessoryFirmwareUpdater

- (void)getFWAssetInfo
{
  v3 = [NSString stringWithUTF8String:"com.apple.MobileAccessoryUpdater.USBCAccessoryUpdaterService"];
  v4 = [NSBundle bundleWithIdentifier:v3];

  if (self->_firmwareAssetProperties)
  {
    if (v4)
    {
LABEL_3:
      resourcePath = [v4 resourcePath];
      [(NSMutableDictionary *)self->_firmwareAssetProperties setObject:resourcePath forKeyedSubscript:@"Firmware Asset Path"];

      goto LABEL_6;
    }
  }

  else
  {
    v6 = +[NSMutableDictionary dictionary];
    firmwareAssetProperties = self->_firmwareAssetProperties;
    self->_firmwareAssetProperties = v6;

    if (v4)
    {
      goto LABEL_3;
    }
  }

  [(NSMutableDictionary *)self->_firmwareAssetProperties setObject:@"/System/Library/PrivateFrameworks/MobileAccessoryUpdater.framework/XPCServices/USBCAccessoryUpdaterService.xpc/Contents/Resources" forKeyedSubscript:@"Firmware Asset Path"];
LABEL_6:

  firmwareUpdater = self->_firmwareUpdater;
  v9 = [(NSMutableDictionary *)self->_firmwareAssetProperties objectForKeyedSubscript:@"Firmware Asset Path"];
  v12 = [(USBCFirmwareUpdater *)firmwareUpdater FirmwareFilename:v9];

  [(FudPluginDelegate *)self->_delegate log:7 format:@"%s - Firmware filename: %@", "[USBCAccessoryFirmwareUpdater getFWAssetInfo]", v12];
  v10 = [NSData dataWithContentsOfFile:v12];
  [(NSMutableDictionary *)self->_firmwareAssetProperties setObject:v10 forKeyedSubscript:@"Firmware Asset File"];
  v11 = [NSNumber numberWithLong:[(USBCFirmwareUpdater *)self->_firmwareUpdater FirmwareFileVersion:v10]];
  [(NSMutableDictionary *)self->_firmwareAssetProperties setObject:v11 forKeyedSubscript:@"Firmware Asset Version"];
}

- (id)buildFirmwareUpdaterObject
{
  selfCopy = self;
  v3 = IORegistryEntryIDMatching([(NSNumber *)self->_registryEntryID unsignedLongLongValue]);
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v3);
  if ([(NSString *)selfCopy->_deviceClass compare:@"com.apple.mau.plugin.usbcupdater.USBCBillboard-HDMI"]&& [(NSString *)selfCopy->_deviceClass compare:@"com.apple.mau.plugin.usbcupdater.USBCBillboard-VGA"])
  {
    if ([(NSString *)selfCopy->_deviceClass compare:@"com.apple.mau.plugin.usbcupdater.ThunderboltType1Switch"]&& [(NSString *)selfCopy->_deviceClass compare:@"com.apple.mau.plugin.usbcupdater.ThunderboltType2Switch"])
    {
      if ([(NSString *)selfCopy->_deviceClass compare:@"com.apple.mau.plugin.usbcupdater.USBCSDCardReader"])
      {
        if ([(NSString *)selfCopy->_deviceClass compare:@"com.apple.mau.plugin.usbcupdater.USBCHDMIAdapter"])
        {
          goto LABEL_11;
        }

        v5 = off_1000242F8;
      }

      else
      {
        v5 = off_100024308;
      }
    }

    else
    {
      v5 = off_100024310;
    }
  }

  else
  {
    v5 = &off_100024318;
  }

  v6 = [objc_alloc(*v5) initWithRegistryEntry:MatchingService andDelegate:selfCopy->_delegate andControllers:selfCopy->_pdControllers];
  firmwareUpdater = selfCopy->_firmwareUpdater;
  selfCopy->_firmwareUpdater = v6;

LABEL_11:
  v8 = &IOCreatePlugInInterfaceForService_ptr;
  if (selfCopy->_firmwareUpdater)
  {
    if ([(NSString *)selfCopy->_deviceClass compare:@"com.apple.mau.plugin.usbcupdater.USBCSDCardReader"]&& [(NSString *)selfCopy->_deviceClass compare:@"com.apple.mau.plugin.usbcupdater.USBCHDMIAdapter"])
    {
      [(USBCAccessoryFirmwareUpdater *)selfCopy getFWAssetInfo];
    }

    v9 = 0;
    v10 = 0;
    v26 = selfCopy;
    while (1)
    {
      v11 = [(USBCFirmwareUpdater *)selfCopy->_firmwareUpdater validateDevice:selfCopy->_installedHardwareFirmwareProperties withFirmware:selfCopy->_firmwareAssetProperties];

      if (!v11)
      {
        break;
      }

      code = [v11 code];
      dictionary = [v8[126] dictionary];
      v14 = v11;
      for (i = v14; ; i = v19)
      {
        v16 = code >> 8;
        if ((code >> 8) <= 0x26 && ((1 << SBYTE1(code)) & 0x4200000800) != 0)
        {
          break;
        }

        userInfo = [i userInfo];
        v19 = [userInfo objectForKeyedSubscript:@"Previous Error Response"];

        if (!v19)
        {
          i = 0;
          break;
        }

        code = [v19 code];
      }

      [dictionary setObject:v14 forKeyedSubscript:@"Previous Error Response"];
      v20 = [NSString stringWithFormat:@"Failed to validate connected device: %@", v26->_deviceClass];
      [dictionary setObject:v20 forKeyedSubscript:@"Notes"];

      v9 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13568 userInfo:dictionary];

      if (v16 <= 0x26 && ((1 << v16) & 0x4200000800) != 0)
      {

        selfCopy = v26;
        v8 = &IOCreatePlugInInterfaceForService_ptr;
        if (v9)
        {
          goto LABEL_34;
        }

        break;
      }

      usleep(0x7A120u);

      ++v10;
      selfCopy = v26;
      v8 = &IOCreatePlugInInterfaceForService_ptr;
      if (v10 == 5)
      {
        if (v9)
        {
          goto LABEL_34;
        }

        break;
      }
    }

    [(USBCFirmwareUpdater *)selfCopy->_firmwareUpdater setDelegate:selfCopy->_delegate];
    [(USBCFirmwareUpdater *)selfCopy->_firmwareUpdater setOverrideFile:@"/var/usbc_updater_override.plist"];
  }

  else
  {
    v21 = +[NSMutableDictionary dictionary];
    v22 = [NSString stringWithFormat:@"Failed to create Firmware Updater for assetType: %@", selfCopy->_deviceClass];
    [v21 setObject:v22 forKeyedSubscript:@"Notes"];

    v9 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:10240 userInfo:v21];

    if (v9)
    {
LABEL_34:
      dictionary2 = [v8[126] dictionary];
      [dictionary2 setObject:v9 forKeyedSubscript:@"Previous Error Response"];
      v24 = [NSError errorWithDomain:@"USBCAccessoryFirmwareUpdater Domain" code:13568 userInfo:dictionary2];

      goto LABEL_37;
    }
  }

  v24 = 0;
LABEL_37:

  return v24;
}

- (void)attemptErrorRecovery:(id)recovery delegate:(id)delegate
{
  recoveryCopy = recovery;
  delegateCopy = delegate;
  v14 = recoveryCopy;
  pdAccess = [(USBCFirmwareUpdater *)self->_firmwareUpdater pdAccess];
  [delegateCopy log:7 format:{@"Entering: %s:%d", "-[USBCAccessoryFirmwareUpdater attemptErrorRecovery:delegate:]", 440}];
  if (v14)
  {
    v9 = v14;
    do
    {
      userInfo = [v9 userInfo];
      [v9 code];
      v11 = [userInfo objectForKeyedSubscript:@"Previous Error Response"];

      v9 = v11;
    }

    while (v11);
  }

  v12 = [(USBCFirmwareUpdater *)self->_firmwareUpdater ExitUpdateMode:1];
  v13 = [pdAccess VerifyEmptyPortAndReset:v14];
  [delegateCopy log:7 format:{@"%s - VerifyEmptyPortAndReset gave: %@", "-[USBCAccessoryFirmwareUpdater attemptErrorRecovery:delegate:]", v13}];
}

- (USBCAccessoryFirmwareUpdater)initWithDeviceClass:(id)class delegate:(id)delegate info:(id *)info options:(id)options
{
  classCopy = class;
  obj = delegate;
  delegateCopy = delegate;
  optionsCopy = options;
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  [delegateCopy log:7 format:{@"Initializing %@ version %s for DeviceClass %@ with options %@", v14, "0.4", classCopy, optionsCopy}];

  v57 = delegateCopy;
  [delegateCopy log:1 format:{@"Device of type %@ detected", classCopy}];
  v15 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/options");
  CFProperty = IORegistryEntryCreateCFProperty(v15, @"boot-args", kCFAllocatorDefault, 0);
  v17 = [CFProperty componentsSeparatedByString:@" "];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v59 objects:v63 count:16];
  if (v18)
  {
    v19 = v18;
    v52 = CFProperty;
    infoCopy = info;
    v54 = optionsCopy;
    v20 = 0;
    v21 = *v60;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v60 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = [*(*(&v59 + 1) + 8 * i) componentsSeparatedByString:@"="];
        v24 = [v23 objectAtIndexedSubscript:0];
        v25 = v24;
        if (v24 && ![v24 compare:@"usbcfuddisable"])
        {
          v26 = [v23 objectAtIndexedSubscript:1];
          v27 = v26;
          if (v26 && [v26 compare:@"0"])
          {
            [v57 log:3 format:{@"%s - USB-C FUD Updates Disabled via boot-arg", "-[USBCAccessoryFirmwareUpdater initWithDeviceClass:delegate:info:options:]"}];
            v20 = 1;
          }
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v59 objects:v63 count:16];
    }

    while (v19);

    info = infoCopy;
    optionsCopy = v54;
    if (v20)
    {
LABEL_30:
      v48 = 0;
      if ([(USBCFirmwareUpdater *)self->_firmwareUpdater updaterOperational])
      {
        goto LABEL_31;
      }

      goto LABEL_34;
    }
  }

  else
  {
  }

  v58.receiver = self;
  v58.super_class = USBCAccessoryFirmwareUpdater;
  v28 = [(USBCAccessoryFirmwareUpdater *)&v58 init];
  self = v28;
  if (!v57 || !classCopy || !v28)
  {
    sub_100011430(v57);
    goto LABEL_30;
  }

  inOptions = v28->_inOptions;
  v28->_inOptions = 0;

  deviceClass = self->_deviceClass;
  self->_deviceClass = 0;

  objc_storeStrong(&self->_delegate, obj);
  outOptions = self->_outOptions;
  self->_outOptions = 0;

  lastState = self->_lastState;
  self->_lastState = 0;

  v33 = [optionsCopy objectForKeyedSubscript:@"IOMatchLaunchServiceID"];
  registryEntryID = self->_registryEntryID;
  self->_registryEntryID = v33;

  v35 = [[NSMutableDictionary alloc] initWithCapacity:10];
  installedHardwareFirmwareProperties = self->_installedHardwareFirmwareProperties;
  self->_installedHardwareFirmwareProperties = v35;

  v37 = [[NSMutableDictionary alloc] initWithCapacity:10];
  firmwareAssetProperties = self->_firmwareAssetProperties;
  self->_firmwareAssetProperties = v37;

  if (!self->_registryEntryID)
  {
    sub_10001140C(v57);
    goto LABEL_30;
  }

  objc_storeStrong(&self->_deviceClass, class);
  [(NSMutableDictionary *)self->_installedHardwareFirmwareProperties setObject:classCopy forKeyedSubscript:@"Hardware Device Class"];
  [(USBCAccessoryFirmwareUpdater *)self setOptions:optionsCopy];
  v39 = [[NSMutableDictionary alloc] initWithCapacity:5];
  v40 = self->_outOptions;
  self->_outOptions = v39;

  delegate = self->_delegate;
  v42 = objc_opt_class();
  v43 = NSStringFromClass(v42);
  classCopy = [NSString stringWithFormat:@"Initializing Plugin %@ for DeviceClass %@", v43, classCopy];
  [(FudPluginDelegate *)delegate log:7 format:classCopy];

  buildFirmwareUpdaterObject = [(USBCAccessoryFirmwareUpdater *)self buildFirmwareUpdaterObject];
  if (buildFirmwareUpdaterObject)
  {
    v48 = buildFirmwareUpdaterObject;
LABEL_34:
    v49 = 0;
    goto LABEL_26;
  }

  v46 = [optionsCopy objectForKey:@"UseDropboxLocation"];
  bOOLValue = [v46 BOOLValue];

  if (bOOLValue)
  {
    [(NSMutableDictionary *)self->_installedHardwareFirmwareProperties setObject:&__kCFBooleanTrue forKey:@"UseDropboxLocation"];
  }

  *info = &off_100027768;
  [v57 log:7 format:{@"%s:\n deviceClass=%@\n registryID=%@", "-[USBCAccessoryFirmwareUpdater initWithDeviceClass:delegate:info:options:]", classCopy, self->_registryEntryID}];
  v48 = 0;
  if ([(USBCFirmwareUpdater *)self->_firmwareUpdater updaterOperational])
  {
    goto LABEL_27;
  }

  v49 = 1;
LABEL_26:
  [v57 log:7 format:{@"%s - returned error: %@", "-[USBCAccessoryFirmwareUpdater initWithDeviceClass:delegate:info:options:]", v48}];
  [(USBCAccessoryFirmwareUpdater *)self attemptErrorRecovery:v48 delegate:v57];
  if ((v49 & 1) == 0)
  {
LABEL_31:
    [v57 log:1 format:{@"Device of type %@ did not meet requirements for update", classCopy}];
    selfCopy = 0;
    goto LABEL_32;
  }

LABEL_27:
  self = self;
  selfCopy = self;
LABEL_32:

  return selfCopy;
}

- (void)setDelegate:(id)delegate
{
  objc_storeStrong(&self->_delegate, delegate);
  delegateCopy = delegate;
  [(USBCFirmwareUpdater *)self->_firmwareUpdater setDelegate:self->_delegate];
}

- (void)bootstrapWithOptions:(id)options
{
  [(USBCAccessoryFirmwareUpdater *)self setOptions:options];
  lastState = self->_lastState;
  self->_lastState = @"Bootstrapping";

  [(FudPluginDelegate *)self->_delegate log:7 format:@"%s - success = %u", "[USBCAccessoryFirmwareUpdater bootstrapWithOptions:]", 1];
  v5 = [(NSMutableDictionary *)self->_installedHardwareFirmwareProperties objectForKeyedSubscript:@"Hardware Device Class"];
  [(FudPluginDelegate *)self->_delegate log:7 format:@"%@ bootstrap was %@", v5, @"successful"];

  if (![(USBCFirmwareUpdater *)self->_firmwareUpdater updaterOperational])
  {
    [(FudPluginDelegate *)self->_delegate log:7 format:@"%s - returned error: %@", "[USBCAccessoryFirmwareUpdater bootstrapWithOptions:]", 0];
    [(USBCAccessoryFirmwareUpdater *)self attemptErrorRecovery:0 delegate:self->_delegate];
  }

  delegate = self->_delegate;

  [(FudPluginDelegate *)delegate didBootstrap:1 info:0 error:0];
}

- (void)downloadFirmwareWithOptions:(id)options
{
  delegate = self->_delegate;
  optionsCopy = options;
  [(FudPluginDelegate *)delegate log:7 format:@"%s options %@", "[USBCAccessoryFirmwareUpdater downloadFirmwareWithOptions:]", optionsCopy];
  [(USBCAccessoryFirmwareUpdater *)self setOptions:optionsCopy];

  lastState = self->_lastState;
  self->_lastState = @"download";

  firmwareUpdater = self->_firmwareUpdater;
  if (objc_opt_respondsToSelector())
  {
    v8 = self->_firmwareUpdater;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100004448;
    v12[3] = &unk_1000244F0;
    v12[4] = self;
    installedHardwareFirmwareProperties = self->_installedHardwareFirmwareProperties;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100004460;
    v11[3] = &unk_1000244C8;
    v11[4] = self;
    v10 = [(USBCFirmwareUpdater *)v8 downloadFirmware:v12 hardware:installedHardwareFirmwareProperties progress:v11];
  }
}

- (void)prepareFirmwareWithOptions:(id)options
{
  delegate = self->_delegate;
  optionsCopy = options;
  [(FudPluginDelegate *)delegate log:7 format:@"%s options %@", "[USBCAccessoryFirmwareUpdater prepareFirmwareWithOptions:]", optionsCopy];
  [(USBCAccessoryFirmwareUpdater *)self setOptions:optionsCopy];

  lastState = self->_lastState;
  self->_lastState = @"prepare";

  firmwareUpdater = self->_firmwareUpdater;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100004590;
  v12[3] = &unk_1000244F0;
  v12[4] = self;
  installedHardwareFirmwareProperties = self->_installedHardwareFirmwareProperties;
  firmwareAssetProperties = self->_firmwareAssetProperties;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000046EC;
  v11[3] = &unk_1000244C8;
  v11[4] = self;
  v10 = [(USBCFirmwareUpdater *)firmwareUpdater prepareFirmware:v12 hardware:installedHardwareFirmwareProperties firmware:firmwareAssetProperties progress:v11];
}

- (void)applyFirmwareWithOptions:(id)options
{
  delegate = self->_delegate;
  optionsCopy = options;
  [(FudPluginDelegate *)delegate log:7 format:@"%s options %@", "[USBCAccessoryFirmwareUpdater applyFirmwareWithOptions:]", optionsCopy];
  [(USBCAccessoryFirmwareUpdater *)self setOptions:optionsCopy];

  lastState = self->_lastState;
  self->_lastState = @"apply";

  firmwareUpdater = self->_firmwareUpdater;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000481C;
  v12[3] = &unk_1000244F0;
  v12[4] = self;
  installedHardwareFirmwareProperties = self->_installedHardwareFirmwareProperties;
  firmwareAssetProperties = self->_firmwareAssetProperties;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004978;
  v11[3] = &unk_1000244C8;
  v11[4] = self;
  v10 = [(USBCFirmwareUpdater *)firmwareUpdater applyFirmware:v12 hardware:installedHardwareFirmwareProperties firmware:firmwareAssetProperties progress:v11];
}

- (void)finishWithOptions:(id)options
{
  delegate = self->_delegate;
  optionsCopy = options;
  [(FudPluginDelegate *)delegate log:7 format:@"%s options %@", "[USBCAccessoryFirmwareUpdater finishWithOptions:]", optionsCopy];
  [(USBCAccessoryFirmwareUpdater *)self setOptions:optionsCopy];

  lastState = self->_lastState;
  self->_lastState = @"finish";

  firmwareUpdater = self->_firmwareUpdater;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100004AA8;
  v12[3] = &unk_1000244F0;
  v12[4] = self;
  installedHardwareFirmwareProperties = self->_installedHardwareFirmwareProperties;
  firmwareAssetProperties = self->_firmwareAssetProperties;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100004C4C;
  v11[3] = &unk_1000244C8;
  v11[4] = self;
  v10 = [(USBCFirmwareUpdater *)firmwareUpdater finishFirmware:v12 hardware:installedHardwareFirmwareProperties firmware:firmwareAssetProperties progress:v11];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = USBCAccessoryFirmwareUpdater;
  [(USBCAccessoryFirmwareUpdater *)&v2 dealloc];
}

- (void)disconnectTimer:(id)timer
{
  timer;
  if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(FudPluginDelegate *)self->_delegate accessoryDisconnected:0];
  }

  _objc_release_x1();
}

- (USBCAccessoryFirmwareUpdater)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = USBCAccessoryFirmwareUpdater;
  v5 = [(USBCAccessoryFirmwareUpdater *)&v24 init];
  if (v5)
  {
    freopen("/tmp/FUD_A119_attempt.txt", "a", __stdoutp);
    freopen("/tmp/FUD_A119_attempt_err.txt", "a", __stderrp);
    delegate = v5->_delegate;
    v5->_delegate = 0;

    v7 = [coderCopy decodeObjectForKey:@"DeviceClass"];
    deviceClass = v5->_deviceClass;
    v5->_deviceClass = v7;

    v9 = [coderCopy decodeObjectForKey:@"Options"];
    inOptions = v5->_inOptions;
    v5->_inOptions = v9;

    v11 = [coderCopy decodeObjectForKey:@"OutOptions"];
    outOptions = v5->_outOptions;
    v5->_outOptions = v11;

    v13 = [coderCopy decodeObjectForKey:@"LastState"];
    lastState = v5->_lastState;
    v5->_lastState = v13;

    v15 = [coderCopy decodeObjectForKey:@"RegistryID"];
    registryEntryID = v5->_registryEntryID;
    v5->_registryEntryID = v15;

    v17 = [coderCopy decodeObjectForKey:@"InstalledHardwareFirmwareProperties"];
    installedHardwareFirmwareProperties = v5->_installedHardwareFirmwareProperties;
    v5->_installedHardwareFirmwareProperties = v17;

    v19 = [coderCopy decodeObjectForKey:@"FirmwareAssetProperties"];
    firmwareAssetProperties = v5->_firmwareAssetProperties;
    v5->_firmwareAssetProperties = v19;

    buildFirmwareUpdaterObject = [(USBCAccessoryFirmwareUpdater *)v5 buildFirmwareUpdaterObject];
    v22 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  inOptions = self->_inOptions;
  coderCopy = coder;
  [coderCopy encodeObject:inOptions forKey:@"Options"];
  [coderCopy encodeObject:self->_outOptions forKey:@"OutOptions"];
  [coderCopy encodeObject:self->_lastState forKey:@"LastState"];
  [coderCopy encodeObject:self->_deviceClass forKey:@"DeviceClass"];
  [coderCopy encodeObject:self->_registryEntryID forKey:@"RegistryID"];
  [coderCopy encodeObject:self->_installedHardwareFirmwareProperties forKey:@"InstalledHardwareFirmwareProperties"];
  [coderCopy encodeObject:self->_firmwareAssetProperties forKey:@"FirmwareAssetProperties"];
}

- (unsigned)getServiceForRegistryID:(int64_t *)d
{
  *d = 0;
  registryEntryID = [(USBCAccessoryFirmwareUpdater *)self registryEntryID];
  v6 = IORegistryEntryIDMatching([registryEntryID unsignedLongLongValue]);

  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v6);
  [(FudPluginDelegate *)self->_delegate log:7 format:@"IOServiceGetMatchingService ioService=%u", MatchingService];
  if (MatchingService)
  {
    properties = 0;
    v8 = IORegistryEntryCreateCFProperties(MatchingService, &properties, kCFAllocatorDefault, 0);
    [(FudPluginDelegate *)self->_delegate log:7 format:@"service=%u retVal=0x%0x properties=%@ ", MatchingService, v8, properties];
    CFRelease(properties);
  }

  else
  {
    *d = 2;
  }

  return MatchingService;
}

- (unsigned)getConnectionForRegistryID:(int64_t *)d
{
  connect = 0;
  *d = 0;
  result = [(USBCAccessoryFirmwareUpdater *)self getServiceForRegistryID:?];
  if (result)
  {
    v6 = result;
    v7 = IOServiceOpen(result, mach_task_self_, 0, &connect);
    [(FudPluginDelegate *)self->_delegate log:7 format:@"IOServiceOpen retVal=0x%0x ioConnection=%u", v7, connect];
    if (v7 || !connect)
    {
      *d = 3;
    }

    IOObjectRelease(v6);
    return connect;
  }

  return result;
}

- (id)retrievePlistDeviceEntryFromDeviceClass:(id)class
{
  classCopy = class;
  v4 = [NSBundle bundleWithIdentifier:@"com.apple.USBCAccessoryFirmwareUpdater"];
  v5 = v4;
  if (!v4)
  {
    firstObject = 0;
    v6 = 0;
    v7 = 0;
LABEL_10:
    classCopy = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v6 = [v4 objectForInfoDictionaryKey:@"MobileAccessoryUpdaterProperties"];
  v7 = [v6 objectForKey:@"MatchingDevices"];
  if (!v7)
  {
    firstObject = 0;
    goto LABEL_10;
  }

  classCopy = [NSPredicate predicateWithFormat:@"DeviceClass = %@", classCopy];
  v9 = [v7 filteredArrayUsingPredicate:classCopy];
  v10 = v9;
  if (v9 && [v9 count])
  {
    firstObject = [v10 firstObject];
  }

  else
  {
    firstObject = 0;
  }

LABEL_6:
  v12 = firstObject;

  return firstObject;
}

@end