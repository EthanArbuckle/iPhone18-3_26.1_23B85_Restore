@interface ObservedRectangleView
- (_TtC18CosmeticAssessmentP33_F62C5A70733B7900E7776736B1AB030221ObservedRectangleView)initWithCoder:(id)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation ObservedRectangleView

- (_TtC18CosmeticAssessmentP33_F62C5A70733B7900E7776736B1AB030221ObservedRectangleView)initWithCoder:(id)a3
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = OBJC_IVAR____TtC18CosmeticAssessmentP33_F62C5A70733B7900E7776736B1AB030221ObservedRectangleView_maskLayer;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  result = sub_247D20398();
  __break(1u);
  return result;
}

- (void)drawRect:(CGRect)a3
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self;
  sub_247C83908();
}

@end