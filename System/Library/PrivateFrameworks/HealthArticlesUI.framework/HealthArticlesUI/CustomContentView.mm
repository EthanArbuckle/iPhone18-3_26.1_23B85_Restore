@interface CustomContentView
- (_TtC16HealthArticlesUI17CustomContentView)initWithCoder:(id)coder;
- (_TtC16HealthArticlesUI17CustomContentView)initWithFrame:(CGRect)frame;
@end

@implementation CustomContentView

- (_TtC16HealthArticlesUI17CustomContentView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HealthArticlesUI17CustomContentView_customView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HealthArticlesUI17CustomContentView_currentConstraints) = MEMORY[0x277D84F90];
  v10.receiver = self;
  v10.super_class = type metadata accessor for CustomContentView();
  height = [(CustomContentView *)&v10 initWithFrame:x, y, width, height];

  return height;
}

- (_TtC16HealthArticlesUI17CustomContentView)initWithCoder:(id)coder
{
  sub_25133F8F4();
  sub_25133F8E4();
  sub_25133F894();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HealthArticlesUI17CustomContentView_customView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16HealthArticlesUI17CustomContentView_currentConstraints) = MEMORY[0x277D84F90];
  result = sub_25133FC14();
  __break(1u);
  return result;
}

@end