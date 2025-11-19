@interface IDSRapportDeliveryController
+ (id)sharedInstance;
- (IDSRapportDeliveryController)init;
- (IDSRapportDeliveryController)initWithRapportClient:(id)a3;
- (IDSRapportDeliveryControllerDelegate)delegate;
- (void)dealloc;
- (void)rapportClient:(id)a3 didReceiveMessage:(id)a4 fromID:(id)a5;
- (void)sendMessage:(id)a3 messageID:(id)a4 topic:(id)a5 command:(id)a6 destinationIDs:(id)a7 completionBlock:(id)a8;
@end

@implementation IDSRapportDeliveryController

+ (id)sharedInstance
{
  if (qword_100CBD240 != -1)
  {
    sub_10091D37C();
  }

  v3 = qword_100CBD248;

  return v3;
}

- (IDSRapportDeliveryController)initWithRapportClient:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSRapportDeliveryController;
  v6 = [(IDSRapportDeliveryController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_messageID = 0;
    objc_storeStrong(&v6->_rapportClient, a3);
    [(IDSRapportClient *)v7->_rapportClient addDelegate:v7];
  }

  return v7;
}

- (IDSRapportDeliveryController)init
{
  v3 = +[IDSRapportClient sharedInstance];
  v4 = [(IDSRapportDeliveryController *)self initWithRapportClient:v3];

  return v4;
}

- (void)dealloc
{
  [(IDSRapportClient *)self->_rapportClient removeDelegate:self];
  v3.receiver = self;
  v3.super_class = IDSRapportDeliveryController;
  [(IDSRapportDeliveryController *)&v3 dealloc];
}

- (void)sendMessage:(id)a3 messageID:(id)a4 topic:(id)a5 command:(id)a6 destinationIDs:(id)a7 completionBlock:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = +[IDSFoundationLog bonjourDeliveryController];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v18 count]);
    *buf = 138544130;
    v56 = v15;
    v57 = 2114;
    v58 = v16;
    v59 = 2114;
    v60 = v21;
    v61 = 2114;
    v62 = v17;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Bonjour request to send local message {guid: %{public}@, topic: %{public}@, deviceIDs.count: %{public}@ command: %{public}@}", buf, 0x2Au);
  }

  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_100413480;
  v53[3] = &unk_100BDB638;
  v54 = v19;
  v38 = v19;
  v22 = objc_retainBlock(v53);
  v23 = [NSSet setWithArray:v18];
  [v23 allObjects];
  v24 = v37 = v18;

  v25 = [CUTAsyncReducer alloc];
  v26 = objc_alloc_init(NSMutableArray);
  v27 = [v25 initWithInput:v24 initialValue:v26];

  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_100413498;
  v46[3] = &unk_100BDB660;
  v28 = v15;
  v47 = v28;
  v29 = v16;
  v48 = v29;
  v49 = v17;
  v50 = v14;
  v51 = self;
  v30 = v22;
  v52 = v30;
  v31 = v14;
  v32 = v17;
  [v27 setReducerBlock:v46];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1004138BC;
  v40[3] = &unk_100BDB688;
  v40[4] = self;
  v41 = v28;
  v42 = v29;
  v43 = v24;
  v44 = v30;
  v45 = a2;
  v33 = v30;
  v34 = v24;
  v35 = v29;
  v36 = v28;
  [v27 reduceWithCompletion:v40];
}

- (void)rapportClient:(id)a3 didReceiveMessage:(id)a4 fromID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [v8 objectForKeyedSubscript:@"id"];
  v10 = [v8 objectForKeyedSubscript:@"t"];
  v11 = [v8 objectForKeyedSubscript:@"c"];
  v12 = [v8 objectForKeyedSubscript:@"p"];

  v13 = +[IDSFoundationLog bonjourDeliveryController];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138544131;
    v16 = v9;
    v17 = 2114;
    v18 = v10;
    v19 = 2113;
    v20 = v7;
    v21 = 2114;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Bonjour received message {guid: %{public}@, topic: %{public}@, deviceID: %{private}@, command: %{public}@}", &v15, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained deliveryController:self didReceiveMessage:v12 topic:v10 command:v11 deviceID:v7 messageID:v9];
}

- (IDSRapportDeliveryControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end