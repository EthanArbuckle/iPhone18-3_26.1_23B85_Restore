@interface CNKCallParticipantLabelDescriptorFactory
- (id)callScreeningLabelDescriptorForCall:(id)call callCount:(int64_t)count;
- (id)labelDescriptorWithStringsForCall:(id)call callCount:(int64_t)count alertAvailable:(BOOL)available allowsDuration:(BOOL)duration;
- (id)labelDescriptorWithStringsForCall:(id)call callCount:(int64_t)count callCenter:(id)center alertAvailable:(BOOL)available allowsDuration:(BOOL)duration;
- (id)makeLabel;
- (id)makeLabelWithString:(id)string;
- (id)makeLabelWithString:(id)string secondaryString:(id)secondaryString layoutState:(int64_t)state;
- (id)organizationNameProvider;
- (void)setOrganizationNameProvider:(id)provider;
@end

@implementation CNKCallParticipantLabelDescriptorFactory

- (id)labelDescriptorWithStringsForCall:(id)call callCount:(int64_t)count alertAvailable:(BOOL)available allowsDuration:(BOOL)duration
{
  callCopy = call;
  selfCopy = self;
  v12 = CNKCallParticipantLabelDescriptorFactory.labelDescriptor(call:callCount:alertAvailable:allowsDuration:)(callCopy, count, available, duration);

  return v12;
}

- (id)makeLabel
{
  selfCopy = self;
  v3 = CNKCallParticipantLabelDescriptorFactory.makeLabel()();

  return v3;
}

- (id)organizationNameProvider
{
  v5[4] = static CallParticipantLabelDescriptor.organizationNameProvider.getter(self, a2);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed (@guaranteed TUCall) -> (@owned String?);
  v5[3] = &block_descriptor_88;
  v3 = _Block_copy(v5);

  return v3;
}

- (void)setOrganizationNameProvider:(id)provider
{
  v4 = _Block_copy(provider);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  static CallParticipantLabelDescriptor.organizationNameProvider.setter(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned TUCall) -> (@autoreleased NSString?), v5);
}

- (id)makeLabelWithString:(id)string
{
  if (string)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  selfCopy = self;
  v5 = CNKCallParticipantLabelDescriptorFactory.makeLabel(using:)();

  return v5;
}

- (id)makeLabelWithString:(id)string secondaryString:(id)secondaryString layoutState:(int64_t)state
{
  secondaryStringCopy = secondaryString;
  if (string)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (secondaryStringCopy)
    {
LABEL_3:
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      secondaryStringCopy = v12;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
    if (secondaryString)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_6:
  selfCopy = self;
  v14 = CNKCallParticipantLabelDescriptorFactory.makeLabel(using:secondaryString:layoutState:)(v8, v10, v11, secondaryStringCopy, state);

  return v14;
}

- (id)labelDescriptorWithStringsForCall:(id)call callCount:(int64_t)count callCenter:(id)center alertAvailable:(BOOL)available allowsDuration:(BOOL)duration
{
  callCopy = call;
  centerCopy = center;
  selfCopy = self;
  v15 = CNKCallParticipantLabelDescriptorFactory.labelDescriptor(call:callCount:callCenter:alertAvailable:allowsDuration:)(callCopy, count, centerCopy, available, duration);

  return v15;
}

- (id)callScreeningLabelDescriptorForCall:(id)call callCount:(int64_t)count
{
  callCopy = call;
  selfCopy = self;
  v7 = CNKCallParticipantLabelDescriptorFactory.callScreeningLabelDescriptor(call:callCount:)();

  return v7;
}

@end