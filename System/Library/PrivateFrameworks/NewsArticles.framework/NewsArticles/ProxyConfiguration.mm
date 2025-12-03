@interface ProxyConfiguration
- (BOOL)usePrivateRelay;
- (NSString)proxyAutoConfigScript;
- (NSString)proxyHost;
- (_TtC12NewsArticles18ProxyConfiguration)init;
@end

@implementation ProxyConfiguration

- (BOOL)usePrivateRelay
{
  selfCopy = self;
  v3 = ProxyConfiguration.usePrivateRelay.getter();

  return v3 & 1;
}

- (NSString)proxyAutoConfigScript
{
  selfCopy = self;
  ProxyConfiguration.proxyAutoConfigScript.getter();

  v3 = sub_1D7D3031C();

  return v3;
}

- (NSString)proxyHost
{
  selfCopy = self;
  ProxyConfiguration.proxyHost.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1D7D3031C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_TtC12NewsArticles18ProxyConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end