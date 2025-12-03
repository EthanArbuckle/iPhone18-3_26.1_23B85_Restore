@interface LACUIAngelConnectionListenerProvider
- (_TtC25LocalAuthenticationCoreUI36LACUIAngelConnectionListenerProvider)init;
- (id)makeConnectionListener;
@end

@implementation LACUIAngelConnectionListenerProvider

- (_TtC25LocalAuthenticationCoreUI36LACUIAngelConnectionListenerProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)makeConnectionListener
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC25LocalAuthenticationCoreUI36LACUIAngelConnectionListenerProvider_domainName);
  v4 = *&self->domainName[OBJC_IVAR____TtC25LocalAuthenticationCoreUI36LACUIAngelConnectionListenerProvider_domainName];
  v5 = *(&self->super.isa + OBJC_IVAR____TtC25LocalAuthenticationCoreUI36LACUIAngelConnectionListenerProvider_protocolServiceName);
  v6 = *&self->domainName[OBJC_IVAR____TtC25LocalAuthenticationCoreUI36LACUIAngelConnectionListenerProvider_protocolServiceName];
  v7 = objc_allocWithZone(MEMORY[0x277D24130]);
  selfCopy = self;
  v9 = MEMORY[0x259C58D00](v3, v4);
  v10 = MEMORY[0x259C58D00](v5, v6);
  v11 = [v7 initWithDomainName:v9 protocolServiceName:v10];

  return v11;
}

@end