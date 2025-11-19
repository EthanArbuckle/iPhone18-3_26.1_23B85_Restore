@interface GDFutureLifeEventUpdateNotificationSubscription
- (GDFutureLifeEventUpdateNotificationSubscription)initWithSystemwideUniqueSubscriptionIdentifier:(id)a3 targetQueue:(id)a4 onReceiveUpdateNotificationBlock:(id)a5;
- (void)cancelSubscription;
@end

@implementation GDFutureLifeEventUpdateNotificationSubscription

- (void)cancelSubscription
{
  v2 = [(GDFutureLifeEventUpdateNotificationSubscription *)self viewUpdateNotificationSubscription];
  [v2 cancelSubscription];
}

- (GDFutureLifeEventUpdateNotificationSubscription)initWithSystemwideUniqueSubscriptionIdentifier:(id)a3 targetQueue:(id)a4 onReceiveUpdateNotificationBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = GDFutureLifeEventUpdateNotificationSubscription;
  v11 = [(GDFutureLifeEventUpdateNotificationSubscription *)&v15 init];
  if (v11)
  {
    v12 = [[GDInternalViewUpdateNotificationSubscription alloc] initForViewName:@"futureLifeEventMap" systemwideUniqueSubscriptionIdentifier:v8 useCase:@"FutureLifeEvent" targetQueue:v9 onReceiveUpdateNotificationBlock:v10];
    viewUpdateNotificationSubscription = v11->_viewUpdateNotificationSubscription;
    v11->_viewUpdateNotificationSubscription = v12;
  }

  return v11;
}

@end