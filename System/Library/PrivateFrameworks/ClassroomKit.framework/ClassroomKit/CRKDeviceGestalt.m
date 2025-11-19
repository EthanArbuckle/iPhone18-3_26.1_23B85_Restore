@interface CRKDeviceGestalt
- (CRKDeviceGestalt)initWithCoder:(id)a3;
- (CRKDeviceGestalt)initWithDevice:(id)a3;
- (CRKDeviceGestalt)initWithPlatform:(unint64_t)a3 systemVersion:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKDeviceGestalt

- (CRKDeviceGestalt)initWithPlatform:(unint64_t)a3 systemVersion:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = CRKDeviceGestalt;
  v7 = [(CRKDeviceGestalt *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_platform = a3;
    v9 = [v6 copy];
    systemVersion = v8->_systemVersion;
    v8->_systemVersion = v9;
  }

  return v8;
}

- (CRKDeviceGestalt)initWithDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 platform];
  v6 = [v4 systemVersion];

  v7 = [(CRKDeviceGestalt *)self initWithPlatform:v5 systemVersion:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithUnsignedInteger:{-[CRKDeviceGestalt platform](self, "platform")}];
  [v5 encodeObject:v6 forKey:@"platform"];

  v7 = [(CRKDeviceGestalt *)self systemVersion];
  [v5 encodeObject:v7 forKey:@"systemVersion"];
}

- (CRKDeviceGestalt)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CRKDeviceGestalt;
  v5 = [(CRKDeviceGestalt *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"platform"];
    v5->_platform = [v6 unsignedIntegerValue];

    v7 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"systemVersion"];
    systemVersion = v5->_systemVersion;
    v5->_systemVersion = v8;
  }

  return v5;
}

@end