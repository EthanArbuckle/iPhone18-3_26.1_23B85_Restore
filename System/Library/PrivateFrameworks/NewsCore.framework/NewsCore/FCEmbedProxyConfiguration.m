@interface FCEmbedProxyConfiguration
- (FCEmbedProxyConfiguration)initWithDictionary:(id)a3;
@end

@implementation FCEmbedProxyConfiguration

- (FCEmbedProxyConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FCEmbedProxyConfiguration;
  v5 = [(FCEmbedProxyConfiguration *)&v11 init];
  if (v5)
  {
    v6 = FCAppConfigurationStringValue(v4, @"proxyHost", 0);
    proxyHost = v5->_proxyHost;
    v5->_proxyHost = v6;

    v8 = FCAppConfigurationStringValue(v4, @"proxyAutoConfig", 0);
    proxyAutoConfig = v5->_proxyAutoConfig;
    v5->_proxyAutoConfig = v8;

    v5->_usePrivateRelay = [FCFeatureEnablementChecker enabledForCurrentLevel:FCAppConfigurationIntegerValue(v4, @"usePrivateRelay", 0)];
  }

  return v5;
}

@end