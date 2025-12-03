@interface TrialStateRelay
- (TrialStateRelay)initWithMonitoring:(TrialStateDelegate *)monitoring;
- (void)_updateTrialState:(id)state experimentIdentifiers:(id)identifiers;
- (void)dealloc;
- (void)refreshTrialState:(id)state;
- (void)subscribeToTrialNamespace:(id)namespace;
- (void)unsubscribeAllUpdateHandlers;
@end

@implementation TrialStateRelay

- (TrialStateRelay)initWithMonitoring:(TrialStateDelegate *)monitoring
{
  v28.receiver = self;
  v28.super_class = TrialStateRelay;
  v4 = [(TrialStateRelay *)&v28 init];
  if (v4)
  {
    if (objc_opt_class())
    {
      v4->_trialStateDelegate = monitoring;
      v5 = dispatch_queue_create("analyticsd.Trial.CallbackQueue", 0);
      fObj = v4->_trialClientQueue.fObj.fObj;
      v4->_trialClientQueue.fObj.fObj = v5;

      v7 = objc_opt_new();
      notificationTokens = v4->_notificationTokens;
      v4->_notificationTokens = v7;

      v9 = [TRIClient clientWithIdentifier:334];
      trialClient = v4->trialClient;
      v4->trialClient = v9;

      v11 = qword_100192D98;
      if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[TrialStateRelay] TrialIdentifier: initialized trialClient for CA project ID", buf, 2u);
      }

      v27 = 0;
      v12 = [TRIClient getSandboxExtensionTokensForIdentifierQueryWithError:&v27];
      v26 = v27;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v34 objects:v33 count:16];
      if (v14)
      {
        v15 = *v35;
        do
        {
          v16 = 0;
          do
          {
            if (*v35 != v15)
            {
              objc_enumerationMutation(v13);
            }

            v17 = *(*(&v34 + 1) + 8 * v16);
            if (v17)
            {
              [v17 UTF8String];
              v18 = [NSNumber numberWithLongLong:sandbox_extension_consume()];
              if (([v18 longLongValue] & 0x8000000000000000) != 0)
              {
                v19 = qword_100192D98;
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  v21 = *__error();
                  *buf = 67109120;
                  v32 = v21;
                  _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[TrialStateRelay] Trial: Failed to consume extension: %i", buf, 8u);
                }
              }

              [(NSMutableArray *)v4->_sbExtensionHandles addObject:v18];
            }

            else
            {
              v20 = qword_100192D98;
              if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
              {
                sub_10011E500(&v29, v30, v20);
              }
            }

            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [v13 countByEnumeratingWithState:&v34 objects:v33 count:16];
        }

        while (v14);
      }

      if (v26)
      {
        v22 = qword_100192D98;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v26 localizedDescription];
          sub_10011E540(localizedDescription, buf, v22);
        }
      }
    }

    v24 = v4;
  }

  return v4;
}

- (void)dealloc
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_sbExtensionHandles;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (v4)
  {
    v6 = *v16;
    *&v5 = 67109120;
    v10 = v5;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v15 + 1) + 8 * v7) longLongValue];
        if (sandbox_extension_release())
        {
          v8 = qword_100192D98;
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v9 = *__error();
            *buf = v10;
            v13 = v9;
            _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[TrialStateRelay] Trial: Couldn't release extension %i", buf, 8u);
          }
        }

        v7 = v7 + 1;
      }

      while (v4 != v7);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v15 objects:v14 count:16];
    }

    while (v4);
  }

  v11.receiver = self;
  v11.super_class = TrialStateRelay;
  [(TrialStateRelay *)&v11 dealloc];
}

- (void)refreshTrialState:(id)state
{
  stateCopy = state;
  [(TRIClient *)self->trialClient refresh];
  v5 = [(TRIClient *)self->trialClient experimentIdentifiersWithNamespaceName:stateCopy];
  v6 = qword_100192D98;
  if (v5)
  {
    v7 = qword_100192D98;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      experimentId = [v5 experimentId];
      deploymentId = [v5 deploymentId];
      treatmentId = [v5 treatmentId];
      v11 = 138413058;
      v12 = stateCopy;
      v13 = 2112;
      v14 = experimentId;
      v15 = 1024;
      v16 = deploymentId;
      v17 = 2112;
      v18 = treatmentId;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[TrialStateRelay] TrialIdentifier: experimentIdentifiers for namespace %@ are: experimentId: %@, deploymentId: %d, treatmentId: %@", &v11, 0x26u);
    }

    [(TrialStateRelay *)self _updateTrialState:stateCopy experimentIdentifiers:v5];
  }

  else if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
  {
    sub_10011E598(v6);
  }
}

- (void)subscribeToTrialNamespace:(id)namespace
{
  namespaceCopy = namespace;
  if (self->trialClient)
  {
    v5 = objc_autoreleasePoolPush();
    objc_initWeak(&location, self);
    trialClient = self->trialClient;
    v7 = sub_100006020(&self->_trialClientQueue.fObj.fObj);
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100095394;
    v15 = &unk_100185A78;
    objc_copyWeak(&v17, &location);
    v8 = namespaceCopy;
    v16 = v8;
    v9 = [(TRIClient *)trialClient addUpdateHandlerForNamespaceName:v8 queue:v7 usingBlock:&v12];

    v10 = objc_loadWeakRetained(&location);
    [v10 refreshTrialState:{v8, v12, v13, v14, v15}];

    if (v9)
    {
      [(NSMutableArray *)self->_notificationTokens addObject:v9];
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v11 = qword_100192D98;
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
    {
      sub_10011E608(v11);
    }
  }
}

- (void)unsubscribeAllUpdateHandlers
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_notificationTokens;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        [(TRIClient *)self->trialClient removeUpdateHandlerForToken:v7];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v4);
  }
}

- (void)_updateTrialState:(id)state experimentIdentifiers:(id)identifiers
{
  stateCopy = state;
  identifiersCopy = identifiers;
  v8 = identifiersCopy;
  if (identifiersCopy && ([identifiersCopy experimentId], v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    trialStateDelegate = self->_trialStateDelegate;
    sub_10000459C(v24, [stateCopy UTF8String]);
    experimentId = [v8 experimentId];
    v12 = experimentId;
    sub_10000459C(v22, [experimentId UTF8String]);
    std::to_string(&v21, [v8 deploymentId]);
    treatmentId = [v8 treatmentId];
    v14 = treatmentId;
    sub_10000459C(__p, [treatmentId UTF8String]);
    (*(trialStateDelegate->var0 + 2))(&v18, trialStateDelegate, 1, v24, v22, &v21, __p);
    v15 = v18;
    v18 = 0;

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }
  }

  else
  {
    v16 = self->_trialStateDelegate;
    sub_10000459C(v24, [stateCopy UTF8String]);
    sub_10000459C(v22, "");
    sub_10000459C(&v21, "");
    sub_10000459C(__p, "");
    (*(v16->var0 + 2))(&v26, v16, 0, v24, v22, &v21, __p);
    v17 = v26;
    v26 = 0;

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (v23 < 0)
    {
      operator delete(v22[0]);
    }
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }
}

@end