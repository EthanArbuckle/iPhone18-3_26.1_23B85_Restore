@interface HUBaseIconViewConfiguration
- (HUBaseIconViewConfiguration)init;
- (id)copyWithIconDescriptor:(id)descriptor;
- (void)setAppearance:(int64_t)appearance;
@end

@implementation HUBaseIconViewConfiguration

- (void)setAppearance:(int64_t)appearance
{
  selfCopy = self;
  BaseIconView.__Configuration.appearance.setter(appearance);
}

- (id)copyWithIconDescriptor:(id)descriptor
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = BaseIconView.__Configuration.copy(with:)(descriptor);
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