@interface CustomContentView
- (_TtC16HealthArticlesUI17CustomContentView)initWithCoder:(id)a3;
- (_TtC16HealthArticlesUI17CustomContentView)initWithFrame:(CGRect)a3;
@end

@implementation CustomContentView

- (_TtC16HealthArticlesUI17CustomContentView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v8 = [(CustomContentView *)&v10 initWithFrame:x, y, width, height];

  return v8;
}

- (_TtC16HealthArticlesUI17CustomContentView)initWithCoder:(id)a3
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