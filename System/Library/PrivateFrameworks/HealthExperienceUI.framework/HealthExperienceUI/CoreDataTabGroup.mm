@interface CoreDataTabGroup
- (_TtC18HealthExperienceUI16CoreDataTabGroup)initWithTitle:(id)title image:(id)image identifier:(id)identifier children:(id)children viewControllerProvider:(id)provider;
- (_TtC18HealthExperienceUI16CoreDataTabGroup)initWithTitle:(id)title image:(id)image identifier:(id)identifier viewControllerProvider:(id)provider;
- (void)controller:(id)controller didChangeContentWithSnapshot:(id)snapshot;
@end

@implementation CoreDataTabGroup

- (void)controller:(id)controller didChangeContentWithSnapshot:(id)snapshot
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0xC0);
  selfCopy = self;
  v5();
  (*((*v4 & selfCopy->super.super.super.isa) + 0xB8))();
}

- (_TtC18HealthExperienceUI16CoreDataTabGroup)initWithTitle:(id)title image:(id)image identifier:(id)identifier children:(id)children viewControllerProvider:(id)provider
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI16CoreDataTabGroup)initWithTitle:(id)title image:(id)image identifier:(id)identifier viewControllerProvider:(id)provider
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end