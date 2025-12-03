@interface DBWidgetStackMaskView
+ (Class)layerClass;
- (_TtC9DashBoard21DBWidgetStackMaskView)initWithCoder:(id)coder;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
@end

@implementation DBWidgetStackMaskView

- (void)dealloc
{
  selfCopy = self;
  layer = [(DBWidgetStackMaskView *)selfCopy layer];
  [layer removeAllAnimations];

  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for DBWidgetStackMaskView();
  [(DBWidgetStackMaskView *)&v4 dealloc];
}

+ (Class)layerClass
{
  sub_24814FB28(0, &unk_27EE922D0);

  return swift_getObjCClassFromMetadata();
}

- (_TtC9DashBoard21DBWidgetStackMaskView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard21DBWidgetStackMaskView_presenting) = 0;
  result = sub_248384580();
  __break(1u);
  return result;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if (finished && *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard21DBWidgetStackMaskView_presenting) == 1)
  {
    v5 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x80);
    selfCopy = self;
    v5();
  }
}

@end