@interface PKSetupAssistantRequirementsChecker
- (PKSetupAssistantRequirementsChecker)init;
- (PKSetupAssistantRequirementsChecker)initWithTargetDevice:(id)device;
- (id)checkMacRequirementsWithContext:(id)context;
- (id)checkPhoneRequirementsWithContext:(id)context;
@end

@implementation PKSetupAssistantRequirementsChecker

- (PKSetupAssistantRequirementsChecker)initWithTargetDevice:(id)device
{
  *(&self->super.isa + OBJC_IVAR___PKSetupAssistantRequirementsChecker_targetDevice) = device;
  v4.receiver = self;
  v4.super_class = type metadata accessor for SetupAssistantRequirementsChecker();
  swift_unknownObjectRetain();
  return [(PKSetupAssistantRequirementsChecker *)&v4 init];
}

- (id)checkPhoneRequirementsWithContext:(id)context
{
  v5 = objc_allocWithZone(type metadata accessor for ProvisioningRequirementOracle());
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = [v5 init];
  v12 = sub_1AD50F700(context);
  sub_1AD4505BC(&unk_1F2261BF0);
  v8 = sub_1AD50DE88();
  sub_1AD4505BC(v8);
  v9 = sub_1AD4CEF98(v12);

  v10 = sub_1AD4D01E0(v9, context);
  swift_unknownObjectRelease();

  return v10;
}

- (id)checkMacRequirementsWithContext:(id)context
{
  v5 = objc_allocWithZone(type metadata accessor for ProvisioningRequirementOracle());
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = [v5 init];
  v12 = sub_1AD50F700(context);
  sub_1AD4505BC(&unk_1F2261C18);
  v8 = sub_1AD50DE88();
  sub_1AD4505BC(v8);
  v9 = sub_1AD4CEF98(v12);

  v10 = sub_1AD4D01E0(v9, context);
  swift_unknownObjectRelease();

  return v10;
}

- (PKSetupAssistantRequirementsChecker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end