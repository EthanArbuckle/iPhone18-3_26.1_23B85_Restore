@interface ImagePreviewView
- (_TtC18CosmeticAssessment16ImagePreviewView)initWithCoder:(id)coder;
- (_TtC18CosmeticAssessment16ImagePreviewView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
@end

@implementation ImagePreviewView

- (_TtC18CosmeticAssessment16ImagePreviewView)initWithFrame:(CGRect)frame
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

- (_TtC18CosmeticAssessment16ImagePreviewView)initWithCoder:(id)coder
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

- (void)drawRect:(CGRect)rect
{
  sub_247D1FEA8();
  sub_247D1FE98();
  sub_247D1FE38();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  layer = [(ImagePreviewView *)selfCopy layer];
  [(ImagePreviewView *)selfCopy bounds];
  bezierPathWithRect_ = [objc_opt_self() bezierPathWithRect_];
  cGPath = [bezierPathWithRect_ CGPath];

  [layer setShadowPath_];
}

@end