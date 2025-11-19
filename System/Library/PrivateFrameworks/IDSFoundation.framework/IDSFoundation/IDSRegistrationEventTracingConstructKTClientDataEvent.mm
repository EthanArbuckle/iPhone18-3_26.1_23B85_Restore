@interface IDSRegistrationEventTracingConstructKTClientDataEvent
- (IDSRegistrationEventTracingConstructKTClientDataEvent)init;
- (IDSRegistrationEventTracingConstructKTClientDataEvent)initWithRegisterID:(id)a3;
@end

@implementation IDSRegistrationEventTracingConstructKTClientDataEvent

- (IDSRegistrationEventTracingConstructKTClientDataEvent)initWithRegisterID:(id)a3
{
  v4 = sub_1A7E22290();
  v5 = self + OBJC_IVAR___IDSRegistrationEventTracingConstructKTClientDataEvent_name;
  strcpy(self + OBJC_IVAR___IDSRegistrationEventTracingConstructKTClientDataEvent_name, "KT Client Data");
  v5[15] = -18;
  v6 = (self + OBJC_IVAR___IDSRegistrationEventTracingConstructKTClientDataEvent_registerID);
  *v6 = v4;
  v6[1] = v7;
  v9.receiver = self;
  v9.super_class = type metadata accessor for IDSRegistrationEventTracingConstructKTClientDataEvent();
  return [(IDSRegistrationEventTracingConstructKTClientDataEvent *)&v9 init];
}

- (IDSRegistrationEventTracingConstructKTClientDataEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end