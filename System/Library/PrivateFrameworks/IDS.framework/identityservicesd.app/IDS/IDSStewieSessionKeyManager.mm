@interface IDSStewieSessionKeyManager
- (IDSStewieSessionKeyManager)initWithDelegate:(id)a3 ctClient:(id)a4;
- (IDSStewieSessionKeyManagerDelegate)delegate;
- (id)constructKeyInfoToUpdate:(id)a3;
- (void)clearState;
- (void)handleFailureForSessionKeyInfos:(id)a3;
- (void)handleSuccessForSessionKeyInfos:(id)a3;
- (void)performInitialKeyInfoCheck;
- (void)receivedStewieEnabledChanged:(id)a3;
- (void)stewieCTClient:(id)a3 receivedSessionKeyUpdate:(id)a4;
- (void)stewieCTClient:(id)a3 receivedStewieMessageConfigChanged:(id)a4;
@end

@implementation IDSStewieSessionKeyManager

- (IDSStewieSessionKeyManager)initWithDelegate:(id)a3 ctClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = IDSStewieSessionKeyManager;
  v8 = [(IDSStewieSessionKeyManager *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v6);
    objc_storeStrong(&v9->_stewieCTClient, a4);
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

  v4 = [(IDSStewieSessionKeyManager *)self stewieCTClient];
  [v4 fetchSessionKeysUpdate];
}

- (void)clearState
{
  v3 = [(IDSStewieSessionKeyManager *)self inProgressKeyUpdates];
  [v3 removeAllObjects];

  [(IDSStewieSessionKeyManager *)self setSuccessKeyResponses:0];
}

- (void)handleSuccessForSessionKeyInfos:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          v10 = [(IDSStewieSessionKeyManager *)self inProgressKeyUpdates];
          v11 = [v10 objectForKey:v9];

          v12 = [v8 sessionKey];
          v13 = [v11 key];
          v14 = [v12 isEqualToData:v13];

          if (v14)
          {
            v15 = v5;
            v16 = [IDSCTTransportSTK alloc];
            v17 = [v8 serverPublicKey];
            v18 = [v8 ctIndex];
            v19 = [v8 keyEPKI];
            v20 = [(IDSCTTransportSTK *)v16 initWithSTK:v17 forIdx:v18 epki:v19];

            v21 = [(IDSStewieSessionKeyManager *)self inProgressKeyUpdates];
            [v21 removeObjectForKey:v9];

            v22 = [(IDSStewieSessionKeyManager *)self successKeyResponses];

            if (!v22)
            {
              v23 = objc_alloc_init(NSMutableArray);
              [(IDSStewieSessionKeyManager *)self setSuccessKeyResponses:v23];
            }

            v24 = [(IDSStewieSessionKeyManager *)self successKeyResponses];
            [v24 addObject:v20];

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

- (void)handleFailureForSessionKeyInfos:(id)a3
{
  v4 = a3;
  if (v4)
  {
    sub_100918044(v5, v4, v6, self);
  }
}

- (id)constructKeyInfoToUpdate:(id)a3
{
  v3 = a3;
  v4 = [IDSStewieSessionKeyInfo alloc];
  v5 = [v3 key];
  v6 = [v3 index];
  v7 = [v3 keyEPKI];
  v8 = [v3 retiredEPKI];
  v9 = [v3 lastResort];

  v10 = [(IDSStewieSessionKeyInfo *)v4 initWithSessionKey:v5 ctIndex:v6 epki:v7 repki:v8 lastResort:v9];

  return v10;
}

- (void)stewieCTClient:(id)a3 receivedSessionKeyUpdate:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(NSMutableArray);
  if (v5)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = v5;
    v7 = v5;
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
          v14 = [(IDSStewieSessionKeyManager *)self inProgressKeyUpdates];
          [v14 setObject:v12 forKey:v13];

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

    v18 = [(IDSStewieSessionKeyManager *)self delegate];
    [v18 sessionKeyManager:self sessionKeyInfosToUpdate:v6];

    v5 = v19;
  }
}

- (void)receivedStewieEnabledChanged:(id)a3
{
  v4 = [(IDSStewieSessionKeyManager *)self delegate];
  [v4 stewieEnabledChanged:self];
}

- (void)stewieCTClient:(id)a3 receivedStewieMessageConfigChanged:(id)a4
{
  v5 = a4;
  v6 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Forwarding smsConfig: %@ to Coordinator", &v8, 0xCu);
  }

  v7 = [(IDSStewieSessionKeyManager *)self delegate];
  [v7 sessionKeyManager:self stewieMessageConfigChanged:v5];
}

- (IDSStewieSessionKeyManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end