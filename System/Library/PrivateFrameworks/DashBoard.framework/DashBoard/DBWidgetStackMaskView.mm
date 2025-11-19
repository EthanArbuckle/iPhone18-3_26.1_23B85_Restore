@interface DBWidgetStackMaskView
+ (Class)layerClass;
- (_TtC9DashBoard21DBWidgetStackMaskView)initWithCoder:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
@end

@implementation DBWidgetStackMaskView

- (void)dealloc
{
  v2 = self;
  v3 = [(DBWidgetStackMaskView *)v2 layer];
  [v3 removeAllAnimations];

  v4.receiver = v2;
  v4.super_class = type metadata accessor for DBWidgetStackMaskView();
  [(DBWidgetStackMaskView *)&v4 dealloc];
}

+ (Class)layerClass
{
  sub_24814FB28(0, &unk_27EE922D0);

  return swift_getObjCClassFromMetadata();
}

- (_TtC9DashBoard21DBWidgetStackMaskView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard21DBWidgetStackMaskView_presenting) = 0;
  result = sub_248384580();
  __break(1u);
  return result;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  if (a4 && *(&self->super.super.super.isa + OBJC_IVAR____TtC9DashBoard21DBWidgetStackMaskView_presenting) == 1)
  {
    v5 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x80);
    v6 = self;
    v5();
  }
}

@end