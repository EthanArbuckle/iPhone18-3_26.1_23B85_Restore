@interface MRDNowPlayingDataSource
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)sharedDataSource;
- (MRDNowPlayingDataSource)init;
- (id)observersForSelector:(SEL)a3;
- (void)addObserver:(id)a3;
- (void)popNowPlayingAppStack:(BOOL)a3 forReason:(int64_t)a4;
- (void)removeObserver:(id)a3;
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

+ (id)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [(MRDNowPlayingDataSource *)MRDMediaServerNowPlayingDataSource allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___MRDNowPlayingDataSource;
    return objc_msgSendSuper2(&v6, "allocWithZone:", a3);
  }
}

- (void)addObserver:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  weakObservers = v4->_weakObservers;
  if (!weakObservers)
  {
    v6 = +[NSHashTable weakObjectsHashTable];
    v7 = v4->_weakObservers;
    v4->_weakObservers = v6;

    weakObservers = v4->_weakObservers;
  }

  [(NSHashTable *)weakObservers addObject:v8];
  objc_sync_exit(v4);
}

- (void)removeObserver:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSHashTable *)v4->_weakObservers removeObject:v5];
  objc_sync_exit(v4);
}

- (id)observersForSelector:(SEL)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NSHashTable *)v4->_weakObservers allObjects];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000815F4;
  v8[3] = &unk_1004B8C30;
  v8[4] = a3;
  v6 = [v5 msv_filter:v8];

  objc_sync_exit(v4);

  return v6;
}

- (void)popNowPlayingAppStack:(BOOL)a3 forReason:(int64_t)a4
{
  v4 = a3;
  LOBYTE(v7) = a3;
  MRAnalyticsSendEvent();
  if (v4)
  {
    [(MRDNowPlayingDataSource *)self _popNowPlayingAppStack:_NSConcreteStackBlock];
  }
}

@end