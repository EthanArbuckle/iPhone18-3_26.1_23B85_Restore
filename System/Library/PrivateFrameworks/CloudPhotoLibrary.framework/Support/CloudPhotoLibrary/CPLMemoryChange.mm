@interface CPLMemoryChange
+ (id)ckAssetProperties;
+ (id)ckValueForRelatedRecord:(id)record;
- (void)fillCKRecordBuilder:(id)builder scopeProvider:(id)provider;
- (void)fillMissingCKAssetProperties:(id)properties withCKRecord:(id)record;
- (void)fillWithCKRecord:(id)record;
@end

@implementation CPLMemoryChange

+ (id)ckAssetProperties
{
  if (qword_1002C55E0 != -1)
  {
    sub_1001AAD5C();
  }

  v3 = qword_1002C55E8;

  return v3;
}

+ (id)ckValueForRelatedRecord:(id)record
{
  recordCopy = record;
  v4 = [[CKReference alloc] initWithRecord:recordCopy action:0];

  return v4;
}

- (void)fillCKRecordBuilder:(id)builder scopeProvider:(id)provider
{
  builderCopy = builder;
  selfCopy = self;
  fingerprintContext = [provider fingerprintContext];
  if ([(CPLMemoryChange *)selfCopy hasChangeType:2])
  {
    if ([(CPLMemoryChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"title")])
    {
      title = [(CPLMemoryChange *)selfCopy title];
      [builderCopy setLegacyEncryptedObject:title forKey:@"title"];
    }

    if ([(CPLMemoryChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"subtitle")])
    {
      subtitle = [(CPLMemoryChange *)selfCopy subtitle];
      if (subtitle)
      {
        [builderCopy setLegacyEncryptedObject:subtitle forKey:@"subtitle"];
      }
    }

    if ([(CPLMemoryChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"category")])
    {
      v10 = [NSNumber numberWithInteger:[(CPLMemoryChange *)selfCopy category]];
      [builderCopy setLegacyEncryptedObject:v10 forKey:@"type"];
    }

    if ([(CPLMemoryChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"subcategory")])
    {
      v11 = [NSNumber numberWithInteger:[(CPLMemoryChange *)selfCopy subcategory]];
      [builderCopy setLegacyEncryptedObject:v11 forKey:@"subtype"];
    }

    if ([(CPLMemoryChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"assetList")])
    {
      assetList = [(CPLMemoryChange *)selfCopy assetList];
      v13 = assetList;
      if (assetList)
      {
        [assetList setVersion:kCPLMemoryListCurrentVersion];
        data = [v13 data];
        [builderCopy setObject:data forKey:@"assetList"];
      }
    }

    if ([(CPLMemoryChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"assetListPredicate")])
    {
      assetListPredicate = [(CPLMemoryChange *)selfCopy assetListPredicate];
      if (assetListPredicate)
      {
        [builderCopy setLegacyEncryptedObject:assetListPredicate forKey:@"assetListPredicate"];
      }
    }

    if ([(CPLMemoryChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"creationDate")])
    {
      creationDate = [(CPLMemoryChange *)selfCopy creationDate];
      [builderCopy setObject:creationDate forKey:@"createDate"];
    }

    if ([(CPLMemoryChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"graphData")])
    {
      graphData = [(CPLMemoryChange *)selfCopy graphData];
      if (graphData)
      {
        [builderCopy setLegacyEncryptedObject:graphData forKey:@"graphData"];
      }
    }

    if ([(CPLMemoryChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"graphVersion")])
    {
      v18 = [NSNumber numberWithLongLong:[(CPLMemoryChange *)selfCopy graphVersion]];
      [builderCopy setObject:v18 forKey:@"graphVersion"];
    }

    if ([(CPLMemoryChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"favorite")])
    {
      v19 = [NSNumber numberWithBool:[(CPLMemoryChange *)selfCopy isFavorite]];
      [builderCopy setObject:v19 forKey:@"isFavorite"];
    }

    if ([(CPLMemoryChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"rejected")])
    {
      v20 = [NSNumber numberWithBool:[(CPLMemoryChange *)selfCopy isRejected]];
      [builderCopy setObject:v20 forKey:@"isRejected"];
    }

    if ([(CPLMemoryChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"movieData")])
    {
      movieData = [(CPLMemoryChange *)selfCopy movieData];
      if (movieData)
      {
        [builderCopy setLegacyEncryptedObject:movieData forKey:@"movieData"];
      }
    }

    if ([(CPLMemoryChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"score")])
    {
      [(CPLMemoryChange *)selfCopy score];
      v22 = [NSNumber numberWithDouble:?];
      [builderCopy setLegacyEncryptedObject:v22 forKey:@"score"];
    }

    if ([(CPLMemoryChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"notificationState")])
    {
      v23 = [NSNumber numberWithInteger:[(CPLMemoryChange *)selfCopy notificationState]];
      [builderCopy setObject:v23 forKey:@"notificationState"];
    }

    if ([(CPLMemoryChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"blacklistedFeature")])
    {
      blacklistedFeature = [(CPLMemoryChange *)selfCopy blacklistedFeature];
      [builderCopy setLegacyEncryptedObject:blacklistedFeature forKey:@"blacklistedFeature"];
    }

    if ([(CPLMemoryChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"viewCount")])
    {
      v25 = [NSNumber numberWithLongLong:[(CPLMemoryChange *)selfCopy viewCount]];
      [builderCopy setObject:v25 forKey:@"viewCount"];
    }

    if ([(CPLMemoryChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"shareCount")])
    {
      v26 = [NSNumber numberWithLongLong:[(CPLMemoryChange *)selfCopy shareCount]];
      [builderCopy setObject:v26 forKey:@"shareCount"];
    }

    if ([(CPLMemoryChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"playCount")])
    {
      v27 = [NSNumber numberWithLongLong:[(CPLMemoryChange *)selfCopy playCount]];
      [builderCopy setObject:v27 forKey:@"playCount"];
    }

    if ([(CPLMemoryChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"userActionOptions")])
    {
      v28 = [NSNumber numberWithLongLong:[(CPLMemoryChange *)selfCopy userActionOptions]];
      [builderCopy setObject:v28 forKey:@"isUserCreated"];
    }

    if ([(CPLMemoryChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"customUserAssetList")])
    {
      customUserAssetList = [(CPLMemoryChange *)selfCopy customUserAssetList];
      v30 = customUserAssetList;
      if (customUserAssetList)
      {
        [customUserAssetList setVersion:kCPLMemoryListCurrentVersion];
        v31 = [CKAsset alloc];
        data2 = [v30 data];
        v33 = [v31 initWithAssetContent:data2 itemTypeHint:@"fxd"];

        [builderCopy setObject:v33 forKey:@"resCustomUserAssetList"];
      }
    }
  }
}

- (void)fillMissingCKAssetProperties:(id)properties withCKRecord:(id)record
{
  recordCopy = record;
  v10.receiver = self;
  v10.super_class = CPLMemoryChange;
  propertiesCopy = properties;
  [(CPLMemoryChange *)&v10 fillMissingCKAssetProperties:propertiesCopy withCKRecord:recordCopy];
  v8 = [propertiesCopy objectForKeyedSubscript:{@"resCustomUserAssetList", v10.receiver, v10.super_class}];

  if (v8)
  {
    v9 = [[CPLMemoryAssetList alloc] initWithData:v8];
    [v9 setVersion:0];
    [v9 setHasVersion:0];
    [(CPLMemoryChange *)self setCustomUserAssetList:v9];
LABEL_6:

    goto LABEL_7;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = recordCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to find any customUserAssetList from %@", buf, 0xCu);
    }

    goto LABEL_6;
  }

LABEL_7:
}

- (void)fillWithCKRecord:(id)record
{
  recordCopy = record;
  selfCopy = self;
  v7 = &CPLFeatureNameEPP_ptr;
  [recordCopy cpl_legacyDecryptedObjectForKey:@"title" validateClass:objc_opt_class()];
  objc_claimAutoreleasedReturnValue();
  [sub_1000A1018() setTitle:?];

  [recordCopy cpl_legacyDecryptedObjectForKey:@"subtitle" validateClass:objc_opt_class()];
  objc_claimAutoreleasedReturnValue();
  [sub_1000A1018() setSubtitle:?];

  v8 = [recordCopy cpl_legacyDecryptedObjectForKey:@"type" validateClass:objc_opt_class()];
  v9 = v8;
  if (!v8)
  {
    v8 = &off_10028EE30;
  }

  [v8 integerValue];
  [sub_1000A1038() setCategory:?];

  v10 = [recordCopy cpl_legacyDecryptedObjectForKey:@"subtype" validateClass:objc_opt_class()];
  [sub_1000A1028(v10) integerValue];
  [sub_1000A1038() setSubcategory:?];

  v11 = [recordCopy cpl_objectForKey:@"assetList" validateClass:objc_opt_class()];
  if (v11)
  {
    v7 = [[CPLMemoryAssetList alloc] initWithData:v11];
    [v7 setVersion:0];
    [v7 setHasVersion:0];
    [(CPLMemoryChange *)selfCopy setAssetList:v7];
  }

  else
  {
    if (_CPLSilentLogging)
    {
      goto LABEL_9;
    }

    v12 = __CPLGenericOSLogDomain();
    if (sub_10002B0A8(v12))
    {
      sub_1000187DC();
      sub_1000A1044(&_mh_execute_header, v13, v14, "Failed to find any assetListData from %@", v15, v16, v17, v18, v32);
    }
  }

LABEL_9:
  [recordCopy cpl_legacyDecryptedObjectForKey:@"assetListPredicate" validateClass:objc_opt_class()];
  objc_claimAutoreleasedReturnValue();
  [sub_1000A1018() setAssetListPredicate:?];

  [recordCopy objectForKey:@"createDate"];
  objc_claimAutoreleasedReturnValue();
  [sub_1000A1018() setCreationDate:?];

  [recordCopy cpl_legacyDecryptedObjectForKey:@"graphData" validateClass:objc_opt_class()];
  objc_claimAutoreleasedReturnValue();
  [sub_1000A1018() setGraphData:?];

  v19 = [recordCopy cpl_objectForKey:@"graphVersion" validateClass:objc_opt_class()];
  [sub_1000A1028(v19) longLongValue];
  [sub_1000A1038() setGraphVersion:?];

  v20 = [recordCopy cpl_objectForKey:@"isFavorite" validateClass:objc_opt_class()];
  v21 = v20;
  if (!v20)
  {
    v20 = &__kCFBooleanFalse;
  }

  -[CPLMemoryChange setFavorite:](selfCopy, "setFavorite:", [v20 BOOLValue]);

  v22 = [recordCopy cpl_objectForKey:@"isRejected" validateClass:objc_opt_class()];
  v23 = v22;
  if (!v22)
  {
    v22 = &__kCFBooleanFalse;
  }

  -[CPLMemoryChange setRejected:](selfCopy, "setRejected:", [v22 BOOLValue]);

  [recordCopy cpl_legacyDecryptedObjectForKey:@"movieData" validateClass:objc_opt_class()];
  objc_claimAutoreleasedReturnValue();
  [sub_1000A1018() setMovieData:?];

  v24 = [recordCopy cpl_legacyDecryptedObjectForKey:@"score" validateClass:objc_opt_class()];
  v25 = v24;
  if (!v24)
  {
    v24 = &off_100291518;
  }

  [v24 doubleValue];
  [(CPLMemoryChange *)selfCopy setScore:?];

  v26 = [recordCopy cpl_objectForKey:@"notificationState" validateClass:objc_opt_class()];
  [sub_1000A1028(v26) integerValue];
  [sub_1000A1038() setNotificationState:?];

  [recordCopy cpl_legacyDecryptedObjectForKey:@"blacklistedFeature" validateClass:objc_opt_class()];
  objc_claimAutoreleasedReturnValue();
  [sub_1000A1018() setBlacklistedFeature:?];

  v27 = [recordCopy cpl_objectForKey:@"viewCount" validateClass:objc_opt_class()];
  [sub_1000A1028(v27) longLongValue];
  [sub_1000A1038() setViewCount:?];

  v28 = [recordCopy cpl_objectForKey:@"shareCount" validateClass:objc_opt_class()];
  [sub_1000A1028(v28) longLongValue];
  [sub_1000A1038() setShareCount:?];

  v29 = [recordCopy cpl_objectForKey:@"playCount" validateClass:objc_opt_class()];
  [sub_1000A1028(v29) longLongValue];
  [sub_1000A1038() setPlayCount:?];

  v30 = [recordCopy cpl_objectForKey:@"isUserCreated" validateClass:objc_opt_class()];
  if (([v30 integerValue] & 0x8000000000000000) != 0 || objc_msgSend(v30, "integerValue") > 0x80000000)
  {
    integerValue = 1;
  }

  else
  {
    integerValue = [v30 integerValue];
  }

  [(CPLMemoryChange *)selfCopy setUserActionOptions:integerValue];
}

@end