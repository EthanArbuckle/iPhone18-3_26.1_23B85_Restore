@interface IDSGroupServer
- (IDSGroupServer)init;
- (IDSGroupServer)initWithMessageDelivery:(id)delivery;
- (id)_getMessageCompletionCurrentEntries:(id)entries withCompletion:(id)completion;
- (id)_putMessageCompletionWithCompletion:(id)completion;
- (void)_queryGroupServerENID:(id)d withPreviousEntries:(id)entries completion:(id)completion;
- (void)publishGroupForKey:(id)key data:(id)data signature:(id)signature forwardingSig:(id)sig ENID:(id)d version:(id)version completion:(id)completion;
@end

@implementation IDSGroupServer

- (IDSGroupServer)init
{
  v3 = [[FTMessageDelivery_DualMode alloc] initWithPreferedType:2];
  v4 = [(IDSGroupServer *)self initWithMessageDelivery:v3];

  return v4;
}

- (IDSGroupServer)initWithMessageDelivery:(id)delivery
{
  deliveryCopy = delivery;
  v11.receiver = self;
  v11.super_class = IDSGroupServer;
  v6 = [(IDSGroupServer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_messageDelivery, delivery);
    v8 = [IDSPushHandler sharedInstanceWithPortName:@"com.apple.identityservicesd.aps"];
    pushHandler = v7->_pushHandler;
    v7->_pushHandler = v8;
  }

  return v7;
}

- (id)_getMessageCompletionCurrentEntries:(id)entries withCompletion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1004A1884;
  v10[3] = &unk_100BDD8A8;
  entriesCopy = entries;
  selfCopy = self;
  completionCopy = completion;
  v6 = completionCopy;
  v7 = entriesCopy;
  v8 = objc_retainBlock(v10);

  return v8;
}

- (id)_putMessageCompletionWithCompletion:(id)completion
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1004A1A78;
  v6[3] = &unk_100BDD8F8;
  v6[4] = self;
  completionCopy = completion;
  v3 = completionCopy;
  v4 = objc_retainBlock(v6);

  return v4;
}

- (void)publishGroupForKey:(id)key data:(id)data signature:(id)signature forwardingSig:(id)sig ENID:(id)d version:(id)version completion:(id)completion
{
  completionCopy = completion;
  versionCopy = version;
  dCopy = d;
  sigCopy = sig;
  signatureCopy = signature;
  dataCopy = data;
  keyCopy = key;
  v35 = [[FTMessageDelivery_DualMode alloc] initWithPreferedType:2];
  v18 = objc_alloc_init(IDSGroupPutMessage);
  v19 = +[FTDeviceSupport sharedInstance];
  model = [v19 model];

  v21 = +[FTDeviceSupport sharedInstance];
  productOSVersion = [v21 productOSVersion];

  v23 = +[FTDeviceSupport sharedInstance];
  productBuildVersion = [v23 productBuildVersion];

  v25 = +[FTDeviceSupport sharedInstance];
  deviceName = [v25 deviceName];

  pushHandler = [(IDSGroupServer *)self pushHandler];
  pushToken = [pushHandler pushToken];
  [(IDSGroupPutMessage *)v18 setPushToken:pushToken];

  IDSAssignPushIdentityToMessage();
  [(IDSGroupPutMessage *)v18 setHardwareVersion:model];
  [(IDSGroupPutMessage *)v18 setOsVersion:productOSVersion];
  [(IDSGroupPutMessage *)v18 setSoftwareVersion:productBuildVersion];
  [(IDSGroupPutMessage *)v18 setDeviceName:deviceName];
  [(IDSGroupPutMessage *)v18 setSigAlgorithm:@"SHA256withECDSA"];
  [(IDSGroupPutMessage *)v18 setForwardingSigAlgorithm:@"SHA256withECDSA"];
  [(IDSGroupPutMessage *)v18 setKey:keyCopy];

  [(IDSGroupPutMessage *)v18 setData:dataCopy];
  [(IDSGroupPutMessage *)v18 setSignature:signatureCopy];

  [(IDSGroupPutMessage *)v18 setEngramID:dCopy];
  [(IDSGroupPutMessage *)v18 setVersion:versionCopy];

  [(IDSGroupPutMessage *)v18 setForwardingSig:sigCopy];
  v29 = [(IDSGroupServer *)self _putMessageCompletionWithCompletion:completionCopy];

  [(IDSGroupPutMessage *)v18 setCompletionBlock:v29];
  [v35 sendMessage:v18];
}

- (void)_queryGroupServerENID:(id)d withPreviousEntries:(id)entries completion:(id)completion
{
  completionCopy = completion;
  entriesCopy = entries;
  dCopy = d;
  v23 = objc_alloc_init(IDSGroupGetMessage);
  v11 = +[FTDeviceSupport sharedInstance];
  model = [v11 model];

  v13 = +[FTDeviceSupport sharedInstance];
  productOSVersion = [v13 productOSVersion];

  v15 = +[FTDeviceSupport sharedInstance];
  productBuildVersion = [v15 productBuildVersion];

  v17 = +[FTDeviceSupport sharedInstance];
  deviceName = [v17 deviceName];

  pushHandler = [(IDSGroupServer *)self pushHandler];
  pushToken = [pushHandler pushToken];
  [(IDSGroupGetMessage *)v23 setPushToken:pushToken];

  IDSAssignPushIdentityToMessage();
  [(IDSGroupGetMessage *)v23 setHardwareVersion:model];
  [(IDSGroupGetMessage *)v23 setOsVersion:productOSVersion];
  [(IDSGroupGetMessage *)v23 setSoftwareVersion:productBuildVersion];
  [(IDSGroupGetMessage *)v23 setDeviceName:deviceName];
  [(IDSGroupGetMessage *)v23 setEngramID:dCopy];

  [(IDSGroupGetMessage *)v23 setVersion:&off_100C3C790];
  v21 = [(IDSGroupServer *)self _getMessageCompletionCurrentEntries:entriesCopy withCompletion:completionCopy];

  [(IDSGroupGetMessage *)v23 setCompletionBlock:v21];
  messageDelivery = [(IDSGroupServer *)self messageDelivery];
  [messageDelivery sendMessage:v23];
}

@end