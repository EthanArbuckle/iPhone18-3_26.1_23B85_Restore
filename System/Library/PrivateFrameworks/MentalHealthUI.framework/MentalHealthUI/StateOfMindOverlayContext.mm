@interface StateOfMindOverlayContext
- (_TtC14MentalHealthUI25StateOfMindOverlayContext)init;
- (id)contextItemForLastUpdate;
- (id)sampleTypeForDateRangeUpdates;
- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion;
@end

@implementation StateOfMindOverlayContext

- (id)sampleTypeForDateRangeUpdates
{
  sub_2589F4488(0, &unk_27F96EBB0, 0x277CCDA38);
  stateOfMindType = [swift_getObjCClassFromMetadata() stateOfMindType];

  return stateOfMindType;
}

- (void)updateContextItemForDateInterval:(id)interval overlayController:(id)controller timeScope:(int64_t)scope resolution:(int64_t)resolution completion:(id)completion
{
  v11 = sub_258AFFBC4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(completion);
  sub_258AFFB94();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  controllerCopy = controller;
  selfCopy = self;
  sub_258A308BC(v15, scope, sub_258A30F84, v17);

  (*(v12 + 8))(v15, v11);
}

- (id)contextItemForLastUpdate
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem);
  if (v2)
  {
    v3 = *(&self->super.isa + OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem);
  }

  else
  {
    v4 = *((*MEMORY[0x277D85000] & self->super.isa) + 0xC0);
    selfCopy = self;
    v3 = v4(MEMORY[0x277D84F90]);

    v2 = 0;
  }

  v6 = v2;

  return v3;
}

- (_TtC14MentalHealthUI25StateOfMindOverlayContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end