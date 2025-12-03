@interface MRDNowPlayingDataSource
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)sharedDataSource;
- (MRDNowPlayingDataSource)init;
- (id)observersForSelector:(SEL)selector;
- (void)addObserver:(id)observer;
- (void)popNowPlayingAppStack:(BOOL)stack forReason:(int64_t)reason;
- (void)removeObserver:(id)observer;
@end

@implementation MRDNowPlayingDataSource

+ (id)sharedDataSource
{
  if (qword_100529270 != -1)
  {
    sub_1003A5D2C();
  }

  v3 = qword_100529268;

  return v3;
}

- (MRDNowPlayingDataSource)init
{
  v3.receiver = self;
  v3.super_class = MRDNowPlayingDataSource;
  return [(MRDNowPlayingDataSource *)&v3 init];
}

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [(MRDNowPlayingDataSource *)MRDMediaServerNowPlayingDataSource allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___MRDNowPlayingDataSource;
    return objc_msgSendSuper2(&v6, "allocWithZone:", zone);
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  weakObservers = selfCopy->_weakObservers;
  if (!weakObservers)
  {
    v6 = +[NSHashTable weakObjectsHashTable];
    v7 = selfCopy->_weakObservers;
    selfCopy->_weakObservers = v6;

    weakObservers = selfCopy->_weakObservers;
  }

  [(NSHashTable *)weakObservers addObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_weakObservers removeObject:observerCopy];
  objc_sync_exit(selfCopy);
}

- (id)observersForSelector:(SEL)selector
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allObjects = [(NSHashTable *)selfCopy->_weakObservers allObjects];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000815F4;
  v8[3] = &unk_1004B8C30;
  v8[4] = selector;
  v6 = [allObjects msv_filter:v8];

  objc_sync_exit(selfCopy);

  return v6;
}

- (void)popNowPlayingAppStack:(BOOL)stack forReason:(int64_t)reason
{
  stackCopy = stack;
  LOBYTE(v7) = stack;
  MRAnalyticsSendEvent();
  if (stackCopy)
  {
    [(MRDNowPlayingDataSource *)self _popNowPlayingAppStack:_NSConcreteStackBlock];
  }
}

@end