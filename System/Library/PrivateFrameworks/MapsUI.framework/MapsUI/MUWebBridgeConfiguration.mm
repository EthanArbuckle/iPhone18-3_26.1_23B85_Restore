@interface MUWebBridgeConfiguration
- (BOOL)isEqual:(id)equal;
- (MUWebBridgeConfiguration)initWithNativeControllerName:(id)name webControllerName:(id)controllerName bridgeVersion:(id)version;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation MUWebBridgeConfiguration

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      nativeControllerName = [(MUWebBridgeConfiguration *)v5 nativeControllerName];
      nativeControllerName2 = [(MUWebBridgeConfiguration *)self nativeControllerName];
      if ([nativeControllerName isEqualToString:nativeControllerName2])
      {
        webControllerName = [(MUWebBridgeConfiguration *)v5 webControllerName];
        webControllerName2 = [(MUWebBridgeConfiguration *)self webControllerName];
        if ([webControllerName isEqualToString:webControllerName2])
        {
          bridgeVersion = [(MUWebBridgeConfiguration *)v5 bridgeVersion];
          bridgeVersion2 = [(MUWebBridgeConfiguration *)self bridgeVersion];
          v12 = [bridgeVersion isEqualToString:bridgeVersion2];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  nativeControllerName = [(MUWebBridgeConfiguration *)self nativeControllerName];
  v4 = [nativeControllerName hash];
  webControllerName = [(MUWebBridgeConfiguration *)self webControllerName];
  v6 = [webControllerName hash] ^ v4;
  bridgeVersion = [(MUWebBridgeConfiguration *)self bridgeVersion];
  v8 = [bridgeVersion hash];

  return v6 ^ v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  nativeControllerName = self->_nativeControllerName;
  webControllerName = self->_webControllerName;
  bridgeVersion = self->_bridgeVersion;

  return [v4 initWithNativeControllerName:nativeControllerName webControllerName:webControllerName bridgeVersion:bridgeVersion];
}

- (MUWebBridgeConfiguration)initWithNativeControllerName:(id)name webControllerName:(id)controllerName bridgeVersion:(id)version
{
  nameCopy = name;
  controllerNameCopy = controllerName;
  versionCopy = version;
  v19.receiver = self;
  v19.super_class = MUWebBridgeConfiguration;
  v11 = [(MUWebBridgeConfiguration *)&v19 init];
  if (v11)
  {
    v12 = [versionCopy copy];
    bridgeVersion = v11->_bridgeVersion;
    v11->_bridgeVersion = v12;

    v14 = [nameCopy copy];
    nativeControllerName = v11->_nativeControllerName;
    v11->_nativeControllerName = v14;

    v16 = [controllerNameCopy copy];
    webControllerName = v11->_webControllerName;
    v11->_webControllerName = v16;
  }

  return v11;
}

@end