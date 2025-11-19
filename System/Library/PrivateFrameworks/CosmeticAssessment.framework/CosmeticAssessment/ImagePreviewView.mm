@interface ImagePreviewView
- (_TtC18CosmeticAssessment16ImagePreviewView)initWithCoder:(id)a3;
- (_TtC18CosmeticAssessment16ImagePreviewView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation ImagePreviewView

- (_TtC18CosmeticAssessment16ImagePreviewView)initWithFrame:(CGRect)a3
{
  ObjectType = swift_getObjectType();
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = OBJC_IVAR____TtC18CosmeticAssessment16ImagePreviewView_imageView;
  v6 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(&self->super.super.super.isa + v5) = v6;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = [(ImagePreviewView *)&v9 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_247C7BF64();

  return v7;
}

- (_TtC18CosmeticAssessment16ImagePreviewView)initWithCoder:(id)a3
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = OBJC_IVAR____TtC18CosmeticAssessment16ImagePreviewView_imageView;
  v5 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(&self->super.super.super.isa + v4) = v5;
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

  v11 = self;
  v4 = [(ImagePreviewView *)v11 layer];
  [(ImagePreviewView *)v11 bounds];
  v9 = [objc_opt_self() bezierPathWithRect_];
  v10 = [v9 CGPath];

  [v4 setShadowPath_];
}

@end