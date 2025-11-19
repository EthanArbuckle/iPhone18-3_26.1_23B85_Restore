@interface CNKCallParticipantLabelDescriptorFactory
- (id)callScreeningLabelDescriptorForCall:(id)a3 callCount:(int64_t)a4;
- (id)labelDescriptorWithStringsForCall:(id)a3 callCount:(int64_t)a4 alertAvailable:(BOOL)a5 allowsDuration:(BOOL)a6;
- (id)labelDescriptorWithStringsForCall:(id)a3 callCount:(int64_t)a4 callCenter:(id)a5 alertAvailable:(BOOL)a6 allowsDuration:(BOOL)a7;
- (id)makeLabel;
- (id)makeLabelWithString:(id)a3;
- (id)makeLabelWithString:(id)a3 secondaryString:(id)a4 layoutState:(int64_t)a5;
- (id)organizationNameProvider;
- (void)setOrganizationNameProvider:(id)a3;
@end

@implementation CNKCallParticipantLabelDescriptorFactory

- (id)labelDescriptorWithStringsForCall:(id)a3 callCount:(int64_t)a4 alertAvailable:(BOOL)a5 allowsDuration:(BOOL)a6
{
  v10 = a3;
  v11 = self;
  v12 = CNKCallParticipantLabelDescriptorFactory.labelDescriptor(call:callCount:alertAvailable:allowsDuration:)(v10, a4, a5, a6);

  return v12;
}

- (id)makeLabel
{
  v2 = self;
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

- (void)setOrganizationNameProvider:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  static CallParticipantLabelDescriptor.organizationNameProvider.setter(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned TUCall) -> (@autoreleased NSString?), v5);
}

- (id)makeLabelWithString:(id)a3
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v4 = self;
  v5 = CNKCallParticipantLabelDescriptorFactory.makeLabel(using:)();

  return v5;
}

- (id)makeLabelWithString:(id)a3 secondaryString:(id)a4 layoutState:(int64_t)a5
{
  v6 = a4;
  if (a3)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (v6)
    {
LABEL_3:
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v12;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_6:
  v13 = self;
  v14 = CNKCallParticipantLabelDescriptorFactory.makeLabel(using:secondaryString:layoutState:)(v8, v10, v11, v6, a5);

  return v14;
}

- (id)labelDescriptorWithStringsForCall:(id)a3 callCount:(int64_t)a4 callCenter:(id)a5 alertAvailable:(BOOL)a6 allowsDuration:(BOOL)a7
{
  v12 = a3;
  v13 = a5;
  v14 = self;
  v15 = CNKCallParticipantLabelDescriptorFactory.labelDescriptor(call:callCount:callCenter:alertAvailable:allowsDuration:)(v12, a4, v13, a6, a7);

  return v15;
}

- (id)callScreeningLabelDescriptorForCall:(id)a3 callCount:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  v7 = CNKCallParticipantLabelDescriptorFactory.callScreeningLabelDescriptor(call:callCount:)();

  return v7;
}

@end