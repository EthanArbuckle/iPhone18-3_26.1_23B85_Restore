@interface IDSPinnedIdentityController
+ (IDSPinnedIdentityController)sharedInstance;
- (BOOL)foundPersistedIdentityForEndpoint:(id)a3 forService:(id)a4;
- (IDSPinnedIdentityController)init;
- (IDSPinnedIdentityController)initWithPersister:(id)a3;
- (void)_persistIdentity:(id)a3;
- (void)fetchAllPinnedIdentitiesWithCompletion:(id)a3;
- (void)fetchIdentityForPinningWithCompletion:(id)a3;
- (void)pinIdentityBlob:(id)a3 withCompletion:(id)a4;
@end

@implementation IDSPinnedIdentityController

+ (IDSPinnedIdentityController)sharedInstance
{
  if (qword_100CBF488 != -1)
  {
    sub_10092E96C();
  }

  v3 = qword_100CBF490;

  return v3;
}

- (IDSPinnedIdentityController)init
{
  v3 = [IDSPersistentMap alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v4, v5, v6, objc_opt_class(), 0];
  v8 = [(IDSPersistentMap *)v3 initWithIdentifier:@"com.apple.identityservicesd.pinned-identity" versionNumber:0 decodableClasses:v7 migrationBlock:0];
  v9 = [(IDSPinnedIdentityController *)self initWithPersister:v8];

  return v9;
}

- (IDSPinnedIdentityController)initWithPersister:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSPinnedIdentityController;
  v6 = [(IDSPinnedIdentityController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identityPersister, a3);
  }

  return v7;
}

- (void)fetchIdentityForPinningWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(IDSPinnedIdentityController *)self systemMonitor];
  v6 = [v5 isUnderFirstDataProtectionLock];

  if (!v6)
  {
    v9 = [(IDSPinnedIdentityController *)self serviceController];
    v8 = [v9 allPinningEnforcedServices];

    v10 = [(IDSPinnedIdentityController *)self pushHandler];
    v11 = [v10 pushToken];

    v12 = [(IDSPinnedIdentityController *)self registrationKeyManager];
    v45 = 0;
    v13 = [v12 publicMessageProtectionIdentityDataToRegisterWithError:&v45];
    v14 = v45;

    if (v14)
    {
      v15 = +[IDSFoundationLog IDSPinnedIdentity];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10092E980();
      }

      if (v4)
      {
        v4[2](v4, 0, v14);
      }

      goto LABEL_44;
    }

    v16 = [v13 publicNGMIdentityData];
    if (!v16)
    {
      v34 = +[IDSFoundationLog IDSPinnedIdentity];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_10092EAD0();
      }

      if (!v4)
      {
        goto LABEL_43;
      }

      v17 = [NSError errorWithDomain:@"IDSPinnedIdentityError" code:1 userInfo:0];
      v4[2](v4, 0, v17);
LABEL_42:

LABEL_43:
LABEL_44:

      goto LABEL_45;
    }

    v37 = v13;
    v39 = v11;
    v17 = objc_alloc_init(NSMutableArray);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v38 = v8;
    v18 = v8;
    v19 = [v18 countByEnumeratingWithState:&v41 objects:v48 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v42;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v42 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v41 + 1) + 8 * i);
          v24 = objc_alloc_init(IDSPinnedIdentityMetadata);
          v25 = [v23 identifier];
          [v24 setService:v25];

          [v24 setIdentity:v16];
          [v17 addObject:v24];
        }

        v20 = [v18 countByEnumeratingWithState:&v41 objects:v48 count:16];
      }

      while (v20);
    }

    v26 = objc_alloc_init(IDSPinnedIdentities);
    v11 = v39;
    [v26 setPushToken:v39];
    [v26 setPinnedIdentityMetadatas:v17];
    v27 = [v26 pushToken];
    if (v27 && (v28 = v27, [v26 pinnedIdentityMetadatas], v29 = objc_claimAutoreleasedReturnValue(), v29, v28, v29))
    {
      v40 = 0;
      v30 = [NSKeyedArchiver archivedDataWithRootObject:v26 requiringSecureCoding:1 error:&v40];
      v31 = v40;
      if (v31)
      {
        v32 = +[IDSFoundationLog IDSPinnedIdentity];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_10092E9BC();
        }

        v8 = v38;
        v11 = v39;
        v14 = 0;
        v13 = v37;
        if (v4)
        {
          v4[2](v4, 0, v31);
        }
      }

      else
      {
        v35 = [[IDSPinnedIdentity alloc] initWithIdentityBlob:v30];
        v36 = +[IDSFoundationLog IDSPinnedIdentity];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v47 = v35;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Successfully created identity to pin. { pinnedIdentity: %@ }", buf, 0xCu);
        }

        v8 = v38;
        v14 = 0;
        if (v4)
        {
          (v4)[2](v4, v35, 0);
        }

        v11 = v39;
        v13 = v37;
      }
    }

    else
    {
      v33 = +[IDSFoundationLog IDSPinnedIdentity];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_10092EA2C(v26);
      }

      v13 = v37;
      v8 = v38;
      v14 = 0;
      if (!v4)
      {
        goto LABEL_41;
      }

      v31 = [NSError errorWithDomain:@"IDSPinnedIdentityError" code:1 userInfo:0];
      v4[2](v4, 0, v31);
    }

LABEL_41:
    goto LABEL_42;
  }

  v7 = +[IDSFoundationLog IDSPinnedIdentity];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10092EB0C();
  }

  if (v4)
  {
    v8 = [NSError errorWithDomain:@"IDSPinnedIdentityError" code:5 userInfo:0];
    v4[2](v4, 0, v8);
LABEL_45:
  }
}

- (void)pinIdentityBlob:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v19 = 0;
  v8 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v19];

  v9 = v19;
  if (v9)
  {
    v10 = +[IDSFoundationLog IDSPinnedIdentity];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10092EB48();
    }

    if (v6)
    {
      v6[2](v6, v9);
    }

    goto LABEL_25;
  }

  if (!v8)
  {
    v15 = +[IDSFoundationLog IDSPinnedIdentity];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10092EC30();
    }

    if (!v6)
    {
      goto LABEL_25;
    }

    v16 = 2;
LABEL_24:
    v18 = [NSError errorWithDomain:@"IDSPinnedIdentityError" code:v16 userInfo:0];
    v6[2](v6, v18);

    goto LABEL_25;
  }

  v11 = [v8 pushToken];

  if (!v11)
  {
    v17 = +[IDSFoundationLog IDSPinnedIdentity];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10092EBF4();
    }

    if (!v6)
    {
      goto LABEL_25;
    }

    v16 = 3;
    goto LABEL_24;
  }

  v12 = [v8 pinnedIdentityMetadatas];

  v13 = +[IDSFoundationLog IDSPinnedIdentity];
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Identities to pin: %@", buf, 0xCu);
    }

    [(IDSPinnedIdentityController *)self _persistIdentity:v8];
    v6[2](v6, 0);
    goto LABEL_25;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10092EBB8();
  }

  if (v6)
  {
    v16 = 4;
    goto LABEL_24;
  }

LABEL_25:
}

- (void)_persistIdentity:(id)a3
{
  identityPersister = self->_identityPersister;
  v4 = a3;
  v6 = [v4 pinnedIdentityMetadatas];
  v5 = [v4 pushToken];

  [(IDSPersistentMap *)identityPersister setObject:v6 forKey:v5];
}

- (BOOL)foundPersistedIdentityForEndpoint:(id)a3 forService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 pushToken];
  v9 = [(IDSPersistentMap *)self->_identityPersister objectForKey:v8];
  v10 = v9;
  if (v9)
  {
    v38 = v8;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v40;
LABEL_4:
      v15 = 0;
      while (1)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v39 + 1) + 8 * v15);
        v17 = [v16 service];
        v18 = [v17 isEqualToString:v7];

        if (v18)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v19 = v16;

      if (!v19)
      {
        goto LABEL_19;
      }

      v20 = [v6 publicDeviceIdentityContainer];
      v21 = [v20 ngmPublicDeviceIdentity];
      v22 = objc_opt_respondsToSelector();

      if (v22)
      {
        v23 = [v6 publicDeviceIdentityContainer];
        v24 = [v23 ngmPublicDeviceIdentity];
        v25 = [v19 identity];
        v26 = [v24 isIdenticalIdentityTo:v25];

        if ((v26 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v32 = [v6 serializedNGMDeviceIdentity];
        v33 = [v19 identity];
        v34 = [v32 isEqualToData:v33];

        if ((v34 & 1) == 0)
        {
LABEL_14:
          v27 = +[IDSFoundationLog IDSPinnedIdentity];
          v8 = v38;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            sub_10092EC6C(v19, v6);
          }

          if ((_os_feature_enabled_impl() & 1) == 0)
          {
            v28 = +[IDSFoundationLog IDSPinnedIdentity];
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Hit failure, but enforcement FF is disabled. Returning YES.", buf, 2u);
            }

            goto LABEL_37;
          }

          goto LABEL_23;
        }
      }

      v28 = +[IDSFoundationLog IDSPinnedIdentity];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [v19 identity];
        v36 = [v6 serializedNGMDeviceIdentity];
        *buf = 138412546;
        v44 = v35;
        v45 = 2112;
        v46 = v36;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Pinned identity matches endpoint identity. { pinnedIdentity: %@, endointIdentity: %@ }", buf, 0x16u);
      }

      v8 = v38;
      goto LABEL_37;
    }

LABEL_10:

LABEL_19:
    v29 = +[IDSFoundationLog IDSPinnedIdentity];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10092ED10();
    }

    v8 = v38;
    if (_os_feature_enabled_impl())
    {
      v19 = 0;
LABEL_23:
      v30 = 0;
LABEL_39:

      goto LABEL_40;
    }

    v28 = +[IDSFoundationLog IDSPinnedIdentity];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Hit failure, but enforcement FF is disabled. Returning YES.", buf, 2u);
    }

    v19 = 0;
LABEL_37:

LABEL_38:
    v30 = 1;
    goto LABEL_39;
  }

  v31 = +[IDSFoundationLog IDSPinnedIdentity];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    sub_10092ED80();
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v19 = +[IDSFoundationLog IDSPinnedIdentity];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Hit failure, but enforcement FF is disabled. Returning YES.", buf, 2u);
    }

    goto LABEL_38;
  }

  v30 = 0;
LABEL_40:

  return v30;
}

- (void)fetchAllPinnedIdentitiesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(IDSPersistentMap *)self->_identityPersister allKeys];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = objc_alloc_init(IDSPinnedIdentities);
        [v12 setPushToken:v11];
        v13 = [(IDSPersistentMap *)self->_identityPersister objectForKey:v11];
        [v12 setPinnedIdentityMetadatas:v13];

        [v5 addObject:v12];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v4[2](v4, v5, 0);
}

@end