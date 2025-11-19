@interface MUWebBridgeConfiguration
- (BOOL)isEqual:(id)a3;
- (MUWebBridgeConfiguration)initWithNativeControllerName:(id)a3 webControllerName:(id)a4 bridgeVersion:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation MUWebBridgeConfiguration

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MUWebBridgeConfiguration *)v5 nativeControllerName];
      v7 = [(MUWebBridgeConfiguration *)self nativeControllerName];
      if ([v6 isEqualToString:v7])
      {
        v8 = [(MUWebBridgeConfiguration *)v5 webControllerName];
        v9 = [(MUWebBridgeConfiguration *)self webControllerName];
        if ([v8 isEqualToString:v9])
        {
          v10 = [(MUWebBridgeConfiguration *)v5 bridgeVersion];
          v11 = [(MUWebBridgeConfiguration *)self bridgeVersion];
          v12 = [v10 isEqualToString:v11];
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
  v3 = [(MUWebBridgeConfiguration *)self nativeControllerName];
  v4 = [v3 hash];
  v5 = [(MUWebBridgeConfiguration *)self webControllerName];
  v6 = [v5 hash] ^ v4;
  v7 = [(MUWebBridgeConfiguration *)self bridgeVersion];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  nativeControllerName = self->_nativeControllerName;
  webControllerName = self->_webControllerName;
  bridgeVersion = self->_bridgeVersion;

  return [v4 initWithNativeControllerName:nativeControllerName webControllerName:webControllerName bridgeVersion:bridgeVersion];
}

- (MUWebBridgeConfiguration)initWithNativeControllerName:(id)a3 webControllerName:(id)a4 bridgeVersion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = MUWebBridgeConfiguration;
  v11 = [(MUWebBridgeConfiguration *)&v19 init];
  if (v11)
  {
    v12 = [v10 copy];
    bridgeVersion = v11->_bridgeVersion;
    v11->_bridgeVersion = v12;

    v14 = [v8 copy];
    nativeControllerName = v11->_nativeControllerName;
    v11->_nativeControllerName = v14;

    v16 = [v9 copy];
    webControllerName = v11->_webControllerName;
    v11->_webControllerName = v16;
  }

  return v11;
}

@end