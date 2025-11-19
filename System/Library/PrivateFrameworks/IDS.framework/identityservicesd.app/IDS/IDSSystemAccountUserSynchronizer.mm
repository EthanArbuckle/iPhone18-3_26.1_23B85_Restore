@interface IDSSystemAccountUserSynchronizer
- (IDSSystemAccountUserSynchronizer)initWithSystemAccountAdapter:(id)a3 userStore:(id)a4 migrationTracker:(id)a5 queue:(id)a6;
- (id)updatedUserDescriptionSetForRealm:(int64_t)a3 currentUserDescriptions:(id)a4;
- (void)forceRemoveUser:(id)a3 silently:(BOOL)a4;
@end

@implementation IDSSystemAccountUserSynchronizer

- (IDSSystemAccountUserSynchronizer)initWithSystemAccountAdapter:(id)a3 userStore:(id)a4 migrationTracker:(id)a5 queue:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = IDSSystemAccountUserSynchronizer;
  v15 = [(IDSSystemAccountUserSynchronizer *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_systemAccountAdapter, a3);
    objc_storeStrong(&v16->_userStore, a4);
    objc_storeStrong(&v16->_migrationTracker, a5);
    objc_storeStrong(&v16->_queue, a6);
  }

  return v16;
}

- (void)forceRemoveUser:(id)a3 silently:(BOOL)a4
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_1009330D0(v4, v5);
  }
}

- (id)updatedUserDescriptionSetForRealm:(int64_t)a3 currentUserDescriptions:(id)a4
{
  v6 = a4;
  if (a3 != 1)
  {
LABEL_29:
    v30 = v6;
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
      v32 = [(IDSDataMigrationTracker *)self->_migrationTracker performMigrationIfNeeded];
      migrationPromise = self->_migrationPromise;
      self->_migrationPromise = v32;

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

  v39 = [v6 mutableCopy];
  systemAccountAdapter = self->_systemAccountAdapter;
  v47 = 0;
  v8 = [(IDSSystemAccountAdapter *)systemAccountAdapter iCloudSystemAccountWithError:&v47];
  v36 = v47;
  v38 = v6;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v6;
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
      v11 = [v10 user];
      v12 = [v11 userName];
      v13 = [v8 username];
      if (v12 == v13)
      {
        v16 = 1;
      }

      else
      {
        v14 = [v11 userName];
        v15 = [v8 username];
        v16 = [v14 isEqual:v15];
      }

      v17 = [v11 DSID];
      v18 = [v8 DSID];
      v19 = v18;
      if (v17 != v18)
      {
        v20 = [v11 DSID];
        v21 = [v8 DSID];
        v22 = [v20 isEqual:v21];

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
    v25 = [v8 username];
    v26 = [v8 DSID];
    v27 = [(IDSAppleUser *)v24 initWithUserName:v25 DSID:v26];

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
  v6 = v38;
LABEL_30:

  return v30;
}

@end