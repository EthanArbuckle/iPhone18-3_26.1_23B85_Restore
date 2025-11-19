@interface BalanceOverlayContext
- (_TtC8HealthUI21BalanceOverlayContext)init;
- (id)contextItemForLastUpdate;
- (id)overlayDisplayTypeForTimeScope:(int64_t)a3;
- (id)sampleTypeForDateRangeUpdates;
- (int64_t)resolutionForTimeScope:(int64_t)a3 traitResolution:(int64_t)a4;
- (void)updateContextItemForDateInterval:(NSDateInterval *)a3 overlayController:(HKInteractiveChartOverlayViewController *)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7;
@end

@implementation BalanceOverlayContext

- (id)sampleTypeForDateRangeUpdates
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 0;
}

- (id)overlayDisplayTypeForTimeScope:(int64_t)a3
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(&self->super.isa + OBJC_IVAR____TtC8HealthUI21BalanceOverlayContext_overlayDisplayType);

  return v4;
}

- (void)updateContextItemForDateInterval:(NSDateInterval *)a3 overlayController:(HKInteractiveChartOverlayViewController *)a4 timeScope:(int64_t)a5 resolution:(int64_t)a6 completion:(id)a7
{
  sub_1C3C5F1F8(0, &qword_1EC085D60, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24 - v14;
  v16 = _Block_copy(a7);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = v16;
  v17[7] = self;
  v18 = sub_1C3D203A4();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1C3D60670;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1C3D60680;
  v20[5] = v19;
  v21 = a3;
  v22 = a4;
  v23 = self;
  sub_1C3C5D2C8(0, 0, v15, &unk_1C3D60690, v20);
}

- (id)contextItemForLastUpdate
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.isa + OBJC_IVAR____TtC8HealthUI21BalanceOverlayContext_currentContextItem);
  if (v3)
  {
    v4 = *(&self->super.isa + OBJC_IVAR____TtC8HealthUI21BalanceOverlayContext_currentContextItem);
  }

  else
  {
    v5 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0xB8);
    v6 = self;
    v4 = v5(MEMORY[0x1E69E7CC0], 0, 1);

    v3 = 0;
  }

  v7 = v3;

  return v4;
}

- (int64_t)resolutionForTimeScope:(int64_t)a3 traitResolution:(int64_t)a4
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 0;
}

- (_TtC8HealthUI21BalanceOverlayContext)init
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end