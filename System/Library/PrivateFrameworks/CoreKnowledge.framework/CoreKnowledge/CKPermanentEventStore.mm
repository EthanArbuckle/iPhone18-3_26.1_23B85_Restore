@interface CKPermanentEventStore
+ (id)createEventWithIdentifier:(id)identifier dateInterval:(id)interval metadata:(id)metadata fromEvent:(id)event;
+ (id)defaultStore;
- (BOOL)deleteEventWithIdentifier:(id)identifier error:(id *)error;
- (BOOL)deleteInteractionsWithBundleId:(id)id error:(id *)error;
- (BOOL)recordInteraction:(id)interaction bundleId:(id)id error:(id *)error;
- (CKKnowledgeStore)backingStore;
- (id)historicEventsAndReturnError:(id *)error;
- (void)deleteEventWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)deleteInteractionsWithBundleId:(id)id completionHandler:(id)handler;
- (void)historicEventWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)historicEventsWithCompletionHandler:(id)handler;
- (void)historicEventsWithSourceBundleIdentifier:(id)identifier andIntent:(id)intent completionHandler:(id)handler;
- (void)recordInteraction:(id)interaction bundleId:(id)id completionHandler:(id)handler;
- (void)setFrequency:(int64_t)frequency forEventWithIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation CKPermanentEventStore

+ (id)defaultStore
{
  v2 = static CKPermanentEventStore.defaultStore()();

  return v2;
}

+ (id)createEventWithIdentifier:(id)identifier dateInterval:(id)interval metadata:(id)metadata fromEvent:(id)event
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2ADAB8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v21 - v10;
  v12 = sub_1C86F8EFC();
  v14 = v13;
  if (interval)
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
  eventCopy = event;
  v19 = static CKPermanentEventStore.createEvent(withIdentifier:dateInterval:metadata:from:)(v12, v14, v11, v17, event);

  sub_1C86A5BC8(v11, &qword_1EC2ADAB8);

  return v19;
}

- (BOOL)recordInteraction:(id)interaction bundleId:(id)id error:(id *)error
{
  if (id)
  {
    v8 = sub_1C86F8EFC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  interactionCopy = interaction;
  selfCopy = self;
  v13.value._countAndFlagsBits = v8;
  v13.value._object = v10;
  CKPermanentEventStore.record(_:withBundleId:)(interactionCopy, v13);

  if (v14)
  {
    if (error)
    {
      v15 = sub_1C86F8B9C();

      v16 = v15;
      *error = v15;
    }

    else
    {
    }
  }

  return v14 == 0;
}

- (void)recordInteraction:(id)interaction bundleId:(id)id completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  if (id)
  {
    v9 = sub_1C86F8EFC();
    id = v10;
  }

  else
  {
    v9 = 0;
  }

  _Block_copy(v8);
  interactionCopy = interaction;
  selfCopy = self;
  sub_1C86A7500(interactionCopy, v9, id, selfCopy, v8);
  _Block_release(v8);
}

- (BOOL)deleteInteractionsWithBundleId:(id)id error:(id *)error
{
  v6 = sub_1C86F8EFC();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  CKPermanentEventStore.deleteInteractions(withBundleId:)(v10);

  if (v11)
  {
    if (error)
    {
      v12 = sub_1C86F8B9C();

      v13 = v12;
      *error = v12;
    }

    else
    {
    }
  }

  return v11 == 0;
}

- (void)deleteInteractionsWithBundleId:(id)id completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_1C86F8EFC();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  CKPermanentEventStore.deleteInteractions(withBundleId:completionHandler:)(v6, v8, sub_1C86903C8, v9);
}

- (void)historicEventWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_1C86F8EFC();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  CKPermanentEventStore.historicEvent(withIdentifier:completionHandler:)(v6, v8, sub_1C86AE048, v9);
}

- (void)historicEventsWithSourceBundleIdentifier:(id)identifier andIntent:(id)intent completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  if (identifier)
  {
    v9 = sub_1C86F8EFC();
    identifier = v10;
  }

  else
  {
    v9 = 0;
  }

  _Block_copy(v8);
  intentCopy = intent;
  selfCopy = self;
  sub_1C86AD538(v9, identifier, intent, selfCopy, v8);
  _Block_release(v8);
}

- (CKKnowledgeStore)backingStore
{
  v2 = CKPermanentEventStore.backingStore.getter();

  return v2;
}

- (id)historicEventsAndReturnError:(id *)error
{
  selfCopy = self;
  CKPermanentEventStore.historicEvents()();

  type metadata accessor for CKHistoricEvent();
  v4 = sub_1C86F8E8C();

  return v4;
}

- (void)historicEventsWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  CKPermanentEventStore.historicEvents(completionHandler:)(sub_1C86AE000, v5);
}

- (void)setFrequency:(int64_t)frequency forEventWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_1C86F8EFC();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  selfCopy = self;
  CKPermanentEventStore.setFrequency(_:forEventWithIdentifier:completionHandler:)(frequency, v8, v10, sub_1C869040C, v11);
}

- (BOOL)deleteEventWithIdentifier:(id)identifier error:(id *)error
{
  v6 = sub_1C86F8EFC();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  CKPermanentEventStore.deleteEvent(withIdentifier:)(v10);

  if (v11)
  {
    if (error)
    {
      v12 = sub_1C86F8B9C();

      v13 = v12;
      *error = v12;
    }

    else
    {
    }
  }

  return v11 == 0;
}

- (void)deleteEventWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = sub_1C86F8EFC();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  CKPermanentEventStore.deleteEvent(withIdentifier:completionHandler:)(v6, v8, sub_1C86903C8, v9);
}

@end