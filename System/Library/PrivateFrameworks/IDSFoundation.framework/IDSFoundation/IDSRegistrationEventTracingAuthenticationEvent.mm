@interface IDSRegistrationEventTracingAuthenticationEvent
- (IDSRegistrationEventTracingAuthenticationEvent)init;
- (IDSRegistrationEventTracingAuthenticationEvent)initWithAuthenticationType:(id)type;
@end

@implementation IDSRegistrationEventTracingAuthenticationEvent

- (IDSRegistrationEventTracingAuthenticationEvent)initWithAuthenticationType:(id)type
{
  if (type)
  {
    v4 = sub_1A7E22290();
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E55;
  }

  v6 = self + OBJC_IVAR___IDSRegistrationEventTracingAuthenticationEvent_name;
  strcpy(self + OBJC_IVAR___IDSRegistrationEventTracingAuthenticationEvent_name, "Authentication");
  v6[15] = -18;
  v7 = (self + OBJC_IVAR___IDSRegistrationEventTracingAuthenticationEvent_authenticationType);
  *v7 = v4;
  v7[1] = v5;
  v9.receiver = self;
  v9.super_class = type metadata accessor for IDSRegistrationEventTracingAuthenticationEvent();
  return [(IDSRegistrationEventTracingAuthenticationEvent *)&v9 init];
}

- (IDSRegistrationEventTracingAuthenticationEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end