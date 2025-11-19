@interface GDInternalViewUpdateNotificationSubscription
- (id)initForViewName:(id)a3 systemwideUniqueSubscriptionIdentifier:(id)a4 useCase:(id)a5 targetQueue:(id)a6 onReceiveUpdateNotificationBlock:(id)a7;
- (void)cancelSubscription;
@end

@implementation GDInternalViewUpdateNotificationSubscription

- (void)cancelSubscription
{
  v2 = [(GDInternalViewUpdateNotificationSubscription *)self sink];
  [v2 cancel];
}

- (id)initForViewName:(id)a3 systemwideUniqueSubscriptionIdentifier:(id)a4 useCase:(id)a5 targetQueue:(id)a6 onReceiveUpdateNotificationBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v37.receiver = self;
  v37.super_class = GDInternalViewUpdateNotificationSubscription;
  v17 = [(GDInternalViewUpdateNotificationSubscription *)&v37 init];
  if (v17)
  {
    v18 = [objc_alloc(MEMORY[0x1E698F258]) initWithIdentifier:v13 targetQueue:v15];
    v19 = BiomeLibrary();
    [v19 IntelligencePlatform];
    v33 = v13;
    v20 = v34 = v12;
    [v20 Views];
    v21 = v32 = v15;
    v22 = [v21 Updated];

    v23 = [v22 DSLPublisherWithUseCase:v14];
    v24 = [v23 filterWithKeyPath:@"eventBody.viewName" value:v12];
    v25 = [v24 subscribeOn:v18];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_1ABEF446C;
    v35[3] = &unk_1E7961FC0;
    v36 = v16;
    [v25 sinkWithCompletion:&unk_1F20A1938 receiveInput:v35];
    v27 = v26 = v14;

    objc_storeStrong(&v17->_targetQueue, a6);
    scheduler = v17->_scheduler;
    v17->_scheduler = v18;
    v29 = v18;

    v15 = v32;
    sink = v17->_sink;
    v17->_sink = v27;
    v14 = v26;

    v13 = v33;
    v12 = v34;
  }

  return v17;
}

@end