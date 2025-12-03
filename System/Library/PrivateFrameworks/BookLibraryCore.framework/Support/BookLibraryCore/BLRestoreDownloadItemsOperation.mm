@interface BLRestoreDownloadItemsOperation
+ (BOOL)isErrorBadTokenError:(id)error;
- (BLRestoreDownloadItemsOperation)initWithDownloadItems:(id)items account:(id)account accountsHelper:(id)helper;
- (BOOL)_runWithOptions:(id)options error:(id *)error;
- (NSArray)responses;
- (id)_bodyDictionaryWithItems:(id)items options:(id)options;
- (id)_newResponseWithItems:(id)items error:(id)error;
- (id)_runWithBodyDictionary:(id)dictionary options:(id)options error:(id *)error;
- (id)_runWithItems:(id)items options:(id)options;
- (id)_supportedDownloadKindsSorted;
- (void)_addResponse:(id)response;
- (void)_run;
@end

@implementation BLRestoreDownloadItemsOperation

- (BLRestoreDownloadItemsOperation)initWithDownloadItems:(id)items account:(id)account accountsHelper:(id)helper
{
  itemsCopy = items;
  accountCopy = account;
  helperCopy = helper;
  v18.receiver = self;
  v18.super_class = BLRestoreDownloadItemsOperation;
  v11 = [(BLOperation *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_account, account);
    objc_storeStrong(&v12->_accountsHelper, helper);
    v13 = [itemsCopy copy];
    downloadItems = v12->_downloadItems;
    v12->_downloadItems = v13;

    v15 = objc_alloc_init(NSMutableArray);
    responses = v12->_responses;
    v12->_responses = v15;
  }

  return v12;
}

- (NSArray)responses
{
  [(BLOperation *)self lock];
  v3 = [(NSMutableArray *)self->_responses copy];
  [(BLOperation *)self unlock];

  return v3;
}

- (void)_addResponse:(id)response
{
  responseCopy = response;
  [(BLOperation *)self lock];
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->super._delegate);
  }

  else
  {
    v6 = 0;
  }

  [(NSMutableArray *)self->_responses addObject:responseCopy];
  [(BLOperation *)self unlock];
  if (v6)
  {
    [v6 restoreDownloadItemsOperation:self didReceiveResponse:responseCopy];
  }
}

- (id)_newResponseWithItems:(id)items error:(id)error
{
  errorCopy = error;
  itemsCopy = items;
  v8 = objc_alloc_init(BLRestoreDownloadItemsResponse);
  v9 = [BLStoreDownloadQueueResponse alloc];
  ams_DSID = [(ACAccount *)self->_account ams_DSID];
  v11 = [(BLStoreDownloadQueueResponse *)v9 initWithError:errorCopy userIdentifier:ams_DSID];

  [(BLRestoreDownloadItemsResponse *)v8 setRequestItems:itemsCopy];
  [(BLRestoreDownloadItemsResponse *)v8 setServerResponse:v11];

  return v8;
}

- (id)_bodyDictionaryWithItems:(id)items options:(id)options
{
  itemsCopy = items;
  v6 = objc_alloc_init(NSMutableDictionary);
  v7 = +[AMSDevice deviceName];
  if (v7)
  {
    [v6 setObject:v7 forKeyedSubscript:@"device-name"];
  }

  v8 = +[AMSDevice deviceGUID];
  if (v8)
  {
    [v6 setObject:v8 forKeyedSubscript:@"guid"];
  }

  v9 = +[AMSDevice serialNumber];
  if (v9)
  {
    [v6 setObject:v9 forKeyedSubscript:@"serial-number"];
  }

  v10 = [AMSKeybag bl_keybagSyncDataForAccount:self->_account withTransactionType:1];
  [v6 setObject:v10 forKeyedSubscript:@"kbsync"];

  if (itemsCopy)
  {
    v11 = objc_alloc_init(NSMutableArray);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = itemsCopy;
    v12 = itemsCopy;
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          copyRestoreDictionary = [*(*(&v20 + 1) + 8 * i) copyRestoreDictionary];
          if (copyRestoreDictionary)
          {
            [v11 addObject:copyRestoreDictionary];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v14);
    }

    [v6 setObject:v11 forKeyedSubscript:@"items"];
    itemsCopy = v19;
  }

  return v6;
}

- (void)_run
{
  v3 = BLServiceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSArray *)self->_downloadItems componentsJoinedByString:@", "];
    ams_DSID = [(ACAccount *)self->_account ams_DSID];
    ams_storefront = [(ACAccount *)self->_account ams_storefront];
    *buf = 138412802;
    v24 = v4;
    v25 = 2112;
    v26 = ams_DSID;
    v27 = 2112;
    v28 = ams_storefront;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ContentRestore: Restoring item(s): [%@] for account: (%@ / %@)", buf, 0x20u);
  }

  username = [(ACAccount *)self->_account username];
  v8 = [username length];

  if (v8)
  {
    v9 = +[BUBag defaultBag];
    contentRestoreMaxItemCount = [v9 contentRestoreMaxItemCount];
    v20 = 0;
    v11 = [contentRestoreMaxItemCount valueWithError:&v20];
    v12 = v20;
    if (!v11)
    {
      v13 = BLServiceLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v24 = @"max-item-count";
        v25 = 2112;
        v26 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "ContentRestore: Error reading bag key '%{public}@', error:  %@", buf, 0x16u);
      }

      v11 = &off_100129A10;
    }

    v21 = @"max-item-count";
    v22 = v11;
    v14 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v19 = v12;
    v15 = [(BLRestoreDownloadItemsOperation *)self _runWithOptions:v14 error:&v19];
    v16 = v19;
  }

  else
  {
    v17 = BLServiceLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      account = self->_account;
      *buf = 138412290;
      v24 = account;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "ContentRestore: Can't restore using account: %@ with no account name", buf, 0xCu);
    }

    v16 = sub_1000A8F44(114, 0, 0);
    v9 = [(BLRestoreDownloadItemsOperation *)self _newResponseWithItems:self->_downloadItems error:v16];
    [(BLRestoreDownloadItemsOperation *)self _addResponse:v9];
    v15 = 0;
  }

  [(BLOperation *)self setError:v16];
  [(BLOperation *)self setSuccess:v15];
}

- (id)_runWithBodyDictionary:(id)dictionary options:(id)options error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = +[BUBag defaultBag];
  contentRestoreURL = [v8 contentRestoreURL];
  v10 = [[_BLContentRestoreURLRequestEncoder alloc] initWithBag:v8];
  selfCopy = self;
  [(_BLContentRestoreURLRequestEncoder *)v10 setAccount:self->_account];
  v11 = [(_BLContentRestoreURLRequestEncoder *)v10 requestWithMethod:4 bagURL:contentRestoreURL parameters:dictionaryCopy];
  v40 = 0;
  v12 = [v11 resultWithError:&v40];
  v13 = v40;

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v33 = v10;
    v37 = dictionaryCopy;
    v15 = [[AMSProcessInfo alloc] initWithBundleIdentifier:@"com.apple.bookassetd"];
    v16 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    [v16 ams_configureWithProcessInfo:v15 bag:v8];
    bundleIdentifier = [v15 bundleIdentifier];
    [v16 set_sourceApplicationBundleIdentifier:bundleIdentifier];

    v18 = [[AMSURLSession alloc] initWithConfiguration:v16];
    v19 = [v18 dataTaskPromiseWithRequest:v12];
    v39 = 0;
    v20 = [v19 resultWithError:&v39];
    v13 = v39;

    if (!v13)
    {
      v35 = 1;
      dictionaryCopy = v37;
      v14 = v20;
      v10 = v33;
      goto LABEL_8;
    }

    dictionaryCopy = v37;
    v14 = v20;
    v10 = v33;
  }

  v21 = BLServiceLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v42 = v13;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "ContentRestore: Metadata lookup encountered error:  %@", buf, 0xCu);
  }

  v35 = 0;
LABEL_8:
  v38 = v14;
  object = [v14 object];
  v23 = BLServiceLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v42 = object;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "ContentRestore: Fetch result from restoreContent: %@", buf, 0xCu);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v30 = 0;
    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v34 = v12;
  v24 = v8;
  v25 = contentRestoreURL;
  errorCopy = error;
  v27 = dictionaryCopy;
  v28 = [BLStoreDownloadQueueResponse alloc];
  ams_DSID = [(ACAccount *)selfCopy->_account ams_DSID];
  v30 = [(BLStoreDownloadQueueResponse *)v28 initWithDictionary:object userIdentifier:ams_DSID];

  if ((v35 & 1) == 0)
  {
    [(BLStoreDownloadQueueResponse *)v30 setError:v13];
    -[BLStoreDownloadQueueResponse setShouldCancelPurchaseBatch:](v30, "setShouldCancelPurchaseBatch:", [v13 bl_isUserCancelError]);
  }

  dictionaryCopy = v27;
  error = errorCopy;
  contentRestoreURL = v25;
  v8 = v24;
  v12 = v34;
  if (error)
  {
LABEL_16:
    v31 = v13;
    *error = v13;
  }

LABEL_17:

  return v30;
}

- (id)_runWithItems:(id)items options:(id)options
{
  itemsCopy = items;
  optionsCopy = options;
  v8 = [(BLRestoreDownloadItemsOperation *)self _bodyDictionaryWithItems:itemsCopy options:optionsCopy];
  if (!v8)
  {
    v17 = BLServiceLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v26 = itemsCopy;
      v27 = 2112;
      v28 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "ContentRestore: No body data for items: [%@] error:  %@", buf, 0x16u);
    }

LABEL_9:
    v11 = sub_1000A8F44(0, 0, 0);
LABEL_11:
    v18 = [BLStoreDownloadQueueResponse alloc];
    ams_DSID = [(ACAccount *)self->_account ams_DSID];
    v9 = [(BLStoreDownloadQueueResponse *)v18 initWithError:v11 userIdentifier:ams_DSID];

    -[BLStoreDownloadQueueResponse setShouldCancelPurchaseBatch:](v9, "setShouldCancelPurchaseBatch:", [v11 bl_isUserCancelError]);
    goto LABEL_18;
  }

  v24 = 0;
  v9 = [(BLRestoreDownloadItemsOperation *)self _runWithBodyDictionary:v8 options:optionsCopy error:&v24];
  v10 = v24;
  v11 = v10;
  if (!v9)
  {
    if (v10)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  error = [(BLStoreDownloadQueueResponse *)v9 error];

  v13 = BLServiceLog();
  keybag = v13;
  if (error)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = [itemsCopy componentsJoinedByString:{@", "}];
      error2 = [(BLStoreDownloadQueueResponse *)v9 error];
      *buf = 138412546;
      v26 = v15;
      v27 = 2112;
      v28 = error2;
      _os_log_impl(&_mh_execute_header, keybag, OS_LOG_TYPE_ERROR, "ContentRestore: Received failure for items: [%@] response error:  %@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      downloads = [(BLStoreDownloadQueueResponse *)v9 downloads];
      v21 = [downloads count];
      v22 = [itemsCopy componentsJoinedByString:{@", "}];
      *buf = 134218242;
      v26 = v21;
      v27 = 2112;
      v28 = v22;
      _os_log_impl(&_mh_execute_header, keybag, OS_LOG_TYPE_DEFAULT, "ContentRestore: Received content restore metadata for %lu item(s) for restore items: [%@]", buf, 0x16u);
    }

    keybag = [(BLStoreDownloadQueueResponse *)v9 keybag];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [keybag length])
    {
      [AMSKeybag bl_importKeybagData:keybag];
    }
  }

LABEL_18:

  return v9;
}

- (BOOL)_runWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  v5 = [NSMutableSet alloc];
  _supportedDownloadKindsSorted = [(BLRestoreDownloadItemsOperation *)self _supportedDownloadKindsSorted];
  v7 = [v5 initWithArray:_supportedDownloadKindsSorted];

  v75 = objc_alloc_init(NSMutableDictionary);
  v72 = objc_alloc_init(NSMutableArray);
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  selfCopy = self;
  v8 = self->_downloadItems;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v93 objects:v104 count:16];
  v80 = v7;
  if (v9)
  {
    v10 = v9;
    v11 = *v94;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v94 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v93 + 1) + 8 * i);
        downloadKind = [v13 downloadKind];
        if (v7 && ([v7 containsObject:downloadKind] & 1) == 0)
        {
          v17 = BLServiceLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            storeItemID = [v13 storeItemID];
            *buf = 138412546;
            v98 = downloadKind;
            v99 = 2112;
            v100 = storeItemID;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "ContentRestore: Filtering disallowed kind: %@ for item: %@", buf, 0x16u);
          }

          [v72 addObject:v13];
        }

        else
        {
          v15 = [v75 objectForKeyedSubscript:downloadKind];
          if (v15)
          {
            v16 = v15;
            [v15 addObject:v13];
          }

          else
          {
            v16 = [[NSMutableArray alloc] initWithObjects:{v13, 0}];
            [v75 setObject:v16 forKeyedSubscript:downloadKind];
          }
        }

        v7 = v80;
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v93 objects:v104 count:16];
    }

    while (v10);
  }

  selfCopy2 = self;
  if ([v72 count])
  {
    v20 = sub_1000A8F44(400, 0, 0);
    v21 = [(BLRestoreDownloadItemsOperation *)self _newResponseWithItems:v72 error:v20];

    [(BLRestoreDownloadItemsOperation *)self _addResponse:v21];
  }

  v76 = objc_alloc_init(NSMutableArray);
  _supportedDownloadKindsSorted2 = [(BLRestoreDownloadItemsOperation *)self _supportedDownloadKindsSorted];
  v23 = v75;
  allKeys = [v75 allKeys];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v25 = _supportedDownloadKindsSorted2;
  v71 = v25;
  v79 = [v25 countByEnumeratingWithState:&v89 objects:v103 count:16];
  if (v79)
  {
    v26 = 0;
    v27 = 0;
    v28 = 1;
    v78 = *v90;
    v70 = allKeys;
    while (1)
    {
      for (j = 0; j != v79; j = j + 1)
      {
        if (*v90 != v78)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v89 + 1) + 8 * j);
        if ([allKeys containsObject:v30])
        {
          context = objc_autoreleasePoolPush();
          v31 = [v23 objectForKeyedSubscript:v30];
          v32 = v30;
          v33 = v31;
          if (v27)
          {
            [v76 addObjectsFromArray:v31];
LABEL_64:

            objc_autoreleasePoolPop(context);
            continue;
          }

          v74 = v32;
          v34 = objc_alloc_init(NSMutableArray);
          v85 = v33;
          v35 = [v33 count];
          v36 = [optionsCopy objectForKeyedSubscript:@"max-item-count"];
          intValue = v35;
          if (objc_opt_respondsToSelector())
          {
            intValue = [v36 intValue];
          }

          v73 = v36;
          v37 = BLServiceLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            *buf = 134218498;
            v98 = v35;
            v99 = 2112;
            v100 = v74;
            v101 = 2048;
            v102 = intValue;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "ContentRestore: Restoring %ld items with kind %@ with chunk size %ld", buf, 0x20u);
          }

          v27 = 0;
          if (v35 < 1)
          {
            v33 = v85;
LABEL_63:

            v7 = v80;
            v23 = v75;
            allKeys = v70;
            v25 = v71;
            goto LABEL_64;
          }

          v38 = 0;
          v33 = v85;
          v81 = j;
          while (2)
          {
            v39 = [v33 objectAtIndexedSubscript:v38];
            [v34 addObject:v39];
            if ([v34 count] != intValue && v38 != v35 - 1)
            {
              goto LABEL_60;
            }

            v40 = objc_alloc_init(BLRestoreDownloadItemsResponse);
            [(BLRestoreDownloadItemsResponse *)v40 setRequestItems:v34];
            if (![v34 count])
            {
              goto LABEL_56;
            }

            v83 = v27;
            v84 = v28;
            v41 = BLServiceLog();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
            {
              v42 = [v34 count];
              *buf = 134218242;
              v98 = v42;
              v99 = 2112;
              v100 = v74;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "ContentRestore: Making chunk request for %lu item(s) with kind: %@", buf, 0x16u);
            }

            v43 = [(BLRestoreDownloadItemsOperation *)selfCopy2 _runWithItems:v34 options:optionsCopy];
            v44 = objc_opt_class();
            error = [v43 error];
            LOBYTE(v44) = [v44 isErrorBadTokenError:error];

            if (!(v26 & 1 | ((v44 & 1) == 0)))
            {
              v46 = BLServiceLog();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                v47 = [v34 componentsJoinedByString:{@", "}];
                error2 = [v43 error];
                *buf = 138412546;
                v98 = v47;
                v99 = 2112;
                v100 = error2;
                _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "ContentRestore: Encountered bad token error. Attempt to authenticate, then retry items: [%@] error:  %@", buf, 0x16u);

                selfCopy2 = selfCopy;
              }

              accountsHelper = selfCopy2->_accountsHelper;
              account = selfCopy2->_account;
              v88 = 0;
              v51 = [(BLRestoreAccountsHelper *)accountsHelper preflightAccount:account error:&v88];
              v52 = v88;
              v53 = selfCopy->_account;
              selfCopy->_account = v51;
              selfCopy2 = selfCopy;

              if (v52)
              {
                v54 = [BLStoreDownloadQueueResponse alloc];
                ams_DSID = [(ACAccount *)selfCopy->_account ams_DSID];
                v56 = v54;
                selfCopy2 = selfCopy;
                v57 = [(BLStoreDownloadQueueResponse *)v56 initWithError:v52 userIdentifier:ams_DSID];

                [(BLStoreDownloadQueueResponse *)v57 setShouldCancelPurchaseBatch:1];
              }

              else
              {
                v58 = BLServiceLog();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v98 = v34;
                  _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "ContentRestore: Authenticate successful. Retrying request for items: %@", buf, 0xCu);
                }

                v57 = [(BLRestoreDownloadItemsOperation *)selfCopy _runWithItems:v34 options:optionsCopy];
              }

              v26 = 1;
              v43 = v57;
            }

            if ([v43 shouldCancelPurchaseBatch])
            {
              error3 = [v43 error];
              v60 = error3;
              if (error3)
              {
                v61 = error3;
              }

              else
              {
                v61 = sub_1000A8F44(0, 0, 0);
              }

              v62 = v61;

              v27 = v62;
              if (v84)
              {
LABEL_54:
                error4 = [v43 error];
                v28 = error4 == 0;

LABEL_55:
                [(BLRestoreDownloadItemsResponse *)v40 setServerResponse:v43];
                [v34 removeAllObjects];

                j = v81;
LABEL_56:
                [(BLRestoreDownloadItemsOperation *)selfCopy2 _addResponse:v40];
                if (v27 && v38 + 1 < v35)
                {
                  v64 = [v85 subarrayWithRange:?];
                  [v76 addObjectsFromArray:v64];

                  selfCopy2 = selfCopy;
                  v38 = v35;
                }

                v33 = v85;
LABEL_60:

                if (++v38 >= v35)
                {
                  goto LABEL_63;
                }

                continue;
              }
            }

            else
            {
              v27 = v83;
              if (v84)
              {
                goto LABEL_54;
              }
            }

            break;
          }

          v28 = 0;
          goto LABEL_55;
        }
      }

      v79 = [v25 countByEnumeratingWithState:&v89 objects:v103 count:16];
      if (!v79)
      {
        goto LABEL_69;
      }
    }
  }

  v27 = 0;
  v28 = 1;
LABEL_69:

  if ([v76 count])
  {
    v65 = BLServiceLog();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v66 = [v76 componentsJoinedByString:{@", "}];
      *buf = 138412546;
      v98 = v66;
      v99 = 2112;
      v100 = v27;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "ContentRestore: Cancel restore items: [%@] error:  %@", buf, 0x16u);
    }

    v67 = [(BLRestoreDownloadItemsOperation *)selfCopy2 _newResponseWithItems:v76 error:v27];
    [(BLRestoreDownloadItemsOperation *)selfCopy2 _addResponse:v67];

    v25 = v71;
  }

  if (error)
  {
    *error = 0;
  }

  return v28;
}

- (id)_supportedDownloadKindsSorted
{
  v4[0] = BLDownloadKindEBook;
  v4[1] = BLDownloadKindAudiobook;
  v4[2] = BLDownloadKindPDF;
  v2 = [NSArray arrayWithObjects:v4 count:3];

  return v2;
}

+ (BOOL)isErrorBadTokenError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:AMSErrorDomain])
    {
      userInfo = [v4 userInfo];
      v7 = [userInfo objectForKeyedSubscript:@"AMSServerErrorCode"];
      v8 = [v7 isEqualToNumber:&off_100129A28];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end