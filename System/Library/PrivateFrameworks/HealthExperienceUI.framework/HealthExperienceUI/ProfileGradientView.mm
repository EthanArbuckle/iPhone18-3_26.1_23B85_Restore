@interface ProfileGradientView
+ (Class)layerClass;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)updateGradient;
@end

@implementation ProfileGradientView

+ (Class)layerClass
{
  type metadata accessor for GradientLayer();

  return swift_getObjCClassFromMetadata();
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_1B9F47020();
}

- (void)updateGradient
{
  selfCopy = self;
  sub_1BA361A3C();
}

- (void)dealloc
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_displayLink);
  if (v2)
  {
    selfCopy = self;
    [v2 invalidate];
    v4.receiver = selfCopy;
    v4.super_class = type metadata accessor for ProfileGradientView();
    [(ProfileGradientView *)&v4 dealloc];
  }

  else
  {
    __break(1u);
  }
}

@end