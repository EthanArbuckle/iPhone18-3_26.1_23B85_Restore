@interface DDSServerConfiguration
- (BOOL)isEqual:(id)equal;
- (DDSServerConfiguration)initWithXPCServiceName:(id)name assertionStorageDirectoryURL:(id)l;
- (unint64_t)hash;
@end

@implementation DDSServerConfiguration

- (DDSServerConfiguration)initWithXPCServiceName:(id)name assertionStorageDirectoryURL:(id)l
{
  nameCopy = name;
  lCopy = l;
  v14.receiver = self;
  v14.super_class = DDSServerConfiguration;
  v8 = [(DDSServerConfiguration *)&v14 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    xpcServiceName = v8->_xpcServiceName;
    v8->_xpcServiceName = v9;

    v11 = [lCopy copy];
    assertionStorageDirectoryURL = v8->_assertionStorageDirectoryURL;
    v8->_assertionStorageDirectoryURL = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    xpcServiceName = [(DDSServerConfiguration *)self xpcServiceName];
    xpcServiceName2 = [v6 xpcServiceName];
    if ([xpcServiceName isEqualToString:xpcServiceName2])
    {
      assertionStorageDirectoryURL = [(DDSServerConfiguration *)self assertionStorageDirectoryURL];
      assertionStorageDirectoryURL2 = [v6 assertionStorageDirectoryURL];
      v11 = [assertionStorageDirectoryURL isEqual:assertionStorageDirectoryURL2];
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
  xpcServiceName = [(DDSServerConfiguration *)self xpcServiceName];
  v5 = [xpcServiceName hash];

  assertionStorageDirectoryURL = [(DDSServerConfiguration *)self assertionStorageDirectoryURL];
  v7 = v5 ^ [assertionStorageDirectoryURL hash];

  return v7 ^ v3;
}

@end