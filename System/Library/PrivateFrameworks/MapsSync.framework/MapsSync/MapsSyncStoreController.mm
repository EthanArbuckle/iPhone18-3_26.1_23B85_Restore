@interface MapsSyncStoreController
- (NSArray)storeSubscriptionTypes;
- (_TtC8MapsSync23MapsSyncStoreController)init;
- (_TtC8MapsSync23MapsSyncStoreController)initWithConfig:(id)config notifyForChanges:(id)changes callbackQueue:(id)queue delegate:(id)delegate;
- (_TtC8MapsSync23MapsSyncStoreController)initWithNotifyForChanges:(id)changes delegate:(id)delegate;
- (void)setStoreSubscriptionTypes:(id)types;
- (void)storeDidChangeWithTypes:(id)types;
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

- (void)setStoreSubscriptionTypes:(id)types
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943408, &qword_1B63C5070);
  v4 = sub_1B63BECA4();
  v5 = OBJC_IVAR____TtC8MapsSync23MapsSyncStoreController_storeSubscriptionTypes;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (_TtC8MapsSync23MapsSyncStoreController)initWithConfig:(id)config notifyForChanges:(id)changes callbackQueue:(id)queue delegate:(id)delegate
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943408, &qword_1B63C5070);
  v9 = sub_1B63BECA4();
  configCopy = config;
  queueCopy = queue;
  swift_unknownObjectRetain();
  return MapsSyncStoreController.init(config:notifyForChanges:callbackQueue:delegate:)(configCopy, v9, queue, delegate);
}

- (_TtC8MapsSync23MapsSyncStoreController)initWithNotifyForChanges:(id)changes delegate:(id)delegate
{
  changesCopy = changes;
  swift_unknownObjectRetain();
  v7 = _s8MapsSync0aB11StoreConfigC07defaultcD0ACvgZ_0();
  v8 = [(MapsSyncStoreController *)self initWithConfig:v7 notifyForChanges:changesCopy callbackQueue:0 delegate:delegate];

  swift_unknownObjectRelease();
  return v8;
}

- (void)storeDidChangeWithTypes:(id)types
{
  v4 = sub_1B63BECA4();
  selfCopy = self;
  sub_1B6351B28(v4);
}

- (_TtC8MapsSync23MapsSyncStoreController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end