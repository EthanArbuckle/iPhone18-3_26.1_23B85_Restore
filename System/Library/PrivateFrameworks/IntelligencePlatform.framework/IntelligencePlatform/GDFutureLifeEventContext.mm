@interface GDFutureLifeEventContext
+ (id)subscribeToUpdateNotificationWithSystemwideUniqueSubscriptionIdentifier:(id)a3 targetQueue:(id)a4 onReceiveUpdateNotificationBlock:(id)a5;
- (GDFutureLifeEventContext)initWithGDSwiftContext:(id)a3;
- (id)initAndReturnError:(id *)a3;
@end

@implementation GDFutureLifeEventContext

- (id)initAndReturnError:(id *)a3
{
  v4 = [[_TtC20IntelligencePlatform30_GDSwiftFutureLifeEventContext alloc] initAndReturnError:a3];
  if (v4)
  {
    self = [(GDFutureLifeEventContext *)self initWithGDSwiftContext:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (GDFutureLifeEventContext)initWithGDSwiftContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GDFutureLifeEventContext;
  v6 = [(GDFutureLifeEventContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->gdSwiftContext, a3);
  }

  return v7;
}

+ (id)subscribeToUpdateNotificationWithSystemwideUniqueSubscriptionIdentifier:(id)a3 targetQueue:(id)a4 onReceiveUpdateNotificationBlock:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[GDFutureLifeEventUpdateNotificationSubscription alloc] initWithSystemwideUniqueSubscriptionIdentifier:v9 targetQueue:v8 onReceiveUpdateNotificationBlock:v7];

  return v10;
}

@end