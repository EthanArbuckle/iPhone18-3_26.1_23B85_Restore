@interface IDSRegistrationEventTracingPNREvent
- (IDSRegistrationEventTracingPNREvent)init;
- (IDSRegistrationEventTracingPNREvent)initWithSimUniqueIdentifier:(id)a3;
@end

@implementation IDSRegistrationEventTracingPNREvent

- (IDSRegistrationEventTracingPNREvent)initWithSimUniqueIdentifier:(id)a3
{
  v4 = sub_1A7E22290();
  v5 = (self + OBJC_IVAR___IDSRegistrationEventTracingPNREvent_name);
  *v5 = 5394000;
  v5[1] = 0xE300000000000000;
  v6 = (self + OBJC_IVAR___IDSRegistrationEventTracingPNREvent_simUniqueIdentifier);
  *v6 = v4;
  v6[1] = v7;
  v9.receiver = self;
  v9.super_class = type metadata accessor for IDSRegistrationEventTracingPNREvent();
  return [(IDSRegistrationEventTracingPNREvent *)&v9 init];
}

- (IDSRegistrationEventTracingPNREvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end