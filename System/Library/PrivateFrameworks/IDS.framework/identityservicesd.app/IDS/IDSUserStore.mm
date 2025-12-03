@interface IDSUserStore
- (IDSUserStore)initWithQueue:(id)queue;
- (IDSUserStore)initWithQueue:(id)queue persister:(id)persister registrationKeychainManager:(id)manager;
- (id)_calculateUserDescriptionUpdatesForCurrentUserDescriptions:(id)descriptions updatedUserDescriptions:(id)userDescriptions;
- (id)_stringRepresentationOfUserRealm:(int64_t)realm;
- (id)authenticationCertificateForUser:(id)user;
- (id)credentialForUser:(id)user;
- (id)debugDescription;
- (id)propertiesForUser:(id)user;
- (id)userDescriptionsWithRealm:(int64_t)realm;
- (id)userDescriptionsWithRealms:(id)realms;
- (id)userWithUniqueIdentifier:(id)identifier;
- (id)usersWithRealm:(int64_t)realm;
- (id)usersWithRealms:(id)realms;
- (void)_addUserDescription:(id)description;
- (void)_iterateByRealm:(int64_t)realm block:(id)block;
- (void)_removeUserDescription:(id)description;
- (void)_updateUserDescription:(id)description;
- (void)_updateUserDescriptionsForCurrentUserDescriptions:(id)descriptions updatedUserDescriptions:(id)userDescriptions;
- (void)addActionListener:(id)listener forRealm:(int64_t)realm;
- (void)forceRemoveUser:(id)user silently:(BOOL)silently;
- (void)reloadUsers;
- (void)reloadUsersForRealm:(int64_t)realm;
- (void)setAuthenticationCertificate:(id)certificate forUser:(id)user;
- (void)setCredential:(id)credential forUser:(id)user;
- (void)setDataProvider:(id)provider forRealm:(int64_t)realm;
- (void)setProperties:(id)properties forUser:(id)user;
- (void)silentlySetAuthenticationCertificate:(id)certificate forUser:(id)user;
- (void)updateUser:(id)user;
@end

@implementation IDSUserStore

- (IDSUserStore)initWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = [IDSPersistentMap defaultPersisterForIdentifier:@"com.apple.identityservices.userStore" dataProtectionClass:2];
  v6 = +[IDSRegistrationKeychainManager sharedInstance];
  v7 = [(IDSUserStore *)self initWithQueue:queueCopy persister:v5 registrationKeychainManager:v6];

  return v7;
}

- (IDSUserStore)initWithQueue:(id)queue persister:(id)persister registrationKeychainManager:(id)manager
{
  queueCopy = queue;
  persisterCopy = persister;
  managerCopy = manager;
  if (persisterCopy)
  {
    v28.receiver = self;
    v28.super_class = IDSUserStore;
    v12 = [(IDSUserStore *)&v28 init];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_queue, queue);
      v27 = [[IDSPersistentMapMergePolicy alloc] initWithPolicyBlock:&stru_100BDF410];
      v14 = objc_opt_class();
      v15 = objc_opt_class();
      v16 = objc_opt_class();
      v17 = objc_opt_class();
      v26 = objc_opt_class();
      v18 = [NSSet setWithObjects:v14, v15, v16, v17, v26, objc_opt_class(), 0];
      LOBYTE(v25) = 1;
      v19 = [[IDSPersistentMap alloc] initWithIdentifier:@"com.apple.identityservices.userStore" versionNumber:2 decodableClasses:v18 mergePolicy:v27 writeCoalescingDelay:persisterCopy writeCoalescingLeeway:&stru_100BDF430 persister:5.0 migrationBlock:1.0 allowBackup:v25];
      persistentMap = v13->_persistentMap;
      v13->_persistentMap = v19;

      objc_storeStrong(&v13->_registrationKeychainManager, manager);
      v21 = +[NSMapTable weakToStrongObjectsMapTable];
      realmByListener = v13->_realmByListener;
      v13->_realmByListener = v21;
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setDataProvider:(id)provider forRealm:(int64_t)realm
{
  providerCopy = provider;
  v7 = [NSNumber numberWithInteger:realm];
  v14 = v7;
  v15 = providerCopy;
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

- (id)usersWithRealm:(int64_t)realm
{
  allValues = [(IDSPersistentMap *)self->_persistentMap allValues];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100511DC8;
  v7[3] = &unk_100BDF450;
  v7[4] = realm;
  v5 = [allValues __imArrayByApplyingBlock:v7];

  return v5;
}

- (id)usersWithRealms:(id)realms
{
  realmsCopy = realms;
  allValues = [(IDSPersistentMap *)self->_persistentMap allValues];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100511F18;
  v9[3] = &unk_100BDF478;
  v10 = realmsCopy;
  v6 = realmsCopy;
  v7 = [allValues __imArrayByApplyingBlock:v9];

  return v7;
}

- (id)userWithUniqueIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = [(IDSPersistentMap *)self->_persistentMap objectForKey:?];
    user = [v3 user];
  }

  else
  {
    user = 0;
  }

  return user;
}

- (id)userDescriptionsWithRealm:(int64_t)realm
{
  allValues = [(IDSPersistentMap *)self->_persistentMap allValues];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005120C4;
  v7[3] = &unk_100BDF450;
  v7[4] = realm;
  v5 = [allValues __imArrayByApplyingBlock:v7];

  return v5;
}

- (id)userDescriptionsWithRealms:(id)realms
{
  realmsCopy = realms;
  allValues = [(IDSPersistentMap *)self->_persistentMap allValues];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005121F4;
  v9[3] = &unk_100BDF478;
  v10 = realmsCopy;
  v6 = realmsCopy;
  v7 = [allValues __imArrayByApplyingBlock:v9];

  return v7;
}

- (void)reloadUsers
{
  [(IDSUserStore *)self reloadUsersForRealm:0];

  [(IDSUserStore *)self reloadUsersForRealm:1];
}

- (void)reloadUsersForRealm:(int64_t)realm
{
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(IDSUserStore *)self _stringRepresentationOfUserRealm:realm];
    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "UserStore reloading {realm: %@}", &v14, 0xCu);
  }

  dataProviderByRealm = self->_dataProviderByRealm;
  v8 = [NSNumber numberWithInteger:realm];
  v9 = [(NSDictionary *)dataProviderByRealm objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = [(IDSUserStore *)self userDescriptionsWithRealm:realm];
    v11 = [NSSet setWithArray:v10];

    v12 = [v9 updatedUserDescriptionSetForRealm:realm currentUserDescriptions:v11];
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

- (void)forceRemoveUser:(id)user silently:(BOOL)silently
{
  silentlyCopy = silently;
  userCopy = user;
  if (userCopy)
  {
    dataProviderByRealm = self->_dataProviderByRealm;
    v10 = userCopy;
    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [userCopy realm]);
    v9 = [(NSDictionary *)dataProviderByRealm objectForKeyedSubscript:v8];

    if (v9)
    {
      [v9 forceRemoveUser:v10 silently:silentlyCopy];
    }

    userCopy = v10;
  }
}

- (void)updateUser:(id)user
{
  userCopy = user;
  if (userCopy)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = userCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating user {user: %@}", buf, 0xCu);
    }

    persistentMap = self->_persistentMap;
    uniqueIdentifier = [userCopy uniqueIdentifier];
    v8 = [(IDSPersistentMap *)persistentMap objectForKey:uniqueIdentifier];

    if (v8)
    {
      v9 = self->_persistentMap;
      v10 = [IDSUserDescription alloc];
      properties = [v8 properties];
      v12 = [(IDSUserDescription *)v10 initWithUser:userCopy properties:properties];
      uniqueIdentifier2 = [userCopy uniqueIdentifier];
      [(IDSPersistentMap *)v9 setObject:v12 forKey:uniqueIdentifier2];

      v14 = +[IMRGLog registration];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = userCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Broadcasting update user {user: %@}", buf, 0xCu);
      }

      realm = [userCopy realm];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1005127D8;
      v17[3] = &unk_100BDF4A0;
      v17[4] = self;
      v18 = userCopy;
      [(IDSUserStore *)self _iterateByRealm:realm block:v17];
    }

    else
    {
      v16 = +[IMRGLog registration];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = userCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "User is not present -- not updating {user: %@}", buf, 0xCu);
      }
    }
  }
}

- (void)_updateUserDescriptionsForCurrentUserDescriptions:(id)descriptions updatedUserDescriptions:(id)userDescriptions
{
  [(IDSUserStore *)self _calculateUserDescriptionUpdatesForCurrentUserDescriptions:descriptions updatedUserDescriptions:userDescriptions];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v30 = v46 = 0u;
  silentUpdates = [v30 silentUpdates];
  v6 = [silentUpdates countByEnumeratingWithState:&v43 objects:v52 count:16];
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
          objc_enumerationMutation(silentUpdates);
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
        user = [v10 user];
        uniqueIdentifier = [user uniqueIdentifier];
        [(IDSPersistentMap *)persistentMap setObject:v10 forKey:uniqueIdentifier];
      }

      v7 = [silentUpdates countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v7);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  removals = [v30 removals];
  v16 = [removals countByEnumeratingWithState:&v39 objects:v49 count:16];
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
          objc_enumerationMutation(removals);
        }

        [(IDSUserStore *)self _removeUserDescription:*(*(&v39 + 1) + 8 * j)];
      }

      v17 = [removals countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v17);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  additions = [v30 additions];
  v21 = [additions countByEnumeratingWithState:&v35 objects:v48 count:16];
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
          objc_enumerationMutation(additions);
        }

        [(IDSUserStore *)self _addUserDescription:*(*(&v35 + 1) + 8 * k)];
      }

      v22 = [additions countByEnumeratingWithState:&v35 objects:v48 count:16];
    }

    while (v22);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  loudUpdates = [v30 loudUpdates];
  v26 = [loudUpdates countByEnumeratingWithState:&v31 objects:v47 count:16];
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
          objc_enumerationMutation(loudUpdates);
        }

        [(IDSUserStore *)self _updateUserDescription:*(*(&v31 + 1) + 8 * m)];
      }

      v27 = [loudUpdates countByEnumeratingWithState:&v31 objects:v47 count:16];
    }

    while (v27);
  }
}

- (id)_calculateUserDescriptionUpdatesForCurrentUserDescriptions:(id)descriptions updatedUserDescriptions:(id)userDescriptions
{
  descriptionsCopy = descriptions;
  userDescriptionsCopy = userDescriptions;
  v40 = objc_alloc_init(IDSUserDescriptionUpdates);
  v43 = +[NSMutableArray array];
  v42 = +[NSMutableArray array];
  v7 = +[NSMutableArray array];
  v41 = +[NSMutableArray array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v8 = descriptionsCopy;
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
        if (([userDescriptionsCopy containsObject:v13] & 1) == 0)
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
  v14 = userDescriptionsCopy;
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
          properties = [v20 properties];
          properties2 = [v19 properties];
          v24 = properties2;
          if ((!(properties | properties2) || [properties2 isEqual:properties]) && (objc_msgSend(v19, "isIdenticalToUserDescription:", v21) & 1) == 0)
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
          properties3 = [v31 properties];
          properties4 = [v30 properties];
          v34 = properties4;
          if (properties3 | properties4 && ([properties4 isEqual:properties3] & 1) == 0)
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

- (void)_addUserDescription:(id)description
{
  descriptionCopy = description;
  if (descriptionCopy)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = descriptionCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Adding user description {userDescription: %@}", buf, 0xCu);
    }

    persistentMap = self->_persistentMap;
    user = [descriptionCopy user];
    uniqueIdentifier = [user uniqueIdentifier];
    v9 = [(IDSPersistentMap *)persistentMap objectForKey:uniqueIdentifier];

    if (v9)
    {
      properties = [v9 properties];
      if (!properties)
      {
        properties = [descriptionCopy properties];
        if (!properties)
        {
          properties2 = [v9 properties];
          properties3 = [descriptionCopy properties];
          v20 = [properties2 isEqual:properties3];

          v21 = self->_persistentMap;
          user2 = [descriptionCopy user];
          uniqueIdentifier2 = [user2 uniqueIdentifier];
          [(IDSPersistentMap *)v21 setObject:descriptionCopy forKey:uniqueIdentifier2];

          if ((v20 & 1) == 0)
          {
LABEL_12:

            goto LABEL_13;
          }

LABEL_9:
          v14 = +[IMRGLog registration];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            user3 = [descriptionCopy user];
            *buf = 138412290;
            v27 = user3;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Broadcasting new user {user: %@}", buf, 0xCu);
          }

          user4 = [descriptionCopy user];
          realm = [user4 realm];
          v24[0] = _NSConcreteStackBlock;
          v24[1] = 3221225472;
          v24[2] = sub_100513268;
          v24[3] = &unk_100BDF4A0;
          v24[4] = self;
          v25 = descriptionCopy;
          [(IDSUserStore *)self _iterateByRealm:realm block:v24];

          goto LABEL_12;
        }
      }
    }

    v11 = self->_persistentMap;
    user5 = [descriptionCopy user];
    uniqueIdentifier3 = [user5 uniqueIdentifier];
    [(IDSPersistentMap *)v11 setObject:descriptionCopy forKey:uniqueIdentifier3];

    goto LABEL_9;
  }

LABEL_13:
}

- (void)_removeUserDescription:(id)description
{
  descriptionCopy = description;
  if (descriptionCopy)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = descriptionCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing user description {userDescription: %@}", buf, 0xCu);
    }

    user = [descriptionCopy user];
    [(IDSUserStore *)self setCredential:0 forUser:user];

    user2 = [descriptionCopy user];
    v8 = [(IDSUserStore *)self authenticationCertificateForUser:user2];

    user3 = [descriptionCopy user];
    realm = [user3 realm];

    if (!realm)
    {
      v11 = +[IDSPACStateTracker sharedInstance];
      [v11 notePhoneAuthCertLost:9];
    }

    user4 = [descriptionCopy user];
    [(IDSUserStore *)self silentlySetAuthenticationCertificate:0 forUser:user4];

    persistentMap = self->_persistentMap;
    user5 = [descriptionCopy user];
    uniqueIdentifier = [user5 uniqueIdentifier];
    [(IDSPersistentMap *)persistentMap removeObjectForKey:uniqueIdentifier];

    user6 = [descriptionCopy user];
    realm2 = [user6 realm];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100513520;
    v19[3] = &unk_100BDF4C8;
    v19[4] = self;
    v20 = descriptionCopy;
    v21 = v8;
    v18 = v8;
    [(IDSUserStore *)self _iterateByRealm:realm2 block:v19];
  }
}

- (void)_updateUserDescription:(id)description
{
  descriptionCopy = description;
  if (descriptionCopy)
  {
    v5 = +[IMRGLog registration];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = descriptionCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating userDescription {userDescription: %@}", buf, 0xCu);
    }

    persistentMap = self->_persistentMap;
    user = [descriptionCopy user];
    uniqueIdentifier = [user uniqueIdentifier];
    v9 = [(IDSPersistentMap *)persistentMap objectForKey:uniqueIdentifier];

    if (v9)
    {
      v10 = self->_persistentMap;
      user2 = [descriptionCopy user];
      uniqueIdentifier2 = [user2 uniqueIdentifier];
      [(IDSPersistentMap *)v10 setObject:descriptionCopy forKey:uniqueIdentifier2];

      v13 = +[IMRGLog registration];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = descriptionCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Broadcasting update user description {userDescription: %@}", buf, 0xCu);
      }

      user3 = [descriptionCopy user];
      realm = [user3 realm];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100513818;
      v17[3] = &unk_100BDF4A0;
      v17[4] = self;
      v18 = descriptionCopy;
      [(IDSUserStore *)self _iterateByRealm:realm block:v17];
    }

    else
    {
      v16 = +[IMRGLog registration];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = descriptionCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "User is not present -- not updating {userDescription: %@}", buf, 0xCu);
      }
    }
  }
}

- (id)_stringRepresentationOfUserRealm:(int64_t)realm
{
  v3 = @"p";
  if (realm == 1)
  {
    v3 = @"aid";
  }

  if (realm == 2)
  {
    return @"tp";
  }

  else
  {
    return v3;
  }
}

- (id)credentialForUser:(id)user
{
  userCopy = user;
  v5 = userCopy;
  if (!userCopy)
  {
    goto LABEL_17;
  }

  realm = [userCopy realm];
  if (realm != 2)
  {
    if (realm == 1)
    {
      v38 = +[IMRGLog registration];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        sub_100927DE4(v5, v38);
      }
    }

    else if (!realm)
    {
      v7 = v5;
      registrationKeychainManager = self->_registrationKeychainManager;
      storageIdentifier = [v7 storageIdentifier];
      v10 = [(IDSRegistrationKeychainManager *)registrationKeychainManager smsSignatureForID:storageIdentifier];

      if (!v10)
      {
        v11 = self->_registrationKeychainManager;
        phoneNumber = [v7 phoneNumber];
        v10 = [(IDSRegistrationKeychainManager *)v11 smsSignatureForID:phoneNumber];

        if (v10)
        {
          v13 = +[IMRGLog sms];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            phoneNumber2 = [v7 phoneNumber];
            storageIdentifier2 = [v7 storageIdentifier];
            v44 = 138412546;
            v45 = phoneNumber2;
            v46 = 2112;
            v47 = storageIdentifier2;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Migrating sms signature from phone number: %@ to SIM label ID: %@", &v44, 0x16u);
          }

          v16 = v10;
          v17 = self->_registrationKeychainManager;
          storageIdentifier3 = [v7 storageIdentifier];
          [(IDSRegistrationKeychainManager *)v17 setSMSSignature:v16 mainID:storageIdentifier3];

          v19 = self->_registrationKeychainManager;
          phoneNumber3 = [v7 phoneNumber];
          v21 = [(IDSRegistrationKeychainManager *)v19 smsSignatureMechanismForID:phoneNumber3];
          intValue = [v21 intValue];

          v23 = +[IMRGLog sms];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            phoneNumber4 = [v7 phoneNumber];
            storageIdentifier4 = [v7 storageIdentifier];
            v44 = 138412546;
            v45 = phoneNumber4;
            v46 = 2112;
            v47 = storageIdentifier4;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Migrating sms signature mechanism from phone number: %@ to SIM label ID: %@", &v44, 0x16u);
          }

          v26 = self->_registrationKeychainManager;
          v27 = [NSNumber numberWithInteger:intValue];
          storageIdentifier5 = [v7 storageIdentifier];
          [(IDSRegistrationKeychainManager *)v26 setSMSSignatureMechanism:v27 mainID:storageIdentifier5];

          v29 = self->_registrationKeychainManager;
          phoneNumber5 = [v7 phoneNumber];
          [(IDSRegistrationKeychainManager *)v29 setSMSSignature:0 mainID:phoneNumber5];

          v31 = self->_registrationKeychainManager;
          phoneNumber6 = [v7 phoneNumber];
          [(IDSRegistrationKeychainManager *)v31 setSMSSignatureMechanism:0 mainID:phoneNumber6];
        }
      }

      v33 = self->_registrationKeychainManager;
      storageIdentifier6 = [v7 storageIdentifier];
      v35 = [(IDSRegistrationKeychainManager *)v33 smsSignatureMechanismForID:storageIdentifier6];
      intValue2 = [v35 intValue];

      v37 = [[IDSPhoneUserCredential alloc] initWithSMSSignature:v10 mechanismUsed:intValue2];
      goto LABEL_19;
    }

LABEL_17:
    v37 = 0;
    goto LABEL_20;
  }

  v39 = self->_registrationKeychainManager;
  v40 = v5;
  phoneNumber7 = [v40 phoneNumber];
  v7 = [(IDSRegistrationKeychainManager *)v39 tempPhoneCredentialForID:phoneNumber7];

  v42 = [IDSTemporaryPhoneUserCredential alloc];
  v37 = [(IDSTemporaryPhoneUserCredential *)v42 initWithDataRepresentation:v7];
LABEL_19:

LABEL_20:

  return v37;
}

- (void)setCredential:(id)credential forUser:(id)user
{
  credentialCopy = credential;
  userCopy = user;
  if (!userCopy)
  {
    goto LABEL_16;
  }

  if (credentialCopy)
  {
    realm = [credentialCopy realm];
    if (realm != [userCopy realm])
    {
      v19 = +[IMRGLog registration];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        sub_100927E5C(credentialCopy, userCopy, v19);
      }

      goto LABEL_14;
    }
  }

  realm2 = [userCopy realm];
  if (realm2 == 2)
  {
    registrationKeychainManager = self->_registrationKeychainManager;
    v21 = credentialCopy;
    v22 = userCopy;
    dataRepresentation = [v21 dataRepresentation];
    phoneNumber = [v22 phoneNumber];
    [(IDSRegistrationKeychainManager *)registrationKeychainManager setTempPhoneCredential:dataRepresentation forID:phoneNumber];

    goto LABEL_16;
  }

  if (realm2 == 1)
  {
    v19 = +[IMRGLog registration];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      sub_100927DE4(userCopy, v19);
    }

LABEL_14:

    goto LABEL_16;
  }

  if (!realm2)
  {
    v10 = userCopy;
    v11 = credentialCopy;
    phoneNumber2 = [v10 phoneNumber];

    if (phoneNumber2)
    {
      v13 = self->_registrationKeychainManager;
      smsSignature = [v11 smsSignature];
      storageIdentifier = [v10 storageIdentifier];
      [(IDSRegistrationKeychainManager *)v13 setSMSSignature:smsSignature mainID:storageIdentifier];

      v16 = self->_registrationKeychainManager;
      v17 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v11 mechanismUsed]);
      storageIdentifier2 = [v10 storageIdentifier];
      [(IDSRegistrationKeychainManager *)v16 setSMSSignatureMechanism:v17 mainID:storageIdentifier2];
    }
  }

LABEL_16:
}

- (id)authenticationCertificateForUser:(id)user
{
  userCopy = user;
  v5 = userCopy;
  if (!userCopy || ([userCopy storageIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v13 = 0;
    goto LABEL_15;
  }

  registrationKeychainManager = self->_registrationKeychainManager;
  storageIdentifier = [v5 storageIdentifier];
  v9 = [(IDSRegistrationKeychainManager *)registrationKeychainManager authenticationCertForID:storageIdentifier];

  v10 = self->_registrationKeychainManager;
  realmPrefixedIdentifier = [v5 realmPrefixedIdentifier];
  v12 = [(IDSRegistrationKeychainManager *)v10 authenticationCertForID:realmPrefixedIdentifier];

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
      realmPrefixedIdentifier2 = [v5 realmPrefixedIdentifier];
      storageIdentifier2 = [v5 storageIdentifier];
      v22 = 138412546;
      v23 = realmPrefixedIdentifier2;
      v24 = 2112;
      v25 = storageIdentifier2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Migrating phone user auth cert from phone number: %@ to label ID: %@", &v22, 0x16u);
    }

    v9 = v12;
    v17 = self->_registrationKeychainManager;
    storageIdentifier3 = [v5 storageIdentifier];
    [(IDSRegistrationKeychainManager *)v17 setAuthenticationCert:v9 forID:storageIdentifier3];

    v19 = self->_registrationKeychainManager;
    realmPrefixedIdentifier3 = [v5 realmPrefixedIdentifier];
    [(IDSRegistrationKeychainManager *)v19 setAuthenticationCert:0 forID:realmPrefixedIdentifier3];

    goto LABEL_13;
  }

  v9 = 0;
LABEL_9:
  v13 = 0;
LABEL_14:

LABEL_15:

  return v13;
}

- (void)setAuthenticationCertificate:(id)certificate forUser:(id)user
{
  certificateCopy = certificate;
  userCopy = user;
  [(IDSUserStore *)self silentlySetAuthenticationCertificate:certificateCopy forUser:userCopy];
  realm = [userCopy realm];
  if (certificateCopy)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100514268;
    v12[3] = &unk_100BDF4C8;
    v12[4] = self;
    v9 = &v13;
    v13 = certificateCopy;
    v14 = userCopy;
    v10 = userCopy;
    [(IDSUserStore *)self _iterateByRealm:realm block:v12];
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10051425C;
    v15[3] = &unk_100BDF4A0;
    v9 = &v16;
    v15[4] = self;
    v16 = userCopy;
    v11 = userCopy;
    [(IDSUserStore *)self _iterateByRealm:realm block:v15];
  }
}

- (void)silentlySetAuthenticationCertificate:(id)certificate forUser:(id)user
{
  certificateCopy = certificate;
  userCopy = user;
  storageIdentifier = [userCopy storageIdentifier];

  if (storageIdentifier)
  {
    registrationKeychainManager = self->_registrationKeychainManager;
    dataRepresentation = [certificateCopy dataRepresentation];
    storageIdentifier2 = [userCopy storageIdentifier];
    [(IDSRegistrationKeychainManager *)registrationKeychainManager setAuthenticationCert:dataRepresentation forID:storageIdentifier2];
  }
}

- (id)propertiesForUser:(id)user
{
  if (user)
  {
    persistentMap = self->_persistentMap;
    uniqueIdentifier = [user uniqueIdentifier];
    v5 = [(IDSPersistentMap *)persistentMap objectForKey:uniqueIdentifier];
    properties = [v5 properties];
  }

  else
  {
    properties = 0;
  }

  return properties;
}

- (void)setProperties:(id)properties forUser:(id)user
{
  propertiesCopy = properties;
  userCopy = user;
  v8 = userCopy;
  if (propertiesCopy && userCopy)
  {
    v9 = +[IMRGLog registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = v8;
      v23 = 2112;
      v24 = propertiesCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Updating user properties {user: %@, props: %@}", buf, 0x16u);
    }

    persistentMap = self->_persistentMap;
    uniqueIdentifier = [v8 uniqueIdentifier];
    v12 = [(IDSPersistentMap *)persistentMap objectForKey:uniqueIdentifier];

    if (v12)
    {
      v13 = self->_persistentMap;
      v14 = [[IDSUserDescription alloc] initWithUser:v8 properties:propertiesCopy];
      uniqueIdentifier2 = [v8 uniqueIdentifier];
      [(IDSPersistentMap *)v13 setObject:v14 forKey:uniqueIdentifier2];

      v16 = +[IMRGLog registration];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v8;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Broadcasting update user props {user: %@}", buf, 0xCu);
      }

      realm = [v8 realm];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100514634;
      v19[3] = &unk_100BDF4A0;
      v19[4] = self;
      v20 = v8;
      [(IDSUserStore *)self _iterateByRealm:realm block:v19];
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

- (void)_iterateByRealm:(int64_t)realm block:(id)block
{
  blockCopy = block;
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
        integerValue = [v12 integerValue];

        if (integerValue == realm || integerValue == -42)
        {
          blockCopy[2](blockCopy, v11);
        }
      }

      v8 = [(NSMapTable *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)addActionListener:(id)listener forRealm:(int64_t)realm
{
  realmByListener = self->_realmByListener;
  listenerCopy = listener;
  v7 = [NSNumber numberWithInteger:realm];
  [(NSMapTable *)realmByListener setObject:v7 forKey:listenerCopy];
}

@end