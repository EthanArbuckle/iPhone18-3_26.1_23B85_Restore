@interface MapsSyncStoreController
- (NSArray)storeSubscriptionTypes;
- (_TtC8MapsSync23MapsSyncStoreController)init;
- (_TtC8MapsSync23MapsSyncStoreController)initWithConfig:(id)a3 notifyForChanges:(id)a4 callbackQueue:(id)a5 delegate:(id)a6;
- (_TtC8MapsSync23MapsSyncStoreController)initWithNotifyForChanges:(id)a3 delegate:(id)a4;
- (void)setStoreSubscriptionTypes:(id)a3;
- (void)storeDidChangeWithTypes:(id)a3;
@end

@implementation MapsSyncStoreController

- (NSArray)storeSubscriptionTypes
{
  v3 = OBJC_IVAR____TtC8MapsSync23MapsSyncStoreController_storeSubscriptionTypes;
  swift_beginAccess();
  v4 = *(self + v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943408, &qword_1B63C5070);
  v5 = sub_1B63BEC94();

  return v5;
}

- (void)setStoreSubscriptionTypes:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943408, &qword_1B63C5070);
  v4 = sub_1B63BECA4();
  v5 = OBJC_IVAR____TtC8MapsSync23MapsSyncStoreController_storeSubscriptionTypes;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (_TtC8MapsSync23MapsSyncStoreController)initWithConfig:(id)a3 notifyForChanges:(id)a4 callbackQueue:(id)a5 delegate:(id)a6
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943408, &qword_1B63C5070);
  v9 = sub_1B63BECA4();
  v10 = a3;
  v11 = a5;
  swift_unknownObjectRetain();
  return MapsSyncStoreController.init(config:notifyForChanges:callbackQueue:delegate:)(v10, v9, a5, a6);
}

- (_TtC8MapsSync23MapsSyncStoreController)initWithNotifyForChanges:(id)a3 delegate:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = _s8MapsSync0aB11StoreConfigC07defaultcD0ACvgZ_0();
  v8 = [(MapsSyncStoreController *)self initWithConfig:v7 notifyForChanges:v6 callbackQueue:0 delegate:a4];

  swift_unknownObjectRelease();
  return v8;
}

- (void)storeDidChangeWithTypes:(id)a3
{
  v4 = sub_1B63BECA4();
  v5 = self;
  sub_1B6351B28(v4);
}

- (_TtC8MapsSync23MapsSyncStoreController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end