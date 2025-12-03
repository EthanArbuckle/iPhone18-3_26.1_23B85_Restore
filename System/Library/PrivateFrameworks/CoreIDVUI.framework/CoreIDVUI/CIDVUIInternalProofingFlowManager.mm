@interface CIDVUIInternalProofingFlowManager
- (_TtC9CoreIDVUI33CIDVUIInternalProofingFlowManager)init;
- (_TtC9CoreIDVUI33CIDVUIInternalProofingFlowManager)initWithDelegate:(id)delegate externalProofingFlowManager:(id)manager;
- (id)proofingFlowViewController;
- (uint64_t)proofingEligibilityStatus;
- (void)proofingFlowAvailabilityWithCompletionHandler:(id)handler;
- (void)proofingStatusFor:(NSString *)for country:(NSString *)country completionHandler:(id)handler;
- (void)startProofingWithConfiguration:(CIDVUIProofingConfiguration *)configuration completionHandler:(id)handler;
@end

@implementation CIDVUIInternalProofingFlowManager

- (_TtC9CoreIDVUI33CIDVUIInternalProofingFlowManager)initWithDelegate:(id)delegate externalProofingFlowManager:(id)manager
{
  swift_unknownObjectRetain();
  managerCopy = manager;
  v7 = sub_2458CD4A8(delegate, managerCopy);
  swift_unknownObjectRelease();

  return v7;
}

- (void)startProofingWithConfiguration:(CIDVUIProofingConfiguration *)configuration completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = configuration;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_245910D64();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_24591D068;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24591D070;
  v14[5] = v13;
  configurationCopy = configuration;
  selfCopy = self;
  sub_2459090D0(0, 0, v9, &unk_24591D078, v14);
}

- (id)proofingFlowViewController
{
  selfCopy = self;
  sub_2458C75F0();
  v3 = *(&selfCopy->super.isa + OBJC_IVAR____TtC9CoreIDVUI33CIDVUIInternalProofingFlowManager_configuration);
  v4 = sub_2458935AC();

  return v4;
}

- (void)proofingFlowAvailabilityWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_245910D64();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_24591D048;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_24591D050;
  v12[5] = v11;
  selfCopy = self;
  sub_2459090D0(0, 0, v7, &unk_24591D058, v12);
}

- (void)proofingStatusFor:(NSString *)for country:(NSString *)country completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = for;
  v13[3] = country;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_245910D64();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_24591D028;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24591D030;
  v16[5] = v15;
  forCopy = for;
  countryCopy = country;
  selfCopy = self;
  sub_2459090D0(0, 0, v11, &unk_24591CD60, v16);
}

- (_TtC9CoreIDVUI33CIDVUIInternalProofingFlowManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (uint64_t)proofingEligibilityStatus
{
  sub_24590C8C4();
  swift_allocObject();
  sub_24590C8B4();
  if (sub_24590C874())
  {
    v0 = 0;
  }

  else
  {
    v0 = 2;
  }

  if (UIAccessibilityIsSwitchControlRunning() || _AXSAssistiveTouchEnabled() || _AXSCommandAndControlEnabled())
  {
    v0 = 1;
  }

  sub_24590C594();
  initWithUnsignedInteger_ = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  sub_24590C564();

  return v0;
}

@end