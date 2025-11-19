@interface DDSServerConfiguration
- (BOOL)isEqual:(id)a3;
- (DDSServerConfiguration)initWithXPCServiceName:(id)a3 assertionStorageDirectoryURL:(id)a4;
- (unint64_t)hash;
@end

@implementation DDSServerConfiguration

- (DDSServerConfiguration)initWithXPCServiceName:(id)a3 assertionStorageDirectoryURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = DDSServerConfiguration;
  v8 = [(DDSServerConfiguration *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    xpcServiceName = v8->_xpcServiceName;
    v8->_xpcServiceName = v9;

    v11 = [v7 copy];
    assertionStorageDirectoryURL = v8->_assertionStorageDirectoryURL;
    v8->_assertionStorageDirectoryURL = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(DDSServerConfiguration *)self xpcServiceName];
    v8 = [v6 xpcServiceName];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(DDSServerConfiguration *)self assertionStorageDirectoryURL];
      v10 = [v6 assertionStorageDirectoryURL];
      v11 = [v9 isEqual:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = DDSServerConfiguration;
  v3 = [(DDSServerConfiguration *)&v9 hash];
  v4 = [(DDSServerConfiguration *)self xpcServiceName];
  v5 = [v4 hash];

  v6 = [(DDSServerConfiguration *)self assertionStorageDirectoryURL];
  v7 = v5 ^ [v6 hash];

  return v7 ^ v3;
}

@end