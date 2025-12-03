@interface GDFutureLifeEventUpdateNotificationSubscription
- (GDFutureLifeEventUpdateNotificationSubscription)initWithSystemwideUniqueSubscriptionIdentifier:(id)identifier targetQueue:(id)queue onReceiveUpdateNotificationBlock:(id)block;
- (void)cancelSubscription;
@end

@implementation GDFutureLifeEventUpdateNotificationSubscription

- (void)cancelSubscription
{
  viewUpdateNotificationSubscription = [(GDFutureLifeEventUpdateNotificationSubscription *)self viewUpdateNotificationSubscription];
  [viewUpdateNotificationSubscription cancelSubscription];
}

- (GDFutureLifeEventUpdateNotificationSubscription)initWithSystemwideUniqueSubscriptionIdentifier:(id)identifier targetQueue:(id)queue onReceiveUpdateNotificationBlock:(id)block
{
  identifierCopy = identifier;
  queueCopy = queue;
  blockCopy = block;
  v15.receiver = self;
  v15.super_class = GDFutureLifeEventUpdateNotificationSubscription;
  v11 = [(GDFutureLifeEventUpdateNotificationSubscription *)&v15 init];
  if (v11)
  {
    v12 = [[GDInternalViewUpdateNotificationSubscription alloc] initForViewName:@"futureLifeEventMap" systemwideUniqueSubscriptionIdentifier:identifierCopy useCase:@"FutureLifeEvent" targetQueue:queueCopy onReceiveUpdateNotificationBlock:blockCopy];
    viewUpdateNotificationSubscription = v11->_viewUpdateNotificationSubscription;
    v11->_viewUpdateNotificationSubscription = v12;
  }

  return v11;
}

@end