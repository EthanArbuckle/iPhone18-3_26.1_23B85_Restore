@interface MADSpotlightImageAssetBatch
+ (id)batchWithCancelBlock:(id)block;
- (id)createSearchableItemForAssetEntry:(id)entry;
- (int)prepare;
- (int)publish;
- (void)addAsset:(id)asset;
@end

@implementation MADSpotlightImageAssetBatch

+ (id)batchWithCancelBlock:(id)block
{
  blockCopy = block;
  v5 = [[self alloc] initWithCancelBlock:blockCopy];

  return v5;
}

- (void)addAsset:(id)asset
{
  assetCopy = asset;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  assetEntries = [(MADSpotlightImageAssetBatchBase *)self assetEntries];
  v6 = [assetEntries countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v6)
  {
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(assetEntries);
        }

        asset = [*(*(&v16 + 1) + 8 * i) asset];
        uniqueIdentifier = [asset uniqueIdentifier];
        uniqueIdentifier2 = [assetCopy uniqueIdentifier];
        v12 = [uniqueIdentifier isEqual:uniqueIdentifier2];

        if (v12)
        {
          if (MediaAnalysisLogLevel() >= 4)
          {
            v13 = VCPLogToOSLogType[4];
            if (os_log_type_enabled(&_os_log_default, v13))
            {
              logPrefix = [(MADSpotlightImageAssetBatch *)self logPrefix];
              uniqueIdentifier3 = [assetCopy uniqueIdentifier];
              *buf = 138412546;
              v21 = logPrefix;
              v22 = 2112;
              v23 = uniqueIdentifier3;
              _os_log_impl(&_mh_execute_header, &_os_log_default, v13, "[%@][%@] Batch already contains asset; ignoring", buf, 0x16u);
            }
          }

          goto LABEL_14;
        }
      }

      v6 = [assetEntries countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (assetCopy)
  {
    assetEntries = [MADSpotlightImageAssetEntry entryWithAsset:assetCopy];
    [(MADSpotlightImageAssetBatchBase *)self addAssetEntry:assetEntries];
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
          logPrefix = [(MADSpotlightImageAssetBatch *)self logPrefix];
          asset = [v7 asset];
          uniqueIdentifier = [asset uniqueIdentifier];
          *buf = v25;
          v34 = logPrefix;
          v35 = 2112;
          v36 = uniqueIdentifier;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "[%@][Prepare] %@", buf, 0x16u);
        }

        asset2 = [v7 asset];
        [asset2 setStatus:1];

        asset3 = [v7 asset];
        [asset3 setAttemptCount:{objc_msgSend(asset3, "attemptCount") + 1}];

        asset4 = [v7 asset];
        [asset4 attemptCount];
        MADRetryBackoffTime();
        v15 = v14;

        v16 = [NSDate dateWithTimeIntervalSinceNow:v15];
        asset5 = [v7 asset];
        [asset5 setNextAttemptDate:v16];
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
        logPrefix2 = [(MADSpotlightImageAssetBatch *)self logPrefix];
        *buf = 138412546;
        v34 = logPrefix2;
        v35 = 2112;
        v36 = v20;
        _os_log_impl(&_mh_execute_header, &_os_log_default, v22, "[%@][Prepare] Failed during commit changes - %@", buf, 0x16u);
      }
    }

    v21 = -20;
  }

  return v21;
}

- (id)createSearchableItemForAssetEntry:(id)entry
{
  entryCopy = entry;
  attributeSet = [entryCopy attributeSet];
  if (attributeSet)
  {
    v5 = [CSSearchableItem alloc];
    asset = [entryCopy asset];
    uniqueIdentifier = [asset uniqueIdentifier];
    v8 = [v5 initWithUniqueIdentifier:uniqueIdentifier domainIdentifier:0 attributeSet:attributeSet];

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
  selfCopy = self;
  assetEntries = [(MADSpotlightImageAssetBatchBase *)self assetEntries];
  v4 = [assetEntries countByEnumeratingWithState:&v90 objects:v106 count:16];
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
          objc_enumerationMutation(assetEntries);
        }

        v8 = *(*(&v90 + 1) + 8 * i);
        if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(&_os_log_default, v6))
        {
          logPrefix = [(MADSpotlightImageAssetBatch *)selfCopy logPrefix];
          asset = [v8 asset];
          uniqueIdentifier = [asset uniqueIdentifier];
          *buf = 138412546;
          v99 = logPrefix;
          v100 = 2112;
          v101 = uniqueIdentifier;
          _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "[%@][Publish] %@", buf, 0x16u);
        }

        if ([v8 status])
        {
          if ([v8 status] != -128)
          {
            asset2 = [v8 asset];
            [asset2 setStatus:3];
            goto LABEL_19;
          }

          previousStatus = [v8 previousStatus];
          asset3 = [v8 asset];
          [asset3 setStatus:previousStatus];

          asset4 = [v8 asset];
          [asset4 setAttemptCount:{objc_msgSend(asset4, "attemptCount") - 1}];

          asset2 = +[NSDate date];
          asset5 = [v8 asset];
          [asset5 setNextAttemptDate:asset2];
        }

        else
        {
          v17 = [(MADSpotlightImageAssetBatch *)selfCopy createSearchableItemForAssetEntry:v8];
          asset2 = v17;
          if (v17)
          {
            bundleID = [v17 bundleID];
            v19 = [v67 objectForKeyedSubscript:bundleID];
            v20 = v19 == 0;

            if (v20)
            {
              v21 = +[NSMutableArray array];
              bundleID2 = [asset2 bundleID];
              [v67 setObject:v21 forKeyedSubscript:bundleID2];
            }

            asset5 = [asset2 bundleID];
            v23 = [v67 objectForKeyedSubscript:asset5];
            [v23 addObject:asset2];
          }

          else
          {
            asset5 = [v8 asset];
            [asset5 setStatus:3];
          }
        }

LABEL_19:
      }

      v4 = [assetEntries countByEnumeratingWithState:&v90 objects:v106 count:16];
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
        v79[4] = selfCopy;
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
  assetEntries2 = [(MADSpotlightImageAssetBatchBase *)selfCopy assetEntries];
  v31 = [assetEntries2 countByEnumeratingWithState:&v75 objects:v104 count:16];
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
          objc_enumerationMutation(assetEntries2);
        }

        v36 = *(*(&v75 + 1) + 8 * k);
        asset6 = [v36 asset];
        uniqueIdentifier2 = [asset6 uniqueIdentifier];
        v39 = [v71 containsObject:uniqueIdentifier2];

        if (v39)
        {
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v34))
          {
            logPrefix2 = [(MADSpotlightImageAssetBatch *)selfCopy logPrefix];
            asset7 = [v36 asset];
            uniqueIdentifier3 = [asset7 uniqueIdentifier];
            *buf = 138412546;
            v99 = logPrefix2;
            v100 = 2112;
            v101 = uniqueIdentifier3;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "[%@][Publish] Mark %@ as soft failure", buf, 0x16u);
          }

          asset8 = [v36 asset];
          [asset8 setStatus:3];
        }

        asset9 = [v36 asset];
        uniqueIdentifier4 = [asset9 uniqueIdentifier];
        v46 = [v70 containsObject:uniqueIdentifier4];

        if (v46)
        {
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(&_os_log_default, v34))
          {
            logPrefix3 = [(MADSpotlightImageAssetBatch *)selfCopy logPrefix];
            asset10 = [v36 asset];
            uniqueIdentifier5 = [asset10 uniqueIdentifier];
            *buf = 138412546;
            v99 = logPrefix3;
            v100 = 2112;
            v101 = uniqueIdentifier5;
            _os_log_impl(&_mh_execute_header, &_os_log_default, v34, "[%@][Publish] Delete entry %@.", buf, 0x16u);
          }

          asset11 = [v36 asset];
          uniqueIdentifier6 = [asset11 uniqueIdentifier];
          v74 = 0;
          v52 = [MADManagedSpotlightEntry deleteEntryWithUniqueIdentifier:uniqueIdentifier6 error:&v74];
          v53 = v74;

          if ((v52 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(&_os_log_default, type))
          {
            logPrefix4 = [(MADSpotlightImageAssetBatch *)selfCopy logPrefix];
            asset12 = [v36 asset];
            uniqueIdentifier7 = [asset12 uniqueIdentifier];
            *buf = v64;
            v99 = logPrefix4;
            v100 = 2112;
            v101 = uniqueIdentifier7;
            v102 = 2112;
            v103 = v53;
            _os_log_impl(&_mh_execute_header, &_os_log_default, type, "[%@][Publish] %@ Failed to delete entry (%@)", buf, 0x20u);
          }
        }
      }

      v31 = [assetEntries2 countByEnumeratingWithState:&v75 objects:v104 count:16];
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
        logPrefix5 = [(MADSpotlightImageAssetBatch *)selfCopy logPrefix];
        *buf = 138412546;
        v99 = logPrefix5;
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