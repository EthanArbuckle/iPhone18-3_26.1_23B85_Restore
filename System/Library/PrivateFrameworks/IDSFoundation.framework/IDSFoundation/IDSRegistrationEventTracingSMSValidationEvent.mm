@interface IDSRegistrationEventTracingSMSValidationEvent
- (IDSRegistrationEventTracingSMSValidationEvent)init;
- (IDSRegistrationEventTracingSMSValidationEvent)initWithMechanismType:(int64_t)a3;
@end

@implementation IDSRegistrationEventTracingSMSValidationEvent

- (IDSRegistrationEventTracingSMSValidationEvent)initWithMechanismType:(int64_t)a3
{
  v5 = self + OBJC_IVAR___IDSRegistrationEventTracingSMSValidationEvent_name;
  strcpy(self + OBJC_IVAR___IDSRegistrationEventTracingSMSValidationEvent_name, "SMS Validation");
  v5[15] = -18;
  v6 = OBJC_IVAR___IDSRegistrationEventTracingSMSValidationEvent_mechanismType;
  *(self + OBJC_IVAR___IDSRegistrationEventTracingSMSValidationEvent_mechanismType) = 0;
  swift_beginAccess();
  *(self + v6) = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for IDSRegistrationEventTracingSMSValidationEvent();
  return [(IDSRegistrationEventTracingSMSValidationEvent *)&v8 init];
}

- (IDSRegistrationEventTracingSMSValidationEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end