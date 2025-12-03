@interface PDSharingRelayServerService
- (PDSharingRelayServerService)initWithWebServiceCoordinator:(id)coordinator domainService:(id)service pushNotificationManager:(id)manager delegate:(id)delegate;
- (id)relayEndpointForMailboxAddress:(id)address;
- (void)_updatePassbookAssosiatedDomainsForSharing;
- (void)checkOutstandingMessagesOn:(id)on completion:(id)completion;
- (void)dealloc;
- (void)pingEndpoint:(id)endpoint completion:(id)completion;
- (void)prewarmEndpointCreationOfType:(unint64_t)type count:(unint64_t)count completion:(id)completion;
- (void)relinquishEndpoint:(id)endpoint completion:(id)completion;
- (void)sendMessageTo:(id)to message:(id)message completion:(id)completion;
- (void)universalShareURLForEndpoint:(id)endpoint urlDecoration:(id)decoration completion:(id)completion;
@end

@implementation PDSharingRelayServerService

- (PDSharingRelayServerService)initWithWebServiceCoordinator:(id)coordinator domainService:(id)service pushNotificationManager:(id)manager delegate:(id)delegate
{
  coordinatorCopy = coordinator;
  serviceCopy = service;
  managerCopy = manager;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = PDSharingRelayServerService;
  v15 = [(PDSharingRelayServerService *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_webServiceCoordinator, coordinator);
    objc_storeStrong(&v16->_domainService, service);
    objc_storeStrong(&v16->_delegate, delegate);
    v17 = objc_alloc_init(PDAppAttestService);
    appAttestService = v16->_appAttestService;
    v16->_appAttestService = v17;

    objc_storeStrong(&v16->_pushNotificationManager, manager);
    v16->_lock._os_unfair_lock_opaque = 0;
    v19 = objc_alloc_init(NSMutableDictionary);
    availablePushNotificationTokens = v16->_availablePushNotificationTokens;
    v16->_availablePushNotificationTokens = v19;

    [(PDSharingRelayServerService *)v16 _updatePassbookAssosiatedDomainsForSharing];
    [(PDPaymentWebServiceCoordinator *)v16->_webServiceCoordinator registerObserver:v16];
  }

  return v16;
}

- (void)dealloc
{
  [(PDPaymentWebServiceCoordinator *)self->_webServiceCoordinator unregisterObserver:self];
  v3.receiver = self;
  v3.super_class = PDSharingRelayServerService;
  [(PDSharingRelayServerService *)&v3 dealloc];
}

- (id)relayEndpointForMailboxAddress:(id)address
{
  addressCopy = address;
  v5 = [[PDSharingRelayServerEndpoint alloc] initWithProvisioningType:0];
  sub_1005C8864(self, v5, addressCopy);
  [(PDSharingRelayServerEndpoint *)v5 setMailboxStatus:0];
  sharedWebServiceContext = [(PDPaymentWebServiceCoordinator *)self->_webServiceCoordinator sharedWebServiceContext];
  configuration = [sharedWebServiceContext configuration];
  v8 = PKCurrentRegion();
  v9 = [configuration allowedRelayServerHostsForRegion:v8];

  relayServerHost = [(PDSharingRelayServerEndpoint *)v5 relayServerHost];
  host = [relayServerHost host];

  v12 = [v9 containsObject:host];
  v13 = PKLogFacilityTypeGetObject();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v15 = PKSharingLoggableMailboxAddress();
      v18 = 138543619;
      v19 = v15;
      v20 = 2113;
      v21 = v5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "RelayServer: Evaluated %{public}@ and created endpoint %{private}@", &v18, 0x16u);
    }

    v16 = v5;
  }

  else
  {
    if (v14)
    {
      v18 = 138543362;
      v19 = host;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "RelayServer: Evaluated %{public}@, but host not allowed.", &v18, 0xCu);
    }

    v16 = 0;
  }

  return v16;
}

- (void)pingEndpoint:(id)endpoint completion:(id)completion
{
  endpointCopy = endpoint;
  completionCopy = completion;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    transportIdentifier = [endpointCopy transportIdentifier];
    v10 = PKSharingLoggableMailboxAddress();
    *buf = 138543362;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "RelayServer: pinging remote mailbox %{public}@", buf, 0xCu);
  }

  v11 = [PDSharingRelayServerPingMailboxRequest alloc];
  transportIdentifier2 = [endpointCopy transportIdentifier];
  relayServerHost = [endpointCopy relayServerHost];
  v14 = [(PDSharingRelayServerRequest *)v11 initWithMailboxIdentifier:transportIdentifier2 relayServerHost:relayServerHost];

  v15 = objc_opt_class();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001AE3C0;
  v18[3] = &unk_10084BF48;
  v19 = endpointCopy;
  v20 = completionCopy;
  v16 = completionCopy;
  v17 = endpointCopy;
  sub_1005C8C24(self, v14, v15, v18);
}

- (void)sendMessageTo:(id)to message:(id)message completion:(id)completion
{
  completionCopy = completion;
  messageCopy = message;
  toCopy = to;
  if ([toCopy doesRemoteMailboxExist])
  {
    sub_1005C8CD0(self, toCopy, messageCopy, completionCopy);
  }

  else
  {
    sub_1001AE574(self, toCopy, messageCopy, 0, completionCopy);
  }
}

- (void)checkOutstandingMessagesOn:(id)on completion:(id)completion
{
  onCopy = on;
  completionCopy = completion;
  if ([onCopy mailboxStatus] == 4)
  {
    v8 = PDBasicError();
    completionCopy[2](completionCopy, 0, v8);
  }

  else
  {
    sub_1005CA660(onCopy, self, &v9, completionCopy);
  }
}

- (void)relinquishEndpoint:(id)endpoint completion:(id)completion
{
  endpointCopy = endpoint;
  completionCopy = completion;
  IsActive = PDSharingRelayServerEndpointStatusIsActive([endpointCopy mailboxStatus]);
  v9 = PKLogFacilityTypeGetObject();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (IsActive)
  {
    if (v10)
    {
      transportIdentifier = [endpointCopy transportIdentifier];
      v15 = PKSharingLoggableMailboxAddress();
      *buf = 138412290;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "RelayServer: relinquishing remote mailbox %@", buf, 0xCu);
    }

    v16 = [PDSharingRelayServerRelinquishMailboxRequest alloc];
    transportIdentifier2 = [endpointCopy transportIdentifier];
    relayServerHost = [endpointCopy relayServerHost];
    v13 = [(PDSharingRelayServerRequest *)v16 initWithMailboxIdentifier:transportIdentifier2 relayServerHost:relayServerHost];

    deviceClaim = [endpointCopy deviceClaim];
    [(PDSharingRelayServerRequest *)v13 setDeviceClaim:deviceClaim];

    v20 = objc_opt_class();
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1005C9FEC;
    v21[3] = &unk_10084C088;
    v22 = endpointCopy;
    selfCopy = self;
    v24 = completionCopy;
    sub_1005C8C24(self, v13, v20, v21);
  }

  else
  {
    if (v10)
    {
      transportIdentifier3 = [endpointCopy transportIdentifier];
      v12 = PKSharingLoggableMailboxAddress();
      *buf = 138543362;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "RelayServer: cannot relinquish inactive remote mailbox %{public}@", buf, 0xCu);
    }

    v13 = PDBasicError();
    (*(completionCopy + 2))(completionCopy, 0, v13);
  }
}

- (void)universalShareURLForEndpoint:(id)endpoint urlDecoration:(id)decoration completion:(id)completion
{
  endpointCopy = endpoint;
  decorationCopy = decoration;
  completionCopy = completion;
  if ([endpointCopy doesRemoteMailboxExist])
  {
    relayServerHost = [endpointCopy relayServerHost];
    if (relayServerHost)
    {
      v11 = [[NSURLComponents alloc] initWithURL:relayServerHost resolvingAgainstBaseURL:0];
      [v11 setScheme:@"https"];
      v12 = PKSharingRelayServerRequestVersion;
      v13 = PKSharingRelayServerMailboxURI;
      transportIdentifier = [endpointCopy transportIdentifier];
      v15 = [NSString stringWithFormat:@"/v%@/%@/%@", v12, v13, transportIdentifier];
      [v11 setPath:v15];

      payloadEncryptionPassword = [endpointCopy payloadEncryptionPassword];
      v17 = [payloadEncryptionPassword base64EncodedStringWithOptions:0];
      [v11 setFragment:v17];

      v18 = objc_alloc_init(NSMutableArray);
      if (decorationCopy)
      {
        v19 = [decorationCopy vertical] - 1;
        if (v19 <= 2)
        {
          v20 = **(&off_10084C190 + v19);
          if (v20)
          {
            v21 = v20;
            v22 = [NSURLQueryItem alloc];
            v23 = [v22 initWithName:PKSharingURLVerticalKey value:v21];
            [v18 addObject:v23];
          }
        }
      }

      [v11 setQueryItems:v18];
      v24 = [v11 URL];
      if (v24)
      {
        completionCopy[2](completionCopy, v24, 0);
      }

      else
      {
        v31 = PDBasicError();
        (completionCopy)[2](completionCopy, 0, v31);
      }
    }

    else
    {
      v28 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        transportIdentifier2 = [endpointCopy transportIdentifier];
        v30 = PKSharingLoggableMailboxAddress();
        *buf = 138543362;
        v33 = v30;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "RelayServer: Unable to generate share url for mailbox %{public}@ because it is missing a host", buf, 0xCu);
      }

      v11 = [NSError pkSharingError:1];
      (completionCopy)[2](completionCopy, 0, v11);
    }
  }

  else
  {
    v25 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      transportIdentifier3 = [endpointCopy transportIdentifier];
      v27 = PKSharingLoggableMailboxAddress();
      *buf = 138543362;
      v33 = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "RelayServer: Unable to generate share url for mailbox %{public}@ because it doesn't exist on server", buf, 0xCu);
    }

    relayServerHost = [NSError pkSharingError:1];
    (completionCopy)[2](completionCopy, 0, relayServerHost);
  }
}

- (void)prewarmEndpointCreationOfType:(unint64_t)type count:(unint64_t)count completion:(id)completion
{
  completionCopy = completion;
  v9 = completionCopy;
  if (type == 2)
  {
    v10 = sub_1005CA118(self, 0);
    os_unfair_lock_lock(&self->_lock);
    v11 = [(NSMutableDictionary *)self->_availablePushNotificationTokens objectForKeyedSubscript:v10];
    v12 = [v11 count];

    os_unfair_lock_unlock(&self->_lock);
    v13 = count - v12;
    if (count <= v12)
    {
      v9[2](v9, 1);
    }

    else
    {
      v14 = objc_alloc_init(PKAsyncUnaryOperationComposer);
      v21[0] = 0;
      v21[1] = v21;
      v21[2] = 0x3032000000;
      v21[3] = sub_100005BD0;
      v21[4] = sub_10000B1F4;
      v22 = 0;
      do
      {
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1005CA2B8;
        v20[3] = &unk_10083EC68;
        v20[4] = self;
        v20[5] = v21;
        [v14 addOperation:v20];
        --v13;
      }

      while (v13);
      v15 = +[NSNull null];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1001AFA84;
      v17[3] = &unk_10084C0D8;
      v19 = v21;
      v18 = v9;
      v16 = [v14 evaluateWithInput:v15 completion:v17];

      _Block_object_dispose(v21, 8);
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

- (void)_updatePassbookAssosiatedDomainsForSharing
{
  sharedWebServiceContext = [(PDPaymentWebServiceCoordinator *)self->_webServiceCoordinator sharedWebServiceContext];
  configuration = [sharedWebServiceContext configuration];
  v3 = PKCurrentRegion();
  v4 = [configuration relayServerHostsToHandleUniversalLinksForRegion:v3];

  v5 = objc_alloc_init(PDDynamicAssociatedDomainPattern);
@end