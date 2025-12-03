@interface BlurredView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (_TtC9DropletUI11BlurredView)initWithCoder:(id)coder;
- (void)dealloc;
@end

@implementation BlurredView

- (_TtC9DropletUI11BlurredView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9DropletUI11BlurredView_disableBlurFilterOverride) = 0;
  v4 = OBJC_IVAR____TtC9DropletUI11BlurredView_blurEnabledAnimatableProperty;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D75D38]) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9DropletUI11BlurredView_gaussianBlurInputRadius) = 0;
  result = sub_249ED6E50();
  __break(1u);
  return result;
}

- (void)dealloc
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9DropletUI11BlurredView_blurEnabledAnimatableProperty);
  selfCopy = self;
  [v2 invalidate];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for BlurredView();
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
  v8 = sub_249EA1894(v4, v6);

  return v8 & 1;
}

@end