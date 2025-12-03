@interface IDSSystemAccountUserSynchronizer
- (IDSSystemAccountUserSynchronizer)initWithSystemAccountAdapter:(id)adapter userStore:(id)store migrationTracker:(id)tracker queue:(id)queue;
- (id)updatedUserDescriptionSetForRealm:(int64_t)realm currentUserDescriptions:(id)descriptions;
- (void)forceRemoveUser:(id)user silently:(BOOL)silently;
@end

@implementation IDSSystemAccountUserSynchronizer

- (IDSSystemAccountUserSynchronizer)initWithSystemAccountAdapter:(id)adapter userStore:(id)store migrationTracker:(id)tracker queue:(id)queue
{
  adapterCopy = adapter;
  storeCopy = store;
  trackerCopy = tracker;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = IDSSystemAccountUserSynchronizer;
  v15 = [(IDSSystemAccountUserSynchronizer *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_systemAccountAdapter, adapter);
    objc_storeStrong(&v16->_userStore, store);
    objc_storeStrong(&v16->_migrationTracker, tracker);
    objc_storeStrong(&v16->_queue, queue);
  }

  return v16;
}

- (void)forceRemoveUser:(id)user silently:(BOOL)silently
{
  userCopy = user;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_1009330D0(userCopy, v5);
  }
}

- (id)updatedUserDescriptionSetForRealm:(int64_t)realm currentUserDescriptions:(id)descriptions
{
  descriptionsCopy = descriptions;
  if (realm != 1)
  {
LABEL_29:
    v30 = descriptionsCopy;
    goto LABEL_30;
  }

  if (![(IDSDataMigrationTracker *)self->_migrationTracker hasPerformedMigration])
  {
    v31 = +[IMRGLog registration];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Waiting on migration -- deferring updateUsers", buf, 2u);
    }

    if (!self->_migrationPromise)
    {
      performMigrationIfNeeded = [(IDSDataMigrationTracker *)self->_migrationTracker performMigrationIfNeeded];
      migrationPromise = self->_migrationPromise;
      self->_migrationPromise = performMigrationIfNeeded;

      v34 = self->_migrationPromise;
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_1006D8D4C;
      v48[3] = &unk_100BD8870;
      v48[4] = self;
      [(CUTPromise *)v34 registerResultBlock:v48];
    }

    goto LABEL_29;
  }

  v39 = [descriptionsCopy mutableCopy];
  systemAccountAdapter = self->_systemAccountAdapter;
  v47 = 0;
  v8 = [(IDSSystemAccountAdapter *)systemAccountAdapter iCloudSystemAccountWithError:&v47];
  v36 = v47;
  v38 = descriptionsCopy;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = descriptionsCopy;
  v42 = [obj countByEnumeratingWithState:&v43 objects:v57 count:16];
  if (!v42)
  {
    goto LABEL_19;
  }

  v41 = *v44;
  do
  {
    v9 = 0;
    do
    {
      if (*v44 != v41)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v43 + 1) + 8 * v9);
      user = [v10 user];
      userName = [user userName];
      username = [v8 username];
      if (userName == username)
      {
        v16 = 1;
      }

      else
      {
        userName2 = [user userName];
        username2 = [v8 username];
        v16 = [userName2 isEqual:username2];
      }

      dSID = [user DSID];
      dSID2 = [v8 DSID];
      v19 = dSID2;
      if (dSID != dSID2)
      {
        dSID3 = [user DSID];
        dSID4 = [v8 DSID];
        v22 = [dSID3 isEqual:dSID4];

        if (v22 & v16)
        {
          goto LABEL_14;
        }

LABEL_13:
        [v39 removeObject:v10];
        goto LABEL_14;
      }

      if ((v16 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_14:

      v9 = v9 + 1;
    }

    while (v42 != v9);
    v23 = [obj countByEnumeratingWithState:&v43 objects:v57 count:16];
    v42 = v23;
  }

  while (v23);
LABEL_19:

  if (![v39 count] && v8)
  {
    v24 = [IDSAppleUser alloc];
    username3 = [v8 username];
    dSID5 = [v8 DSID];
    v27 = [(IDSAppleUser *)v24 initWithUserName:username3 DSID:dSID5];

    v28 = [[IDSUserDescription alloc] initWithUser:v27 properties:0];
    [v39 addObject:v28];
  }

  v29 = +[IMRGLog registration];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v50 = obj;
    v51 = 2112;
    v52 = v39;
    v53 = 2112;
    v54 = v8;
    v55 = 2112;
    v56 = v37;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Finished synchronizing SystemAccounts to users {currentUserDescriptions: %@, updatedUserDescriptions: %@, iCloudAccount: %@, error: %@}", buf, 0x2Au);
  }

  v30 = v39;
  descriptionsCopy = v38;
LABEL_30:

  return v30;
}

@end