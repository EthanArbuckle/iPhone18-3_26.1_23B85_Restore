@interface DropletEffectView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (_TtC9DropletUI17DropletEffectView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation DropletEffectView

- (void)dealloc
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9DropletUI17DropletEffectView_alphaThresholdEnabledAnimatableProperty);
  selfCopy = self;
  [v2 invalidate];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for DropletEffectView();
  [(BlurredView *)&v4 dealloc];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  if (key)
  {
    v4 = sub_249ED6C70();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_249EB82A8(v4, v6);

  return v8 & 1;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_249EB8428();
}

- (_TtC9DropletUI17DropletEffectView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end