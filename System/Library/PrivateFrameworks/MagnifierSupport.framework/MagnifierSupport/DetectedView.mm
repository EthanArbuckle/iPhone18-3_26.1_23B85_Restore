@interface DetectedView
- (BOOL)accessibilityActivate;
- (_TtC16MagnifierSupport12DetectedView)initWithFrame:(CGRect)a3;
- (void)accessibilityElementDidBecomeFocused;
- (void)updateTargetAnimation;
@end

@implementation DetectedView

- (void)updateTargetAnimation
{
  v2 = self;
  sub_257DE7638();
}

- (BOOL)accessibilityActivate
{
  v2 = self;
  v3 = sub_257ECF4C0();
  [(DetectedView *)v2 setAccessibilityLabel:v3];

  if (qword_281544FE0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_257ECC3F0();
  sub_257ECDD70();

  return 1;
}

- (void)accessibilityElementDidBecomeFocused
{
  v2 = self;
  sub_257DE7DE0();
}

- (_TtC16MagnifierSupport12DetectedView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end