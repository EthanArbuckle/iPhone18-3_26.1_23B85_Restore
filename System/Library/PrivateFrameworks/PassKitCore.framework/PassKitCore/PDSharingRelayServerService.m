@interface PDSharingRelayServerService
- (PDSharingRelayServerService)initWithWebServiceCoordinator:(id)a3 domainService:(id)a4 pushNotificationManager:(id)a5 delegate:(id)a6;
- (id)relayEndpointForMailboxAddress:(id)a3;
- (void)_updatePassbookAssosiatedDomainsForSharing;
- (void)checkOutstandingMessagesOn:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)pingEndpoint:(id)a3 completion:(id)a4;
- (void)prewarmEndpointCreationOfType:(unint64_t)a3 count:(unint64_t)a4 completion:(id)a5;
- (void)relinquishEndpoint:(id)a3 completion:(id)a4;
- (void)sendMessageTo:(id)a3 message:(id)a4 completion:(id)a5;
- (void)universalShareURLForEndpoint:(id)a3 urlDecoration:(id)a4 completion:(id)a5;
@end

@implementation PDSharingRelayServerService

- (PDSharingRelayServerService)initWithWebServiceCoordinator:(id)a3 domainService:(id)a4 pushNotificationManager:(id)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = PDSharingRelayServerService;
  v15 = [(PDSharingRelayServerService *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_webServiceCoordinator, a3);
    objc_storeStrong(&v16->_domainService, a4);
    objc_storeStrong(&v16->_delegate, a6);
    v17 = objc_alloc_init(PDAppAttestService);
    appAttestService = v16->_appAttestService;
    v16->_appAttestService = v17;

    objc_storeStrong(&v16->_pushNotificationManager, a5);
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

- (id)relayEndpointForMailboxAddress:(id)a3
{
  v4 = a3;
  v5 = [[PDSharingRelayServerEndpoint alloc] initWithProvisioningType:0];
  sub_1005C8864(self, v5, v4);
  [(PDSharingRelayServerEndpoint *)v5 setMailboxStatus:0];
  v6 = [(PDPaymentWebServiceCoordinator *)self->_webServiceCoordinator sharedWebServiceContext];
  v7 = [v6 configuration];
  v8 = PKCurrentRegion();
  v9 = [v7 allowedRelayServerHostsForRegion:v8];

  v10 = [(PDSharingRelayServerEndpoint *)v5 relayServerHost];
  v11 = [v10 host];

  v12 = [v9 containsObject:v11];
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
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "RelayServer: Evaluated %{public}@, but host not allowed.", &v18, 0xCu);
    }

    v16 = 0;
  }

  return v16;
}

- (void)pingEndpoint:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 transportIdentifier];
    v10 = PKSharingLoggableMailboxAddress();
    *buf = 138543362;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "RelayServer: pinging remote mailbox %{public}@", buf, 0xCu);
  }

  v11 = [PDSharingRelayServerPingMailboxRequest alloc];
  v12 = [v6 transportIdentifier];
  v13 = [v6 relayServerHost];
  v14 = [(PDSharingRelayServerRequest *)v11 initWithMailboxIdentifier:v12 relayServerHost:v13];

  v15 = objc_opt_class();
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1001AE3C0;
  v18[3] = &unk_10084BF48;
  v19 = v6;
  v20 = v7;
  v16 = v7;
  v17 = v6;
  sub_1005C8C24(self, v14, v15, v18);
}

- (void)sendMessageTo:(id)a3 message:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if ([v10 doesRemoteMailboxExist])
  {
    sub_1005C8CD0(self, v10, v9, v8);
  }

  else
  {
    sub_1001AE574(self, v10, v9, 0, v8);
  }
}

- (void)checkOutstandingMessagesOn:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 mailboxStatus] == 4)
  {
    v8 = PDBasicError();
    v7[2](v7, 0, v8);
  }

  else
  {
    sub_1005CA660(v6, self, &v9, v7);
  }
}

- (void)relinquishEndpoint:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  IsActive = PDSharingRelayServerEndpointStatusIsActive([v6 mailboxStatus]);
  v9 = PKLogFacilityTypeGetObject();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (IsActive)
  {
    if (v10)
    {
      v14 = [v6 transportIdentifier];
      v15 = PKSharingLoggableMailboxAddress();
      *buf = 138412290;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "RelayServer: relinquishing remote mailbox %@", buf, 0xCu);
    }

    v16 = [PDSharingRelayServerRelinquishMailboxRequest alloc];
    v17 = [v6 transportIdentifier];
    v18 = [v6 relayServerHost];
    v13 = [(PDSharingRelayServerRequest *)v16 initWithMailboxIdentifier:v17 relayServerHost:v18];

    v19 = [v6 deviceClaim];
    [(PDSharingRelayServerRequest *)v13 setDeviceClaim:v19];

    v20 = objc_opt_class();
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1005C9FEC;
    v21[3] = &unk_10084C088;
    v22 = v6;
    v23 = self;
    v24 = v7;
    sub_1005C8C24(self, v13, v20, v21);
  }

  else
  {
    if (v10)
    {
      v11 = [v6 transportIdentifier];
      v12 = PKSharingLoggableMailboxAddress();
      *buf = 138543362;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "RelayServer: cannot relinquish inactive remote mailbox %{public}@", buf, 0xCu);
    }

    v13 = PDBasicError();
    (*(v7 + 2))(v7, 0, v13);
  }
}

- (void)universalShareURLForEndpoint:(id)a3 urlDecoration:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 doesRemoteMailboxExist])
  {
    v10 = [v7 relayServerHost];
    if (v10)
    {
      v11 = [[NSURLComponents alloc] initWithURL:v10 resolvingAgainstBaseURL:0];
      [v11 setScheme:@"https"];
      v12 = PKSharingRelayServerRequestVersion;
      v13 = PKSharingRelayServerMailboxURI;
      v14 = [v7 transportIdentifier];
      v15 = [NSString stringWithFormat:@"/v%@/%@/%@", v12, v13, v14];
      [v11 setPath:v15];

      v16 = [v7 payloadEncryptionPassword];
      v17 = [v16 base64EncodedStringWithOptions:0];
      [v11 setFragment:v17];

      v18 = objc_alloc_init(NSMutableArray);
      if (v8)
      {
        v19 = [v8 vertical] - 1;
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
        v9[2](v9, v24, 0);
      }

      else
      {
        v31 = PDBasicError();
        (v9)[2](v9, 0, v31);
      }
    }

    else
    {
      v28 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [v7 transportIdentifier];
        v30 = PKSharingLoggableMailboxAddress();
        *buf = 138543362;
        v33 = v30;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "RelayServer: Unable to generate share url for mailbox %{public}@ because it is missing a host", buf, 0xCu);
      }

      v11 = [NSError pkSharingError:1];
      (v9)[2](v9, 0, v11);
    }
  }

  else
  {
    v25 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v7 transportIdentifier];
      v27 = PKSharingLoggableMailboxAddress();
      *buf = 138543362;
      v33 = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "RelayServer: Unable to generate share url for mailbox %{public}@ because it doesn't exist on server", buf, 0xCu);
    }

    v10 = [NSError pkSharingError:1];
    (v9)[2](v9, 0, v10);
  }
}

- (void)prewarmEndpointCreationOfType:(unint64_t)a3 count:(unint64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (a3 == 2)
  {
    v10 = sub_1005CA118(self, 0);
    os_unfair_lock_lock(&self->_lock);
    v11 = [(NSMutableDictionary *)self->_availablePushNotificationTokens objectForKeyedSubscript:v10];
    v12 = [v11 count];

    os_unfair_lock_unlock(&self->_lock);
    v13 = a4 - v12;
    if (a4 <= v12)
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
    (*(v8 + 2))(v8, 1);
  }
}

- (void)_updatePassbookAssosiatedDomainsForSharing
{
  v20 = [(PDPaymentWebServiceCoordinator *)self->_webServiceCoordinator sharedWebServiceContext];
  v2 = [v20 configuration];
  v3 = PKCurrentRegion();
  v4 = [v2 relayServerHostsToHandleUniversalLinksForRegion:v3];

  v5 = objc_alloc_init(PDDynamicAssociatedDomainPattern);
@end