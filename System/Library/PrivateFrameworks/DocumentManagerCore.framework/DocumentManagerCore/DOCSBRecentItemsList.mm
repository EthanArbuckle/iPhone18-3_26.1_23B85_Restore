@interface DOCSBRecentItemsList
+ (BOOL)applicationWithBundleIdentifierSupportsRecents:(id)recents;
+ (DOCSBRecentItemsList)sharedList;
- (DOCSBRecentItemsList)init;
- (FPQueryCollection)_recentsQueryCollection;
- (void)_handleDistributedNotification:(id)notification;
- (void)_registerForDistributedNotification;
- (void)_startObservingRecentsCollection;
- (void)_stopObservingRecentsCollection;
- (void)dataForCollectionShouldBeReloaded:(id)reloaded;
- (void)recentsForBundleIdentifier:(id)identifier maxCount:(int64_t)count completion:(id)completion;
- (void)set_recentsCollectionExpirationTimer:(id)timer;
- (void)set_recentsQueryCollection:(id)collection;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation DOCSBRecentItemsList

- (DOCSBRecentItemsList)init
{
  *(&self->super.isa + OBJC_IVAR___DOCSBRecentItemsList__isObserving) = 0;
  *(&self->super.isa + OBJC_IVAR___DOCSBRecentItemsList____lazy_storage____recentsQueryCollection) = 0;
  *(&self->super.isa + OBJC_IVAR___DOCSBRecentItemsList__recentsCollectionExpirationInterval) = 0x4024000000000000;
  *(&self->super.isa + OBJC_IVAR___DOCSBRecentItemsList__recentsCollectionExpirationTimer) = 0;
  v3.receiver = self;
  v3.super_class = DOCSBRecentItemsList;
  return [(DOCSBRecentItemsList *)&v3 init];
}

+ (DOCSBRecentItemsList)sharedList
{
  if (qword_2810E1B30 != -1)
  {
    swift_once();
  }

  v3 = qword_2810E1B40;

  return v3;
}

- (void)startObserving
{
  selfCopy = self;
  sub_249379590();
}

- (void)stopObserving
{
  selfCopy = self;
  sub_2493798BC();
}

- (void)recentsForBundleIdentifier:(id)identifier maxCount:(int64_t)count completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = sub_24938A45C();
  v10 = v9;
  _Block_copy(v7);
  selfCopy = self;
  sub_24937BBB0(v8, v10, count, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

+ (BOOL)applicationWithBundleIdentifierSupportsRecents:(id)recents
{
  v3 = sub_24938A45C();
  v5 = sub_24937C540(v3, v4);

  return v5 & 1;
}

- (FPQueryCollection)_recentsQueryCollection
{
  selfCopy = self;
  v3 = sub_249379D04();

  return v3;
}

- (void)set_recentsQueryCollection:(id)collection
{
  v4 = *(&self->super.isa + OBJC_IVAR___DOCSBRecentItemsList____lazy_storage____recentsQueryCollection);
  *(&self->super.isa + OBJC_IVAR___DOCSBRecentItemsList____lazy_storage____recentsQueryCollection) = collection;
  collectionCopy = collection;
}

- (void)_registerForDistributedNotification
{
  selfCopy = self;
  sub_249379DFC();
}

- (void)set_recentsCollectionExpirationTimer:(id)timer
{
  v4 = *(&self->super.isa + OBJC_IVAR___DOCSBRecentItemsList__recentsCollectionExpirationTimer);
  *(&self->super.isa + OBJC_IVAR___DOCSBRecentItemsList__recentsCollectionExpirationTimer) = timer;
  timerCopy = timer;
}

- (void)_startObservingRecentsCollection
{
  selfCopy = self;
  sub_24937A0DC();
}

- (void)_stopObservingRecentsCollection
{
  selfCopy = self;
  sub_24937A8D4();
}

- (void)_handleDistributedNotification:(id)notification
{
  v4 = sub_24938A27C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24938A23C();
  selfCopy = self;
  sub_24937B018(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)dataForCollectionShouldBeReloaded:(id)reloaded
{
  reloadedCopy = reloaded;
  selfCopy = self;
  _sSo20DOCSBRecentItemsListC19DocumentManagerCoreE4data29forCollectionShouldBeReloadedySo06FPItemI0C_tF_0();
}

@end