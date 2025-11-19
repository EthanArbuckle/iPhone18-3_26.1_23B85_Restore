@interface IDSOpportunisticDeliveryController
- (BOOL)diceRoll;
- (BOOL)sendOpportunisticData:(id)a3 toDestination:(id)a4;
- (IDSDAccountController)accountController;
- (IDSOpportunisticDeliveryController)init;
- (IDSOpportunisticDeliveryController)initWithCache:(id)a3 accountController:(id)a4;
- (void)addOpportunisticData:(id)a3 serviceName:(id)a4 accountUniqueID:(id)a5 identifier:(id)a6 options:(id)a7 completion:(id)a8;
- (void)removeOpportunisticDataForIdentifier:(id)a3 serviceName:(id)a4 completion:(id)a5;
- (void)sendOpportunisticDataIfNeededToDestination:(id)a3 completion:(id)a4;
@end

@implementation IDSOpportunisticDeliveryController

- (IDSOpportunisticDeliveryController)init
{
  v3 = objc_alloc_init(IDSOpportunisticCache);
  v4 = [(IDSOpportunisticDeliveryController *)self initWithCache:v3 accountController:0];

  return v4;
}

- (IDSOpportunisticDeliveryController)initWithCache:(id)a3 accountController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = IDSOpportunisticDeliveryController;
  v9 = [(IDSOpportunisticDeliveryController *)&v13 init];
  if (v9)
  {
    v10 = dispatch_queue_create("com.apple.ids.opportunisticdeliverycontroller", 0);
    opportunisticQueue = v9->_opportunisticQueue;
    v9->_opportunisticQueue = v10;

    objc_storeStrong(&v9->_cache, a3);
    objc_storeStrong(&v9->_accountController, a4);
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

- (void)addOpportunisticData:(id)a3 serviceName:(id)a4 accountUniqueID:(id)a5 identifier:(id)a6 options:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  opportunisticQueue = self->_opportunisticQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100352ED8;
  block[3] = &unk_100BD8C60;
  v28 = v17;
  v29 = v15;
  v30 = v16;
  v31 = v18;
  v32 = v14;
  v33 = self;
  v34 = v19;
  v21 = v19;
  v22 = v14;
  v23 = v18;
  v24 = v16;
  v25 = v15;
  v26 = v17;
  dispatch_async(opportunisticQueue, block);
}

- (void)removeOpportunisticDataForIdentifier:(id)a3 serviceName:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  opportunisticQueue = self->_opportunisticQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100353118;
  v15[3] = &unk_100BD8C88;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(opportunisticQueue, v15);
}

- (BOOL)diceRoll
{
  v2 = arc4random_uniform(0x64u);
  v3 = +[IDSServerBag sharedInstance];
  v4 = [v3 objectForKey:@"ids-opportunistic-send-percentage"];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [v4 intValue];
    v6 = v5;
    v7 = +[IDSFoundationLog opportunistic];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Fetched Opportunistic Send Percentage from Bag {opportunisticSendPercentage: %d}", v9, 8u);
    }
  }

  else
  {
    v6 = 10;
  }

  return v6 > v2;
}

- (void)sendOpportunisticDataIfNeededToDestination:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  opportunisticQueue = self->_opportunisticQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10035340C;
  block[3] = &unk_100BD8CB0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(opportunisticQueue, block);
}

- (BOOL)sendOpportunisticData:(id)a3 toDestination:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSOpportunisticDeliveryController *)self accountController];
  v9 = [v6 accountUniqueID];
  v10 = [v8 accountWithUniqueID:v9];

  if (v10)
  {
    v31 = [v6 data];
    v11 = [v6 identifier];
    v12 = [v6 serviceName];
    v47[0] = @"i";
    v47[1] = @"s";
    v48[0] = v11;
    v48[1] = v12;
    v47[2] = @"d";
    v48[2] = v31;
    v30 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:3];
    v13 = +[NSString stringGUID];
    v14 = IDSGetUUIDData();

    v15 = objc_alloc_init(IDSSendParameters);
    v16 = [v10 uniqueID];
    [v15 setAccountUUID:v16];

    [v15 setMessage:v30];
    [v15 setCommand:&off_100C3BAA0];
    [v15 setPriority:300];
    [v15 setFireAndForget:1];
    [v15 setEncryptPayload:1];
    [v15 setDestinations:v7];
    [v15 setAlwaysSkipSelf:1];
    [v15 setMessageUUID:v14];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10035396C;
    v40[3] = &unk_100BD8CD8;
    v17 = v11;
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
    v37 = v12;
    v38 = v7;
    v21 = v12;
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
      v27 = [v6 identifier];
      v28 = [v6 accountUniqueID];
      *buf = 138412546;
      v44 = v27;
      v45 = 2112;
      v46 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Failed to find account for opportunistic send {identifier: %@, accountUniqueID: %@}", buf, 0x16u);
    }

    [v6 markInvalid];
  }

  return v10 != 0;
}

@end