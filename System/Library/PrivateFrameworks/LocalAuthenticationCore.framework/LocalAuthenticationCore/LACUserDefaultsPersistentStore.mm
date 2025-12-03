@interface LACUserDefaultsPersistentStore
- (_TtC23LocalAuthenticationCore30LACUserDefaultsPersistentStore)init;
- (_TtC23LocalAuthenticationCore30LACUserDefaultsPersistentStore)initWithSuiteName:(id)name;
- (void)dataForKey:(NSString *)key completion:(id)completion;
- (void)removeObjectForKey:(NSString *)key completion:(id)completion;
- (void)setData:(NSData *)data forKey:(NSString *)key completion:(id)completion;
@end

@implementation LACUserDefaultsPersistentStore

- (_TtC23LocalAuthenticationCore30LACUserDefaultsPersistentStore)initWithSuiteName:(id)name
{
  if (name)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return LACUserDefaultsPersistentStore.init(suiteName:)(v3, v4);
}

- (void)dataForKey:(NSString *)key completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = key;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &async function pointer to partial apply for @objc closure #1 in LACUserDefaultsPersistentStore.data(forKey:);
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &_sIeghH_IeAgH_TRTA_36Tu;
  v15[5] = v14;
  keyCopy = key;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v10, &_sIeAgH_ytIeAgHr_TRTA_41Tu, v15);
}

- (void)setData:(NSData *)data forKey:(NSString *)key completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  v14[2] = data;
  v14[3] = key;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &async function pointer to partial apply for @objc closure #1 in LACUserDefaultsPersistentStore.setData(_:forKey:);
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &_sIeghH_IeAgH_TRTA_22Tu;
  v17[5] = v16;
  dataCopy = data;
  keyCopy = key;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTA_27Tu, v17);
}

- (void)removeObjectForKey:(NSString *)key completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = key;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &async function pointer to partial apply for @objc closure #1 in LACUserDefaultsPersistentStore.removeObject(forKey:);
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &_sIeghH_IeAgH_TRTATu;
  v15[5] = v14;
  keyCopy = key;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v10, &_sIeAgH_ytIeAgHr_TRTATu, v15);
}

- (_TtC23LocalAuthenticationCore30LACUserDefaultsPersistentStore)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end