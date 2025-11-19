@interface MUTransitDeparturesDataSource
- (BOOL)isActive;
- (MUTransitDeparturesDataSource)init;
- (MUTransitDeparturesDataSourceDelegate)delegate;
- (id)traitsForTransitDeparturesDataProvider:(id)a3;
- (void)transitDeparturesDataProviderDidReload:(id)a3;
@end

@implementation MUTransitDeparturesDataSource

- (MUTransitDeparturesDataSourceDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)isActive
{
  v3 = OBJC_IVAR___MUTransitDeparturesDataSource_isActive;
  swift_beginAccess();
  return *(self + v3);
}

- (MUTransitDeparturesDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)traitsForTransitDeparturesDataProvider:(id)a3
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a3;
    v8 = self;
    v9 = [v6 traitsForDeparturesDataSource_];

    swift_unknownObjectRelease();
  }

  else
  {
    v10 = objc_allocWithZone(MEMORY[0x1E69A2210]);
    v11 = a3;
    v12 = self;
    result = [v10 init];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v9 = result;
  }

  return v9;
}

- (void)transitDeparturesDataProviderDidReload:(id)a3
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong transitDeparturesDataSourceWantsReload_];
    swift_unknownObjectRelease();
  }
}

@end