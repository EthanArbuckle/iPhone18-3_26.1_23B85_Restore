@interface IDSStewieRequester
- (IDSStewieRequester)initWithDelegate:(id)a3 queue:(id)a4 ctClient:(id)a5 store:(id)a6 userStore:(id)a7 bag:(id)a8;
- (IDSStewieRequesterDelegate)delegate;
- (NSArray)pendingPhoneNumbers;
- (double)debounceTime;
- (double)maxRetryTime;
- (void)addClearRequest:(id)a3;
- (void)addCompanionDeviceUDIDsRequest:(id)a3;
- (void)addCompanionPhoneNumbersRequest:(id)a3;
- (void)addCompletionBlockToMessage:(id)a3;
- (void)addDeviceAndPhoneFieldsToMessage:(id)a3;
- (void)addDeviceInfoRequest:(id)a3;
- (void)addPhoneNumberSigsToMessage:(id)a3;
- (void)addPhoneNumbersRequest:(id)a3;
- (void)addSMSConfig:(id)a3;
- (void)addSessionKeyRequest:(id)a3;
- (void)addSignaturesAndSendMessage:(id)a3;
- (void)debounceTimerFired;
- (void)removeAndReportFailuresFromMessage:(id)a3 differingFromResponseCode:(int64_t)a4;
@end

@implementation IDSStewieRequester

- (IDSStewieRequester)initWithDelegate:(id)a3 queue:(id)a4 ctClient:(id)a5 store:(id)a6 userStore:(id)a7 bag:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v35.receiver = self;
  v35.super_class = IDSStewieRequester;
  v20 = [(IDSStewieRequester *)&v35 init];
  v21 = v20;
  if (v20)
  {
    v20->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v20->_ctClient, a5);
    objc_storeWeak(&v21->_delegate, v14);
    enqueuedMessage = v21->_enqueuedMessage;
    v21->_enqueuedMessage = 0;

    inProgressMessage = v21->_inProgressMessage;
    v21->_inProgressMessage = 0;

    v24 = +[IDSRegistrationCenter sharedInstance];
    v25 = [v24 validationQueue];
    validationQueue = v21->_validationQueue;
    v21->_validationQueue = v25;

    objc_storeStrong(&v21->_store, a6);
    v27 = [[IDSPhoneUserRegistry alloc] initWithQueue:v15 userStore:v18];
    phoneUserRegistry = v21->_phoneUserRegistry;
    v21->_phoneUserRegistry = v27;

    v29 = [[FTMessageDelivery_DualMode alloc] initWithPreferedType:2];
    messageDelivery = v21->_messageDelivery;
    v21->_messageDelivery = v29;

    v31 = v21->_messageDelivery;
    v32 = +[IDSRegistrationRequestTracker sharedInstance];
    [(FTMessageDelivery_DualMode *)v31 addRequestObserver:v32];

    objc_storeStrong(&v21->_bag, a8);
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
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 120.0;
  }

  if (+[IMUserDefaults stewieDebounceWindow]>= 1)
  {
    v4 = +[IMUserDefaults stewieDebounceWindow];
  }

  return v4;
}

- (double)maxRetryTime
{
  v2 = [(IDSStewieRequester *)self bag];
  v3 = [v2 objectForKey:@"sps-prov-max-retry-time"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 1800.0;
  }

  return v4;
}

- (void)addDeviceAndPhoneFieldsToMessage:(id)a3
{
  v18 = a3;
  if ([v18 needsDeviceInfo])
  {
    v4 = [(IDSStewieRequester *)self store];
    v5 = [v4 persistedDeviceInfo];

    if (v5)
    {
      [v18 addDeviceInfo:v5];
    }
  }

  if ([v18 wantsPhoneInfo])
  {
    v6 = [(IDSStewieRequester *)self store];
    v7 = [v6 persistedPhoneNumberInfos];

    if (v7)
    {
      [v18 addPhoneNumberInfos:v7];
    }
  }

  v8 = [(IDSStewieRequester *)self store];
  v9 = [v8 persistedStewieLoggingGUID];
  [v18 addLoggingGUID:v9];

  if ([v18 wantsCompanionPhoneNumbers])
  {
    v10 = [(IDSStewieRequester *)self store];
    v11 = [v10 persistedCompanionPhoneNumbers];

    if (v11)
    {
      v12 = [(IDSStewieRequester *)self store];
      v13 = [v12 persistedCompanionPhoneNumbers];
      [v18 addCompanionPhoneNumbers:v13];
    }
  }

  if ([v18 wantsCompanionDeviceUDIDs])
  {
    v14 = [(IDSStewieRequester *)self store];
    v15 = [v14 persistedCompanionDeviceIDToUDID];

    if (v15)
    {
      v16 = [(IDSStewieRequester *)self store];
      v17 = [v16 persistedCompanionDeviceIDToUDID];
      [v18 addCompanionDeviceUDIDs:v17];
    }
  }
}

- (void)addPhoneNumberSigsToMessage:(id)a3
{
  v8 = a3;
  if ([v8 needsPhoneSigs])
  {
    v4 = [(IDSStewieRequester *)self phoneUserRegistry];
    v5 = [v4 phoneAuthenticationCertificatePublicKey];

    v6 = [(IDSStewieRequester *)self phoneUserRegistry];
    v7 = [v6 phoneAuthenticationCertificatePrivateKey];

    [v8 addPhoneSigsForPublicKey:v5 privateKey:v7];
  }
}

- (NSArray)pendingPhoneNumbers
{
  v3 = [(IDSStewieRequester *)self enqueuedMessage];

  if (v3)
  {
    v4 = [(IDSStewieRequester *)self enqueuedMessage];
    v5 = [v4 phoneNumberInfos];
    v6 = v5;
    v7 = &__NSArray0__struct;
    if (v5)
    {
      v7 = v5;
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

- (void)addSignaturesAndSendMessage:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1004D4C6C;
  v6[3] = &unk_100BDA6B0;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  sub_100922980(self, v5, v6);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)addCompletionBlockToMessage:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1004D51BC;
  v5[3] = &unk_100BDE878;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  [v4 setCompletionBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)removeAndReportFailuresFromMessage:(id)a3 differingFromResponseCode:(int64_t)a4
{
  v15 = a3;
  v6 = [v15 failuresOfType:1 withDifferingResponseCode:a4];
  if (v6)
  {
    os_unfair_lock_lock(&self->_lock);
    v7 = [v6 __imArrayByApplyingBlock:&stru_100BDE8D8];
    v8 = [(IDSStewieRequester *)self inProgressMessage];
    [v8 removePhoneNumberInfos:v7];

    os_unfair_lock_unlock(&self->_lock);
    v9 = [(IDSStewieRequester *)self delegate];
    [v9 requester:self receivedFailuresForPhoneNumberInfos:v6];
  }

  v10 = [v15 failuresOfType:2 withDifferingResponseCode:a4];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 __imArrayByApplyingBlock:&stru_100BDE8F8];
    v13 = [(IDSStewieRequester *)self inProgressMessage];
    [v13 removeSessionKeyInfos:v12];

    v14 = [(IDSStewieRequester *)self delegate];
    [v14 requester:self receivedFailuresForSessionKeyInfos:v11];
  }
}

- (IDSStewieRequesterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)addDeviceInfoRequest:(id)a3
{
  v4 = a3;
  sub_1004D5F60();
  sub_1004D5FB8();
  v7 = v5;
  sub_1004D5F9C(v5);
  v6 = +[IDSStewieProvisioningEventTracing sharedInstance];
  [v6 trackProvisioningChangesWithEventType:1];
}

- (void)addSMSConfig:(id)a3
{
  v4 = a3;
  sub_1004D5F60();
  sub_1004D5FB8();
  v7 = v5;
  sub_1004D5F9C(v5);
  v6 = +[IDSStewieProvisioningEventTracing sharedInstance];
  [v6 trackProvisioningChangesWithEventType:0];
}

- (void)addPhoneNumbersRequest:(id)a3
{
  v4 = a3;
  sub_1004D5F60();
  sub_1004D5FB8();
  v7 = v5;
  sub_1004D5F9C(v5);
  v6 = +[IDSStewieProvisioningEventTracing sharedInstance];
  [v6 trackProvisioningChangesWithEventType:2];
}

- (void)addSessionKeyRequest:(id)a3
{
  v4 = a3;
  sub_1004D5F60();
  sub_1004D5FB8();
  v7 = v5;
  sub_1004D5F9C(v5);
  v6 = +[IDSStewieProvisioningEventTracing sharedInstance];
  [v6 trackProvisioningChangesWithEventType:3];
}

- (void)addClearRequest:(id)a3
{
  v4 = a3;
  sub_1004D5F60();
  sub_1004D5FB8();
  v6 = v5;
  sub_1004D5F9C(v5);
}

- (void)addCompanionPhoneNumbersRequest:(id)a3
{
  v4 = a3;
  sub_1004D5F60();
  sub_1004D5FB8();
  v7 = v5;
  sub_1004D5F9C(v5);
  v6 = +[IDSStewieProvisioningEventTracing sharedInstance];
  [v6 trackProvisioningChangesWithEventType:4];
}

- (void)addCompanionDeviceUDIDsRequest:(id)a3
{
  v4 = a3;
  sub_1004D5F60();
  sub_1004D5FB8();
  v7 = v5;
  sub_1004D5F9C(v5);
  v6 = +[IDSStewieProvisioningEventTracing sharedInstance];
  [v6 trackProvisioningChangesWithEventType:5];
}

@end