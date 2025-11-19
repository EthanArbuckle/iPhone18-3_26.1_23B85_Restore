@interface IDSDXPCFeatureToggler
- (IDSDXPCFeatureToggler)initWithService:(id)a3 queue:(id)a4 connection:(id)a5;
- (id)_accountToUse;
- (void)retrieveFeatureToggleStateForOptions:(id)a3 completion:(id)a4;
- (void)updateFeatureToggleStateWithOptions:(id)a3 completion:(id)a4;
@end

@implementation IDSDXPCFeatureToggler

- (IDSDXPCFeatureToggler)initWithService:(id)a3 queue:(id)a4 connection:(id)a5
{
  v7 = a3;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 valueForEntitlement:kIDSRegistrationEntitlement];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v12 isEqualToString:v9])
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
      v35 = v11;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Missing IDS Registration entitlement -- failing creation of IDSXPCFeatureToggler collaborator {connection: %@}", buf, 0xCu);
    }

    v22 = 0;
    goto LABEL_25;
  }

  v28 = a4;
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
  v25 = v7;
  v26 = self;
  v27 = v10;
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
        v16 |= [v19 isEqualToString:v9];
      }
    }

    v15 = [v13 countByEnumeratingWithState:&v30 objects:v36 count:16];
  }

  while (v15);

  self = v26;
  v7 = v25;
  a4 = v28;
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
    objc_storeStrong(&v20->_queue, a4);
    objc_storeStrong(p_isa + 2, v7);
  }

  self = p_isa;
  v22 = self;
LABEL_25:

  return v22;
}

- (id)_accountToUse
{
  v3 = +[IDSDServiceController sharedInstance];
  v4 = [(IDSDXPCFeatureToggler *)self service];
  v5 = [v3 serviceWithIdentifier:v4];

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
          v16 = [v15 primaryRegistration];
          v17 = [v16 registrationCert];

          if (v17)
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

- (void)retrieveFeatureToggleStateForOptions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6 && ([v6 featureID], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      v9 = [(IDSDXPCFeatureToggler *)self _accountToUse];
      if (!v9)
      {
        v10 = [IDSFeatureToggleRetrievalResult resultWithError:4];
        v7[2](v7, v10);
      }

      [v9 retrieveFeatureToggleStateForOptions:v6 completionBlock:v7];
    }

    else
    {
      v11 = +[IDSFoundationLog FeatureToggler];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10091FD14();
      }

      v9 = [IDSFeatureToggleRetrievalResult resultWithError:1];
      v7[2](v7, v9);
    }
  }

  else
  {
    v9 = +[IDSFoundationLog FeatureToggler];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_10091FD54();
    }
  }
}

- (void)updateFeatureToggleStateWithOptions:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6 && ([v6 featureID], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      if ([v6 state] == 1 || objc_msgSend(v6, "state") == 2)
      {
        v9 = [(IDSDXPCFeatureToggler *)self _accountToUse];
        if (!v9)
        {
          v10 = [IDSFeatureToggleUpdateResult resultWithError:4];
          v7[2](v7, v10);
        }

        [v9 updateFeatureToggleStateWithOptions:v6 completionBlock:v7];
        goto LABEL_14;
      }

      v11 = +[IDSFoundationLog FeatureToggler];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10091FD94(v6, v11);
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

    v9 = [IDSFeatureToggleUpdateResult resultWithError:1];
    v7[2](v7, v9);
    goto LABEL_14;
  }

  v9 = +[IDSFoundationLog FeatureToggler];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    sub_10091FE60();
  }

LABEL_14:
}

@end