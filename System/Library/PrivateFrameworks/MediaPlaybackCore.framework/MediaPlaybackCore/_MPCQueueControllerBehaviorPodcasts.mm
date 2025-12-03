@interface _MPCQueueControllerBehaviorPodcasts
+ (id)makeExtensionWithInvalidatable:(id)invalidatable;
- (BOOL)isExportableSessionType:(id)type forContentItemID:(id)d extension:(id)extension reason:(id *)reason;
- (BOOL)isOneShotExportableSessionForContentItemID:(id)d reason:(id *)reason;
- (BOOL)isSupportedInsertionPosition:(int64_t)position fromContentItemID:(id)d reason:(id *)reason;
- (BOOL)itemExistsForContentItemID:(id)d;
- (MPCQueueControllerBehaviorHost)host;
- (NSArray)queueTrackIdentifiers;
- (NSString)sessionID;
- (_MPCQueueControllerBehaviorPodcasts)initWithCoder:(id)coder;
- (_MPCQueueControllerBehaviorPodcasts)initWithSessionID:(id)d;
- (id)_itemForContentItemID:(id)d allowReuse:(BOOL)reuse;
- (id)_stateDictionaryIncludingQueue:(BOOL)queue;
- (id)componentsForContentItemID:(id)d;
- (id)contentItemIDEnumeratorStartingAfterContentItemID:(id)d mode:(int64_t)mode options:(unint64_t)options;
- (id)finalizeStateRestorationWithTargetContentItemID:(id)d completion:(id)completion;
- (id)performLoadCommand:(id)command completion:(id)completion;
- (id)tailInsertionContentItemIDForTargetContentItemID:(id)d;
- (int64_t)displayItemCount;
- (int64_t)preferredUpcomingItemCount;
- (uint64_t)canPreviousItemFromContentItemID:reason:;
- (void)canReuseQueue:(id)queue completion:(id)completion;
- (void)clearUpNextAfterContentItemID:(id)d;
- (void)currentItemDidChangeFromContentItemID:(id)d toContentItemID:(id)iD;
- (void)didReachEndOfQueueWithReason:(id)reason;
- (void)encodeWithCoder:(id)coder;
- (void)loadAdditionalUpcomingItems:(int64_t)items completion:(id)completion;
- (void)perShowSettingsDidChange:(id)change;
- (void)performInsertCommand:(id)command targetContentItemID:(id)d completion:(id)completion;
- (void)removeContentItemID:(id)d completion:(id)completion;
- (void)setHost:(id)host;
- (void)setSessionID:(id)d;
@end

@implementation _MPCQueueControllerBehaviorPodcasts

+ (id)makeExtensionWithInvalidatable:(id)invalidatable
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

- (void)setSessionID:(id)d
{
  sub_1C6016940();
  selfCopy = self;
  sub_1C5D15F8C();
}

- (MPCQueueControllerBehaviorHost)host
{
  v2 = sub_1C5D160A0();

  return v2;
}

- (void)setHost:(id)host
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5D16144(host);
}

- (_MPCQueueControllerBehaviorPodcasts)initWithCoder:(id)coder
{
  coderCopy = coder;
  QueueControllerBehaviorPodcasts.init(coder:)();
  return result;
}

- (_MPCQueueControllerBehaviorPodcasts)initWithSessionID:(id)d
{
  if (d)
  {
    sub_1C6016940();
  }

  return QueueControllerBehaviorPodcasts.init(sessionID:)();
}

- (NSArray)queueTrackIdentifiers
{
  selfCopy = self;
  sub_1C5D1771C();

  v3 = sub_1C6016AF0();

  return v3;
}

- (void)canReuseQueue:(id)queue completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  queueCopy = queue;
  selfCopy = self;
  sub_1C5D1F224(queueCopy, selfCopy, v6);
  _Block_release(v6);
}

- (id)performLoadCommand:(id)command completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  commandCopy = command;
  selfCopy = self;
  sub_1C5D1F830(commandCopy, selfCopy, v6);
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

- (id)componentsForContentItemID:(id)d
{
  v4 = sub_1C6016940();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1C5D20910(v4, v6);

  return v8;
}

- (BOOL)itemExistsForContentItemID:(id)d
{
  v4 = sub_1C6016940();
  v6 = v5;
  selfCopy = self;
  LOBYTE(v4) = sub_1C5D20B0C(v4, v6);

  return v4 & 1;
}

- (id)contentItemIDEnumeratorStartingAfterContentItemID:(id)d mode:(int64_t)mode options:(unint64_t)options
{
  optionsCopy = options;
  if (d)
  {
    v8 = sub_1C6016940();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  selfCopy = self;
  v12 = sub_1C5D20CB0(v8, v10, mode, optionsCopy);

  return v12;
}

- (id)_stateDictionaryIncludingQueue:(BOOL)queue
{
  selfCopy = self;
  sub_1C5D20F54();

  v4 = sub_1C6016840();

  return v4;
}

- (void)currentItemDidChangeFromContentItemID:(id)d toContentItemID:(id)iD
{
  v5 = sub_1C6016940();
  v7 = v6;
  v8 = sub_1C6016940();
  v10 = v9;
  selfCopy = self;
  sub_1C5D2119C(v5, v7, v8, v10);
}

- (id)_itemForContentItemID:(id)d allowReuse:(BOOL)reuse
{
  v6 = sub_1C6016940();
  v8 = v7;
  selfCopy = self;
  sub_1C5D21418(v6, v8, reuse);
  v11 = v10;

  return v11;
}

- (void)perShowSettingsDidChange:(id)change
{
  v4 = sub_1C6014C70();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6014C30();
  selfCopy = self;
  sub_1C5D21E3C();

  (*(v5 + 8))(v7, v4);
}

- (id)tailInsertionContentItemIDForTargetContentItemID:(id)d
{
  if (d)
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

- (BOOL)isSupportedInsertionPosition:(int64_t)position fromContentItemID:(id)d reason:(id *)reason
{
  sub_1C6016940();
  selfCopy = self;
  LOBYTE(position) = QueueControllerBehaviorPodcasts.isSupportedInsertionPosition(_:fromContentItemID:reason:)(position);

  return position & 1;
}

- (void)performInsertCommand:(id)command targetContentItemID:(id)d completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (d)
  {
    v9 = sub_1C6016940();
    d = v10;
  }

  else
  {
    v9 = 0;
  }

  _Block_copy(v8);
  commandCopy = command;
  selfCopy = self;
  sub_1C5D2267C(commandCopy, v9, d, selfCopy, v8);
  _Block_release(v8);
}

- (void)removeContentItemID:(id)d completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_1C6016940();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_1C5D24BF0(v6, v8, selfCopy, v5);
  _Block_release(v5);
}

- (void)clearUpNextAfterContentItemID:(id)d
{
  v4 = sub_1C6016940();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  QueueControllerBehaviorPodcasts.clearUpNext(afterContentItemID:)(v8);
}

- (int64_t)displayItemCount
{
  selfCopy = self;
  v3 = QueueControllerBehaviorPodcasts.displayItemCount()();

  return v3;
}

- (int64_t)preferredUpcomingItemCount
{
  selfCopy = self;
  v3 = QueueControllerBehaviorPodcasts.preferredUpcomingItemCount.getter();

  return v3;
}

- (void)loadAdditionalUpcomingItems:(int64_t)items completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  selfCopy = self;
  sub_1C5D254A4(items, selfCopy, v6);
  _Block_release(v6);
}

- (void)didReachEndOfQueueWithReason:(id)reason
{
  sub_1C6016940();
  v4._countAndFlagsBits = self;
  countAndFlagsBits = v4._countAndFlagsBits;
  QueueControllerBehaviorPodcasts.didReachEndOfQueue(withReason:)(v4);
}

- (id)finalizeStateRestorationWithTargetContentItemID:(id)d completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (d)
  {
    sub_1C6016940();
  }

  *(swift_allocObject() + 16) = v6;
  selfCopy = self;
  QueueControllerBehaviorPodcasts.finalizeStateRestoration(withTargetContentItemID:completion:)();

  return 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  QueueControllerBehaviorPodcasts.encode(with:)(coderCopy);
}

- (BOOL)isExportableSessionType:(id)type forContentItemID:(id)d extension:(id)extension reason:(id *)reason
{
  v9 = sub_1C6016940();
  v11 = v10;
  typeCopy = type;
  swift_unknownObjectRetain();
  selfCopy = self;
  LOBYTE(reason) = QueueControllerBehaviorPodcasts.isExportableSessionType(_:forContentItemID:extension:reason:)(typeCopy, v9, v11, v14, reason);

  swift_unknownObjectRelease();

  return reason & 1;
}

- (BOOL)isOneShotExportableSessionForContentItemID:(id)d reason:(id *)reason
{
  v5 = sub_1C6016940();
  v7 = v6;
  selfCopy = self;
  LOBYTE(v5) = QueueControllerBehaviorPodcasts.isOneShotExportableSession(forContentItemID:reason:)(v5, v7);

  return v5 & 1;
}

@end