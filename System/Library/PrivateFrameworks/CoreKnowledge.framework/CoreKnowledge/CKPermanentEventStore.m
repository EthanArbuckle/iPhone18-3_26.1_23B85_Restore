@interface CKPermanentEventStore
+ (id)createEventWithIdentifier:(id)a3 dateInterval:(id)a4 metadata:(id)a5 fromEvent:(id)a6;
+ (id)defaultStore;
- (BOOL)deleteEventWithIdentifier:(id)a3 error:(id *)a4;
- (BOOL)deleteInteractionsWithBundleId:(id)a3 error:(id *)a4;
- (BOOL)recordInteraction:(id)a3 bundleId:(id)a4 error:(id *)a5;
- (CKKnowledgeStore)backingStore;
- (id)historicEventsAndReturnError:(id *)a3;
- (void)deleteEventWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)deleteInteractionsWithBundleId:(id)a3 completionHandler:(id)a4;
- (void)historicEventWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)historicEventsWithCompletionHandler:(id)a3;
- (void)historicEventsWithSourceBundleIdentifier:(id)a3 andIntent:(id)a4 completionHandler:(id)a5;
- (void)recordInteraction:(id)a3 bundleId:(id)a4 completionHandler:(id)a5;
- (void)setFrequency:(int64_t)a3 forEventWithIdentifier:(id)a4 completionHandler:(id)a5;
@end

@implementation CKPermanentEventStore

+ (id)defaultStore
{
  v2 = static CKPermanentEventStore.defaultStore()();

  return v2;
}

+ (id)createEventWithIdentifier:(id)a3 dateInterval:(id)a4 metadata:(id)a5 fromEvent:(id)a6
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAB8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v21 - v10;
  v12 = sub_1C86F8EFC();
  v14 = v13;
  if (a4)
  {
    sub_1C86F8B0C();
    v15 = sub_1C86F8B5C();
    v16 = 0;
  }

  else
  {
    v15 = sub_1C86F8B5C();
    v16 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v16, 1, v15);
  v17 = sub_1C86F8E9C();
  v18 = a6;
  v19 = static CKPermanentEventStore.createEvent(withIdentifier:dateInterval:metadata:from:)(v12, v14, v11, v17, a6);

  sub_1C86A5BC8(v11, &qword_1EC2ADAB8);

  return v19;
}

- (BOOL)recordInteraction:(id)a3 bundleId:(id)a4 error:(id *)a5
{
  if (a4)
  {
    v8 = sub_1C86F8EFC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = a3;
  v12 = self;
  v13.value._countAndFlagsBits = v8;
  v13.value._object = v10;
  CKPermanentEventStore.record(_:withBundleId:)(v11, v13);

  if (v14)
  {
    if (a5)
    {
      v15 = sub_1C86F8B9C();

      v16 = v15;
      *a5 = v15;
    }

    else
    {
    }
  }

  return v14 == 0;
}

- (void)recordInteraction:(id)a3 bundleId:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    v9 = sub_1C86F8EFC();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  _Block_copy(v8);
  v11 = a3;
  v12 = self;
  sub_1C86A7500(v11, v9, a4, v12, v8);
  _Block_release(v8);
}

- (BOOL)deleteInteractionsWithBundleId:(id)a3 error:(id *)a4
{
  v6 = sub_1C86F8EFC();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  CKPermanentEventStore.deleteInteractions(withBundleId:)(v10);

  if (v11)
  {
    if (a4)
    {
      v12 = sub_1C86F8B9C();

      v13 = v12;
      *a4 = v12;
    }

    else
    {
    }
  }

  return v11 == 0;
}

- (void)deleteInteractionsWithBundleId:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1C86F8EFC();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  CKPermanentEventStore.deleteInteractions(withBundleId:completionHandler:)(v6, v8, sub_1C86903C8, v9);
}

- (void)historicEventWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1C86F8EFC();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  CKPermanentEventStore.historicEvent(withIdentifier:completionHandler:)(v6, v8, sub_1C86AE048, v9);
}

- (void)historicEventsWithSourceBundleIdentifier:(id)a3 andIntent:(id)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  if (a3)
  {
    v9 = sub_1C86F8EFC();
    a3 = v10;
  }

  else
  {
    v9 = 0;
  }

  _Block_copy(v8);
  v11 = a4;
  v12 = self;
  sub_1C86AD538(v9, a3, a4, v12, v8);
  _Block_release(v8);
}

- (CKKnowledgeStore)backingStore
{
  v2 = CKPermanentEventStore.backingStore.getter();

  return v2;
}

- (id)historicEventsAndReturnError:(id *)a3
{
  v3 = self;
  CKPermanentEventStore.historicEvents()();

  type metadata accessor for CKHistoricEvent();
  v4 = sub_1C86F8E8C();

  return v4;
}

- (void)historicEventsWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  CKPermanentEventStore.historicEvents(completionHandler:)(sub_1C86AE000, v5);
}

- (void)setFrequency:(int64_t)a3 forEventWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_1C86F8EFC();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = self;
  CKPermanentEventStore.setFrequency(_:forEventWithIdentifier:completionHandler:)(a3, v8, v10, sub_1C869040C, v11);
}

- (BOOL)deleteEventWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = sub_1C86F8EFC();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  CKPermanentEventStore.deleteEvent(withIdentifier:)(v10);

  if (v11)
  {
    if (a4)
    {
      v12 = sub_1C86F8B9C();

      v13 = v12;
      *a4 = v12;
    }

    else
    {
    }
  }

  return v11 == 0;
}

- (void)deleteEventWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1C86F8EFC();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  CKPermanentEventStore.deleteEvent(withIdentifier:completionHandler:)(v6, v8, sub_1C86903C8, v9);
}

@end