@interface IDSStewieRequester
- (IDSStewieRequester)initWithDelegate:(id)delegate queue:(id)queue ctClient:(id)client store:(id)store userStore:(id)userStore bag:(id)bag;
- (IDSStewieRequesterDelegate)delegate;
- (NSArray)pendingPhoneNumbers;
- (double)debounceTime;
- (double)maxRetryTime;
- (void)addClearRequest:(id)request;
- (void)addCompanionDeviceUDIDsRequest:(id)request;
- (void)addCompanionPhoneNumbersRequest:(id)request;
- (void)addCompletionBlockToMessage:(id)message;
- (void)addDeviceAndPhoneFieldsToMessage:(id)message;
- (void)addDeviceInfoRequest:(id)request;
- (void)addPhoneNumberSigsToMessage:(id)message;
- (void)addPhoneNumbersRequest:(id)request;
- (void)addSMSConfig:(id)config;
- (void)addSessionKeyRequest:(id)request;
- (void)addSignaturesAndSendMessage:(id)message;
- (void)debounceTimerFired;
- (void)removeAndReportFailuresFromMessage:(id)message differingFromResponseCode:(int64_t)code;
@end

@implementation IDSStewieRequester

- (IDSStewieRequester)initWithDelegate:(id)delegate queue:(id)queue ctClient:(id)client store:(id)store userStore:(id)userStore bag:(id)bag
{
  delegateCopy = delegate;
  queueCopy = queue;
  clientCopy = client;
  storeCopy = store;
  userStoreCopy = userStore;
  bagCopy = bag;
  v35.receiver = self;
  v35.super_class = IDSStewieRequester;
  v20 = [(IDSStewieRequester *)&v35 init];
  v21 = v20;
  if (v20)
  {
    v20->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v20->_ctClient, client);
    objc_storeWeak(&v21->_delegate, delegateCopy);
    enqueuedMessage = v21->_enqueuedMessage;
    v21->_enqueuedMessage = 0;

    inProgressMessage = v21->_inProgressMessage;
    v21->_inProgressMessage = 0;

    v24 = +[IDSRegistrationCenter sharedInstance];
    validationQueue = [v24 validationQueue];
    validationQueue = v21->_validationQueue;
    v21->_validationQueue = validationQueue;

    objc_storeStrong(&v21->_store, store);
    v27 = [[IDSPhoneUserRegistry alloc] initWithQueue:queueCopy userStore:userStoreCopy];
    phoneUserRegistry = v21->_phoneUserRegistry;
    v21->_phoneUserRegistry = v27;

    v29 = [[FTMessageDelivery_DualMode alloc] initWithPreferedType:2];
    messageDelivery = v21->_messageDelivery;
    v21->_messageDelivery = v29;

    v31 = v21->_messageDelivery;
    v32 = +[IDSRegistrationRequestTracker sharedInstance];
    [(FTMessageDelivery_DualMode *)v31 addRequestObserver:v32];

    objc_storeStrong(&v21->_bag, bag);
    v21->_currentInfoEditCount = 0;
    debounceTimer = v21->_debounceTimer;
    v21->_debounceTimer = 0;
  }

  return v21;
}

- (double)debounceTime
{
  v2 = [(IDSStewieRequester *)self bag];
  v3 = [v2 objectForKey:@"sps-prov-debounce-time-v2"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 120.0;
  }

  if (+[IMUserDefaults stewieDebounceWindow]>= 1)
  {
    integerValue = +[IMUserDefaults stewieDebounceWindow];
  }

  return integerValue;
}

- (double)maxRetryTime
{
  v2 = [(IDSStewieRequester *)self bag];
  v3 = [v2 objectForKey:@"sps-prov-max-retry-time"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 1800.0;
  }

  return integerValue;
}

- (void)addDeviceAndPhoneFieldsToMessage:(id)message
{
  messageCopy = message;
  if ([messageCopy needsDeviceInfo])
  {
    store = [(IDSStewieRequester *)self store];
    persistedDeviceInfo = [store persistedDeviceInfo];

    if (persistedDeviceInfo)
    {
      [messageCopy addDeviceInfo:persistedDeviceInfo];
    }
  }

  if ([messageCopy wantsPhoneInfo])
  {
    store2 = [(IDSStewieRequester *)self store];
    persistedPhoneNumberInfos = [store2 persistedPhoneNumberInfos];

    if (persistedPhoneNumberInfos)
    {
      [messageCopy addPhoneNumberInfos:persistedPhoneNumberInfos];
    }
  }

  store3 = [(IDSStewieRequester *)self store];
  persistedStewieLoggingGUID = [store3 persistedStewieLoggingGUID];
  [messageCopy addLoggingGUID:persistedStewieLoggingGUID];

  if ([messageCopy wantsCompanionPhoneNumbers])
  {
    store4 = [(IDSStewieRequester *)self store];
    persistedCompanionPhoneNumbers = [store4 persistedCompanionPhoneNumbers];

    if (persistedCompanionPhoneNumbers)
    {
      store5 = [(IDSStewieRequester *)self store];
      persistedCompanionPhoneNumbers2 = [store5 persistedCompanionPhoneNumbers];
      [messageCopy addCompanionPhoneNumbers:persistedCompanionPhoneNumbers2];
    }
  }

  if ([messageCopy wantsCompanionDeviceUDIDs])
  {
    store6 = [(IDSStewieRequester *)self store];
    persistedCompanionDeviceIDToUDID = [store6 persistedCompanionDeviceIDToUDID];

    if (persistedCompanionDeviceIDToUDID)
    {
      store7 = [(IDSStewieRequester *)self store];
      persistedCompanionDeviceIDToUDID2 = [store7 persistedCompanionDeviceIDToUDID];
      [messageCopy addCompanionDeviceUDIDs:persistedCompanionDeviceIDToUDID2];
    }
  }
}

- (void)addPhoneNumberSigsToMessage:(id)message
{
  messageCopy = message;
  if ([messageCopy needsPhoneSigs])
  {
    phoneUserRegistry = [(IDSStewieRequester *)self phoneUserRegistry];
    phoneAuthenticationCertificatePublicKey = [phoneUserRegistry phoneAuthenticationCertificatePublicKey];

    phoneUserRegistry2 = [(IDSStewieRequester *)self phoneUserRegistry];
    phoneAuthenticationCertificatePrivateKey = [phoneUserRegistry2 phoneAuthenticationCertificatePrivateKey];

    [messageCopy addPhoneSigsForPublicKey:phoneAuthenticationCertificatePublicKey privateKey:phoneAuthenticationCertificatePrivateKey];
  }
}

- (NSArray)pendingPhoneNumbers
{
  enqueuedMessage = [(IDSStewieRequester *)self enqueuedMessage];

  if (enqueuedMessage)
  {
    enqueuedMessage2 = [(IDSStewieRequester *)self enqueuedMessage];
    phoneNumberInfos = [enqueuedMessage2 phoneNumberInfos];
    v6 = phoneNumberInfos;
    v7 = &__NSArray0__struct;
    if (phoneNumberInfos)
    {
      v7 = phoneNumberInfos;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)debounceTimerFired
{
  v3 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Debounce timer fired", buf, 2u);
  }

  os_unfair_lock_lock(&self->_lock);
  sub_1004D489C(self);
  v6 = 0;
  v4 = sub_1004D4930(self, &v6);
  v5 = v6;
  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    [(IDSStewieRequester *)self addSignaturesAndSendMessage:v5];
  }
}

- (void)addSignaturesAndSendMessage:(id)message
{
  messageCopy = message;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1004D4C6C;
  v6[3] = &unk_100BDA6B0;
  objc_copyWeak(&v8, &location);
  v5 = messageCopy;
  v7 = v5;
  sub_100922980(self, v5, v6);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)addCompletionBlockToMessage:(id)message
{
  messageCopy = message;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004D51BC;
  v5[3] = &unk_100BDE878;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [messageCopy setCompletionBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)removeAndReportFailuresFromMessage:(id)message differingFromResponseCode:(int64_t)code
{
  messageCopy = message;
  v6 = [messageCopy failuresOfType:1 withDifferingResponseCode:code];
  if (v6)
  {
    os_unfair_lock_lock(&self->_lock);
    v7 = [v6 __imArrayByApplyingBlock:&stru_100BDE8D8];
    inProgressMessage = [(IDSStewieRequester *)self inProgressMessage];
    [inProgressMessage removePhoneNumberInfos:v7];

    os_unfair_lock_unlock(&self->_lock);
    delegate = [(IDSStewieRequester *)self delegate];
    [delegate requester:self receivedFailuresForPhoneNumberInfos:v6];
  }

  v10 = [messageCopy failuresOfType:2 withDifferingResponseCode:code];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 __imArrayByApplyingBlock:&stru_100BDE8F8];
    inProgressMessage2 = [(IDSStewieRequester *)self inProgressMessage];
    [inProgressMessage2 removeSessionKeyInfos:v12];

    delegate2 = [(IDSStewieRequester *)self delegate];
    [delegate2 requester:self receivedFailuresForSessionKeyInfos:v11];
  }
}

- (IDSStewieRequesterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)addDeviceInfoRequest:(id)request
{
  requestCopy = request;
  sub_1004D5F60();
  sub_1004D5FB8();
  v7 = v5;
  sub_1004D5F9C(v5);
  v6 = +[IDSStewieProvisioningEventTracing sharedInstance];
  [v6 trackProvisioningChangesWithEventType:1];
}

- (void)addSMSConfig:(id)config
{
  configCopy = config;
  sub_1004D5F60();
  sub_1004D5FB8();
  v7 = v5;
  sub_1004D5F9C(v5);
  v6 = +[IDSStewieProvisioningEventTracing sharedInstance];
  [v6 trackProvisioningChangesWithEventType:0];
}

- (void)addPhoneNumbersRequest:(id)request
{
  requestCopy = request;
  sub_1004D5F60();
  sub_1004D5FB8();
  v7 = v5;
  sub_1004D5F9C(v5);
  v6 = +[IDSStewieProvisioningEventTracing sharedInstance];
  [v6 trackProvisioningChangesWithEventType:2];
}

- (void)addSessionKeyRequest:(id)request
{
  requestCopy = request;
  sub_1004D5F60();
  sub_1004D5FB8();
  v7 = v5;
  sub_1004D5F9C(v5);
  v6 = +[IDSStewieProvisioningEventTracing sharedInstance];
  [v6 trackProvisioningChangesWithEventType:3];
}

- (void)addClearRequest:(id)request
{
  requestCopy = request;
  sub_1004D5F60();
  sub_1004D5FB8();
  v6 = v5;
  sub_1004D5F9C(v5);
}

- (void)addCompanionPhoneNumbersRequest:(id)request
{
  requestCopy = request;
  sub_1004D5F60();
  sub_1004D5FB8();
  v7 = v5;
  sub_1004D5F9C(v5);
  v6 = +[IDSStewieProvisioningEventTracing sharedInstance];
  [v6 trackProvisioningChangesWithEventType:4];
}

- (void)addCompanionDeviceUDIDsRequest:(id)request
{
  requestCopy = request;
  sub_1004D5F60();
  sub_1004D5FB8();
  v7 = v5;
  sub_1004D5F9C(v5);
  v6 = +[IDSStewieProvisioningEventTracing sharedInstance];
  [v6 trackProvisioningChangesWithEventType:5];
}

@end