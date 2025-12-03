@interface BDSPriceTracker
- (BDSPriceTracker)init;
- (BDSPriceTracker)initWithPersistenceURL:(id)l;
- (void)bdsctl_addTrackedItem:(BDSDistributedPriceTrackingConfigItemID *)item completion:(id)completion;
- (void)bdsctl_getStateWithCompletion:(id)completion;
- (void)bdsctl_updateReferencePrices:(NSDictionary *)prices completion:(id)completion;
- (void)bdsdctl_updateTrackedPricesIgnoringScheduleForAllItemsWithCompletionHandler:(id)handler;
- (void)setConfiguration:(BDSDistributedPriceTrackingConfig *)configuration completion:(id)completion;
- (void)updateTrackedPricesIgnoringScheduleForNewItemsWithCompletionHandler:(id)handler;
@end

@implementation BDSPriceTracker

- (BDSPriceTracker)initWithPersistenceURL:(id)l
{
  v4 = sub_100084528(&qword_100271368, &qword_1001F3AD0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v29 - v6;
  v8 = sub_1001C4B28();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v29 - v15;
  __chkstk_darwin(v14);
  v18 = &v29 - v17;
  sub_1001C4AD8();
  v19 = v9[2];
  v19(v16, v18, v8);
  v19(v13, v16, v8);
  sub_10015E5DC(v13, 0, v7);
  v20 = v9[1];
  v20(v16, v8);
  v21 = _s11PersistenceVMa();
  (*(*(v21 - 8) + 56))(v7, 0, 1, v21);
  v22 = type metadata accessor for PriceTracker(0);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_100103714(v7);
  v20(v18, v8);
  swift_getObjectType();
  v26 = *((swift_isaMask & *self->$defaultActor) + 0x30);
  v27 = *((swift_isaMask & *self->$defaultActor) + 0x34);
  swift_deallocPartialClassInstance();
  return v25;
}

- (void)updateTrackedPricesIgnoringScheduleForNewItemsWithCompletionHandler:(id)handler
{
  v5 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1001C6348();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001F3AB8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001F3AC0;
  v13[5] = v12;

  sub_100118770(0, 0, v8, &unk_1001F3AC8, v13);
}

- (BDSPriceTracker)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setConfiguration:(BDSDistributedPriceTrackingConfig *)configuration completion:(id)completion
{
  v7 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = configuration;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1001C6348();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001F3A48;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001F3A50;
  v15[5] = v14;
  configurationCopy = configuration;

  sub_100118770(0, 0, v10, &unk_1001F3A58, v15);
}

- (void)bdsctl_getStateWithCompletion:(id)completion
{
  v5 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1001C6348();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001F39F8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001F3A00;
  v13[5] = v12;

  sub_100118770(0, 0, v8, &unk_1001F3A08, v13);
}

- (void)bdsctl_addTrackedItem:(BDSDistributedPriceTrackingConfigItemID *)item completion:(id)completion
{
  v7 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = item;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1001C6348();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001F39D0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001F39D8;
  v15[5] = v14;
  itemCopy = item;

  sub_100118770(0, 0, v10, &unk_1001F39E0, v15);
}

- (void)bdsctl_updateReferencePrices:(NSDictionary *)prices completion:(id)completion
{
  v7 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = prices;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_1001C6348();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001F39A0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1001F39A8;
  v15[5] = v14;
  pricesCopy = prices;

  sub_100118770(0, 0, v10, &unk_1001F39B0, v15);
}

- (void)bdsdctl_updateTrackedPricesIgnoringScheduleForAllItemsWithCompletionHandler:(id)handler
{
  v5 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1001C6348();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001F3990;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001F0DB0;
  v13[5] = v12;

  sub_100118770(0, 0, v8, &unk_1001F33E0, v13);
}

@end