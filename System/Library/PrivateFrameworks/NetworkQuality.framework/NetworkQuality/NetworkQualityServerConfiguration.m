@interface NetworkQualityServerConfiguration
- (NetworkQualityServerConfiguration)init;
@end

@implementation NetworkQualityServerConfiguration

- (NetworkQualityServerConfiguration)init
{
  v3.receiver = self;
  v3.super_class = NetworkQualityServerConfiguration;
  result = [(NetworkQualityServerConfiguration *)&v3 init];
  if (result)
  {
    *&result->_httpProtocol = 0xFFFFFFFF00000000;
    result->_idleTimeoutSeconds = 5;
    *&result->_tlsEnabled = 257;
    result->_mirrorServerIP = 0;
    result->_networkServiceType = 0;
  }

  return result;
}

@end