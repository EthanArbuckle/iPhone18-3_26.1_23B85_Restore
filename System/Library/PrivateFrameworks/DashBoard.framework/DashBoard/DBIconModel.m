@interface DBIconModel
- (BOOL)isIconVisible:(id)a3;
- (CGSize)iconImageSize;
- (DBEnvironment)environment;
- (_TtC9DashBoard11DBIconModel)initWithStore:(id)a3 carApplicationDataSource:(id)a4;
- (_TtC9DashBoard11DBIconModel)initWithStore:(id)a3 iconRepository:(id)a4;
- (id)exportIconLayoutState;
- (void)loadAllIcons;
- (void)resetCurrentIconState;
- (void)setAutomaticallyAddsWebClips:(BOOL)a3;
- (void)setEnvironment:(id)a3;
- (void)setIconImageSize:(CGSize)a3;
@end

@implementation DBIconModel

- (CGSize)iconImageSize
{
  v2 = &self->SBHIconModel_opaque[OBJC_IVAR____TtC9DashBoard11DBIconModel_iconImageSize];
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setIconImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = &self->SBHIconModel_opaque[OBJC_IVAR____TtC9DashBoard11DBIconModel_iconImageSize];
  swift_beginAccess();
  *v5 = width;
  v5[1] = height;
}

- (DBEnvironment)environment
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setEnvironment:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  DBIconModel.environment.setter();
}

- (_TtC9DashBoard11DBIconModel)initWithStore:(id)a3 carApplicationDataSource:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5 = sub_2483618F8(a3);
  swift_unknownObjectRelease();
  return v5;
}

- (id)exportIconLayoutState
{
  v2 = self;
  v3 = DBIconModel.exportIconLayoutState()();

  return v3;
}

- (void)resetCurrentIconState
{
  v2 = self;
  DBIconModel.resetCurrentIconState()();
}

- (void)loadAllIcons
{
  v2 = self;
  DBIconModel.loadAllIcons()();
}

- (BOOL)isIconVisible:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = DBIconModel.isIconVisible(_:)(v4);

  return self & 1;
}

- (void)setAutomaticallyAddsWebClips:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for DBIconModel();
  [(SBHIconModel *)&v4 setAutomaticallyAddsWebClips:v3];
}

- (_TtC9DashBoard11DBIconModel)initWithStore:(id)a3 iconRepository:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end