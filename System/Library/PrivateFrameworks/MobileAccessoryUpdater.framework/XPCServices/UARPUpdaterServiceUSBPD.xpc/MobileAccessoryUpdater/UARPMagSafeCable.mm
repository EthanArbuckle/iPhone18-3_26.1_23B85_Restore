@interface UARPMagSafeCable
+ (BOOL)isActive:(unsigned int)active;
+ (BOOL)needsAuthentication:(unsigned int)authentication;
+ (const)authenticationStatusToString:(int)string;
+ (id)getFirmwareVersionGiven32Bits:(unsigned int)bits;
+ (id)matchingDictionary:(BOOL)dictionary;
+ (id)matchingDictionaryUSBCLightning:(id)lightning launchStream:(BOOL)stream;
+ (id)matchingDictionaryUSBCLightningDisconnectLaunchStream:(BOOL)stream;
+ (int)authenticationStatus:(unsigned int)status;
+ (unint64_t)rid:(unsigned int)rid;
+ (unint64_t)valueForService:(unsigned int)service key:(id)key;
- (BOOL)solicitLogs:(id)logs error:(id *)error;
- (NSNumber)hardwareVersion;
- (NSString)description;
- (UARPMagSafeCable)init;
- (id)activeFwVersion;
- (id)expectedTag;
- (id)modelName;
- (id)queryExpectedPayloadTag;
- (id)queryHardwareVersion;
- (id)querySerialNumber:(id *)number;
- (id)serialNumber;
@end

@implementation UARPMagSafeCable

- (UARPMagSafeCable)init
{
  [(UARPMagSafeCable *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (NSString)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"isActive = <%d>", self->_isActive];
  [v3 appendFormat:@", Router ID = <%lu>", self->_routerID];
  location = self->_location;
  [v3 appendFormat:@", Location = <%s>", UARPAccessoryUSBPDLocationTypeToString()];
  [v3 appendFormat:@", Vendor ID = <0x%lx>", self->_vendorID];
  [v3 appendFormat:@", Product ID = <0x%lx>", self->_productID];
  [v3 appendFormat:@", Needs Auth = <%d>", self->_requiresAuthentication];
  [v3 appendFormat:@", Is Auth'd = <%d>", self->_isAuthenticated];
  [v3 appendFormat:@", Auth Status = <%s>", +[UARPMagSafeCable authenticationStatusToString:](UARPMagSafeCable, "authenticationStatusToString:", self->_authenticationStatus)];
  v5 = [NSString stringWithString:v3];

  return v5;
}

- (id)activeFwVersion
{
  v4 = 0;
  if ([(UARPAppleHPM *)self->_hpm readCFUa:0 remoteEndpoint:1 offset:10240 buffer:v5 bufferLength:24 lengthRead:&v4 error:0])
  {
    v2 = [UARPMagSafeCable getFirmwareVersionGiven32Bits:v5[0]];
  }

  else
  {
    v2 = [[UARPAssetVersion alloc] initWithMajorVersion:0 minorVersion:0 releaseVersion:0 buildVersion:0];
  }

  return v2;
}

- (id)serialNumber
{
  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
    goto LABEL_5;
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Querying serial number", v10, 2u);
  }

  v5 = [(UARPMagSafeCable *)self querySerialNumber:0];
  v6 = self->_serialNumber;
  self->_serialNumber = v5;

  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
LABEL_5:
    v7 = [(NSString *)serialNumber copy];
  }

  else
  {
    v9 = self->_log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10002637C(v9);
    }

    v7 = @"Unknown";
  }

  return v7;
}

- (id)modelName
{
  v2 = [[UARPAccessoryHardwareUSBPD alloc] initWithVendorID:LOWORD(self->_vendorID) productID:LOWORD(self->_productID) usbpdClass:0 locationType:self->_location supportsAccMode7:1];
  v3 = [UARPSupportedAccessory findByHardwareID:v2];
  appleModelNumber = [v3 appleModelNumber];

  return appleModelNumber;
}

- (NSNumber)hardwareVersion
{
  hardwareVersion = self->_hardwareVersion;
  if (hardwareVersion)
  {
    goto LABEL_5;
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "Querying hardware version", v10, 2u);
  }

  queryHardwareVersion = [(UARPMagSafeCable *)self queryHardwareVersion];
  v6 = self->_hardwareVersion;
  self->_hardwareVersion = queryHardwareVersion;

  hardwareVersion = self->_hardwareVersion;
  if (hardwareVersion)
  {
LABEL_5:
    v7 = hardwareVersion;
  }

  else
  {
    v9 = self->_log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000263C0(v9);
    }

    v7 = 0;
  }

  return v7;
}

- (id)queryHardwareVersion
{
  v6 = 0;
  if ([(UARPMagSafeCable *)self accMode7AddressSpaceRead:27 buffer:&v6 + 4 bufferLength:4 lengthRead:&v6 error:0])
  {
    v3 = [NSNumber numberWithUnsignedChar:BYTE6(v6)];
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v8 = "[UARPMagSafeCable queryHardwareVersion]";
      v9 = 1024;
      v10 = 27;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: address space read failed for 0x%x", buf, 0x12u);
    }

    v3 = 0;
  }

  return v3;
}

- (id)querySerialNumber:(id *)number
{
  v5 = objc_alloc_init(NSMutableString);
  v6 = 0;
  v11 = 0;
  while ([(UARPAppleHPM *)self->_hpm readCFUa:0 remoteEndpoint:1 offset:0x2000 buffer:v14 bufferLength:24 lengthRead:&v11 error:number])
  {
    [v5 appendFormat:@"%.*s", v11, v14];
    v6 += v11;
    if (v6 >= 1025)
    {
      log = self->_log;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        sub_100026404(v6, log);
      }

      goto LABEL_10;
    }

    if (v11 != 24)
    {
      v7 = [v5 copy];
      goto LABEL_11;
    }
  }

  v8 = self->_log;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v13 = "[UARPMagSafeCable querySerialNumber:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s: readCFUa failed", buf, 0xCu);
  }

LABEL_10:
  v7 = 0;
LABEL_11:

  return v7;
}

- (id)expectedTag
{
  if (!self->_tagAlreadyQueried)
  {
    queryExpectedPayloadTag = [(UARPMagSafeCable *)self queryExpectedPayloadTag];
    expectedPayloadTag = self->_expectedPayloadTag;
    self->_expectedPayloadTag = queryExpectedPayloadTag;
  }

  v5 = self->_expectedPayloadTag;

  return v5;
}

- (id)queryExpectedPayloadTag
{
  v3 = [[UARPAccessoryHardwareUSBPD alloc] initWithVendorID:LOWORD(self->_vendorID) productID:LOWORD(self->_productID) usbpdClass:0 locationType:self->_location supportsAccMode7:1];
  v4 = [UARPSupportedAccessory findByHardwareID:v3];
  self->_tagAlreadyQueried = 1;

  return 0;
}

- (BOOL)solicitLogs:(id)logs error:(id *)error
{
  hpm = self->_hpm;
  logsCopy = logs;
  modelName = [(UARPMagSafeCable *)self modelName];
  serialNumber = [(UARPMagSafeCable *)self serialNumber];
  LOBYTE(error) = [(UARPAppleHPM *)hpm accMode7SolicitLogs:logsCopy modelName:modelName serialNumber:serialNumber error:error];

  return error;
}

+ (id)matchingDictionary:(BOOL)dictionary
{
  dictionaryCopy = dictionary;
  v4 = IOServiceMatching("IOPortTransportStateCC");
  v5 = objc_alloc_init(NSMutableDictionary);
  [v5 setObject:&off_100041450 forKeyedSubscript:@"TransportType"];
  [v5 setObject:&off_100041468 forKeyedSubscript:@"ParentPortType"];
  [(__CFDictionary *)v4 setObject:v5 forKeyedSubscript:@"IOPropertyMatch"];
  if (dictionaryCopy)
  {
    [(__CFDictionary *)v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"IOMatchLaunchStream"];
    [(__CFDictionary *)v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"IOMatchAll"];
  }

  v6 = [NSDictionary dictionaryWithDictionary:v4];

  return v6;
}

+ (id)matchingDictionaryUSBCLightning:(id)lightning launchStream:(BOOL)stream
{
  streamCopy = stream;
  lightningCopy = lightning;
  v6 = IOServiceMatching("IOPortTransportStateCC");
  v7 = objc_alloc_init(NSMutableDictionary);
  [v7 setObject:&off_100041450 forKeyedSubscript:@"TransportType"];
  [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Active"];
  v8 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [lightningCopy vendorID]);
  [v7 setObject:v8 forKeyedSubscript:@"Vendor ID (SOP)"];

  productID = [lightningCopy productID];
  v10 = [NSNumber numberWithUnsignedShort:productID];
  [v7 setObject:v10 forKeyedSubscript:@"Product ID (SOP)"];

  [(__CFDictionary *)v6 setObject:v7 forKeyedSubscript:@"IOPropertyMatch"];
  if (streamCopy)
  {
    [(__CFDictionary *)v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"IOMatchLaunchStream"];
    [(__CFDictionary *)v6 setObject:&__kCFBooleanTrue forKeyedSubscript:@"IOMatchAll"];
  }

  v11 = [NSDictionary dictionaryWithDictionary:v6];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100026490(v6);
  }

  return v11;
}

+ (id)matchingDictionaryUSBCLightningDisconnectLaunchStream:(BOOL)stream
{
  streamCopy = stream;
  v4 = IOServiceMatching("IOPortTransportStateCC");
  v5 = objc_alloc_init(NSMutableDictionary);
  [v5 setObject:&off_100041450 forKeyedSubscript:@"TransportType"];
  [v5 setObject:&__kCFBooleanFalse forKeyedSubscript:@"Active"];
  [(__CFDictionary *)v4 setObject:v5 forKeyedSubscript:@"IOPropertyMatch"];
  if (streamCopy)
  {
    [(__CFDictionary *)v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"IOMatchLaunchStream"];
    [(__CFDictionary *)v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"IOMatchAll"];
  }

  v6 = [NSDictionary dictionaryWithDictionary:v4];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100026490(v4);
  }

  return v6;
}

+ (BOOL)needsAuthentication:(unsigned int)authentication
{
  CFProperty = IORegistryEntryCreateCFProperty(authentication, @"AuthenticationRequired", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    return 1;
  }

  v4 = CFProperty;
  v5 = CFGetTypeID(CFProperty);
  v6 = v5 != CFBooleanGetTypeID() || CFBooleanGetValue(v4) != 0;
  CFRelease(v4);
  return v6;
}

+ (int)authenticationStatus:(unsigned int)status
{
  valuePtr = 0;
  CFProperty = IORegistryEntryCreateCFProperty(status, @"AuthenticationStatus", kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v4 = CFProperty;
    v5 = CFGetTypeID(CFProperty);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberIntType, &valuePtr);
    }

    CFRelease(v4);
    LODWORD(CFProperty) = valuePtr;
  }

  return CFProperty;
}

+ (unint64_t)valueForService:(unsigned int)service key:(id)key
{
  CFProperty = IORegistryEntryCreateCFProperty(service, key, kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    return -1;
  }

  v5 = CFProperty;
  v6 = CFGetTypeID(CFProperty);
  if (v6 == CFNumberGetTypeID())
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = -1;
  }

  CFRelease(v5);
  return unsignedIntegerValue;
}

+ (unint64_t)rid:(unsigned int)rid
{
  parent = 0;
  if (IORegistryEntryGetParentEntry(rid, "IOService", &parent))
  {
    v3 = 1;
  }

  else
  {
    v3 = parent == 0;
  }

  if (v3)
  {
    return -1;
  }

  object = 0;
  if (IORegistryEntryGetParentEntry(parent, "IOService", &object))
  {
    v5 = 1;
  }

  else
  {
    v5 = object == 0;
  }

  if (v5)
  {
    v4 = -1;
  }

  else
  {
    v4 = [UARPMagSafeCable valueForService:"valueForService:key:" key:?];
    IOObjectRelease(object);
  }

  IOObjectRelease(parent);
  return v4;
}

+ (BOOL)isActive:(unsigned int)active
{
  CFProperty = IORegistryEntryCreateCFProperty(active, @"Active", kCFAllocatorDefault, 0);
  if (!CFProperty)
  {
    return 0;
  }

  v4 = CFProperty;
  v5 = CFGetTypeID(CFProperty);
  v6 = v5 == CFBooleanGetTypeID() && CFBooleanGetValue(v4) != 0;
  CFRelease(v4);
  return v6;
}

+ (const)authenticationStatusToString:(int)string
{
  if (string > 5)
  {
    return "authentication unknown";
  }

  else
  {
    return off_1000407D0[string];
  }
}

+ (id)getFirmwareVersionGiven32Bits:(unsigned int)bits
{
  0xC0000000 = [[UARPAssetVersion alloc] initWithMajorVersion:HIBYTE(bits) & 0x3F minorVersion:BYTE2(bits) releaseVersion:BYTE1(bits) buildVersion:bits & 0xC0000000];

  return 0xC0000000;
}

@end