@interface MTCDDataStore
- (BOOL)isReady;
- (_TtC11MobileTimer13MTCDDataStore)init;
- (id)initInMemoryStore:(BOOL)a3;
- (id)initInMemoryStore:(BOOL)a3 storeFailure:(BOOL)a4;
- (void)addAlarms:(id)a3 completion:(id)a4;
- (void)addDurations:(id)a3 isFavorite:(BOOL)a4;
- (void)addDurations:(id)a3 isFavorite:(BOOL)a4 completion:(id)a5;
- (void)addTimers:(id)a3 completion:(id)a4;
- (void)deleteAlarms:(id)a3 completion:(id)a4;
- (void)deleteAllDurationsWithCompletion:(id)a3;
- (void)deleteAllTimersWithCompletion:(id)a3;
- (void)deleteDuration:(id)a3 isFavorite:(BOOL)a4;
- (void)deleteDuration:(id)a3 isFavorite:(BOOL)a4 completion:(id)a5;
- (void)deleteTimers:(id)a3 completion:(id)a4;
- (void)getAKCAlarmsWithIncludeAttributes:(BOOL)a3 completion:(id)a4;
- (void)getAKCAlarmsWithPredicate:(id)a3 includeAttributes:(BOOL)a4 completion:(id)a5;
- (void)getAKCAuthorizationsWithPredicate:(id)a3 completion:(id)a4;
- (void)loadStore;
- (void)setSleepAlarms:(id)a3 completion:(id)a4;
- (void)updateAlarms:(id)a3 completion:(id)a4;
- (void)updateTimers:(id)a3 completion:(id)a4;
@end

@implementation MTCDDataStore

- (_TtC11MobileTimer13MTCDDataStore)init
{
  v2 = objc_allocWithZone(swift_getObjectType());
  v3 = sub_1B2064D30(0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

- (id)initInMemoryStore:(BOOL)a3
{
  v3 = a3;
  v4 = objc_allocWithZone(swift_getObjectType());
  v5 = sub_1B2064D30(v3);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (id)initInMemoryStore:(BOOL)a3 storeFailure:(BOOL)a4
{
  v4 = a4;
  v5 = objc_allocWithZone(swift_getObjectType());
  v6 = sub_1B20655C4(v4, 1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

- (void)loadStore
{
  v2 = self;
  MTCDDataStore.loadStore()();
}

- (BOOL)isReady
{
  v2 = self;
  v3 = MTCDDataStore.isReady.getter();

  return v3 & 1;
}

- (void)addAlarms:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_1B20982AC(0, &qword_1EB79CDF8, off_1E7B0B7E8);
  v6 = sub_1B20A9B04();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v5 = sub_1B209897C;
  }

  else
  {
    v7 = 0;
  }

  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = v6;
  v8[4] = v5;
  v8[5] = v7;
  v9 = self;
  sub_1B209192C(v5);
  sub_1B2068230();

  sub_1B1FA6834(v5);
}

- (void)updateAlarms:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_1B20982AC(0, &qword_1EB79CDF8, off_1E7B0B7E8);
  v6 = sub_1B20A9B04();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v5 = sub_1B209897C;
  }

  else
  {
    v7 = 0;
  }

  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = v6;
  v8[4] = v5;
  v8[5] = v7;
  v9 = self;
  sub_1B209192C(v5);
  sub_1B2068230();

  sub_1B1FA6834(v5);
}

- (void)setSleepAlarms:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_1B20982AC(0, &qword_1EB79CDF8, off_1E7B0B7E8);
  v6 = sub_1B20A9B04();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v5 = sub_1B209897C;
  }

  else
  {
    v7 = 0;
  }

  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = v6;
  v8[4] = v5;
  v8[5] = v7;
  v9 = self;
  sub_1B209192C(v5);
  sub_1B2068230();

  sub_1B1FA6834(v5);
}

- (void)deleteAlarms:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_1B20982AC(0, &qword_1EB79CDF8, off_1E7B0B7E8);
  v6 = sub_1B20A9B04();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v5 = sub_1B209897C;
  }

  else
  {
    v7 = 0;
  }

  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = v6;
  v8[4] = v5;
  v8[5] = v7;
  v9 = self;
  sub_1B209192C(v5);
  sub_1B2068230();

  sub_1B1FA6834(v5);
}

- (void)addTimers:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_1B20982AC(0, &qword_1EB79CDF0, off_1E7B0BB50);
  v6 = sub_1B20A9B04();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v5 = sub_1B209897C;
  }

  else
  {
    v7 = 0;
  }

  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = v6;
  v8[4] = v5;
  v8[5] = v7;
  v9 = self;
  sub_1B209192C(v5);
  sub_1B2068230();

  sub_1B1FA6834(v5);
}

- (void)updateTimers:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_1B20982AC(0, &qword_1EB79CDF0, off_1E7B0BB50);
  v6 = sub_1B20A9B04();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v5 = sub_1B209897C;
  }

  else
  {
    v7 = 0;
  }

  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = v6;
  v8[4] = v5;
  v8[5] = v7;
  v9 = self;
  sub_1B209192C(v5);
  sub_1B2068230();

  sub_1B1FA6834(v5);
}

- (void)deleteTimers:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_1B20982AC(0, &qword_1EB79CDF0, off_1E7B0BB50);
  v6 = sub_1B20A9B04();
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v5 = sub_1B209897C;
  }

  else
  {
    v7 = 0;
  }

  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = v6;
  v8[4] = v5;
  v8[5] = v7;
  v9 = self;
  sub_1B209192C(v5);
  sub_1B2068230();

  sub_1B1FA6834(v5);
}

- (void)deleteAllTimersWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1B209897C;
  }

  else
  {
    v5 = 0;
  }

  v6 = swift_allocObject();
  v6[2] = self;
  v6[3] = v4;
  v6[4] = v5;
  v7 = self;
  sub_1B209192C(v4);
  sub_1B2068230();

  sub_1B1FA6834(v4);
}

- (void)addDurations:(id)a3 isFavorite:(BOOL)a4
{
  sub_1B20982AC(0, &qword_1EB79CE30, off_1E7B0BB68);
  v6 = sub_1B20A9B04();
  v7 = swift_allocObject();
  *(v7 + 16) = self;
  *(v7 + 24) = v6;
  *(v7 + 32) = a4;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  v8 = self;
  sub_1B2068230();
}

- (void)addDurations:(id)a3 isFavorite:(BOOL)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  sub_1B20982AC(0, &qword_1EB79CE30, off_1E7B0BB68);
  v8 = sub_1B20A9B04();
  if (v7)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v7 = sub_1B209897C;
  }

  else
  {
    v9 = 0;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = self;
  *(v10 + 24) = v8;
  *(v10 + 32) = a4;
  *(v10 + 40) = v7;
  *(v10 + 48) = v9;
  v11 = self;
  sub_1B209192C(v7);
  sub_1B2068230();

  sub_1B1FA6834(v7);
}

- (void)deleteDuration:(id)a3 isFavorite:(BOOL)a4
{
  v7 = swift_allocObject();
  *(v7 + 16) = self;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  v8 = a3;
  v10 = self;
  v9 = v8;
  sub_1B2068230();
}

- (void)deleteDuration:(id)a3 isFavorite:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1B209897C;
  }

  else
  {
    v9 = 0;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = self;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = v8;
  *(v10 + 48) = v9;
  v11 = a3;
  v12 = self;
  v13 = v11;
  sub_1B209192C(v8);
  sub_1B2068230();

  sub_1B1FA6834(v8);
}

- (void)deleteAllDurationsWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_1B209897C;
  }

  else
  {
    v5 = 0;
  }

  v6 = swift_allocObject();
  v6[2] = self;
  v6[3] = v4;
  v6[4] = v5;
  v7 = self;
  sub_1B209192C(v4);
  sub_1B2068230();

  sub_1B1FA6834(v4);
}

- (void)getAKCAlarmsWithIncludeAttributes:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = self;
  *(v8 + 24) = a3;
  *(v8 + 32) = sub_1B2098980;
  *(v8 + 40) = v7;
  v9 = self;

  sub_1B2068230();
}

- (void)getAKCAlarmsWithPredicate:(id)a3 includeAttributes:(BOOL)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = self;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = sub_1B2097FF0;
  *(v10 + 48) = v9;
  v11 = a3;
  v13 = self;
  v12 = v11;

  sub_1B2068230();
}

- (void)getAKCAuthorizationsWithPredicate:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = a3;
  v8[4] = sub_1B2097F74;
  v8[5] = v7;
  v9 = a3;
  v11 = self;
  v10 = v9;

  sub_1B2068230();
}

@end