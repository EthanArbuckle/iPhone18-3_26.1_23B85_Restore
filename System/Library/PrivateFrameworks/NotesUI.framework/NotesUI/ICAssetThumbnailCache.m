@interface ICAssetThumbnailCache
+ (ICAssetThumbnailCache)shared;
+ (NSDate)currentVersionDate;
- (ICAssetThumbnailCache)init;
- (id)creationDateFor:(id)a3;
- (id)objectForKeyedSubscript:(id)a3;
@end

@implementation ICAssetThumbnailCache

+ (NSDate)currentVersionDate
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - v4;
  if (qword_1EDE331D0 != -1)
  {
    v13 = v3;
    swift_once();
    v3 = v13;
  }

  v6 = __swift_project_value_buffer(v3, qword_1EDE331D8);
  sub_1D430BD0C(v6, v5);
  v7 = sub_1D4417434();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_1D44173A4();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

+ (ICAssetThumbnailCache)shared
{
  if (qword_1EDE331B8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDE331C0;

  return v3;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = _s7NotesUI19AssetThumbnailCacheCySo22ICThumbnailDescriptionCSgSo0F13ConfigurationCcig_0(v4);

  return v6;
}

- (id)creationDateFor:(id)a3
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - v5;
  if (qword_1EDE331D0 != -1)
  {
    v14 = v4;
    swift_once();
    v4 = v14;
  }

  v7 = __swift_project_value_buffer(v4, qword_1EDE331D8);
  sub_1D430BD0C(v7, v6);
  v8 = sub_1D4417434();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1D44173A4();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (ICAssetThumbnailCache)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ICAssetThumbnailCache *)&v3 init];
}

@end