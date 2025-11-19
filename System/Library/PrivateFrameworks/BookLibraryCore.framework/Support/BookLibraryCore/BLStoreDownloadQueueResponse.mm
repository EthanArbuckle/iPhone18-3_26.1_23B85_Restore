@interface BLStoreDownloadQueueResponse
- (BLStoreDownloadQueueResponse)initWithDictionary:(id)a3 userIdentifier:(id)a4 preferredAssetFlavor:(id)a5;
- (BLStoreDownloadQueueResponse)initWithError:(id)a3 userIdentifier:(id)a4;
- (BOOL)shouldCancelPurchaseBatch;
- (BOOL)triggeredQueueCheck;
- (NSError)error;
- (NSOrderedSet)downloads;
- (id)_accountUniqueIdentifierFromValue:(id)a3;
- (id)_errorWithFailureType:(id)a3 customerMessage:(id)a4 responseDictionary:(id)a5;
- (id)_initStoreDownloadQueueResponse;
- (id)_responseDictionary:(id)a3 valueForProtocolKey:(id)a4;
- (void)setError:(id)a3;
- (void)setShouldCancelPurchaseBatch:(BOOL)a3;
- (void)setTriggeredQueueCheck:(BOOL)a3;
@end

@implementation BLStoreDownloadQueueResponse

- (id)_initStoreDownloadQueueResponse
{
  v6.receiver = self;
  v6.super_class = BLStoreDownloadQueueResponse;
  v2 = [(BLStoreDownloadQueueResponse *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.bookassetd.BLStoreDownloadQueueResponse", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (BLStoreDownloadQueueResponse)initWithDictionary:(id)a3 userIdentifier:(id)a4 preferredAssetFlavor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(BLStoreDownloadQueueResponse *)self _initStoreDownloadQueueResponse];
  if (v11)
  {
    v90 = v10;
    v12 = objc_opt_new();
    v13 = [v8 objectForKey:@"page-type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 objectForKey:@"template-name"];

      v13 = v14;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v13 isEqualToString:@"preorder-success"];
    }

    else
    {
      v15 = 0;
    }

    v16 = [v8 objectForKey:@"more"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = sub_100066598(v16);
      rangesToLoad = v11->_rangesToLoad;
      v11->_rangesToLoad = v17;
    }

    v19 = [v8 objectForKey:@"failureType"];

    if (v19)
    {
      v20 = [v8 objectForKey:@"customerMessage"];
      v21 = [(BLStoreDownloadQueueResponse *)v11 _errorWithFailureType:v19 customerMessage:v20 responseDictionary:v8];
      error = v11->_error;
      v11->_error = v21;
    }

    v23 = [v8 objectForKey:@"failed-items"];

    objc_opt_class();
    v89 = v9;
    v96 = v12;
    if (objc_opt_isKindOfClass())
    {
      v99 = v15;
      v24 = v8;
      v101 = objc_alloc_init(NSMutableDictionary);
      v122 = 0u;
      v123 = 0u;
      v124 = 0u;
      v125 = 0u;
      obj = v23;
      v25 = v23;
      v26 = [v25 countByEnumeratingWithState:&v122 objects:v132 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v123;
        do
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v123 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v122 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v31 = [v30 objectForKey:@"item-id"];
              v32 = [v30 objectForKey:@"failureType"];
              v33 = [v30 objectForKey:@"customerMessage"];
              v34 = [(BLStoreDownloadQueueResponse *)v11 _errorWithFailureType:v32 customerMessage:v33 responseDictionary:v24];

              if (v31)
              {
                v35 = v34 == 0;
              }

              else
              {
                v35 = 1;
              }

              if (!v35)
              {
                [v101 setObject:v34 forKey:v31];
              }
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v122 objects:v132 count:16];
        }

        while (v27);
      }

      v36 = [v101 copy];
      itemErrors = v11->_itemErrors;
      v11->_itemErrors = v36;

      v8 = v24;
      v9 = v89;
      v12 = v96;
      v23 = obj;
      v15 = v99;
    }

    v38 = [v8 objectForKey:@"keybag"];
    keybag = v11->_keybag;
    v11->_keybag = v38;

    v40 = [v8 objectForKey:@"dsPersonId"];
    v41 = [(BLStoreDownloadQueueResponse *)v11 _accountUniqueIdentifierFromValue:v40];

    if (v41)
    {
      v42 = v41;
    }

    else
    {
      v42 = v9;
    }

    v43 = [v42 copy];
    userIdentifier = v11->_userIdentifier;
    v11->_userIdentifier = v43;

    if ((v15 & 1) == 0)
    {
      v45 = [v8 objectForKey:@"items"];

      v23 = v45;
      if (!v45)
      {
        v23 = [v8 objectForKey:@"songList"];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v85 = v41;
        v87 = v8;
        v46 = objc_alloc_init(NSMutableOrderedSet);
        downloads = v11->_downloads;
        v11->_downloads = v46;

        v48 = BLDownloadSupportedDownloadKinds();
        v118 = 0u;
        v119 = 0u;
        v120 = 0u;
        v121 = 0u;
        obja = v23;
        v49 = [obja countByEnumeratingWithState:&v118 objects:v131 count:16];
        if (v49)
        {
          v50 = v49;
          v51 = *v119;
          do
          {
            for (j = 0; j != v50; j = j + 1)
            {
              if (*v119 != v51)
              {
                objc_enumerationMutation(obja);
              }

              v53 = [[BLStoreDownloadItem alloc] initWithDictionary:*(*(&v118 + 1) + 8 * j)];
              v54 = [(BLStoreDownloadItem *)v53 kind];
              if ([v48 containsObject:v54])
              {
                if ([(BLStoreDownloadItem *)v53 itemIdentifier])
                {
                  v55 = [(BLStoreDownloadItem *)v53 bundleIdentifier];
                  v56 = [v55 length];

                  if (v56)
                  {
                    v57 = [(BLStoreDownloadItem *)v53 bundleIdentifier];
                    v58 = [NSNumber numberWithUnsignedLongLong:[(BLStoreDownloadItem *)v53 itemIdentifier]];
                    [v96 setObject:v57 forKey:v58];
                  }
                }

                if ([v90 length])
                {
                  [(BLStoreDownloadItem *)v53 setPreferredAssetFlavor:v90];
                }

                [(NSMutableOrderedSet *)v11->_downloads addObject:v53];
              }

              else
              {
                v59 = BLServiceLog();
                if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v130 = v54;
                  _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Unsupported download kind: %{public}@", buf, 0xCu);
                }
              }
            }

            v50 = [obja countByEnumeratingWithState:&v118 objects:v131 count:16];
          }

          while (v50);
        }

        v23 = obja;

        v8 = v87;
        v9 = v89;
        v12 = v96;
        v41 = v85;
      }
    }

    v60 = [v8 objectForKey:@"cancel-purchase-batch"];

    if (objc_opt_respondsToSelector())
    {
      v61 = [v60 BOOLValue];
    }

    else
    {
      v61 = 0;
    }

    v11->_shouldCancelPurchaseBatch = v61;
    v62 = [v8 objectForKey:@"appClusterAssignmentsResultSet"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v86 = v41;
      v88 = v8;
      v63 = objc_opt_new();
      clusterMappings = v11->_clusterMappings;
      v11->_clusterMappings = v63;

      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v84 = v62;
      v92 = v62;
      v94 = [v92 countByEnumeratingWithState:&v114 objects:v128 count:16];
      if (v94)
      {
        v65 = *v115;
        v91 = *v115;
        do
        {
          v66 = 0;
          do
          {
            if (*v115 != v65)
            {
              objc_enumerationMutation(v92);
            }

            v95 = v66;
            v67 = *(*(&v114 + 1) + 8 * v66);
            v68 = [v67 objectForKeyedSubscript:@"clusterVersionId"];
            v69 = [v67 objectForKeyedSubscript:@"appsClusterAssignments"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v112 = 0u;
              v113 = 0u;
              v110 = 0u;
              v111 = 0u;
              v93 = v69;
              v97 = v69;
              v102 = [v97 countByEnumeratingWithState:&v110 objects:v127 count:16];
              if (v102)
              {
                v100 = *v111;
                do
                {
                  v70 = 0;
                  do
                  {
                    if (*v111 != v100)
                    {
                      objc_enumerationMutation(v97);
                    }

                    objb = v70;
                    v71 = *(*(&v110 + 1) + 8 * v70);
                    v72 = [v71 objectForKeyedSubscript:@"adamId"];
                    v73 = [v12 objectForKey:v72];
                    v74 = [v71 objectForKeyedSubscript:@"clusterAssignments"];
                    if (v73)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v108 = 0u;
                        v109 = 0u;
                        v106 = 0u;
                        v107 = 0u;
                        v98 = v74;
                        v75 = v74;
                        v76 = [v75 countByEnumeratingWithState:&v106 objects:v126 count:16];
                        if (v76)
                        {
                          v77 = v76;
                          v78 = *v107;
                          do
                          {
                            for (k = 0; k != v77; k = k + 1)
                            {
                              if (*v107 != v78)
                              {
                                objc_enumerationMutation(v75);
                              }

                              v80 = [[BLAppClusterMapping alloc] initWithItemID:v72 bundleID:v73 clusterVersionID:v68 dictionary:*(*(&v106 + 1) + 8 * k)];
                              [(NSMutableOrderedSet *)v11->_clusterMappings addObject:v80];
                            }

                            v77 = [v75 countByEnumeratingWithState:&v106 objects:v126 count:16];
                          }

                          while (v77);
                        }

                        v12 = v96;
                        v74 = v98;
                      }
                    }

                    v70 = objb + 1;
                  }

                  while (objb + 1 != v102);
                  v102 = [v97 countByEnumeratingWithState:&v110 objects:v127 count:16];
                }

                while (v102);
              }

              v65 = v91;
              v69 = v93;
            }

            v66 = v95 + 1;
          }

          while ((v95 + 1) != v94);
          v94 = [v92 countByEnumeratingWithState:&v114 objects:v128 count:16];
        }

        while (v94);
      }

      v8 = v88;
      v9 = v89;
      v41 = v86;
      v62 = v84;
    }

    v81 = [(BLStoreDownloadQueueResponse *)v11 _responseDictionary:v8 valueForProtocolKey:@"trigger-download"];
    if (objc_opt_respondsToSelector())
    {
      v82 = [v81 BOOLValue];
    }

    else
    {
      v82 = 0;
    }

    v11->_triggeredQueueCheck = v82;

    v10 = v90;
  }

  return v11;
}

- (BLStoreDownloadQueueResponse)initWithError:(id)a3 userIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(BLStoreDownloadQueueResponse *)self _initStoreDownloadQueueResponse];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 4, a3);
    v11 = [v8 copy];
    userIdentifier = v10->_userIdentifier;
    v10->_userIdentifier = v11;
  }

  return v10;
}

- (NSOrderedSet)downloads
{
  v2 = [(NSMutableOrderedSet *)self->_downloads copy];

  return v2;
}

- (NSError)error
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10008A88C;
  v10 = sub_10008A89C;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008A8A4;
  v5[3] = &unk_10011D808;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setError:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10008A968;
  v7[3] = &unk_10011D1A8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(dispatchQueue, v7);
}

- (void)setShouldCancelPurchaseBatch:(BOOL)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008AA00;
  v4[3] = &unk_10011DD78;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (void)setTriggeredQueueCheck:(BOOL)a3
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10008AA88;
  v4[3] = &unk_10011DD78;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(dispatchQueue, v4);
}

- (BOOL)shouldCancelPurchaseBatch
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008AB44;
  v5[3] = &unk_10011D808;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)triggeredQueueCheck
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008AC04;
  v5[3] = &unk_10011D808;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)_errorWithFailureType:(id)a3 customerMessage:(id)a4 responseDictionary:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v8 = 0;
  }

  v10 = objc_alloc_init(NSMutableDictionary);
  [v10 setObject:v9 forKeyedSubscript:AMSErrorUserInfoKeyServerPayload];

  if (objc_opt_respondsToSelector())
  {
    v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 integerValue]);
    [v10 setObject:v11 forKeyedSubscript:AMSErrorUserInfoKeyServerErrorCode];

    v12 = 39;
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_1000A905C(v12, v8, 0, v10);

  return v13;
}

- (id)_responseDictionary:(id)a3 valueForProtocolKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKey:@"protocol"];
  v8 = [v7 objectForKey:v6];

  if (!v8)
  {
    v8 = [v5 objectForKey:v6];
  }

  return v8;
}

- (id)_accountUniqueIdentifierFromValue:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v3 longLongValue]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end