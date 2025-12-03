@interface HMAccessorySettingsDataSource.DelegateAdapter
- (_TtCE13HomeDataModelCSo29HMAccessorySettingsDataSource15DelegateAdapter)init;
- (void)accessorySettingsDataSource:(id)source didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)identifier settings:(id)settings;
@end

@implementation HMAccessorySettingsDataSource.DelegateAdapter

- (_TtCE13HomeDataModelCSo29HMAccessorySettingsDataSource15DelegateAdapter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)accessorySettingsDataSource:(id)source didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)identifier settings:(id)settings
{
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E66A5C();
  sub_1D1A63030();
  v12 = sub_1D1E67C1C();
  v13 = self + OBJC_IVAR____TtCE13HomeDataModelCSo29HMAccessorySettingsDataSource15DelegateAdapter_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = v7;
    v14 = *(v13 + 1);
    ObjectType = swift_getObjectType();
    sourceCopy = source;
    v16 = *(v14 + 24);
    sourceCopy2 = source;
    selfCopy = self;
    v16(&sourceCopy, v11, v12, ObjectType, v14);

    swift_unknownObjectRelease();
    (*(v8 + 8))(v11, v20);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }
}

@end