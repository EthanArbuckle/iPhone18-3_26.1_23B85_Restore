@interface NPDCompanionPeerPaymentStatusObserver
- (BOOL)_shouldCheckPeerPaymentStatus;
- (NPDCompanionPeerPaymentStatusObserver)initWithRemoteAdminConnectionServiceAgent:(id)agent;
- (void)_compareCompanionAndWatchPeerPaymentRegistrationStatus;
- (void)handleCompanionPeerPaymentWebServiceContextChanged;
- (void)handleWatchRequestForCompanionPeerPaymentRegistrationState;
@end

@implementation NPDCompanionPeerPaymentStatusObserver

- (NPDCompanionPeerPaymentStatusObserver)initWithRemoteAdminConnectionServiceAgent:(id)agent
{
  agentCopy = agent;
  v11.receiver = self;
  v11.super_class = NPDCompanionPeerPaymentStatusObserver;
  v6 = [(NPDCompanionPeerPaymentStatusObserver *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceAgent, agent);
    v8 = NPKDomainAccessorForDomain();
    globalDomainAccessor = v7->_globalDomainAccessor;
    v7->_globalDomainAccessor = v8;
  }

  return v7;
}

- (void)handleCompanionPeerPaymentWebServiceContextChanged
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notice: Companion peer payment web service context changed", v6, 2u);
    }
  }

  [(NPDCompanionPeerPaymentStatusObserver *)self _compareCompanionAndWatchPeerPaymentRegistrationStatus];
}

- (void)handleWatchRequestForCompanionPeerPaymentRegistrationState
{
  v3 = pk_Payment_log();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v5 = pk_Payment_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notice: Handling watch request for companion peer payment registration state", v6, 2u);
    }
  }

  [(NPDCompanionPeerPaymentStatusObserver *)self _compareCompanionAndWatchPeerPaymentRegistrationStatus];
}

- (BOOL)_shouldCheckPeerPaymentStatus
{
  v3 = PKCurrentRegion();
  v4 = NPKShouldAllowPeerPaymentRegistrationForWebService();

  globalDomainAccessor = [(NPDCompanionPeerPaymentStatusObserver *)self globalDomainAccessor];
  v6 = [globalDomainAccessor BOOLForKey:PKUserHasDisabledPeerPaymentKey];

  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109376;
      v11[1] = v4;
      v12 = 1024;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Notice: Should allow peer payment registration: %d; peer payment disabled: %d", v11, 0xEu);
    }
  }

  return v4 & (v6 ^ 1);
}

- (void)_compareCompanionAndWatchPeerPaymentRegistrationStatus
{
  if (![(NPDCompanionPeerPaymentStatusObserver *)self _shouldCheckPeerPaymentStatus])
  {
    v8 = pk_Payment_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (!v9)
    {
      return;
    }

    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Notice: Not checking companion peer payment registration state", v22, 2u);
    }

    goto LABEL_26;
  }

  v3 = +[PKPeerPaymentWebService sharedService];
  v4 = v3;
  if (v3 && ([v3 needsRegistration]& 1) == 0)
  {
    v10 = pk_Payment_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = pk_Payment_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Notice: Companion peer payment web service is registered. Checking watch peer payment web service…", v26, 2u);
      }
    }

    v13 = NPKPeerPaymentWebServiceContextPath();
    v7 = [PKPeerPaymentWebServiceContext contextWithArchive:v13];

    v14 = [PKPeerPaymentWebService alloc];
    v15 = objc_alloc_init(NPKPeerPaymentWebServiceCompanionTargetDevice);
    v16 = [v14 initWithContext:v7 targetDevice:v15];

    needsRegistration = [v16 needsRegistration];
    v18 = pk_Payment_log();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

    if (needsRegistration)
    {
      if (v19)
      {
        v20 = pk_Payment_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Notice: Watch peer payment web service needs registration. Informing watch that companion is registered.", v25, 2u);
        }
      }

      serviceAgent = [(NPDCompanionPeerPaymentStatusObserver *)self serviceAgent];
      [serviceAgent handleCompanionPeerPaymentRegistration];
    }

    else
    {
      if (!v19)
      {
        goto LABEL_24;
      }

      serviceAgent = pk_Payment_log();
      if (os_log_type_enabled(serviceAgent, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, serviceAgent, OS_LOG_TYPE_DEFAULT, "Notice: Companion and watch are both registered.", v24, 2u);
      }
    }

LABEL_24:
LABEL_25:

    goto LABEL_26;
  }

  v5 = pk_Payment_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v7 = pk_Payment_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Notice: Companion peer payment web service is not registered", buf, 2u);
    }

    goto LABEL_25;
  }

LABEL_26:
}

@end