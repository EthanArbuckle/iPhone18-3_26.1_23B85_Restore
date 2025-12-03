@interface UpdateListener.GKDataUpdateListener
- (_TtCO12GameStoreKit14UpdateListener20GKDataUpdateListener)init;
- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info;
@end

@implementation UpdateListener.GKDataUpdateListener

- (void)refreshContentsForDataType:(unsigned int)type userInfo:(id)info
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  v9 = sub_24F92AE38();
  v10 = sub_24F92B858();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = self;
  *(v11 + 40) = type;
  *(v11 + 48) = v9;

  sub_24EA998B8(0, 0, v8, &unk_24FA329C8, v11);
}

- (_TtCO12GameStoreKit14UpdateListener20GKDataUpdateListener)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end