@interface HUBaseIconViewConfiguration
- (HUBaseIconViewConfiguration)init;
- (id)copyWithIconDescriptor:(id)a3;
- (void)setAppearance:(int64_t)a3;
@end

@implementation HUBaseIconViewConfiguration

- (void)setAppearance:(int64_t)a3
{
  v4 = self;
  BaseIconView.__Configuration.appearance.setter(a3);
}

- (id)copyWithIconDescriptor:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = BaseIconView.__Configuration.copy(with:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

- (HUBaseIconViewConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end