@interface MTCDDataStore
- (BOOL)isReady;
- (_TtC11MobileTimer13MTCDDataStore)init;
- (id)initInMemoryStore:(BOOL)store;
- (id)initInMemoryStore:(BOOL)store storeFailure:(BOOL)failure;
- (void)addAlarms:(id)alarms completion:(id)completion;
- (void)addDurations:(id)durations isFavorite:(BOOL)favorite;
- (void)addDurations:(id)durations isFavorite:(BOOL)favorite completion:(id)completion;
- (void)addTimers:(id)timers completion:(id)completion;
- (void)deleteAlarms:(id)alarms completion:(id)completion;
- (void)deleteAllDurationsWithCompletion:(id)completion;
- (void)deleteAllTimersWithCompletion:(id)completion;
- (void)deleteDuration:(id)duration isFavorite:(BOOL)favorite;
- (void)deleteDuration:(id)duration isFavorite:(BOOL)favorite completion:(id)completion;
- (void)deleteTimers:(id)timers completion:(id)completion;
- (void)getAKCAlarmsWithIncludeAttributes:(BOOL)attributes completion:(id)completion;
- (void)getAKCAlarmsWithPredicate:(id)predicate includeAttributes:(BOOL)attributes completion:(id)completion;
- (void)getAKCAuthorizationsWithPredicate:(id)predicate completion:(id)completion;
- (void)loadStore;
- (void)setSleepAlarms:(id)alarms completion:(id)completion;
- (void)updateAlarms:(id)alarms completion:(id)completion;
- (void)updateTimers:(id)timers completion:(id)completion;
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

- (id)initInMemoryStore:(BOOL)store
{
  storeCopy = store;
  v4 = objc_allocWithZone(swift_getObjectType());
  v5 = sub_1B2064D30(storeCopy);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (id)initInMemoryStore:(BOOL)store storeFailure:(BOOL)failure
{
  failureCopy = failure;
  v5 = objc_allocWithZone(swift_getObjectType());
  v6 = sub_1B20655C4(failureCopy, 1);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

- (void)loadStore
{
  selfCopy = self;
  MTCDDataStore.loadStore()();
}

- (BOOL)isReady
{
  selfCopy = self;
  v3 = MTCDDataStore.isReady.getter();

  return v3 & 1;
}

- (void)addAlarms:(id)alarms completion:(id)completion
{
  v5 = _Block_copy(completion);
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
  selfCopy = self;
  sub_1B209192C(v5);
  sub_1B2068230();

  sub_1B1FA6834(v5);
}

- (void)updateAlarms:(id)alarms completion:(id)completion
{
  v5 = _Block_copy(completion);
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
  selfCopy = self;
  sub_1B209192C(v5);
  sub_1B2068230();

  sub_1B1FA6834(v5);
}

- (void)setSleepAlarms:(id)alarms completion:(id)completion
{
  v5 = _Block_copy(completion);
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
  selfCopy = self;
  sub_1B209192C(v5);
  sub_1B2068230();

  sub_1B1FA6834(v5);
}

- (void)deleteAlarms:(id)alarms completion:(id)completion
{
  v5 = _Block_copy(completion);
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
  selfCopy = self;
  sub_1B209192C(v5);
  sub_1B2068230();

  sub_1B1FA6834(v5);
}

- (void)addTimers:(id)timers completion:(id)completion
{
  v5 = _Block_copy(completion);
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
  selfCopy = self;
  sub_1B209192C(v5);
  sub_1B2068230();

  sub_1B1FA6834(v5);
}

- (void)updateTimers:(id)timers completion:(id)completion
{
  v5 = _Block_copy(completion);
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
  selfCopy = self;
  sub_1B209192C(v5);
  sub_1B2068230();

  sub_1B1FA6834(v5);
}

- (void)deleteTimers:(id)timers completion:(id)completion
{
  v5 = _Block_copy(completion);
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
  selfCopy = self;
  sub_1B209192C(v5);
  sub_1B2068230();

  sub_1B1FA6834(v5);
}

- (void)deleteAllTimersWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
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
  selfCopy = self;
  sub_1B209192C(v4);
  sub_1B2068230();

  sub_1B1FA6834(v4);
}

- (void)addDurations:(id)durations isFavorite:(BOOL)favorite
{
  sub_1B20982AC(0, &qword_1EB79CE30, off_1E7B0BB68);
  v6 = sub_1B20A9B04();
  v7 = swift_allocObject();
  *(v7 + 16) = self;
  *(v7 + 24) = v6;
  *(v7 + 32) = favorite;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  selfCopy = self;
  sub_1B2068230();
}

- (void)addDurations:(id)durations isFavorite:(BOOL)favorite completion:(id)completion
{
  v7 = _Block_copy(completion);
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
  *(v10 + 32) = favorite;
  *(v10 + 40) = v7;
  *(v10 + 48) = v9;
  selfCopy = self;
  sub_1B209192C(v7);
  sub_1B2068230();

  sub_1B1FA6834(v7);
}

- (void)deleteDuration:(id)duration isFavorite:(BOOL)favorite
{
  v7 = swift_allocObject();
  *(v7 + 16) = self;
  *(v7 + 24) = duration;
  *(v7 + 32) = favorite;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  durationCopy = duration;
  selfCopy = self;
  v9 = durationCopy;
  sub_1B2068230();
}

- (void)deleteDuration:(id)duration isFavorite:(BOOL)favorite completion:(id)completion
{
  v8 = _Block_copy(completion);
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
  *(v10 + 24) = duration;
  *(v10 + 32) = favorite;
  *(v10 + 40) = v8;
  *(v10 + 48) = v9;
  durationCopy = duration;
  selfCopy = self;
  v13 = durationCopy;
  sub_1B209192C(v8);
  sub_1B2068230();

  sub_1B1FA6834(v8);
}

- (void)deleteAllDurationsWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
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
  selfCopy = self;
  sub_1B209192C(v4);
  sub_1B2068230();

  sub_1B1FA6834(v4);
}

- (void)getAKCAlarmsWithIncludeAttributes:(BOOL)attributes completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = self;
  *(v8 + 24) = attributes;
  *(v8 + 32) = sub_1B2098980;
  *(v8 + 40) = v7;
  selfCopy = self;

  sub_1B2068230();
}

- (void)getAKCAlarmsWithPredicate:(id)predicate includeAttributes:(BOOL)attributes completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = self;
  *(v10 + 24) = predicate;
  *(v10 + 32) = attributes;
  *(v10 + 40) = sub_1B2097FF0;
  *(v10 + 48) = v9;
  predicateCopy = predicate;
  selfCopy = self;
  v12 = predicateCopy;

  sub_1B2068230();
}

- (void)getAKCAuthorizationsWithPredicate:(id)predicate completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  v8[2] = self;
  v8[3] = predicate;
  v8[4] = sub_1B2097F74;
  v8[5] = v7;
  predicateCopy = predicate;
  selfCopy = self;
  v10 = predicateCopy;

  sub_1B2068230();
}

@end