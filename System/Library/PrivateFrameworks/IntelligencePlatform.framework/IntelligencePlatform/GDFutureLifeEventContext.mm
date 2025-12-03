@interface GDFutureLifeEventContext
+ (id)subscribeToUpdateNotificationWithSystemwideUniqueSubscriptionIdentifier:(id)identifier targetQueue:(id)queue onReceiveUpdateNotificationBlock:(id)block;
- (GDFutureLifeEventContext)initWithGDSwiftContext:(id)context;
- (id)initAndReturnError:(id *)error;
@end

@implementation GDFutureLifeEventContext

- (id)initAndReturnError:(id *)error
{
  v4 = [[_TtC20IntelligencePlatform30_GDSwiftFutureLifeEventContext alloc] initAndReturnError:error];
  if (v4)
  {
    self = [(GDFutureLifeEventContext *)self initWithGDSwiftContext:v4];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (GDFutureLifeEventContext)initWithGDSwiftContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = GDFutureLifeEventContext;
  v6 = [(GDFutureLifeEventContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->gdSwiftContext, context);
  }

  return v7;
}

+ (id)subscribeToUpdateNotificationWithSystemwideUniqueSubscriptionIdentifier:(id)identifier targetQueue:(id)queue onReceiveUpdateNotificationBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  identifierCopy = identifier;
  v10 = [[GDFutureLifeEventUpdateNotificationSubscription alloc] initWithSystemwideUniqueSubscriptionIdentifier:identifierCopy targetQueue:queueCopy onReceiveUpdateNotificationBlock:blockCopy];

  return v10;
}

@end