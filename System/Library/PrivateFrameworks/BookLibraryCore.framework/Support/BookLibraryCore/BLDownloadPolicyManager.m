@interface BLDownloadPolicyManager
- (BLDatabaseManager)databaseManager;
- (BLDownloadPolicyManager)initWithDatabaseManager:(id)a3;
- (BOOL)addOrUpdateDownloadPolicyWithInfo:(id)a3 withPolicyID:(id)a4 storePlaylistIdentifier:(id)a5 updateAssociated:(BOOL)a6;
- (BOOL)dq_addOrUpdateDownloadPolicyWithInfo:(id)a3 withPolicyID:(id)a4 storePlaylistIdentifier:(id)a5 updateAssociated:(BOOL)a6;
- (id)downloadPolicyForID:(id)a3;
- (id)dq_policiesWithStorePlaylistIdentifier:(id)a3;
- (id)overrideDownloadSizeLimitForDownloadIdentifier:(id)a3;
- (void)dq_addOrUpdateInMemoryPolicy:(id)a3 updateAssociated:(BOOL)a4;
- (void)dq_initializePolicy;
- (void)dq_trackByStorePlaylistIdentifierPolicy:(id)a3;
- (void)dq_untrackByStorePlaylistIdentifierPolicy:(id)a3;
- (void)removeOverrideDownloadSizeLimitForDownloadIdentifier:(id)a3;
- (void)setOverrideDownloadSizeLimit:(int64_t)a3 forDownloadIdentifier:(id)a4;
@end

@implementation BLDownloadPolicyManager

- (BLDownloadPolicyManager)initWithDatabaseManager:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = BLDownloadPolicyManager;
  v5 = [(BLDownloadPolicyManager *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_databaseManager, v4);
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

- (BOOL)addOrUpdateDownloadPolicyWithInfo:(id)a3 withPolicyID:(id)a4 storePlaylistIdentifier:(id)a5 updateAssociated:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v13 = [(BLDownloadPolicyManager *)self dispatchQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100088ABC;
  v18[3] = &unk_10011DD28;
  v21 = v12;
  v22 = &v24;
  v18[4] = self;
  v19 = v10;
  v20 = v11;
  v23 = a6;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_sync(v13, v18);

  LOBYTE(self) = *(v25 + 24);
  _Block_object_dispose(&v24, 8);
  return self;
}

- (BOOL)dq_addOrUpdateDownloadPolicyWithInfo:(id)a3 withPolicyID:(id)a4 storePlaylistIdentifier:(id)a5 updateAssociated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(BLDownloadPolicyManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v13);

  v14 = [(NSMutableDictionary *)self->_policies objectForKeyedSubscript:v11];
  v15 = [v14 info];
  v16 = [v15 isEqual:v10];

  if ((v16 & 1) == 0)
  {
    v17 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    [v17 encodeObject:v10 forKey:@"Info"];
    [v17 finishEncoding];
    v18 = [v17 encodedData];
    if (v18)
    {
      v19 = objc_alloc_init(BLDownloadPolicy);
      v20 = v19;
      if (v19)
      {
        [(BLDownloadPolicy *)v19 setPolicyID:v11];
        [(BLDownloadPolicy *)v20 setPolicyData:v18];
        [(BLDownloadPolicy *)v20 setStorePlaylistIdentifier:v12];
        [(BLDownloadPolicyManager *)self dq_addOrUpdateInMemoryPolicy:v20 updateAssociated:v6];
        v21 = [(BLDownloadPolicyManager *)self databaseManager];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100088CDC;
        v23[3] = &unk_10011D4B8;
        v24 = v20;
        [v21 saveOrUpdateDownloadPolicy:v24 completion:v23];
      }
    }
  }

  return 1;
}

- (id)downloadPolicyForID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100088EFC;
  v16 = sub_100088F0C;
  v17 = 0;
  v5 = [(BLDownloadPolicyManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100088F14;
  block[3] = &unk_10011DD50;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)overrideDownloadSizeLimitForDownloadIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100088EFC;
  v16 = sub_100088F0C;
  v17 = 0;
  v5 = [(BLDownloadPolicyManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000890C4;
  block[3] = &unk_10011DD50;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)removeOverrideDownloadSizeLimitForDownloadIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(BLDownloadPolicyManager *)self dispatchQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000891D0;
    v6[3] = &unk_10011D1A8;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)setOverrideDownloadSizeLimit:(int64_t)a3 forDownloadIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(BLDownloadPolicyManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000892F8;
  block[3] = &unk_10011D7E0;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)dq_addOrUpdateInMemoryPolicy:(id)a3 updateAssociated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(BLDownloadPolicyManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v6 policyID];
  v9 = [(NSMutableDictionary *)self->_policies objectForKey:v8];

  v10 = [v6 cellularResult];
  v11 = BLServiceLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v12)
    {
      *buf = 138543618;
      v29 = v8;
      v30 = 2048;
      v31 = v10;
      v13 = "[Download-Policy]: Updating download policy %{public}@ with cellularResult %ld";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0x16u);
    }
  }

  else if (v12)
  {
    *buf = 138543618;
    v29 = v8;
    v30 = 2048;
    v31 = v10;
    v13 = "[Download-Policy]: Adding download policy %{public}@ with cellularResult %ld";
    goto LABEL_6;
  }

  [(NSMutableDictionary *)self->_policies setObject:v6 forKey:v8];
  v14 = [v6 storePlaylistIdentifier];
  v15 = v14;
  if (v4 && [v14 longLongValue])
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
          v22 = [v6 policyData];
          [v21 setPolicyData:v22];

          [(BLDownloadPolicyManager *)self dq_addOrUpdateInMemoryPolicy:v21 updateAssociated:0];
        }

        v18 = [v16 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v18);
    }
  }

  [(BLDownloadPolicyManager *)self dq_trackByStorePlaylistIdentifierPolicy:v6];
}

- (void)dq_initializePolicy
{
  v3 = [(BLDownloadPolicyManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_alloc_init(NSMutableArray);
  v5 = [(BLDownloadPolicyManager *)self databaseManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000896C0;
  v7[3] = &unk_10011D620;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 fetchListOfAllDownloadPoliciesWithCompletion:v7];
}

- (void)dq_trackByStorePlaylistIdentifierPolicy:(id)a3
{
  v9 = a3;
  v4 = [(BLDownloadPolicyManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [v9 storePlaylistIdentifier];
  if ([v5 longLongValue])
  {
    v6 = [(BLDownloadPolicyManager *)self policiesByStorePlaylistIdentifier];
    v7 = [v6 objectForKeyedSubscript:v5];

    if (!v7)
    {
      v7 = objc_alloc_init(NSMutableSet);
      v8 = [(BLDownloadPolicyManager *)self policiesByStorePlaylistIdentifier];
      [v8 setObject:v7 forKeyedSubscript:v5];
    }

    [v7 addObject:v9];
  }
}

- (void)dq_untrackByStorePlaylistIdentifierPolicy:(id)a3
{
  v8 = a3;
  v4 = [(BLDownloadPolicyManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [v8 storePlaylistIdentifier];
  if ([v5 longLongValue])
  {
    v6 = [(BLDownloadPolicyManager *)self policiesByStorePlaylistIdentifier];
    v7 = [v6 objectForKeyedSubscript:v5];

    if (v7)
    {
      [v7 removeObject:v8];
    }
  }
}

- (id)dq_policiesWithStorePlaylistIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(BLDownloadPolicyManager *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(BLDownloadPolicyManager *)self policiesByStorePlaylistIdentifier];
  v7 = [v6 objectForKeyedSubscript:v4];

  v8 = [v7 copy];

  return v8;
}

- (BLDatabaseManager)databaseManager
{
  WeakRetained = objc_loadWeakRetained(&self->_databaseManager);

  return WeakRetained;
}

@end