@interface IDSGroupServer
- (IDSGroupServer)init;
- (IDSGroupServer)initWithMessageDelivery:(id)a3;
- (id)_getMessageCompletionCurrentEntries:(id)a3 withCompletion:(id)a4;
- (id)_putMessageCompletionWithCompletion:(id)a3;
- (void)_queryGroupServerENID:(id)a3 withPreviousEntries:(id)a4 completion:(id)a5;
- (void)publishGroupForKey:(id)a3 data:(id)a4 signature:(id)a5 forwardingSig:(id)a6 ENID:(id)a7 version:(id)a8 completion:(id)a9;
@end

@implementation IDSGroupServer

- (IDSGroupServer)init
{
  v3 = [[FTMessageDelivery_DualMode alloc] initWithPreferedType:2];
  v4 = [(IDSGroupServer *)self initWithMessageDelivery:v3];

  return v4;
}

- (IDSGroupServer)initWithMessageDelivery:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = IDSGroupServer;
  v6 = [(IDSGroupServer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messageDelivery, a3);
    v8 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
    pushHandler = v7->_pushHandler;
    v7->_pushHandler = v8;
  }

  return v7;
}

- (id)_getMessageCompletionCurrentEntries:(id)a3 withCompletion:(id)a4
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1004A1884;
  v10[3] = &unk_100BDD8A8;
  v11 = a3;
  v12 = self;
  v13 = a4;
  v6 = v13;
  v7 = v11;
  v8 = objc_retainBlock(v10);

  return v8;
}

- (id)_putMessageCompletionWithCompletion:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1004A1A78;
  v6[3] = &unk_100BDD8F8;
  v6[4] = self;
  v7 = a3;
  v3 = v7;
  v4 = objc_retainBlock(v6);

  return v4;
}

- (void)publishGroupForKey:(id)a3 data:(id)a4 signature:(id)a5 forwardingSig:(id)a6 ENID:(id)a7 version:(id)a8 completion:(id)a9
{
  v34 = a9;
  v33 = a8;
  v31 = a7;
  v32 = a6;
  v30 = a5;
  v16 = a4;
  v17 = a3;
  v35 = [[FTMessageDelivery_DualMode alloc] initWithPreferedType:2];
  v18 = objc_alloc_init(IDSGroupPutMessage);
  v19 = +[FTDeviceSupport sharedInstance];
  v20 = [v19 model];

  v21 = +[FTDeviceSupport sharedInstance];
  v22 = [v21 productOSVersion];

  v23 = +[FTDeviceSupport sharedInstance];
  v24 = [v23 productBuildVersion];

  v25 = +[FTDeviceSupport sharedInstance];
  v26 = [v25 deviceName];

  v27 = [(IDSGroupServer *)self pushHandler];
  v28 = [v27 pushToken];
  [(IDSGroupPutMessage *)v18 setPushToken:v28];

  IDSAssignPushIdentityToMessage();
  [(IDSGroupPutMessage *)v18 setHardwareVersion:v20];
  [(IDSGroupPutMessage *)v18 setOsVersion:v22];
  [(IDSGroupPutMessage *)v18 setSoftwareVersion:v24];
  [(IDSGroupPutMessage *)v18 setDeviceName:v26];
  [(IDSGroupPutMessage *)v18 setSigAlgorithm:@"SHA256withECDSA"];
  [(IDSGroupPutMessage *)v18 setForwardingSigAlgorithm:@"SHA256withECDSA"];
  [(IDSGroupPutMessage *)v18 setKey:v17];

  [(IDSGroupPutMessage *)v18 setData:v16];
  [(IDSGroupPutMessage *)v18 setSignature:v30];

  [(IDSGroupPutMessage *)v18 setEngramID:v31];
  [(IDSGroupPutMessage *)v18 setVersion:v33];

  [(IDSGroupPutMessage *)v18 setForwardingSig:v32];
  v29 = [(IDSGroupServer *)self _putMessageCompletionWithCompletion:v34];

  [(IDSGroupPutMessage *)v18 setCompletionBlock:v29];
  [v35 sendMessage:v18];
}

- (void)_queryGroupServerENID:(id)a3 withPreviousEntries:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v23 = objc_alloc_init(IDSGroupGetMessage);
  v11 = +[FTDeviceSupport sharedInstance];
  v12 = [v11 model];

  v13 = +[FTDeviceSupport sharedInstance];
  v14 = [v13 productOSVersion];

  v15 = +[FTDeviceSupport sharedInstance];
  v16 = [v15 productBuildVersion];

  v17 = +[FTDeviceSupport sharedInstance];
  v18 = [v17 deviceName];

  v19 = [(IDSGroupServer *)self pushHandler];
  v20 = [v19 pushToken];
  [(IDSGroupGetMessage *)v23 setPushToken:v20];

  IDSAssignPushIdentityToMessage();
  [(IDSGroupGetMessage *)v23 setHardwareVersion:v12];
  [(IDSGroupGetMessage *)v23 setOsVersion:v14];
  [(IDSGroupGetMessage *)v23 setSoftwareVersion:v16];
  [(IDSGroupGetMessage *)v23 setDeviceName:v18];
  [(IDSGroupGetMessage *)v23 setEngramID:v10];

  [(IDSGroupGetMessage *)v23 setVersion:&off_100C3C790];
  v21 = [(IDSGroupServer *)self _getMessageCompletionCurrentEntries:v9 withCompletion:v8];

  [(IDSGroupGetMessage *)v23 setCompletionBlock:v21];
  v22 = [(IDSGroupServer *)self messageDelivery];
  [v22 sendMessage:v23];
}

@end