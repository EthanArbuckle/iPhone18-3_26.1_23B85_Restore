@interface _MPCQueueControllerBehaviorPodcasts
+ (id)makeExtensionWithInvalidatable:(id)a3;
- (BOOL)isExportableSessionType:(id)a3 forContentItemID:(id)a4 extension:(id)a5 reason:(id *)a6;
- (BOOL)isOneShotExportableSessionForContentItemID:(id)a3 reason:(id *)a4;
- (BOOL)isSupportedInsertionPosition:(int64_t)a3 fromContentItemID:(id)a4 reason:(id *)a5;
- (BOOL)itemExistsForContentItemID:(id)a3;
- (MPCQueueControllerBehaviorHost)host;
- (NSArray)queueTrackIdentifiers;
- (NSString)sessionID;
- (_MPCQueueControllerBehaviorPodcasts)initWithCoder:(id)a3;
- (_MPCQueueControllerBehaviorPodcasts)initWithSessionID:(id)a3;
- (id)_itemForContentItemID:(id)a3 allowReuse:(BOOL)a4;
- (id)_stateDictionaryIncludingQueue:(BOOL)a3;
- (id)componentsForContentItemID:(id)a3;
- (id)contentItemIDEnumeratorStartingAfterContentItemID:(id)a3 mode:(int64_t)a4 options:(unint64_t)a5;
- (id)finalizeStateRestorationWithTargetContentItemID:(id)a3 completion:(id)a4;
- (id)performLoadCommand:(id)a3 completion:(id)a4;
- (id)tailInsertionContentItemIDForTargetContentItemID:(id)a3;
- (int64_t)displayItemCount;
- (int64_t)preferredUpcomingItemCount;
- (uint64_t)canPreviousItemFromContentItemID:reason:;
- (void)canReuseQueue:(id)a3 completion:(id)a4;
- (void)clearUpNextAfterContentItemID:(id)a3;
- (void)currentItemDidChangeFromContentItemID:(id)a3 toContentItemID:(id)a4;
- (void)didReachEndOfQueueWithReason:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)loadAdditionalUpcomingItems:(int64_t)a3 completion:(id)a4;
- (void)perShowSettingsDidChange:(id)a3;
- (void)performInsertCommand:(id)a3 targetContentItemID:(id)a4 completion:(id)a5;
- (void)removeContentItemID:(id)a3 completion:(id)a4;
- (void)setHost:(id)a3;
- (void)setSessionID:(id)a3;
@end

@implementation _MPCQueueControllerBehaviorPodcasts

+ (id)makeExtensionWithInvalidatable:(id)a3
{
  swift_unknownObjectRetain();
  v3 = static QueueControllerBehaviorPodcasts.makeExtension(with:)();
  swift_unknownObjectRelease();

  return v3;
}

- (uint64_t)canPreviousItemFromContentItemID:reason:
{
  sub_1C6016940();

  return 1;
}

- (NSString)sessionID
{
  sub_1C5D15EC8();
  v2 = sub_1C6016900();

  return v2;
}

- (void)setSessionID:(id)a3
{
  sub_1C6016940();
  v4 = self;
  sub_1C5D15F8C();
}

- (MPCQueueControllerBehaviorHost)host
{
  v2 = sub_1C5D160A0();

  return v2;
}

- (void)setHost:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1C5D16144(a3);
}

- (_MPCQueueControllerBehaviorPodcasts)initWithCoder:(id)a3
{
  v3 = a3;
  QueueControllerBehaviorPodcasts.init(coder:)();
  return result;
}

- (_MPCQueueControllerBehaviorPodcasts)initWithSessionID:(id)a3
{
  if (a3)
  {
    sub_1C6016940();
  }

  return QueueControllerBehaviorPodcasts.init(sessionID:)();
}

- (NSArray)queueTrackIdentifiers
{
  v2 = self;
  sub_1C5D1771C();

  v3 = sub_1C6016AF0();

  return v3;
}

- (void)canReuseQueue:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_1C5D1F224(v7, v8, v6);
  _Block_release(v6);
}

- (id)performLoadCommand:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_1C5D1F830(v7, v8, v6);
  v10 = v9;
  _Block_release(v6);

  if (v10)
  {
    v11 = sub_1C6016900();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)componentsForContentItemID:(id)a3
{
  v4 = sub_1C6016940();
  v6 = v5;
  v7 = self;
  v8 = sub_1C5D20910(v4, v6);

  return v8;
}

- (BOOL)itemExistsForContentItemID:(id)a3
{
  v4 = sub_1C6016940();
  v6 = v5;
  v7 = self;
  LOBYTE(v4) = sub_1C5D20B0C(v4, v6);

  return v4 & 1;
}

- (id)contentItemIDEnumeratorStartingAfterContentItemID:(id)a3 mode:(int64_t)a4 options:(unint64_t)a5
{
  v5 = a5;
  if (a3)
  {
    v8 = sub_1C6016940();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = self;
  v12 = sub_1C5D20CB0(v8, v10, a4, v5);

  return v12;
}

- (id)_stateDictionaryIncludingQueue:(BOOL)a3
{
  v3 = self;
  sub_1C5D20F54();

  v4 = sub_1C6016840();

  return v4;
}

- (void)currentItemDidChangeFromContentItemID:(id)a3 toContentItemID:(id)a4
{
  v5 = sub_1C6016940();
  v7 = v6;
  v8 = sub_1C6016940();
  v10 = v9;
  v11 = self;
  sub_1C5D2119C(v5, v7, v8, v10);
}

- (id)_itemForContentItemID:(id)a3 allowReuse:(BOOL)a4
{
  v6 = sub_1C6016940();
  v8 = v7;
  v9 = self;
  sub_1C5D21418(v6, v8, a4);
  v11 = v10;

  return v11;
}

- (void)perShowSettingsDidChange:(id)a3
{
  v4 = sub_1C6014C70();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6014C30();
  v8 = self;
  sub_1C5D21E3C();

  (*(v5 + 8))(v7, v4);
}

- (id)tailInsertionContentItemIDForTargetContentItemID:(id)a3
{
  if (a3)
  {
    sub_1C6016940();
  }

  v4.value._countAndFlagsBits = self;
  countAndFlagsBits = v4.value._countAndFlagsBits;
  object = QueueControllerBehaviorPodcasts.tailInsertionContentItemID(forTargetContentItemID:)(v4).value._object;

  if (object)
  {
    v7 = sub_1C6016900();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isSupportedInsertionPosition:(int64_t)a3 fromContentItemID:(id)a4 reason:(id *)a5
{
  sub_1C6016940();
  v7 = self;
  LOBYTE(a3) = QueueControllerBehaviorPodcasts.isSupportedInsertionPosition(_:fromContentItemID:reason:)(a3);

  return a3 & 1;
}

- (void)performInsertCommand:(id)a3 targetContentItemID:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    v9 = sub_1C6016940();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  _Block_copy(v8);
  v11 = a3;
  v12 = self;
  sub_1C5D2267C(v11, v9, a4, v12, v8);
  _Block_release(v8);
}

- (void)removeContentItemID:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1C6016940();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_1C5D24BF0(v6, v8, v9, v5);
  _Block_release(v5);
}

- (void)clearUpNextAfterContentItemID:(id)a3
{
  v4 = sub_1C6016940();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  QueueControllerBehaviorPodcasts.clearUpNext(afterContentItemID:)(v8);
}

- (int64_t)displayItemCount
{
  v2 = self;
  v3 = QueueControllerBehaviorPodcasts.displayItemCount()();

  return v3;
}

- (int64_t)preferredUpcomingItemCount
{
  v2 = self;
  v3 = QueueControllerBehaviorPodcasts.preferredUpcomingItemCount.getter();

  return v3;
}

- (void)loadAdditionalUpcomingItems:(int64_t)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = self;
  sub_1C5D254A4(a3, v7, v6);
  _Block_release(v6);
}

- (void)didReachEndOfQueueWithReason:(id)a3
{
  sub_1C6016940();
  v4._countAndFlagsBits = self;
  countAndFlagsBits = v4._countAndFlagsBits;
  QueueControllerBehaviorPodcasts.didReachEndOfQueue(withReason:)(v4);
}

- (id)finalizeStateRestorationWithTargetContentItemID:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (a3)
  {
    sub_1C6016940();
  }

  *(swift_allocObject() + 16) = v6;
  v7 = self;
  QueueControllerBehaviorPodcasts.finalizeStateRestoration(withTargetContentItemID:completion:)();

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  QueueControllerBehaviorPodcasts.encode(with:)(v4);
}

- (BOOL)isExportableSessionType:(id)a3 forContentItemID:(id)a4 extension:(id)a5 reason:(id *)a6
{
  v9 = sub_1C6016940();
  v11 = v10;
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = self;
  LOBYTE(a6) = QueueControllerBehaviorPodcasts.isExportableSessionType(_:forContentItemID:extension:reason:)(v12, v9, v11, v14, a6);

  swift_unknownObjectRelease();

  return a6 & 1;
}

- (BOOL)isOneShotExportableSessionForContentItemID:(id)a3 reason:(id *)a4
{
  v5 = sub_1C6016940();
  v7 = v6;
  v8 = self;
  LOBYTE(v5) = QueueControllerBehaviorPodcasts.isOneShotExportableSession(forContentItemID:reason:)(v5, v7);

  return v5 & 1;
}

@end