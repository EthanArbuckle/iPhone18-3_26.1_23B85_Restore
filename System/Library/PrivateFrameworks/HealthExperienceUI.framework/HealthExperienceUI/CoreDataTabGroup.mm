@interface CoreDataTabGroup
- (_TtC18HealthExperienceUI16CoreDataTabGroup)initWithTitle:(id)a3 image:(id)a4 identifier:(id)a5 children:(id)a6 viewControllerProvider:(id)a7;
- (_TtC18HealthExperienceUI16CoreDataTabGroup)initWithTitle:(id)a3 image:(id)a4 identifier:(id)a5 viewControllerProvider:(id)a6;
- (void)controller:(id)a3 didChangeContentWithSnapshot:(id)a4;
@end

@implementation CoreDataTabGroup

- (void)controller:(id)a3 didChangeContentWithSnapshot:(id)a4
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0xC0);
  v6 = self;
  v5();
  (*((*v4 & v6->super.super.super.isa) + 0xB8))();
}

- (_TtC18HealthExperienceUI16CoreDataTabGroup)initWithTitle:(id)a3 image:(id)a4 identifier:(id)a5 children:(id)a6 viewControllerProvider:(id)a7
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18HealthExperienceUI16CoreDataTabGroup)initWithTitle:(id)a3 image:(id)a4 identifier:(id)a5 viewControllerProvider:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end