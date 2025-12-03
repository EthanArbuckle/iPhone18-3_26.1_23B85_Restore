@interface HKAudiogramCurrentValueViewDataSource
- (BOOL)showSeparators;
- (HKAudiogramCurrentValueViewDataSource)init;
- (HKAudiogramCurrentValueViewDataSource)initWithApplicationItems:(id)items;
- (id)dateViewWithOrientation:(int64_t)orientation;
- (id)leftMarginViewWithOrientation:(int64_t)orientation;
- (id)valueViewForColumnAtIndex:(int64_t)index orientation:(int64_t)orientation;
- (int64_t)numberOfValuesForAnnotationView:(id)view;
- (void)updateWithAudiogram:(id)audiogram;
@end

@implementation HKAudiogramCurrentValueViewDataSource

- (HKAudiogramCurrentValueViewDataSource)initWithApplicationItems:(id)items
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.isa + OBJC_IVAR___HKAudiogramCurrentValueViewDataSource____lazy_storage___chartFormatter) = 0;
  *(&self->super.isa + OBJC_IVAR___HKAudiogramCurrentValueViewDataSource_audiogram) = 0;
  *(&self->super.isa + OBJC_IVAR___HKAudiogramCurrentValueViewDataSource_applicationItems) = items;
  *(&self->super.isa + OBJC_IVAR___HKAudiogramCurrentValueViewDataSource_keyValueLabels) = MEMORY[0x1E69E7CC0];
  v8.receiver = self;
  v8.super_class = type metadata accessor for AudiogramCurrentValueViewDataSource();
  itemsCopy = items;
  v6 = [(HKAudiogramCurrentValueViewDataSource *)&v8 init];

  return v6;
}

- (void)updateWithAudiogram:(id)audiogram
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(&self->super.isa + OBJC_IVAR___HKAudiogramCurrentValueViewDataSource_audiogram);
  *(&self->super.isa + OBJC_IVAR___HKAudiogramCurrentValueViewDataSource_audiogram) = audiogram;
  audiogramCopy = audiogram;
  selfCopy = self;

  v7 = audiogramCopy;
  sub_1C3C507C8();
}

- (id)dateViewWithOrientation:(int64_t)orientation
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  v5 = sub_1C3C51E50();

  return v5;
}

- (id)leftMarginViewWithOrientation:(int64_t)orientation
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

- (int64_t)numberOfValuesForAnnotationView:(id)view
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = OBJC_IVAR___HKAudiogramCurrentValueViewDataSource_keyValueLabels;
  swift_beginAccess();
  v5 = *(&self->super.isa + v4);
  if (v5 >> 62)
  {
    v6 = sub_1C3D20964();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6;
}

- (id)valueViewForColumnAtIndex:(int64_t)index orientation:(int64_t)orientation
{
  sub_1C3D20374();
  sub_1C3D20364();
  sub_1C3D20314();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = OBJC_IVAR___HKAudiogramCurrentValueViewDataSource_keyValueLabels;
  result = swift_beginAccess();
  v9 = *(&self->super.isa + v7);
  if ((v9 & 0xC000000000000001) != 0)
  {
    selfCopy = self;

    v16 = MEMORY[0x1C692FEB0](index, v9);

    v12 = v16;
    goto LABEL_7;
  }

  if (index < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) <= index)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v10 = *(v9 + 8 * index + 32);
  selfCopy2 = self;
  v12 = v10;
LABEL_7:
  v13 = orientation == 0;
  v14 = v12;
  [v12 setOrientation_];

  return v14;
}

- (BOOL)showSeparators
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

- (HKAudiogramCurrentValueViewDataSource)init
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