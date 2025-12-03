@interface IDSOpportunisticDeliveryController
- (BOOL)diceRoll;
- (BOOL)sendOpportunisticData:(id)data toDestination:(id)destination;
- (IDSDAccountController)accountController;
- (IDSOpportunisticDeliveryController)init;
- (IDSOpportunisticDeliveryController)initWithCache:(id)cache accountController:(id)controller;
- (void)addOpportunisticData:(id)data serviceName:(id)name accountUniqueID:(id)d identifier:(id)identifier options:(id)options completion:(id)completion;
- (void)removeOpportunisticDataForIdentifier:(id)identifier serviceName:(id)name completion:(id)completion;
- (void)sendOpportunisticDataIfNeededToDestination:(id)destination completion:(id)completion;
@end

@implementation IDSOpportunisticDeliveryController

- (IDSOpportunisticDeliveryController)init
{
  v3 = objc_alloc_init(IDSOpportunisticCache);
  v4 = [(IDSOpportunisticDeliveryController *)self initWithCache:v3 accountController:0];

  return v4;
}

- (IDSOpportunisticDeliveryController)initWithCache:(id)cache accountController:(id)controller
{
  cacheCopy = cache;
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = IDSOpportunisticDeliveryController;
  v9 = [(IDSOpportunisticDeliveryController *)&v13 init];
  if (v9)
  {
    v10 = dispatch_queue_create("com.apple.ids.opportunisticdeliverycontroller", 0);
    opportunisticQueue = v9->_opportunisticQueue;
    v9->_opportunisticQueue = v10;

    objc_storeStrong(&v9->_cache, cache);
    objc_storeStrong(&v9->_accountController, controller);
  }

  return v9;
}

- (IDSDAccountController)accountController
{
  accountController = self->_accountController;
  if (accountController)
  {
    v3 = accountController;
  }

  else
  {
    v3 = +[IDSDAccountController sharedInstance];
  }

  return v3;
}

- (void)addOpportunisticData:(id)data serviceName:(id)name accountUniqueID:(id)d identifier:(id)identifier options:(id)options completion:(id)completion
{
  dataCopy = data;
  nameCopy = name;
  dCopy = d;
  identifierCopy = identifier;
  optionsCopy = options;
  completionCopy = completion;
  opportunisticQueue = self->_opportunisticQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100352ED8;
  block[3] = &unk_100BD8C60;
  v28 = identifierCopy;
  v29 = nameCopy;
  v30 = dCopy;
  v31 = optionsCopy;
  v32 = dataCopy;
  selfCopy = self;
  v34 = completionCopy;
  v21 = completionCopy;
  v22 = dataCopy;
  v23 = optionsCopy;
  v24 = dCopy;
  v25 = nameCopy;
  v26 = identifierCopy;
  dispatch_async(opportunisticQueue, block);
}

- (void)removeOpportunisticDataForIdentifier:(id)identifier serviceName:(id)name completion:(id)completion
{
  identifierCopy = identifier;
  nameCopy = name;
  completionCopy = completion;
  opportunisticQueue = self->_opportunisticQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100353118;
  v15[3] = &unk_100BD8C88;
  v16 = identifierCopy;
  v17 = nameCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = nameCopy;
  v14 = identifierCopy;
  dispatch_async(opportunisticQueue, v15);
}

- (BOOL)diceRoll
{
  v2 = arc4random_uniform(0x64u);
  v3 = +[IDSServerBag sharedInstance];
  v4 = [v3 objectForKey:@"ids-opportunistic-send-percentage"];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    intValue = [v4 intValue];
    v6 = intValue;
    v7 = +[IDSFoundationLog opportunistic];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = intValue;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetched Opportunistic Send Percentage from Bag {opportunisticSendPercentage: %d}", v9, 8u);
    }
  }

  else
  {
    v6 = 10;
  }

  return v6 > v2;
}

- (void)sendOpportunisticDataIfNeededToDestination:(id)destination completion:(id)completion
{
  destinationCopy = destination;
  completionCopy = completion;
  opportunisticQueue = self->_opportunisticQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10035340C;
  block[3] = &unk_100BD8CB0;
  block[4] = self;
  v12 = destinationCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = destinationCopy;
  dispatch_async(opportunisticQueue, block);
}

- (BOOL)sendOpportunisticData:(id)data toDestination:(id)destination
{
  dataCopy = data;
  destinationCopy = destination;
  accountController = [(IDSOpportunisticDeliveryController *)self accountController];
  accountUniqueID = [dataCopy accountUniqueID];
  v10 = [accountController accountWithUniqueID:accountUniqueID];

  if (v10)
  {
    data = [dataCopy data];
    identifier = [dataCopy identifier];
    serviceName = [dataCopy serviceName];
    v47[0] = @"i";
    v47[1] = @"s";
    v48[0] = identifier;
    v48[1] = serviceName;
    v47[2] = @"d";
    v48[2] = data;
    v30 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:3];
    v13 = +[NSString stringGUID];
    v14 = IDSGetUUIDData();

    v15 = objc_alloc_init(IDSSendParameters);
    uniqueID = [v10 uniqueID];
    [v15 setAccountUUID:uniqueID];

    [v15 setMessage:v30];
    [v15 setCommand:&off_100C3BAA0];
    [v15 setPriority:300];
    [v15 setFireAndForget:1];
    [v15 setEncryptPayload:1];
    [v15 setDestinations:destinationCopy];
    [v15 setAlwaysSkipSelf:1];
    [v15 setMessageUUID:v14];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10035396C;
    v40[3] = &unk_100BD8CD8;
    v17 = identifier;
    v41 = v17;
    v18 = v14;
    v42 = v18;
    v19 = objc_retainBlock(v40);
    v20 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100353AA0;
    block[3] = &unk_100BD8D28;
    v33 = v10;
    v34 = v15;
    v35 = v17;
    v36 = v18;
    v39 = v19;
    v37 = serviceName;
    v38 = destinationCopy;
    v21 = serviceName;
    v22 = v18;
    v23 = v17;
    v24 = v19;
    v25 = v15;
    dispatch_async(v20, block);
  }

  else
  {
    v26 = +[IDSFoundationLog opportunistic];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [dataCopy identifier];
      accountUniqueID2 = [dataCopy accountUniqueID];
      *buf = 138412546;
      v44 = identifier2;
      v45 = 2112;
      v46 = accountUniqueID2;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Failed to find account for opportunistic send {identifier: %@, accountUniqueID: %@}", buf, 0x16u);
    }

    [dataCopy markInvalid];
  }

  return v10 != 0;
}

@end