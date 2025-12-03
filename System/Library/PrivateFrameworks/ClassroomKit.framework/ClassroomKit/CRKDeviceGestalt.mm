@interface CRKDeviceGestalt
- (CRKDeviceGestalt)initWithCoder:(id)coder;
- (CRKDeviceGestalt)initWithDevice:(id)device;
- (CRKDeviceGestalt)initWithPlatform:(unint64_t)platform systemVersion:(id)version;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKDeviceGestalt

- (CRKDeviceGestalt)initWithPlatform:(unint64_t)platform systemVersion:(id)version
{
  versionCopy = version;
  v12.receiver = self;
  v12.super_class = CRKDeviceGestalt;
  v7 = [(CRKDeviceGestalt *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_platform = platform;
    v9 = [versionCopy copy];
    systemVersion = v8->_systemVersion;
    v8->_systemVersion = v9;
  }

  return v8;
}

- (CRKDeviceGestalt)initWithDevice:(id)device
{
  deviceCopy = device;
  platform = [deviceCopy platform];
  systemVersion = [deviceCopy systemVersion];

  v7 = [(CRKDeviceGestalt *)self initWithPlatform:platform systemVersion:systemVersion];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:{-[CRKDeviceGestalt platform](self, "platform")}];
  [coderCopy encodeObject:v6 forKey:@"platform"];

  systemVersion = [(CRKDeviceGestalt *)self systemVersion];
  [coderCopy encodeObject:systemVersion forKey:@"systemVersion"];
}

- (CRKDeviceGestalt)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CRKDeviceGestalt;
  v5 = [(CRKDeviceGestalt *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"platform"];
    v5->_platform = [v6 unsignedIntegerValue];

    v7 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"systemVersion"];
    systemVersion = v5->_systemVersion;
    v5->_systemVersion = v8;
  }

  return v5;
}

@end