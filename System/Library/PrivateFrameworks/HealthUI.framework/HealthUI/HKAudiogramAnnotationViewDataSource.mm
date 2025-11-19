@interface HKAudiogramAnnotationViewDataSource
- (HKAudiogramAnnotationViewDataSource)init;
- (HKAudiogramAnnotationViewDataSource)initWithApplicationItems:(id)a3;
- (id)dateViewWithOrientation:(int64_t)a3;
- (id)leftMarginViewWithOrientation:(int64_t)a3;
- (id)valueViewForColumnAtIndex:(int64_t)a3 orientation:(int64_t)a4;
- (int64_t)numberOfValuesForAnnotationView:(id)a3;
- (void)updateWithPointSelectionContexts:(id)a3 date:(id)a4 isAverage:(BOOL)a5;
@end

@implementation HKAudiogramAnnotationViewDataSource

- (HKAudiogramAnnotationViewDataSource)initWithApplicationItems:(id)a3
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  v5 = sub_1C3C77C68(v4);

  return v5;
}

- (void)updateWithPointSelectionContexts:(id)a3 date:(id)a4 isAverage:(BOOL)a5
{
  v7 = sub_1C3D1E1E4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1C3C27CB4(0, &unk_1EC0866A0);
  v11 = sub_1C3D202B4();
  sub_1C3D1E1A4();
  v12 = *(&self->super.isa + OBJC_IVAR___HKAudiogramAnnotationViewDataSource_applicationItems);
  v13 = self;
  v14 = [v12 dateCache];
  sub_1C3CD78E4(v10, v14, 1);
  v16 = v15;

  v17 = *(&v13->super.isa + OBJC_IVAR___HKAudiogramAnnotationViewDataSource_currentDateView);
  *(&v13->super.isa + OBJC_IVAR___HKAudiogramAnnotationViewDataSource_currentDateView) = v16;

  sub_1C3C77708(v11, a5);
  v19 = v18;

  (*(v8 + 8))(v10, v7);
  *(&v13->super.isa + OBJC_IVAR___HKAudiogramAnnotationViewDataSource_keyValuePairs) = v19;
}

- (id)dateViewWithOrientation:(int64_t)a3
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(&self->super.isa + OBJC_IVAR___HKAudiogramAnnotationViewDataSource_currentDateView);

  return v4;
}

- (id)leftMarginViewWithOrientation:(int64_t)a3
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

- (int64_t)numberOfValuesForAnnotationView:(id)a3
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(&self->super.isa + OBJC_IVAR___HKAudiogramAnnotationViewDataSource_keyValuePairs);
  if (v4 >> 62)
  {
    v5 = sub_1C3D20964();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5;
}

- (id)valueViewForColumnAtIndex:(int64_t)a3 orientation:(int64_t)a4
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  v8 = *(&self->super.isa + OBJC_IVAR___HKAudiogramAnnotationViewDataSource_keyValuePairs);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v14 = self;

    v15 = MEMORY[0x1C692FEB0](a3, v8);

    v11 = v15;
    goto LABEL_7;
  }

  if (a3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a3)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v9 = *(v8 + 8 * a3 + 32);
  v10 = self;
  v11 = v9;
LABEL_7:
  v12 = a4 == 0;
  v13 = v11;
  [v11 setOrientation_];

  return v13;
}

- (HKAudiogramAnnotationViewDataSource)init
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