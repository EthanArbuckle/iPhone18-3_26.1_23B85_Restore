@interface INSDeviceInfo
+ (id)newWithBuilder:(id)builder;
- (INSDeviceInfo)initWithAceVersion:(id)version;
- (void)setAceVersion:(id)version;
@end

@implementation INSDeviceInfo

- (void)setAceVersion:(id)version
{
  v4 = [version copy];
  mutableAceVersion = self->_mutableAceVersion;
  self->_mutableAceVersion = v4;

  MEMORY[0x2821F96F8]();
}

- (INSDeviceInfo)initWithAceVersion:(id)version
{
  versionCopy = version;
  v9.receiver = self;
  v9.super_class = INSDeviceInfo;
  v6 = [(INSDeviceInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_aceVersion, version);
  }

  return v7;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v5 = objc_alloc_init(INSDeviceInfo);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v5);
    v6 = [self alloc];
    mutableAceVersion = [(INSDeviceInfo *)v5 mutableAceVersion];
    v8 = [v6 initWithAceVersion:mutableAceVersion];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end