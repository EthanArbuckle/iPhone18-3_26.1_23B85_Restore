@interface IDSStewieSessionKeyManager
- (IDSStewieSessionKeyManager)initWithDelegate:(id)delegate ctClient:(id)client;
- (IDSStewieSessionKeyManagerDelegate)delegate;
- (id)constructKeyInfoToUpdate:(id)update;
- (void)clearState;
- (void)handleFailureForSessionKeyInfos:(id)infos;
- (void)handleSuccessForSessionKeyInfos:(id)infos;
- (void)performInitialKeyInfoCheck;
- (void)receivedStewieEnabledChanged:(id)changed;
- (void)stewieCTClient:(id)client receivedSessionKeyUpdate:(id)update;
- (void)stewieCTClient:(id)client receivedStewieMessageConfigChanged:(id)changed;
@end

@implementation IDSStewieSessionKeyManager

- (IDSStewieSessionKeyManager)initWithDelegate:(id)delegate ctClient:(id)client
{
  delegateCopy = delegate;
  clientCopy = client;
  v13.receiver = self;
  v13.super_class = IDSStewieSessionKeyManager;
  v8 = [(IDSStewieSessionKeyManager *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v9->_stewieCTClient, client);
    [(IDSStewieCTClient *)v9->_stewieCTClient setDelegate:v9];
    v10 = objc_alloc_init(NSMutableDictionary);
    inProgressKeyUpdates = v9->_inProgressKeyUpdates;
    v9->_inProgressKeyUpdates = v10;
  }

  return v9;
}

- (void)performInitialKeyInfoCheck
{
  v3 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Performing initial stewie key info check", v5, 2u);
  }

  stewieCTClient = [(IDSStewieSessionKeyManager *)self stewieCTClient];
  [stewieCTClient fetchSessionKeysUpdate];
}

- (void)clearState
{
  inProgressKeyUpdates = [(IDSStewieSessionKeyManager *)self inProgressKeyUpdates];
  [inProgressKeyUpdates removeAllObjects];

  [(IDSStewieSessionKeyManager *)self setSuccessKeyResponses:0];
}

- (void)handleSuccessForSessionKeyInfos:(id)infos
{
  infosCopy = infos;
  v5 = infosCopy;
  if (infosCopy)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = [infosCopy countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v26)
    {
      v6 = *v28;
      v25 = *v28;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v28 != v6)
          {
            objc_enumerationMutation(v5);
          }

          v8 = *(*(&v27 + 1) + 8 * i);
          v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 ctIndex]);
          inProgressKeyUpdates = [(IDSStewieSessionKeyManager *)self inProgressKeyUpdates];
          v11 = [inProgressKeyUpdates objectForKey:v9];

          sessionKey = [v8 sessionKey];
          v13 = [v11 key];
          v14 = [sessionKey isEqualToData:v13];

          if (v14)
          {
            v15 = v5;
            v16 = [IDSCTTransportSTK alloc];
            serverPublicKey = [v8 serverPublicKey];
            ctIndex = [v8 ctIndex];
            keyEPKI = [v8 keyEPKI];
            v20 = [(IDSCTTransportSTK *)v16 initWithSTK:serverPublicKey forIdx:ctIndex epki:keyEPKI];

            inProgressKeyUpdates2 = [(IDSStewieSessionKeyManager *)self inProgressKeyUpdates];
            [inProgressKeyUpdates2 removeObjectForKey:v9];

            successKeyResponses = [(IDSStewieSessionKeyManager *)self successKeyResponses];

            if (!successKeyResponses)
            {
              v23 = objc_alloc_init(NSMutableArray);
              [(IDSStewieSessionKeyManager *)self setSuccessKeyResponses:v23];
            }

            successKeyResponses2 = [(IDSStewieSessionKeyManager *)self successKeyResponses];
            [successKeyResponses2 addObject:v20];

            v5 = v15;
            v6 = v25;
          }
        }

        v26 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v26);
    }

    sub_100917E48(self);
  }
}

- (void)handleFailureForSessionKeyInfos:(id)infos
{
  infosCopy = infos;
  if (infosCopy)
  {
    sub_100918044(v5, infosCopy, v6, self);
  }
}

- (id)constructKeyInfoToUpdate:(id)update
{
  updateCopy = update;
  v4 = [IDSStewieSessionKeyInfo alloc];
  v5 = [updateCopy key];
  index = [updateCopy index];
  keyEPKI = [updateCopy keyEPKI];
  retiredEPKI = [updateCopy retiredEPKI];
  lastResort = [updateCopy lastResort];

  v10 = [(IDSStewieSessionKeyInfo *)v4 initWithSessionKey:v5 ctIndex:index epki:keyEPKI repki:retiredEPKI lastResort:lastResort];

  return v10;
}

- (void)stewieCTClient:(id)client receivedSessionKeyUpdate:(id)update
{
  updateCopy = update;
  v6 = objc_alloc_init(NSMutableArray);
  if (updateCopy)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = updateCopy;
    v7 = updateCopy;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v12 index]);
          inProgressKeyUpdates = [(IDSStewieSessionKeyManager *)self inProgressKeyUpdates];
          [inProgressKeyUpdates setObject:v12 forKey:v13];

          v15 = [(IDSStewieSessionKeyManager *)self constructKeyInfoToUpdate:v12];
          [v6 addObject:v15];
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v9);
    }

    v16 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v6 count];
      *buf = 134217984;
      v25 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Forwarding %ld session key infos to update to Coordinator", buf, 0xCu);
    }

    delegate = [(IDSStewieSessionKeyManager *)self delegate];
    [delegate sessionKeyManager:self sessionKeyInfosToUpdate:v6];

    updateCopy = v19;
  }
}

- (void)receivedStewieEnabledChanged:(id)changed
{
  delegate = [(IDSStewieSessionKeyManager *)self delegate];
  [delegate stewieEnabledChanged:self];
}

- (void)stewieCTClient:(id)client receivedStewieMessageConfigChanged:(id)changed
{
  changedCopy = changed;
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = changedCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Forwarding smsConfig: %@ to Coordinator", &v8, 0xCu);
  }

  delegate = [(IDSStewieSessionKeyManager *)self delegate];
  [delegate sessionKeyManager:self stewieMessageConfigChanged:changedCopy];
}

- (IDSStewieSessionKeyManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end