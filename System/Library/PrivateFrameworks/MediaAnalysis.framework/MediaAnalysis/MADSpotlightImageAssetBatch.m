@interface MADSpotlightImageAssetBatch
+ (id)batchWithCancelBlock:(id)a3;
- (id)createSearchableItemForAssetEntry:(id)a3;
- (int)prepare;
- (int)publish;
- (void)addAsset:(id)a3;
@end

@implementation MADSpotlightImageAssetBatch

+ (id)batchWithCancelBlock:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCancelBlock:v4];

  return v5;
}

- (void)addAsset:(id)a3
{
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(MADSpotlightImageAssetBatchBase *)self assetEntries];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v6)
  {
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v16 + 1) + 8 * i) asset];
        v10 = [v9 uniqueIdentifier];
        v11 = [v4 uniqueIdentifier];
        v12 = [v10 isEqual:v11];

        if (v12)
        {
          if (MediaAnalysisLogLevel() >= 4)
          {
            v13 = VCPLogToOSLogType[4];
            if (os_log_type_enabled(&_os_log_default, v13))
            {
              v14 = [(MADSpotlightImageAssetBatch *)self logPrefix];
              v15 = [v4 uniqueIdentifier];
              *buf = 138412546;
              v21 = v14;
              v22 = 2112;
              v23 = v15;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[%@][%@] Batch already contains asset; ignoring", buf, 0x16u);
            }
          }

          goto LABEL_14;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (v4)
  {
    v5 = [MADSpotlightImageAssetEntry entryWithAsset:v4];
    [(MADSpotlightImageAssetBatchBase *)self addAssetEntry:v5];
LABEL_14:
  }
}

- (int)prepare
{
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [(MADSpotlightImageAssetBatchBase *)self assetEntries];
  v2 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v2)
  {
    v4 = *v30;
    v5 = VCPLogToOSLogType[5];
    *&v3 = 138412546;
    v25 = v3;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v30 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v29 + 1) + 8 * i);
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v5))
        {
          v8 = [(MADSpotlightImageAssetBatch *)self logPrefix];
          v9 = [v7 asset];
          v10 = [v9 uniqueIdentifier];
          *buf = v25;
          v34 = v8;
          v35 = 2112;
          v36 = v10;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[%@][Prepare] %@", buf, 0x16u);
        }

        v11 = [v7 asset];
        [v11 setStatus:1];

        v12 = [v7 asset];
        [v12 setAttemptCount:{objc_msgSend(v12, "attemptCount") + 1}];

        v13 = [v7 asset];
        [v13 attemptCount];
        MADRetryBackoffTime();
        v15 = v14;

        v16 = [NSDate dateWithTimeIntervalSinceNow:v15];
        v17 = [v7 asset];
        [v17 setNextAttemptDate:v16];
      }

      v2 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v2);
  }

  v18 = +[MADSystemDataStore systemDataStore];
  v28 = 0;
  v19 = [v18 commitChangesOrRollback:&v28];
  v20 = v28;

  if (v19)
  {
    v21 = 0;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v22 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v22))
      {
        v23 = [(MADSpotlightImageAssetBatch *)self logPrefix];
        *buf = 138412546;
        v34 = v23;
        v35 = 2112;
        v36 = v20;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[%@][Prepare] Failed during commit changes - %@", buf, 0x16u);
      }
    }

    v21 = -20;
  }

  return v21;
}

- (id)createSearchableItemForAssetEntry:(id)a3
{
  v3 = a3;
  v4 = [v3 attributeSet];
  if (v4)
  {
    v5 = [CSSearchableItem alloc];
    v6 = [v3 asset];
    v7 = [v6 uniqueIdentifier];
    v8 = [v5 initWithUniqueIdentifier:v7 domainIdentifier:0 attributeSet:v4];

    [v8 setIsUpdate:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int)publish
{
  v94 = 0;
  v95 = &v94;
  v96 = 0x2020000000;
  v97 = 0;
  v67 = +[NSMutableDictionary dictionary];
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v69 = self;
  v3 = [(MADSpotlightImageAssetBatchBase *)self assetEntries];
  v4 = [v3 countByEnumeratingWithState:&v90 objects:v106 count:16];
  if (v4)
  {
    v5 = *v91;
    v6 = VCPLogToOSLogType[5];
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v91 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v90 + 1) + 8 * i);
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v6))
        {
          v9 = [(MADSpotlightImageAssetBatch *)v69 logPrefix];
          v10 = [v8 asset];
          v11 = [v10 uniqueIdentifier];
          *buf = 138412546;
          v99 = v9;
          v100 = 2112;
          v101 = v11;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[%@][Publish] %@", buf, 0x16u);
        }

        if ([v8 status])
        {
          if ([v8 status] != -128)
          {
            v15 = [v8 asset];
            [v15 setStatus:3];
            goto LABEL_19;
          }

          v12 = [v8 previousStatus];
          v13 = [v8 asset];
          [v13 setStatus:v12];

          v14 = [v8 asset];
          [v14 setAttemptCount:{objc_msgSend(v14, "attemptCount") - 1}];

          v15 = +[NSDate date];
          v16 = [v8 asset];
          [v16 setNextAttemptDate:v15];
        }

        else
        {
          v17 = [(MADSpotlightImageAssetBatch *)v69 createSearchableItemForAssetEntry:v8];
          v15 = v17;
          if (v17)
          {
            v18 = [v17 bundleID];
            v19 = [v67 objectForKeyedSubscript:v18];
            v20 = v19 == 0;

            if (v20)
            {
              v21 = +[NSMutableArray array];
              v22 = [v15 bundleID];
              [v67 setObject:v21 forKeyedSubscript:v22];
            }

            v16 = [v15 bundleID];
            v23 = [v67 objectForKeyedSubscript:v16];
            [v23 addObject:v15];
          }

          else
          {
            v16 = [v8 asset];
            [v16 setStatus:3];
          }
        }

LABEL_19:
      }

      v4 = [v3 countByEnumeratingWithState:&v90 objects:v106 count:16];
    }

    while (v4);
  }

  group = dispatch_group_create();
  v71 = +[NSMutableSet set];
  v70 = +[NSMutableSet set];
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v67;
  v24 = [obj countByEnumeratingWithState:&v86 objects:v105 count:16];
  if (v24)
  {
    v25 = *v87;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v87 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v86 + 1) + 8 * j);
        dispatch_group_enter(group);
        v28 = [[CSSearchableIndex alloc] initWithName:v27 bundleIdentifier:v27];
        v29 = [obj objectForKeyedSubscript:v27];
        v79[0] = _NSConcreteStackBlock;
        v79[1] = 3221225472;
        v79[2] = sub_1001AAB8C;
        v79[3] = &unk_100288668;
        v79[4] = v69;
        v30 = obj;
        v80 = v30;
        v81 = v27;
        v85 = &v94;
        v82 = v71;
        v83 = v70;
        v84 = group;
        [v28 indexSearchableItems:v29 completionHandler:v79];
      }

      v24 = [v30 countByEnumeratingWithState:&v86 objects:v105 count:16];
    }

    while (v24);
  }

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v66 = [(MADSpotlightImageAssetBatchBase *)v69 assetEntries];
  v31 = [v66 countByEnumeratingWithState:&v75 objects:v104 count:16];
  if (v31)
  {
    v33 = *v76;
    v34 = VCPLogToOSLogType[6];
    type = VCPLogToOSLogType[3];
    *&v32 = 138412802;
    v64 = v32;
    do
    {
      for (k = 0; k != v31; k = k + 1)
      {
        if (*v76 != v33)
        {
          objc_enumerationMutation(v66);
        }

        v36 = *(*(&v75 + 1) + 8 * k);
        v37 = [v36 asset];
        v38 = [v37 uniqueIdentifier];
        v39 = [v71 containsObject:v38];

        if (v39)
        {
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v34))
          {
            v40 = [(MADSpotlightImageAssetBatch *)v69 logPrefix];
            v41 = [v36 asset];
            v42 = [v41 uniqueIdentifier];
            *buf = 138412546;
            v99 = v40;
            v100 = 2112;
            v101 = v42;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "[%@][Publish] Mark %@ as soft failure", buf, 0x16u);
          }

          v43 = [v36 asset];
          [v43 setStatus:3];
        }

        v44 = [v36 asset];
        v45 = [v44 uniqueIdentifier];
        v46 = [v70 containsObject:v45];

        if (v46)
        {
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v34))
          {
            v47 = [(MADSpotlightImageAssetBatch *)v69 logPrefix];
            v48 = [v36 asset];
            v49 = [v48 uniqueIdentifier];
            *buf = 138412546;
            v99 = v47;
            v100 = 2112;
            v101 = v49;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "[%@][Publish] Delete entry %@.", buf, 0x16u);
          }

          v50 = [v36 asset];
          v51 = [v50 uniqueIdentifier];
          v74 = 0;
          v52 = [MADManagedSpotlightEntry deleteEntryWithUniqueIdentifier:v51 error:&v74];
          v53 = v74;

          if ((v52 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
          {
            v54 = [(MADSpotlightImageAssetBatch *)v69 logPrefix];
            v55 = [v36 asset];
            v56 = [v55 uniqueIdentifier];
            *buf = v64;
            v99 = v54;
            v100 = 2112;
            v101 = v56;
            v102 = 2112;
            v103 = v53;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@][Publish] %@ Failed to delete entry (%@)", buf, 0x20u);
          }
        }
      }

      v31 = [v66 countByEnumeratingWithState:&v75 objects:v104 count:16];
    }

    while (v31);
  }

  v57 = +[MADSystemDataStore systemDataStore];
  v73 = 0;
  v58 = [v57 commitChangesOrRollback:&v73];
  v59 = v73;

  if (v58)
  {
    v60 = *(v95 + 6);
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3)
    {
      v61 = VCPLogToOSLogType[3];
      if (os_log_type_enabled(&_os_log_default, v61))
      {
        v62 = [(MADSpotlightImageAssetBatch *)v69 logPrefix];
        *buf = 138412546;
        v99 = v62;
        v100 = 2112;
        v101 = v59;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v61, "[%@] Publish failed during commit changes (%@)", buf, 0x16u);
      }
    }

    v60 = -20;
    *(v95 + 6) = -20;
  }

  _Block_object_dispose(&v94, 8);
  return v60;
}

@end