@interface AssetCachingManager
- (void)cache:(id)cache willEvictObject:(id)object;
@end

@implementation AssetCachingManager

- (void)cache:(id)cache willEvictObject:(id)object
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  swift_unknownObjectRetain();

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  outlined init with copy of Any(v11, v10);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  outlined init with take of Any(v10, (v9 + 32));
  *(v9 + 64) = v8;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v6, &closure #1 in AssetCachingManager.cache(_:willEvictObject:)partial apply, v9);

  outlined destroy of TaskPriority?(v6);
  __swift_destroy_boxed_opaque_existential_1(v11);
}

@end