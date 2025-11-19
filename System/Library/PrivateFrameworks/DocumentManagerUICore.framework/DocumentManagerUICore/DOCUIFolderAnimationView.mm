@interface DOCUIFolderAnimationView
- (_TtC21DocumentManagerUICore24DOCUIFolderAnimationView)initWithCoder:(id)a3;
- (_TtC21DocumentManagerUICore24DOCUIFolderAnimationView)initWithFrame:(CGRect)a3;
@end

@implementation DOCUIFolderAnimationView

- (_TtC21DocumentManagerUICore24DOCUIFolderAnimationView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_249D04B2C();
  sub_249D04B1C();
  sub_249D04ADC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for DOCUIFolderAnimationView();
  v8 = [(DOCUIFolderAnimationView *)&v10 initWithFrame:x, y, width, height];

  return v8;
}

- (_TtC21DocumentManagerUICore24DOCUIFolderAnimationView)initWithCoder:(id)a3
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