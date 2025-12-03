@interface BLDownloadPolicyManager
- (BLDatabaseManager)databaseManager;
- (BLDownloadPolicyManager)initWithDatabaseManager:(id)manager;
- (BOOL)addOrUpdateDownloadPolicyWithInfo:(id)info withPolicyID:(id)d storePlaylistIdentifier:(id)identifier updateAssociated:(BOOL)associated;
- (BOOL)dq_addOrUpdateDownloadPolicyWithInfo:(id)info withPolicyID:(id)d storePlaylistIdentifier:(id)identifier updateAssociated:(BOOL)associated;
- (id)downloadPolicyForID:(id)d;
- (id)dq_policiesWithStorePlaylistIdentifier:(id)identifier;
- (id)overrideDownloadSizeLimitForDownloadIdentifier:(id)identifier;
- (void)dq_addOrUpdateInMemoryPolicy:(id)policy updateAssociated:(BOOL)associated;
- (void)dq_initializePolicy;
- (void)dq_trackByStorePlaylistIdentifierPolicy:(id)policy;
- (void)dq_untrackByStorePlaylistIdentifierPolicy:(id)policy;
- (void)removeOverrideDownloadSizeLimitForDownloadIdentifier:(id)identifier;
- (void)setOverrideDownloadSizeLimit:(int64_t)limit forDownloadIdentifier:(id)identifier;
@end

@implementation BLDownloadPolicyManager

- (BLDownloadPolicyManager)initWithDatabaseManager:(id)manager
{
  managerCopy = manager;
  v18.receiver = self;
  v18.super_class = BLDownloadPolicyManager;
  v5 = [(BLDownloadPolicyManager *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_databaseManager, managerCopy);
    v7 = objc_alloc_init(NSMutableDictionary);
    policies = v6->_policies;
    v6->_policies = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    policiesByStorePlaylistIdentifier = v6->_policiesByStorePlaylistIdentifier;
    v6->_policiesByStorePlaylistIdentifier = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.bookassetd.BLDownloadPolicyManager", v11);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v12;

    v14 = v6->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100088950;
    block[3] = &unk_10011CFE8;
    v17 = v6;
    dispatch_async(v14, block);
  }

  return v6;
}

- (BOOL)addOrUpdateDownloadPolicyWithInfo:(id)info withPolicyID:(id)d storePlaylistIdentifier:(id)identifier updateAssociated:(BOOL)associated
{
  infoCopy = info;
  dCopy = d;
  identifierCopy = identifier;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  dispatchQueue = [(BLDownloadPolicyManager *)self dispatchQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100088ABC;
  v18[3] = &unk_10011DD28;
  v21 = identifierCopy;
  v22 = &v24;
  v18[4] = self;
  v19 = infoCopy;
  v20 = dCopy;
  associatedCopy = associated;
  v14 = identifierCopy;
  v15 = dCopy;
  v16 = infoCopy;
  dispatch_sync(dispatchQueue, v18);

  LOBYTE(self) = *(v25 + 24);
  _Block_object_dispose(&v24, 8);
  return self;
}

- (BOOL)dq_addOrUpdateDownloadPolicyWithInfo:(id)info withPolicyID:(id)d storePlaylistIdentifier:(id)identifier updateAssociated:(BOOL)associated
{
  associatedCopy = associated;
  infoCopy = info;
  dCopy = d;
  identifierCopy = identifier;
  dispatchQueue = [(BLDownloadPolicyManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v14 = [(NSMutableDictionary *)self->_policies objectForKeyedSubscript:dCopy];
  info = [v14 info];
  v16 = [info isEqual:infoCopy];

  if ((v16 & 1) == 0)
  {
    v17 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v17 encodeObject:infoCopy forKey:@"Info"];
    [v17 finishEncoding];
    encodedData = [v17 encodedData];
    if (encodedData)
    {
      v19 = objc_alloc_init(BLDownloadPolicy);
      v20 = v19;
      if (v19)
      {
        [(BLDownloadPolicy *)v19 setPolicyID:dCopy];
        [(BLDownloadPolicy *)v20 setPolicyData:encodedData];
        [(BLDownloadPolicy *)v20 setStorePlaylistIdentifier:identifierCopy];
        [(BLDownloadPolicyManager *)self dq_addOrUpdateInMemoryPolicy:v20 updateAssociated:associatedCopy];
        databaseManager = [(BLDownloadPolicyManager *)self databaseManager];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100088CDC;
        v23[3] = &unk_10011D4B8;
        v24 = v20;
        [databaseManager saveOrUpdateDownloadPolicy:v24 completion:v23];
      }
    }
  }

  return 1;
}

- (id)downloadPolicyForID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100088EFC;
  v16 = sub_100088F0C;
  v17 = 0;
  dispatchQueue = [(BLDownloadPolicyManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100088F14;
  block[3] = &unk_10011DD50;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(dispatchQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)overrideDownloadSizeLimitForDownloadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100088EFC;
  v16 = sub_100088F0C;
  v17 = 0;
  dispatchQueue = [(BLDownloadPolicyManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000890C4;
  block[3] = &unk_10011DD50;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(dispatchQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)removeOverrideDownloadSizeLimitForDownloadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    dispatchQueue = [(BLDownloadPolicyManager *)self dispatchQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000891D0;
    v6[3] = &unk_10011D1A8;
    v6[4] = self;
    v7 = identifierCopy;
    dispatch_async(dispatchQueue, v6);
  }
}

- (void)setOverrideDownloadSizeLimit:(int64_t)limit forDownloadIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatchQueue = [(BLDownloadPolicyManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000892F8;
  block[3] = &unk_10011D7E0;
  v10 = identifierCopy;
  limitCopy = limit;
  block[4] = self;
  v8 = identifierCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)dq_addOrUpdateInMemoryPolicy:(id)policy updateAssociated:(BOOL)associated
{
  associatedCopy = associated;
  policyCopy = policy;
  dispatchQueue = [(BLDownloadPolicyManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  policyID = [policyCopy policyID];
  v9 = [(NSMutableDictionary *)self->_policies objectForKey:policyID];

  cellularResult = [policyCopy cellularResult];
  v11 = BLServiceLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v12)
    {
      *buf = 138543618;
      v29 = policyID;
      v30 = 2048;
      v31 = cellularResult;
      v13 = "[Download-Policy]: Updating download policy %{public}@ with cellularResult %ld";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0x16u);
    }
  }

  else if (v12)
  {
    *buf = 138543618;
    v29 = policyID;
    v30 = 2048;
    v31 = cellularResult;
    v13 = "[Download-Policy]: Adding download policy %{public}@ with cellularResult %ld";
    goto LABEL_6;
  }

  [(NSMutableDictionary *)self->_policies setObject:policyCopy forKey:policyID];
  storePlaylistIdentifier = [policyCopy storePlaylistIdentifier];
  v15 = storePlaylistIdentifier;
  if (associatedCopy && [storePlaylistIdentifier longLongValue])
  {
    v16 = [(BLDownloadPolicyManager *)self dq_policiesWithStorePlaylistIdentifier:v15];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v23 + 1) + 8 * i);
          policyData = [policyCopy policyData];
          [v21 setPolicyData:policyData];

          [(BLDownloadPolicyManager *)self dq_addOrUpdateInMemoryPolicy:v21 updateAssociated:0];
        }

        v18 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v18);
    }
  }

  [(BLDownloadPolicyManager *)self dq_trackByStorePlaylistIdentifierPolicy:policyCopy];
}

- (void)dq_initializePolicy
{
  dispatchQueue = [(BLDownloadPolicyManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v4 = objc_alloc_init(NSMutableArray);
  databaseManager = [(BLDownloadPolicyManager *)self databaseManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000896C0;
  v7[3] = &unk_10011D620;
  v8 = v4;
  selfCopy = self;
  v6 = v4;
  [databaseManager fetchListOfAllDownloadPoliciesWithCompletion:v7];
}

- (void)dq_trackByStorePlaylistIdentifierPolicy:(id)policy
{
  policyCopy = policy;
  dispatchQueue = [(BLDownloadPolicyManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  storePlaylistIdentifier = [policyCopy storePlaylistIdentifier];
  if ([storePlaylistIdentifier longLongValue])
  {
    policiesByStorePlaylistIdentifier = [(BLDownloadPolicyManager *)self policiesByStorePlaylistIdentifier];
    v7 = [policiesByStorePlaylistIdentifier objectForKeyedSubscript:storePlaylistIdentifier];

    if (!v7)
    {
      v7 = objc_alloc_init(NSMutableSet);
      policiesByStorePlaylistIdentifier2 = [(BLDownloadPolicyManager *)self policiesByStorePlaylistIdentifier];
      [policiesByStorePlaylistIdentifier2 setObject:v7 forKeyedSubscript:storePlaylistIdentifier];
    }

    [v7 addObject:policyCopy];
  }
}

- (void)dq_untrackByStorePlaylistIdentifierPolicy:(id)policy
{
  policyCopy = policy;
  dispatchQueue = [(BLDownloadPolicyManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  storePlaylistIdentifier = [policyCopy storePlaylistIdentifier];
  if ([storePlaylistIdentifier longLongValue])
  {
    policiesByStorePlaylistIdentifier = [(BLDownloadPolicyManager *)self policiesByStorePlaylistIdentifier];
    v7 = [policiesByStorePlaylistIdentifier objectForKeyedSubscript:storePlaylistIdentifier];

    if (v7)
    {
      [v7 removeObject:policyCopy];
    }
  }
}

- (id)dq_policiesWithStorePlaylistIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatchQueue = [(BLDownloadPolicyManager *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  policiesByStorePlaylistIdentifier = [(BLDownloadPolicyManager *)self policiesByStorePlaylistIdentifier];
  v7 = [policiesByStorePlaylistIdentifier objectForKeyedSubscript:identifierCopy];

  v8 = [v7 copy];

  return v8;
}

- (BLDatabaseManager)databaseManager
{
  WeakRetained = objc_loadWeakRetained(&self->_databaseManager);

  return WeakRetained;
}

@end