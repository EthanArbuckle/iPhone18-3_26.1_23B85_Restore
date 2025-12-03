@interface DBIconModel
- (BOOL)isIconVisible:(id)visible;
- (CGSize)iconImageSize;
- (DBEnvironment)environment;
- (_TtC9DashBoard11DBIconModel)initWithStore:(id)store carApplicationDataSource:(id)source;
- (_TtC9DashBoard11DBIconModel)initWithStore:(id)store iconRepository:(id)repository;
- (id)exportIconLayoutState;
- (void)loadAllIcons;
- (void)resetCurrentIconState;
- (void)setAutomaticallyAddsWebClips:(BOOL)clips;
- (void)setEnvironment:(id)environment;
- (void)setIconImageSize:(CGSize)size;
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

- (void)setIconImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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

- (void)setEnvironment:(id)environment
{
  swift_unknownObjectRetain();
  selfCopy = self;
  DBIconModel.environment.setter();
}

- (_TtC9DashBoard11DBIconModel)initWithStore:(id)store carApplicationDataSource:(id)source
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v5 = sub_2483618F8(store);
  swift_unknownObjectRelease();
  return v5;
}

- (id)exportIconLayoutState
{
  selfCopy = self;
  v3 = DBIconModel.exportIconLayoutState()();

  return v3;
}

- (void)resetCurrentIconState
{
  selfCopy = self;
  DBIconModel.resetCurrentIconState()();
}

- (void)loadAllIcons
{
  selfCopy = self;
  DBIconModel.loadAllIcons()();
}

- (BOOL)isIconVisible:(id)visible
{
  visibleCopy = visible;
  selfCopy = self;
  LOBYTE(self) = DBIconModel.isIconVisible(_:)(visibleCopy);

  return self & 1;
}

- (void)setAutomaticallyAddsWebClips:(BOOL)clips
{
  clipsCopy = clips;
  v4.receiver = self;
  v4.super_class = type metadata accessor for DBIconModel();
  [(SBHIconModel *)&v4 setAutomaticallyAddsWebClips:clipsCopy];
}

- (_TtC9DashBoard11DBIconModel)initWithStore:(id)store iconRepository:(id)repository
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end