@interface MusicPickerSheetContainerView
- (_TtC14ContinuitySing29MusicPickerSheetContainerView)initWithCoder:(id)coder;
- (_TtC14ContinuitySing29MusicPickerSheetContainerView)initWithFrame:(CGRect)frame;
@end

@implementation MusicPickerSheetContainerView

- (_TtC14ContinuitySing29MusicPickerSheetContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_2442376F4(x, y, width, height);

  return v7;
}

- (_TtC14ContinuitySing29MusicPickerSheetContainerView)initWithCoder:(id)coder
{
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_completionHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_dismissedHandler);
  *v5 = 0;
  v5[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_source) = MEMORY[0x277D84F90];
  v6 = OBJC_IVAR____TtC14ContinuitySing29MusicPickerSheetContainerView_dataSource;
  v7 = type metadata accessor for PickerDataSource();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  sub_244238358();
  *(&self->super.super.super.isa + v6) = v10;
  result = sub_244257E28();
  __break(1u);
  return result;
}

@end