@interface CSUModelCatalogVisualGenerationBase
- (CSUModelCatalogVisualGenerationBase)init;
- (id)fetchWithAssetLock:(id)lock error:(id *)error;
- (id)getAssetVersion;
@end

@implementation CSUModelCatalogVisualGenerationBase

- (CSUModelCatalogVisualGenerationBase)init
{
  sub_1AC123FEC();
  v3 = (&self->super.isa + OBJC_IVAR___CSUModelCatalogVisualGenerationBase_assetVersionNumber);
  *v3 = 7104878;
  v3[1] = 0xE300000000000000;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CSUModelCatalogVisualGenerationBase(0);
  return [(CSUModelCatalogVisualGenerationBase *)&v5 init];
}

- (id)fetchWithAssetLock:(id)lock error:(id *)error
{
  v6 = sub_1AC123E9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  lockCopy = lock;
  selfCopy = self;
  sub_1AC0D6C88(lockCopy, v10);

  v13 = sub_1AC123E8C();
  (*(v7 + 8))(v10, v6);

  return v13;
}

- (id)getAssetVersion
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x60);
  selfCopy = self;
  v2();

  v4 = sub_1AC12400C();

  return v4;
}

@end