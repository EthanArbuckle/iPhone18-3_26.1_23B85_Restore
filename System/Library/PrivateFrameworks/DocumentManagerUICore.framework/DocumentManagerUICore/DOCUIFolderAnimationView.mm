@interface DOCUIFolderAnimationView
- (_TtC21DocumentManagerUICore24DOCUIFolderAnimationView)initWithCoder:(id)coder;
- (_TtC21DocumentManagerUICore24DOCUIFolderAnimationView)initWithFrame:(CGRect)frame;
@end

@implementation DOCUIFolderAnimationView

- (_TtC21DocumentManagerUICore24DOCUIFolderAnimationView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sub_249D04B2C();
  sub_249D04B1C();
  sub_249D04ADC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for DOCUIFolderAnimationView();
  height = [(DOCUIFolderAnimationView *)&v10 initWithFrame:x, y, width, height];

  return height;
}

- (_TtC21DocumentManagerUICore24DOCUIFolderAnimationView)initWithCoder:(id)coder
{
  sub_249D04B2C();
  sub_249D04B1C();
  sub_249D04ADC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_249D04CDC();
  __break(1u);
  return result;
}

@end