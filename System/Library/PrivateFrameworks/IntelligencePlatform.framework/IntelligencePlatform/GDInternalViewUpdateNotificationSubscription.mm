@interface GDInternalViewUpdateNotificationSubscription
- (id)initForViewName:(id)name systemwideUniqueSubscriptionIdentifier:(id)identifier useCase:(id)case targetQueue:(id)queue onReceiveUpdateNotificationBlock:(id)block;
- (void)cancelSubscription;
@end

@implementation GDInternalViewUpdateNotificationSubscription

- (void)cancelSubscription
{
  sink = [(GDInternalViewUpdateNotificationSubscription *)self sink];
  [sink cancel];
}

- (id)initForViewName:(id)name systemwideUniqueSubscriptionIdentifier:(id)identifier useCase:(id)case targetQueue:(id)queue onReceiveUpdateNotificationBlock:(id)block
{
  nameCopy = name;
  identifierCopy = identifier;
  caseCopy = case;
  queueCopy = queue;
  blockCopy = block;
  v37.receiver = self;
  v37.super_class = GDInternalViewUpdateNotificationSubscription;
  v17 = [(GDInternalViewUpdateNotificationSubscription *)&v37 init];
  if (v17)
  {
    v18 = [objc_alloc(MEMORY[0x1E698F258]) initWithIdentifier:identifierCopy targetQueue:queueCopy];
    v19 = BiomeLibrary();
    [v19 IntelligencePlatform];
    v33 = identifierCopy;
    v20 = v34 = nameCopy;
    [v20 Views];
    v21 = v32 = queueCopy;
    updated = [v21 Updated];

    v23 = [updated DSLPublisherWithUseCase:caseCopy];
    v24 = [v23 filterWithKeyPath:@"eventBody.viewName" value:nameCopy];
    v25 = [v24 subscribeOn:v18];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_1ABEF446C;
    v35[3] = &unk_1E7961FC0;
    v36 = blockCopy;
    [v25 sinkWithCompletion:&unk_1F20A1938 receiveInput:v35];
    v27 = v26 = caseCopy;

    objc_storeStrong(&v17->_targetQueue, queue);
    scheduler = v17->_scheduler;
    v17->_scheduler = v18;
    v29 = v18;

    queueCopy = v32;
    sink = v17->_sink;
    v17->_sink = v27;
    caseCopy = v26;

    identifierCopy = v33;
    nameCopy = v34;
  }

  return v17;
}

@end