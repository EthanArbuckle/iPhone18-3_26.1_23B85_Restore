@interface IDSDXPCFeatureToggler
- (IDSDXPCFeatureToggler)initWithService:(id)service queue:(id)queue connection:(id)connection;
- (id)_accountToUse;
- (void)retrieveFeatureToggleStateForOptions:(id)options completion:(id)completion;
- (void)updateFeatureToggleStateWithOptions:(id)options completion:(id)completion;
@end

@implementation IDSDXPCFeatureToggler

- (IDSDXPCFeatureToggler)initWithService:(id)service queue:(id)queue connection:(id)connection
{
  serviceCopy = service;
  serviceCopy2 = service;
  queueCopy = queue;
  connectionCopy = connection;
  v12 = [connectionCopy valueForEntitlement:kIDSRegistrationEntitlement];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v12 isEqualToString:serviceCopy2])
      {
        goto LABEL_18;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v12 BOOLValue])
      {
        goto LABEL_18;
      }
    }

LABEL_22:
    v23 = [IDSFoundationLog FeatureToggler:v25];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Missing IDS Registration entitlement -- failing creation of IDSXPCFeatureToggler collaborator {connection: %@}", buf, 0xCu);
    }

    selfCopy2 = 0;
    goto LABEL_25;
  }

  queueCopy2 = queue;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (!v14)
  {

    goto LABEL_22;
  }

  v15 = v14;
  v25 = serviceCopy;
  selfCopy = self;
  v27 = queueCopy;
  v16 = 0;
  v17 = *v31;
  do
  {
    for (i = 0; i != v15; i = i + 1)
    {
      if (*v31 != v17)
      {
        objc_enumerationMutation(v13);
      }

      v19 = *(*(&v30 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 |= [v19 isEqualToString:serviceCopy2];
      }
    }

    v15 = [v13 countByEnumeratingWithState:&v30 objects:v36 count:16];
  }

  while (v15);

  self = selfCopy;
  serviceCopy = v25;
  queue = queueCopy2;
  if ((v16 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  v29.receiver = self;
  v29.super_class = IDSDXPCFeatureToggler;
  v20 = [(IDSDXPCFeatureToggler *)&v29 init:v25];
  p_isa = &v20->super.isa;
  if (v20)
  {
    objc_storeStrong(&v20->_queue, queue);
    objc_storeStrong(p_isa + 2, serviceCopy);
  }

  self = p_isa;
  selfCopy2 = self;
LABEL_25:

  return selfCopy2;
}

- (id)_accountToUse
{
  v3 = +[IDSDServiceController sharedInstance];
  service = [(IDSDXPCFeatureToggler *)self service];
  v5 = [v3 serviceWithIdentifier:service];

  v6 = +[IDSDAccountController sharedInstance];
  v7 = [v6 appleIDAccountOnService:v5];

  if (!v7 || ([v7 primaryRegistration], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "registrationCert"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, !v9))
  {

    v10 = +[IDSDAccountController sharedInstance];
    v11 = [v10 registeredAccountsOnService:v5];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = v11;
    v7 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v13 = *v20;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v12);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          primaryRegistration = [v15 primaryRegistration];
          registrationCert = [primaryRegistration registrationCert];

          if (registrationCert)
          {
            v7 = v15;
            goto LABEL_13;
          }
        }

        v7 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v7;
}

- (void)retrieveFeatureToggleStateForOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  if (completionCopy)
  {
    if (optionsCopy && ([optionsCopy featureID], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      _accountToUse = [(IDSDXPCFeatureToggler *)self _accountToUse];
      if (!_accountToUse)
      {
        v10 = [IDSFeatureToggleRetrievalResult resultWithError:4];
        completionCopy[2](completionCopy, v10);
      }

      [_accountToUse retrieveFeatureToggleStateForOptions:optionsCopy completionBlock:completionCopy];
    }

    else
    {
      v11 = +[IDSFoundationLog FeatureToggler];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10091FD14();
      }

      _accountToUse = [IDSFeatureToggleRetrievalResult resultWithError:1];
      completionCopy[2](completionCopy, _accountToUse);
    }
  }

  else
  {
    _accountToUse = +[IDSFoundationLog FeatureToggler];
    if (os_log_type_enabled(_accountToUse, OS_LOG_TYPE_FAULT))
    {
      sub_10091FD54();
    }
  }
}

- (void)updateFeatureToggleStateWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  if (completionCopy)
  {
    if (optionsCopy && ([optionsCopy featureID], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      if ([optionsCopy state] == 1 || objc_msgSend(optionsCopy, "state") == 2)
      {
        _accountToUse = [(IDSDXPCFeatureToggler *)self _accountToUse];
        if (!_accountToUse)
        {
          v10 = [IDSFeatureToggleUpdateResult resultWithError:4];
          completionCopy[2](completionCopy, v10);
        }

        [_accountToUse updateFeatureToggleStateWithOptions:optionsCopy completionBlock:completionCopy];
        goto LABEL_14;
      }

      v11 = +[IDSFoundationLog FeatureToggler];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10091FD94(optionsCopy, v11);
      }
    }

    else
    {
      v11 = +[IDSFoundationLog FeatureToggler];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10091FE20();
      }
    }

    _accountToUse = [IDSFeatureToggleUpdateResult resultWithError:1];
    completionCopy[2](completionCopy, _accountToUse);
    goto LABEL_14;
  }

  _accountToUse = +[IDSFoundationLog FeatureToggler];
  if (os_log_type_enabled(_accountToUse, OS_LOG_TYPE_FAULT))
  {
    sub_10091FE60();
  }

LABEL_14:
}

@end