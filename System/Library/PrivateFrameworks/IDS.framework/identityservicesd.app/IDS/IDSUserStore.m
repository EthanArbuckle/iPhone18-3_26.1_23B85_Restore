@interface IDSUserStore
- (IDSUserStore)initWithQueue:(id)a3;
- (IDSUserStore)initWithQueue:(id)a3 persister:(id)a4 registrationKeychainManager:(id)a5;
- (id)_calculateUserDescriptionUpdatesForCurrentUserDescriptions:(id)a3 updatedUserDescriptions:(id)a4;
- (id)_stringRepresentationOfUserRealm:(int64_t)a3;
- (id)authenticationCertificateForUser:(id)a3;
- (id)credentialForUser:(id)a3;
- (id)debugDescription;
- (id)propertiesForUser:(id)a3;
- (id)userDescriptionsWithRealm:(int64_t)a3;
- (id)userDescriptionsWithRealms:(id)a3;
- (id)userWithUniqueIdentifier:(id)a3;
- (id)usersWithRealm:(int64_t)a3;
- (id)usersWithRealms:(id)a3;
- (void)_addUserDescription:(id)a3;
- (void)_iterateByRealm:(int64_t)a3 block:(id)a4;
- (void)_removeUserDescription:(id)a3;
- (void)_updateUserDescription:(id)a3;
- (void)_updateUserDescriptionsForCurrentUserDescriptions:(id)a3 updatedUserDescriptions:(id)a4;
- (void)addActionListener:(id)a3 forRealm:(int64_t)a4;
- (void)forceRemoveUser:(id)a3 silently:(BOOL)a4;
- (void)reloadUsers;
- (void)reloadUsersForRealm:(int64_t)a3;
- (void)setAuthenticationCertificate:(id)a3 forUser:(id)a4;
- (void)setCredential:(id)a3 forUser:(id)a4;
- (void)setDataProvider:(id)a3 forRealm:(int64_t)a4;
- (void)setProperties:(id)a3 forUser:(id)a4;
- (void)silentlySetAuthenticationCertificate:(id)a3 forUser:(id)a4;
- (void)updateUser:(id)a3;
@end

@implementation IDSUserStore

- (IDSUserStore)initWithQueue:(id)a3
{
  v4 = a3;
  v5 = [IDSPersistentMap defaultPersisterForIdentifier:@"com.apple.identityservices.userStore" dataProtectionClass:2];
  v6 = +[IDSRegistrationKeychainManager sharedInstance];
  v7 = [(IDSUserStore *)self initWithQueue:v4 persister:v5 registrationKeychainManager:v6];

  return v7;
}

- (IDSUserStore)initWithQueue:(id)a3 persister:(id)a4 registrationKeychainManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    v28.receiver = self;
    v28.super_class = IDSUserStore;
    v12 = [(IDSUserStore *)&v28 init];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_queue, a3);
      v27 = [[IDSPersistentMapMergePolicy alloc] initWithPolicyBlock:&stru_100BDF410];
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = objc_opt_class();
      v17 = objc_opt_class();
      v26 = objc_opt_class();
      v18 = [NSSet setWithObjects:v14, v15, v16, v17, v26, objc_opt_class(), 0];
      LOBYTE(v25) = 1;
      v19 = [[IDSPersistentMap alloc] initWithIdentifier:@"com.apple.identityservices.userStore" versionNumber:2 decodableClasses:v18 mergePolicy:v27 writeCoalescingDelay:v10 writeCoalescingLeeway:&stru_100BDF430 persister:5.0 migrationBlock:1.0 allowBackup:v25];
      persistentMap = v13->_persistentMap;
      v13->_persistentMap = v19;

      objc_storeStrong(&v13->_registrationKeychainManager, a5);
      v21 = +[NSMapTable weakToStrongObjectsMapTable];
      realmByListener = v13->_realmByListener;
      v13->_realmByListener = v21;
    }

    self = v13;
    v23 = self;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)setDataProvider:(id)a3 forRealm:(int64_t)a4
{
  v6 = a3;
  v7 = [NSNumber numberWithInteger:a4];
  v14 = v7;
  v15 = v6;
  v8 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

  dataProviderByRealm = self->_dataProviderByRealm;
  if (dataProviderByRealm)
  {
    v10 = [(NSDictionary *)dataProviderByRealm mutableCopy];
    [(NSDictionary *)v10 addEntriesFromDictionary:v8];
    v11 = [(NSDictionary *)v10 copy];
    v12 = self->_dataProviderByRealm;
    self->_dataProviderByRealm = v11;
  }

  else
  {
    v13 = v8;
    v10 = self->_dataProviderByRealm;
    self->_dataProviderByRealm = v13;
  }
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  dataProviderByRealm = self->_dataProviderByRealm;
  v5 = [(IDSPersistentMap *)self->_persistentMap debugDescription];
  v6 = [NSString stringWithFormat:@"<%@: %p, dataProviderByRealm: %@, persistentMap: %@>", v3, self, dataProviderByRealm, v5];

  return v6;
}

- (id)usersWithRealm:(int64_t)a3
{
  v4 = [(IDSPersistentMap *)self->_persistentMap allValues];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100511DC8;
  v7[3] = &unk_100BDF450;
  v7[4] = a3;
  v5 = [v4 __imArrayByApplyingBlock:v7];

  return v5;
}

- (id)usersWithRealms:(id)a3
{
  v4 = a3;
  v5 = [(IDSPersistentMap *)self->_persistentMap allValues];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100511F18;
  v9[3] = &unk_100BDF478;
  v10 = v4;
  v6 = v4;
  v7 = [v5 __imArrayByApplyingBlock:v9];

  return v7;
}

- (id)userWithUniqueIdentifier:(id)a3
{
  if (a3)
  {
    v3 = [(IDSPersistentMap *)self->_persistentMap objectForKey:?];
    v4 = [v3 user];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)userDescriptionsWithRealm:(int64_t)a3
{
  v4 = [(IDSPersistentMap *)self->_persistentMap allValues];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005120C4;
  v7[3] = &unk_100BDF450;
  v7[4] = a3;
  v5 = [v4 __imArrayByApplyingBlock:v7];

  return v5;
}

- (id)userDescriptionsWithRealms:(id)a3
{
  v4 = a3;
  v5 = [(IDSPersistentMap *)self->_persistentMap allValues];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005121F4;
  v9[3] = &unk_100BDF478;
  v10 = v4;
  v6 = v4;
  v7 = [v5 __imArrayByApplyingBlock:v9];

  return v7;
}

- (void)reloadUsers
{
  [(IDSUserStore *)self reloadUsersForRealm:0];

  [(IDSUserStore *)self reloadUsersForRealm:1];
}

- (void)reloadUsersForRealm:(int64_t)a3
{
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(IDSUserStore *)self _stringRepresentationOfUserRealm:a3];
    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "UserStore reloading {realm: %@}", &v14, 0xCu);
  }

  dataProviderByRealm = self->_dataProviderByRealm;
  v8 = [NSNumber numberWithInteger:a3];
  v9 = [(NSDictionary *)dataProviderByRealm objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [(IDSUserStore *)self userDescriptionsWithRealm:a3];
    v11 = [NSSet setWithArray:v10];

    v12 = [v9 updatedUserDescriptionSetForRealm:a3 currentUserDescriptions:v11];
    v13 = +[IMRGLog registration];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412802;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Provider created change set {current: %@, updated: %@, provider: %@}", &v14, 0x20u);
    }

    [(IDSUserStore *)self _updateUserDescriptionsForCurrentUserDescriptions:v11 updatedUserDescriptions:v12];
  }
}

- (void)forceRemoveUser:(id)a3 silently:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    dataProviderByRealm = self->_dataProviderByRealm;
    v10 = v6;
    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 realm]);
    v9 = [(NSDictionary *)dataProviderByRealm objectForKeyedSubscript:v8];

    if (v9)
    {
      [v9 forceRemoveUser:v10 silently:v4];
    }

    v6 = v10;
  }
}

- (void)updateUser:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating user {user: %@}", buf, 0xCu);
    }

    persistentMap = self->_persistentMap;
    v7 = [v4 uniqueIdentifier];
    v8 = [(IDSPersistentMap *)persistentMap objectForKey:v7];

    if (v8)
    {
      v9 = self->_persistentMap;
      v10 = [IDSUserDescription alloc];
      v11 = [v8 properties];
      v12 = [(IDSUserDescription *)v10 initWithUser:v4 properties:v11];
      v13 = [v4 uniqueIdentifier];
      [(IDSPersistentMap *)v9 setObject:v12 forKey:v13];

      v14 = +[IMRGLog registration];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v4;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Broadcasting update user {user: %@}", buf, 0xCu);
      }

      v15 = [v4 realm];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1005127D8;
      v17[3] = &unk_100BDF4A0;
      v17[4] = self;
      v18 = v4;
      [(IDSUserStore *)self _iterateByRealm:v15 block:v17];
    }

    else
    {
      v16 = +[IMRGLog registration];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v4;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "User is not present -- not updating {user: %@}", buf, 0xCu);
      }
    }
  }
}

- (void)_updateUserDescriptionsForCurrentUserDescriptions:(id)a3 updatedUserDescriptions:(id)a4
{
  [(IDSUserStore *)self _calculateUserDescriptionUpdatesForCurrentUserDescriptions:a3 updatedUserDescriptions:a4];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v30 = v46 = 0u;
  v5 = [v30 silentUpdates];
  v6 = [v5 countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v44;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v44 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v43 + 1) + 8 * i);
        v11 = +[IMRGLog registration];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v51 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Silently updating user description {userDescription: %@}", buf, 0xCu);
        }

        persistentMap = self->_persistentMap;
        v13 = [v10 user];
        v14 = [v13 uniqueIdentifier];
        [(IDSPersistentMap *)persistentMap setObject:v10 forKey:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v7);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v15 = [v30 removals];
  v16 = [v15 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v40;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v40 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(IDSUserStore *)self _removeUserDescription:*(*(&v39 + 1) + 8 * j)];
      }

      v17 = [v15 countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v17);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v20 = [v30 additions];
  v21 = [v20 countByEnumeratingWithState:&v35 objects:v48 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v36;
    do
    {
      for (k = 0; k != v22; k = k + 1)
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(IDSUserStore *)self _addUserDescription:*(*(&v35 + 1) + 8 * k)];
      }

      v22 = [v20 countByEnumeratingWithState:&v35 objects:v48 count:16];
    }

    while (v22);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v25 = [v30 loudUpdates];
  v26 = [v25 countByEnumeratingWithState:&v31 objects:v47 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v32;
    do
    {
      for (m = 0; m != v27; m = m + 1)
      {
        if (*v32 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(IDSUserStore *)self _updateUserDescription:*(*(&v31 + 1) + 8 * m)];
      }

      v27 = [v25 countByEnumeratingWithState:&v31 objects:v47 count:16];
    }

    while (v27);
  }
}

- (id)_calculateUserDescriptionUpdatesForCurrentUserDescriptions:(id)a3 updatedUserDescriptions:(id)a4
{
  v5 = a3;
  v6 = a4;
  v40 = objc_alloc_init(IDSUserDescriptionUpdates);
  v43 = +[NSMutableArray array];
  v42 = +[NSMutableArray array];
  v7 = +[NSMutableArray array];
  v41 = +[NSMutableArray array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v53;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v53 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v52 + 1) + 8 * i);
        if (([v6 containsObject:v13] & 1) == 0)
        {
          [v43 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v10);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v14 = v6;
  v15 = [v14 countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v49;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v49 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v48 + 1) + 8 * j);
        v20 = [v8 member:v19];
        v21 = v20;
        if (v20)
        {
          v22 = [v20 properties];
          v23 = [v19 properties];
          v24 = v23;
          if ((!(v22 | v23) || [v23 isEqual:v22]) && (objc_msgSend(v19, "isIdenticalToUserDescription:", v21) & 1) == 0)
          {
            [v42 addObject:v19];
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v16);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v25 = v14;
  v26 = [v25 countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v45;
    do
    {
      for (k = 0; k != v27; k = k + 1)
      {
        if (*v45 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v44 + 1) + 8 * k);
        if ([v8 containsObject:v30])
        {
          v31 = [v8 member:v30];
          v32 = [v31 properties];
          v33 = [v30 properties];
          v34 = v33;
          if (v32 | v33 && ([v33 isEqual:v32] & 1) == 0)
          {
            [v41 addObject:v30];
          }
        }

        else
        {
          [v7 addObject:v30];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v44 objects:v56 count:16];
    }

    while (v27);
  }

  v35 = [NSSet setWithArray:v42];
  v36 = [NSSet setWithArray:v41];
  v37 = [NSSet setWithArray:v43];
  v38 = [NSSet setWithArray:v7];
  [(IDSUserDescriptionUpdates *)v40 setSilentUpdates:v35];
  [(IDSUserDescriptionUpdates *)v40 setLoudUpdates:v36];
  [(IDSUserDescriptionUpdates *)v40 setRemovals:v37];
  [(IDSUserDescriptionUpdates *)v40 setAdditions:v38];

  return v40;
}

- (void)_addUserDescription:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Adding user description {userDescription: %@}", buf, 0xCu);
    }

    persistentMap = self->_persistentMap;
    v7 = [v4 user];
    v8 = [v7 uniqueIdentifier];
    v9 = [(IDSPersistentMap *)persistentMap objectForKey:v8];

    if (v9)
    {
      v10 = [v9 properties];
      if (!v10)
      {
        v10 = [v4 properties];
        if (!v10)
        {
          v18 = [v9 properties];
          v19 = [v4 properties];
          v20 = [v18 isEqual:v19];

          v21 = self->_persistentMap;
          v22 = [v4 user];
          v23 = [v22 uniqueIdentifier];
          [(IDSPersistentMap *)v21 setObject:v4 forKey:v23];

          if ((v20 & 1) == 0)
          {
LABEL_12:

            goto LABEL_13;
          }

LABEL_9:
          v14 = +[IMRGLog registration];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v4 user];
            *buf = 138412290;
            v27 = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Broadcasting new user {user: %@}", buf, 0xCu);
          }

          v16 = [v4 user];
          v17 = [v16 realm];
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_100513268;
          v24[3] = &unk_100BDF4A0;
          v24[4] = self;
          v25 = v4;
          [(IDSUserStore *)self _iterateByRealm:v17 block:v24];

          goto LABEL_12;
        }
      }
    }

    v11 = self->_persistentMap;
    v12 = [v4 user];
    v13 = [v12 uniqueIdentifier];
    [(IDSPersistentMap *)v11 setObject:v4 forKey:v13];

    goto LABEL_9;
  }

LABEL_13:
}

- (void)_removeUserDescription:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing user description {userDescription: %@}", buf, 0xCu);
    }

    v6 = [v4 user];
    [(IDSUserStore *)self setCredential:0 forUser:v6];

    v7 = [v4 user];
    v8 = [(IDSUserStore *)self authenticationCertificateForUser:v7];

    v9 = [v4 user];
    v10 = [v9 realm];

    if (!v10)
    {
      v11 = +[IDSPACStateTracker sharedInstance];
      [v11 notePhoneAuthCertLost:9];
    }

    v12 = [v4 user];
    [(IDSUserStore *)self silentlySetAuthenticationCertificate:0 forUser:v12];

    persistentMap = self->_persistentMap;
    v14 = [v4 user];
    v15 = [v14 uniqueIdentifier];
    [(IDSPersistentMap *)persistentMap removeObjectForKey:v15];

    v16 = [v4 user];
    v17 = [v16 realm];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100513520;
    v19[3] = &unk_100BDF4C8;
    v19[4] = self;
    v20 = v4;
    v21 = v8;
    v18 = v8;
    [(IDSUserStore *)self _iterateByRealm:v17 block:v19];
  }
}

- (void)_updateUserDescription:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating userDescription {userDescription: %@}", buf, 0xCu);
    }

    persistentMap = self->_persistentMap;
    v7 = [v4 user];
    v8 = [v7 uniqueIdentifier];
    v9 = [(IDSPersistentMap *)persistentMap objectForKey:v8];

    if (v9)
    {
      v10 = self->_persistentMap;
      v11 = [v4 user];
      v12 = [v11 uniqueIdentifier];
      [(IDSPersistentMap *)v10 setObject:v4 forKey:v12];

      v13 = +[IMRGLog registration];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v4;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Broadcasting update user description {userDescription: %@}", buf, 0xCu);
      }

      v14 = [v4 user];
      v15 = [v14 realm];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100513818;
      v17[3] = &unk_100BDF4A0;
      v17[4] = self;
      v18 = v4;
      [(IDSUserStore *)self _iterateByRealm:v15 block:v17];
    }

    else
    {
      v16 = +[IMRGLog registration];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v4;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "User is not present -- not updating {userDescription: %@}", buf, 0xCu);
      }
    }
  }
}

- (id)_stringRepresentationOfUserRealm:(int64_t)a3
{
  v3 = @"p";
  if (a3 == 1)
  {
    v3 = @"aid";
  }

  if (a3 == 2)
  {
    return @"tp";
  }

  else
  {
    return v3;
  }
}

- (id)credentialForUser:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_17;
  }

  v6 = [v4 realm];
  if (v6 != 2)
  {
    if (v6 == 1)
    {
      v38 = +[IMRGLog registration];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        sub_100927DE4(v5, v38);
      }
    }

    else if (!v6)
    {
      v7 = v5;
      registrationKeychainManager = self->_registrationKeychainManager;
      v9 = [v7 storageIdentifier];
      v10 = [(IDSRegistrationKeychainManager *)registrationKeychainManager smsSignatureForID:v9];

      if (!v10)
      {
        v11 = self->_registrationKeychainManager;
        v12 = [v7 phoneNumber];
        v10 = [(IDSRegistrationKeychainManager *)v11 smsSignatureForID:v12];

        if (v10)
        {
          v13 = +[IMRGLog sms];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v7 phoneNumber];
            v15 = [v7 storageIdentifier];
            v44 = 138412546;
            v45 = v14;
            v46 = 2112;
            v47 = v15;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Migrating sms signature from phone number: %@ to SIM label ID: %@", &v44, 0x16u);
          }

          v16 = v10;
          v17 = self->_registrationKeychainManager;
          v18 = [v7 storageIdentifier];
          [(IDSRegistrationKeychainManager *)v17 setSMSSignature:v16 mainID:v18];

          v19 = self->_registrationKeychainManager;
          v20 = [v7 phoneNumber];
          v21 = [(IDSRegistrationKeychainManager *)v19 smsSignatureMechanismForID:v20];
          v22 = [v21 intValue];

          v23 = +[IMRGLog sms];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [v7 phoneNumber];
            v25 = [v7 storageIdentifier];
            v44 = 138412546;
            v45 = v24;
            v46 = 2112;
            v47 = v25;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Migrating sms signature mechanism from phone number: %@ to SIM label ID: %@", &v44, 0x16u);
          }

          v26 = self->_registrationKeychainManager;
          v27 = [NSNumber numberWithInteger:v22];
          v28 = [v7 storageIdentifier];
          [(IDSRegistrationKeychainManager *)v26 setSMSSignatureMechanism:v27 mainID:v28];

          v29 = self->_registrationKeychainManager;
          v30 = [v7 phoneNumber];
          [(IDSRegistrationKeychainManager *)v29 setSMSSignature:0 mainID:v30];

          v31 = self->_registrationKeychainManager;
          v32 = [v7 phoneNumber];
          [(IDSRegistrationKeychainManager *)v31 setSMSSignatureMechanism:0 mainID:v32];
        }
      }

      v33 = self->_registrationKeychainManager;
      v34 = [v7 storageIdentifier];
      v35 = [(IDSRegistrationKeychainManager *)v33 smsSignatureMechanismForID:v34];
      v36 = [v35 intValue];

      v37 = [[IDSPhoneUserCredential alloc] initWithSMSSignature:v10 mechanismUsed:v36];
      goto LABEL_19;
    }

LABEL_17:
    v37 = 0;
    goto LABEL_20;
  }

  v39 = self->_registrationKeychainManager;
  v40 = v5;
  v41 = [v40 phoneNumber];
  v7 = [(IDSRegistrationKeychainManager *)v39 tempPhoneCredentialForID:v41];

  v42 = [IDSTemporaryPhoneUserCredential alloc];
  v37 = [(IDSTemporaryPhoneUserCredential *)v42 initWithDataRepresentation:v7];
LABEL_19:

LABEL_20:

  return v37;
}

- (void)setCredential:(id)a3 forUser:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    goto LABEL_16;
  }

  if (v6)
  {
    v8 = [v6 realm];
    if (v8 != [v7 realm])
    {
      v19 = +[IMRGLog registration];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_100927E5C(v6, v7, v19);
      }

      goto LABEL_14;
    }
  }

  v9 = [v7 realm];
  if (v9 == 2)
  {
    registrationKeychainManager = self->_registrationKeychainManager;
    v21 = v6;
    v22 = v7;
    v23 = [v21 dataRepresentation];
    v24 = [v22 phoneNumber];
    [(IDSRegistrationKeychainManager *)registrationKeychainManager setTempPhoneCredential:v23 forID:v24];

    goto LABEL_16;
  }

  if (v9 == 1)
  {
    v19 = +[IMRGLog registration];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_100927DE4(v7, v19);
    }

LABEL_14:

    goto LABEL_16;
  }

  if (!v9)
  {
    v10 = v7;
    v11 = v6;
    v12 = [v10 phoneNumber];

    if (v12)
    {
      v13 = self->_registrationKeychainManager;
      v14 = [v11 smsSignature];
      v15 = [v10 storageIdentifier];
      [(IDSRegistrationKeychainManager *)v13 setSMSSignature:v14 mainID:v15];

      v16 = self->_registrationKeychainManager;
      v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v11 mechanismUsed]);
      v18 = [v10 storageIdentifier];
      [(IDSRegistrationKeychainManager *)v16 setSMSSignatureMechanism:v17 mainID:v18];
    }
  }

LABEL_16:
}

- (id)authenticationCertificateForUser:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || ([v4 storageIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v13 = 0;
    goto LABEL_15;
  }

  registrationKeychainManager = self->_registrationKeychainManager;
  v8 = [v5 storageIdentifier];
  v9 = [(IDSRegistrationKeychainManager *)registrationKeychainManager authenticationCertForID:v8];

  v10 = self->_registrationKeychainManager;
  v11 = [v5 realmPrefixedIdentifier];
  v12 = [(IDSRegistrationKeychainManager *)v10 authenticationCertForID:v11];

  if (v9 || !v12)
  {
    if (!v9)
    {
      goto LABEL_9;
    }

LABEL_13:
    v13 = [[IDSAuthenticationCertificate alloc] initWithDataRepresentation:v9];
    goto LABEL_14;
  }

  if (![v5 realm])
  {
    v14 = +[IMRGLog sms];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v5 realmPrefixedIdentifier];
      v16 = [v5 storageIdentifier];
      v22 = 138412546;
      v23 = v15;
      v24 = 2112;
      v25 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Migrating phone user auth cert from phone number: %@ to label ID: %@", &v22, 0x16u);
    }

    v9 = v12;
    v17 = self->_registrationKeychainManager;
    v18 = [v5 storageIdentifier];
    [(IDSRegistrationKeychainManager *)v17 setAuthenticationCert:v9 forID:v18];

    v19 = self->_registrationKeychainManager;
    v20 = [v5 realmPrefixedIdentifier];
    [(IDSRegistrationKeychainManager *)v19 setAuthenticationCert:0 forID:v20];

    goto LABEL_13;
  }

  v9 = 0;
LABEL_9:
  v13 = 0;
LABEL_14:

LABEL_15:

  return v13;
}

- (void)setAuthenticationCertificate:(id)a3 forUser:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(IDSUserStore *)self silentlySetAuthenticationCertificate:v6 forUser:v7];
  v8 = [v7 realm];
  if (v6)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100514268;
    v12[3] = &unk_100BDF4C8;
    v12[4] = self;
    v9 = &v13;
    v13 = v6;
    v14 = v7;
    v10 = v7;
    [(IDSUserStore *)self _iterateByRealm:v8 block:v12];
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10051425C;
    v15[3] = &unk_100BDF4A0;
    v9 = &v16;
    v15[4] = self;
    v16 = v7;
    v11 = v7;
    [(IDSUserStore *)self _iterateByRealm:v8 block:v15];
  }
}

- (void)silentlySetAuthenticationCertificate:(id)a3 forUser:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v6 storageIdentifier];

  if (v7)
  {
    registrationKeychainManager = self->_registrationKeychainManager;
    v9 = [v11 dataRepresentation];
    v10 = [v6 storageIdentifier];
    [(IDSRegistrationKeychainManager *)registrationKeychainManager setAuthenticationCert:v9 forID:v10];
  }
}

- (id)propertiesForUser:(id)a3
{
  if (a3)
  {
    persistentMap = self->_persistentMap;
    v4 = [a3 uniqueIdentifier];
    v5 = [(IDSPersistentMap *)persistentMap objectForKey:v4];
    v6 = [v5 properties];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setProperties:(id)a3 forUser:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = v8;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updating user properties {user: %@, props: %@}", buf, 0x16u);
    }

    persistentMap = self->_persistentMap;
    v11 = [v8 uniqueIdentifier];
    v12 = [(IDSPersistentMap *)persistentMap objectForKey:v11];

    if (v12)
    {
      v13 = self->_persistentMap;
      v14 = [[IDSUserDescription alloc] initWithUser:v8 properties:v6];
      v15 = [v8 uniqueIdentifier];
      [(IDSPersistentMap *)v13 setObject:v14 forKey:v15];

      v16 = +[IMRGLog registration];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v8;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Broadcasting update user props {user: %@}", buf, 0xCu);
      }

      v17 = [v8 realm];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100514634;
      v19[3] = &unk_100BDF4A0;
      v19[4] = self;
      v20 = v8;
      [(IDSUserStore *)self _iterateByRealm:v17 block:v19];
    }

    else
    {
      v18 = +[IMRGLog registration];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v8;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "User is not present -- not updating props {user: %@}", buf, 0xCu);
      }
    }
  }
}

- (void)_iterateByRealm:(int64_t)a3 block:(id)a4
{
  v6 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_realmByListener;
  v7 = [(NSMapTable *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(NSMapTable *)self->_realmByListener objectForKey:v11];
        v13 = [v12 integerValue];

        if (v13 == a3 || v13 == -42)
        {
          v6[2](v6, v11);
        }
      }

      v8 = [(NSMapTable *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)addActionListener:(id)a3 forRealm:(int64_t)a4
{
  realmByListener = self->_realmByListener;
  v6 = a3;
  v7 = [NSNumber numberWithInteger:a4];
  [(NSMapTable *)realmByListener setObject:v7 forKey:v6];
}

@end