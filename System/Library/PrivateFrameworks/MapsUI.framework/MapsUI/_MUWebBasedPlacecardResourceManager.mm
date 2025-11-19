@interface _MUWebBasedPlacecardResourceManager
+ (_TtC6MapsUI35_MUWebBasedPlacecardResourceManager)shared;
- (BOOL)useLocalBundle;
- (NSSet)fetchedResourceNames;
- (NSURL)directoryURL;
- (NSURL)localBundleURL;
- (NSURL)onlineBundleURL;
- (_TtC6MapsUI35_MUWebBasedPlacecardResourceManager)init;
- (void)fetchDirectoryURLWithCompletion:(id)a3;
- (void)prepareResources;
- (void)removeBundle;
- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)a3;
- (void)setFetchedResourceNames:(id)a3;
- (void)setOnlineBundleURL:(id)a3;
- (void)setUseLocalBundle:(BOOL)a3;
@end

@implementation _MUWebBasedPlacecardResourceManager

+ (_TtC6MapsUI35_MUWebBasedPlacecardResourceManager)shared
{
  if (qword_1EC174CE8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC174CF0;

  return v3;
}

- (void)fetchDirectoryURLWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_1C576E5F0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_1C5768378(v7, v6);
  sub_1C5632FA8(v7);
}

- (NSURL)directoryURL
{
  v3 = sub_1C584EA90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = self;
  sub_1C57693F8(v8);

  v10 = sub_1C584EA20();
  (*(v4 + 8))(v8, v3);

  return v10;
}

- (BOOL)useLocalBundle
{
  v3 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_useLocalBundle;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUseLocalBundle:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_useLocalBundle;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSURL)localBundleURL
{
  v3 = sub_1C584EA90();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, self + OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_localBundleURL, v3);
  v9 = sub_1C584EA20();
  (*(v4 + 8))(v8, v3);

  return v9;
}

- (NSURL)onlineBundleURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v7 = &v15 - v6;
  v8 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_onlineBundleURL;
  swift_beginAccess();
  sub_1C5754258(self + v8, v7);
  v9 = sub_1C584EA90();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_1C584EA20();
    (*(v10 + 8))(v7, v9);
    v12 = v13;
  }

  return v12;
}

- (void)setOnlineBundleURL:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v18 - v12;
  if (a3)
  {
    sub_1C584EA50();
    v14 = sub_1C584EA90();
    (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
  }

  else
  {
    v14 = sub_1C584EA90();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  }

  v15 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_onlineBundleURL;
  swift_beginAccess();
  v16 = self;
  sub_1C576DC7C(v13, self + v15);
  swift_endAccess();
  sub_1C5754258(self + v15, v10);
  sub_1C584EA90();
  v17 = (*(*(v14 - 8) + 48))(v10, 1, v14) == 1;
  sub_1C5625230(v10, &unk_1EC16E660, &unk_1C58685F0);
  (*((*MEMORY[0x1E69E7D40] & *v16) + 0x88))(v17);

  sub_1C5625230(v13, &unk_1EC16E660, &unk_1C58685F0);
}

- (NSSet)fetchedResourceNames
{
  v3 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_fetchedResourceNames;
  swift_beginAccess();
  v4 = *(self + v3);

  v5 = sub_1C584F920();

  return v5;
}

- (void)setFetchedResourceNames:(id)a3
{
  v4 = sub_1C584F930();
  v5 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_fetchedResourceNames;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (_TtC6MapsUI35_MUWebBasedPlacecardResourceManager)init
{
  *(self + OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_useLocalBundle) = 1;
  v3 = OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_localBundleURL;
  if (qword_1EC174CB0 != -1)
  {
    swift_once();
  }

  v4 = sub_1C584EA90();
  v5 = __swift_project_value_buffer(v4, qword_1EC174CB8);
  v6 = *(v4 - 8);
  (*(v6 + 16))(self + v3, v5, v4);
  (*(v6 + 56))(self + OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_onlineBundleURL, 1, 1, v4);
  *(self + OBJC_IVAR____TtC6MapsUI35_MUWebBasedPlacecardResourceManager_fetchedResourceNames) = MEMORY[0x1E69E7CD0];
  v8.receiver = self;
  v8.super_class = type metadata accessor for _MUWebBasedPlacecardResourceManager();
  return [(_MUWebBasedPlacecardResourceManager *)&v8 init];
}

- (void)prepareResources
{
  v2 = self;
  _MUWebBasedPlacecardResourceManager.prepareResources()();
}

- (void)resourceManifestManagerDidChangeActiveTileGroup:(id)a3
{
  v4 = a3;
  v5 = self;
  _s6MapsUI35_MUWebBasedPlacecardResourceManagerC016resourceManifestG24DidChangeActiveTileGroupyySo011GEOResourceiG0CSgF_0();
}

- (void)removeBundle
{
  v2 = self;
  _MUWebBasedPlacecardResourceManager.removeBundle()();
}

@end