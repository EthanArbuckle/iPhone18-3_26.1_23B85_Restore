@interface BLRestoreDownloadsOperation
- (BLRestoreDownloadsOperation)initWithRestoreDownloadItems:(id)a3 authenticationQueue:(id)a4 responseItemBlock:(id)a5;
- (id)_sortedAccountIDs:(id)a3;
- (void)_applyResponses:(id)a3;
- (void)_sanitizeRestoreItemAccountID:(id)a3 accountsHelper:(id)a4 error:(id *)a5;
- (void)restoreDownloadItemsOperation:(id)a3 didReceiveResponse:(id)a4;
- (void)run;
@end

@implementation BLRestoreDownloadsOperation

- (BLRestoreDownloadsOperation)initWithRestoreDownloadItems:(id)a3 authenticationQueue:(id)a4 responseItemBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = BLRestoreDownloadsOperation;
  v11 = [(BLOperation *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    downloadItems = v11->_downloadItems;
    v11->_downloadItems = v12;

    objc_storeStrong(&v11->_authenticationQueue, a4);
    v14 = [v10 copy];
    responseItemBlock = v11->_responseItemBlock;
    v11->_responseItemBlock = v14;
  }

  return v11;
}

- (void)run
{
  v78 = objc_alloc_init(NSMutableDictionary);
  v3 = [BLRestoreAccountsHelper alloc];
  v92 = self;
  v4 = [(BLRestoreDownloadsOperation *)self authenticationQueue];
  v5 = [(BLRestoreAccountsHelper *)v3 initWithAuthenticationQueue:v4];

  v91 = v5;
  [(BLRestoreAccountsHelper *)v5 establishPrimaryAccount];
  v89 = objc_alloc_init(NSMutableDictionary);
  v6 = +[BUAccountsProvider sharedProvider];
  v7 = [v6 activeStoreAccount];

  v85 = [v7 ams_DSID];
  v86 = objc_alloc_init(NSMutableArray);
  v84 = v7;
  if (v7)
  {
    v8 = +[BUBag defaultBag];
    v9 = [[AMSFamilyInfoLookupTask alloc] initWithAccount:v7 bag:v8];
    v10 = [v9 performFamilyInfoLookup];
    v111 = 0;
    v11 = [v10 resultWithError:&v111];
    v12 = v111;
    if (v12)
    {
      v13 = BLServiceLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v114 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "ContentRestore: Error looking up family info:  %@", buf, 0xCu);
      }

      v90 = 0;
      v14 = v78;
    }

    else
    {
      v87 = v8;
      obj = v11;
      v15 = [v11 familyMembers];
      v90 = objc_alloc_init(NSMutableArray);
      v107 = 0u;
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      v13 = v15;
      v16 = [v13 countByEnumeratingWithState:&v107 objects:v119 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v108;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v108 != v18)
            {
              objc_enumerationMutation(v13);
            }

            v20 = *(*(&v107 + 1) + 8 * i);
            if (v85)
            {
              v21 = [*(*(&v107 + 1) + 8 * i) iTunesDSID];
              v22 = [v21 isEqualToNumber:v85];

              if (v22)
              {
                continue;
              }
            }

            v23 = [v20 iTunesDSID];
            [v90 addObject:v23];
          }

          v17 = [v13 countByEnumeratingWithState:&v107 objects:v119 count:16];
        }

        while (v17);
      }

      v14 = v78;
      v11 = obj;
      v7 = v84;
      v8 = v87;
    }
  }

  else
  {
    v90 = 0;
    v14 = v78;
  }

  [(BLRestoreDownloadsOperation *)v92 downloadItems];
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  obja = v106 = 0u;
  v24 = [obja countByEnumeratingWithState:&v103 objects:v118 count:16];
  if (v24)
  {
    v25 = v24;
    v88 = *v104;
    v79 = ACAccountTypeIdentifieriTunesStore;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v104 != v88)
        {
          objc_enumerationMutation(obja);
        }

        v27 = *(*(&v103 + 1) + 8 * j);
        v102 = 0;
        [(BLRestoreDownloadsOperation *)v92 _sanitizeRestoreItemAccountID:v27 accountsHelper:v91 error:&v102];
        v28 = v102;
        v29 = [v27 storeAccountID];
        v30 = v29;
        if (v7 && v29 && [v90 containsObject:v29])
        {
          [v27 setStoreOriginalPurchaserAccountID:v30];
          [v27 setStoreAccountID:v85];
        }

        v31 = [v27 storeAccountID];
        if (v31)
        {
          v32 = v31;
          v101 = 0;
          v33 = [v27 isEligibleForRestore:&v101];
          v34 = v101;

          if (v33)
          {
            v35 = [v27 storeOriginalPurchaserAccountID];
            v36 = v35;
            if (v35)
            {
              v37 = v35;
            }

            else
            {
              v37 = [v27 storeAccountID];
            }

            v39 = v37;

            v40 = [v14 objectForKeyedSubscript:v39];
            if (!v40)
            {
              v40 = [ACAccount bu_storeAccountWithDSID:v39];
              if (!v40)
              {
                v41 = +[ACAccountStore bu_sharedAccountStore];
                v42 = [v41 accountTypeWithAccountTypeIdentifier:v79];

                v40 = [[ACAccount alloc] initWithAccountType:v42];
                [v40 ams_setDSID:v39];
                v43 = [v40 username];

                if (!v43)
                {
                  v44 = [v27 storeAccountAppleID];
                  [v40 setUsername:v44];
                }

                v45 = [v40 ams_storefront];

                if (!v45)
                {
                  v46 = [v27 storeFrontID];
                  [v40 ams_setStorefront:v46];
                }

                v14 = v78;
              }

              [v14 setObject:v40 forKeyedSubscript:v39];
            }

            v47 = [v89 objectForKeyedSubscript:v39];
            if (!v47)
            {
              v47 = objc_alloc_init(NSMutableArray);
              [v89 setObject:v47 forKeyedSubscript:v39];
            }

            [v47 addObject:v27];

            v7 = v84;
            goto LABEL_48;
          }
        }

        else
        {
          v34 = 0;
        }

        v38 = BLServiceLog();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v114 = v27;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "ContentRestore: item %@ is not elligable for restore", buf, 0xCu);
        }

        [v27 setError:v34];
        [v86 addObject:v27];
LABEL_48:
      }

      v25 = [obja countByEnumeratingWithState:&v103 objects:v118 count:16];
    }

    while (v25);
  }

  v48 = objc_alloc_init(NSMutableArray);
  v49 = v89;
  if ([v86 count])
  {
    v50 = BLServiceLog();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = [v86 componentsJoinedByString:{@", "}];
      *buf = 138412290;
      v114 = v51;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "ContentRestore: Fail invalid restore items: [%@]", buf, 0xCu);

      v14 = v78;
    }

    v52 = objc_alloc_init(BLRestoreDownloadItemsResponse);
    [(BLRestoreDownloadItemsResponse *)v52 setRequestItems:v86];
    [v48 addObject:v52];
  }

  if ([v48 count])
  {
    [(BLRestoreDownloadsOperation *)v92 _applyResponses:v48];
  }

  if ([v89 count])
  {
    v77 = v48;
    v53 = [(BLRestoreDownloadsOperation *)v92 _sortedAccountIDs:v89];
    v81 = objc_alloc_init(NSMutableArray);
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v80 = v53;
    v54 = [v80 countByEnumeratingWithState:&v97 objects:v117 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v98;
      v57 = 1;
      do
      {
        for (k = 0; k != v55; k = k + 1)
        {
          if (*v98 != v56)
          {
            objc_enumerationMutation(v80);
          }

          v59 = *(*(&v97 + 1) + 8 * k);
          if ([v90 containsObject:v59])
          {
            v60 = v84;
          }

          else
          {
            v60 = [v14 objectForKeyedSubscript:v59];
          }

          v61 = v60;
          v62 = [v49 objectForKeyedSubscript:v59];
          v63 = BLServiceLog();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v114 = v59;
            v115 = 2112;
            v116 = v62;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "ContentRestore: accountID: %@, restoreItems: %@", buf, 0x16u);
          }

          v64 = [[BLRestoreDownloadItemsOperation alloc] initWithDownloadItems:v62 account:v61 accountsHelper:v91];
          if (v61)
          {
            [v81 addObject:v64];
          }

          else
          {
            v65 = BLServiceLog();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              v66 = [v62 componentsJoinedByString:{@", "}];
              *buf = 138412546;
              v114 = v59;
              v115 = 2112;
              v116 = v66;
              _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_ERROR, "ContentRestore: Missing account for accountID: %@, failing restore items: [%@]", buf, 0x16u);
            }

            v67 = objc_alloc_init(BLRestoreDownloadItemsResponse);
            [(BLRestoreDownloadItemsResponse *)v67 setRequestItems:v62];
            v68 = sub_1000A8F44(0, @"Missing account", 0);
            [(BLRestoreDownloadItemsResponse *)v67 setServerResponseWithError:v68];

            [(BLRestoreDownloadsOperation *)v92 restoreDownloadItemsOperation:v64 didReceiveResponse:v67];
            v57 = 0;
            v14 = v78;
          }

          v49 = v89;
        }

        v55 = [v80 countByEnumeratingWithState:&v97 objects:v117 count:16];
      }

      while (v55);
    }

    else
    {
      v57 = 1;
    }

    v69 = BLServiceLog();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      v70 = [v81 count];
      *buf = 134217984;
      v114 = v70;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "ContentRestore: Attempting restore for %lu account(s)", buf, 0xCu);
    }

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v71 = v81;
    v72 = [v71 countByEnumeratingWithState:&v93 objects:v112 count:16];
    if (v72)
    {
      v73 = v72;
      v74 = *v94;
      do
      {
        for (m = 0; m != v73; m = m + 1)
        {
          if (*v94 != v74)
          {
            objc_enumerationMutation(v71);
          }

          v76 = *(*(&v93 + 1) + 8 * m);
          [v76 setDelegate:v92];
          v57 &= [(BLOperation *)v92 runSubOperation:v76 returningError:0];
        }

        v73 = [v71 countByEnumeratingWithState:&v93 objects:v112 count:16];
      }

      while (v73);
    }

    v48 = v77;
    v14 = v78;
  }

  else
  {
    LOBYTE(v57) = 0;
  }

  [(BLOperation *)v92 setSuccess:v57 & 1];
}

- (void)restoreDownloadItemsOperation:(id)a3 didReceiveResponse:(id)a4
{
  v7 = a4;
  v5 = a4;
  v6 = [NSArray arrayWithObjects:&v7 count:1];

  [(BLRestoreDownloadsOperation *)self _applyResponses:v6, v7];
}

- (void)_applyResponses:(id)a3
{
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = a3;
  v43 = [obj countByEnumeratingWithState:&v56 objects:v68 count:16];
  if (v43)
  {
    v42 = *v57;
    *&v4 = 138412802;
    v40 = v4;
    v5 = &MGGetBoolAnswer_ptr;
    do
    {
      v6 = 0;
      do
      {
        if (*v57 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v56 + 1) + 8 * v6);
        v8 = objc_alloc_init(NSMutableDictionary);
        v9 = [v7 serverResponse];
        v10 = BLServiceLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v9 error];
          v12 = [v9 downloads];
          v13 = [v12 count];
          *buf = v40;
          v63 = v9;
          v64 = 2112;
          v65 = v11;
          v66 = 2048;
          v67 = v13;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ContentRestore: Server response: %@, error: %@. Got %ld download item(s)", buf, 0x20u);
        }

        v45 = v6;

        v46 = v9;
        v14 = [v9 downloads];
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v15 = [v14 countByEnumeratingWithState:&v52 objects:v61 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v53;
          do
          {
            for (i = 0; i != v16; i = i + 1)
            {
              if (*v53 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v52 + 1) + 8 * i);
              v20 = [v5[449] bl_numberWithItemIdentifier:{objc_msgSend(v19, "itemIdentifier", v40)}];
              [v8 setObject:v19 forKeyedSubscript:v20];
            }

            v16 = [v14 countByEnumeratingWithState:&v52 objects:v61 count:16];
          }

          while (v16);
        }

        v44 = v14;
        v21 = [v7 requestItems];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v47 = v21;
        v22 = [v21 countByEnumeratingWithState:&v48 objects:v60 count:16];
        v23 = v46;
        if (v22)
        {
          v24 = v22;
          v25 = *v49;
          do
          {
            for (j = 0; j != v24; j = j + 1)
            {
              if (*v49 != v25)
              {
                objc_enumerationMutation(v47);
              }

              v27 = *(*(&v48 + 1) + 8 * j);
              v28 = [v27 storeItemID];
              v29 = [v8 objectForKeyedSubscript:v28];
              v30 = [v23 error];
              v31 = v30;
              if (v30)
              {
                v32 = v30;
              }

              else
              {
                v33 = v23;
                v34 = self;
                v35 = [v33 errorForItemIdentifier:v28];
                v36 = v35;
                if (v35)
                {
                  v37 = v35;
                }

                else
                {
                  v37 = [v27 error];
                }

                v32 = v37;

                self = v34;
                v23 = v46;
              }

              v38 = [(BLRestoreDownloadsOperation *)self responseItemBlock];
              v39 = v38;
              if (v38)
              {
                (*(v38 + 16))(v38, v28, v29, v32);
              }
            }

            v24 = [v47 countByEnumeratingWithState:&v48 objects:v60 count:16];
          }

          while (v24);
        }

        v6 = v45 + 1;
        v5 = &MGGetBoolAnswer_ptr;
      }

      while ((v45 + 1) != v43);
      v43 = [obj countByEnumeratingWithState:&v56 objects:v68 count:16];
    }

    while (v43);
  }
}

- (void)_sanitizeRestoreItemAccountID:(id)a3 accountsHelper:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 storeAccountID];

  if (!v9)
  {
    v12 = [v7 storeAccountAppleID];
    v13 = +[BUAccountsProvider sharedProvider];
    v14 = [v13 activeStoreAccount];

    if (v12)
    {
      v21 = 0;
      v15 = [v8 accountIDForAccountName:v12 error:&v21];
      v10 = v21;
    }

    else
    {
      if (!v14)
      {
        v10 = 0;
LABEL_12:
        v19 = [v7 storeAccountID];
        v20 = v19 | v10;

        if (!v20)
        {
          v10 = sub_1000A8F44(119, 0, 0);
        }

        if (a5)
        {
          goto LABEL_3;
        }

        goto LABEL_4;
      }

      v16 = BLServiceLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v7 storeItemID];
        *buf = 138412290;
        v23 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "ContentRestore: Falling back to primary account to restore item: %@", buf, 0xCu);
      }

      v18 = [v14 username];
      [v7 setStoreAccountAppleID:v18];

      v15 = [v14 ams_DSID];
      v10 = 0;
    }

    [v7 setStoreAccountID:v15];

    goto LABEL_12;
  }

  v10 = 0;
  if (a5)
  {
LABEL_3:
    v11 = v10;
    *a5 = v10;
  }

LABEL_4:
}

- (id)_sortedAccountIDs:(id)a3
{
  v3 = a3;
  v4 = +[BUAccountsProvider sharedProvider];
  v5 = [v4 activeStoreAccount];
  v6 = [v5 ams_DSID];

  v7 = [v3 allKeys];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006E428;
  v12[3] = &unk_10011D468;
  v13 = v6;
  v14 = v3;
  v8 = v3;
  v9 = v6;
  v10 = [v7 sortedArrayUsingComparator:v12];

  return v10;
}

@end