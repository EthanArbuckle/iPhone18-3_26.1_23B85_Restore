@interface INSDeviceInfo
+ (id)newWithBuilder:(id)a3;
- (INSDeviceInfo)initWithAceVersion:(id)a3;
- (void)setAceVersion:(id)a3;
@end

@implementation INSDeviceInfo

- (void)setAceVersion:(id)a3
{
  v4 = [a3 copy];
  mutableAceVersion = self->_mutableAceVersion;
  self->_mutableAceVersion = v4;

  MEMORY[0x2821F96F8]();
}

- (INSDeviceInfo)initWithAceVersion:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = INSDeviceInfo;
  v6 = [(INSDeviceInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_aceVersion, a3);
  }

  return v7;
}

+ (id)newWithBuilder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(INSDeviceInfo);
  if (v4)
  {
    v4[2](v4, v5);
    v6 = [a1 alloc];
    v7 = [(INSDeviceInfo *)v5 mutableAceVersion];
    v8 = [v6 initWithAceVersion:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end