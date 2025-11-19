@interface StateOfMindOverlayContext
- (_TtC14MentalHealthUI25StateOfMindOverlayContext)init;
- (id)contextItemForLastUpdate;
- (id)sampleTypeForDateRangeUpdates;
- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7;
@end

@implementation StateOfMindOverlayContext

- (id)sampleTypeForDateRangeUpdates
{
  sub_2589F4488(0, &unk_27F96EBB0, 0x277CCDA38);
  v2 = [swift_getObjCClassFromMetadata() stateOfMindType];

  return v2;
}

- (void)updateContextItemForDateInterval:(id)a3 overlayController:(id)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7
{
  v11 = sub_258AFFBC4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(a7);
  sub_258AFFB94();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = a4;
  v19 = self;
  sub_258A308BC(v15, a5, sub_258A30F84, v17);

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
    v5 = self;
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