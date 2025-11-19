@interface CPLMemoryChange
+ (id)ckAssetProperties;
+ (id)ckValueForRelatedRecord:(id)a3;
- (void)fillCKRecordBuilder:(id)a3 scopeProvider:(id)a4;
- (void)fillMissingCKAssetProperties:(id)a3 withCKRecord:(id)a4;
- (void)fillWithCKRecord:(id)a3;
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

+ (id)ckValueForRelatedRecord:(id)a3
{
  v3 = a3;
  v4 = [[CKReference alloc] initWithRecord:v3 action:0];

  return v4;
}

- (void)fillCKRecordBuilder:(id)a3 scopeProvider:(id)a4
{
  v34 = a3;
  v6 = self;
  v7 = [a4 fingerprintContext];
  if ([(CPLMemoryChange *)v6 hasChangeType:2])
  {
    if ([(CPLMemoryChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"title")])
    {
      v8 = [(CPLMemoryChange *)v6 title];
      [v34 setLegacyEncryptedObject:v8 forKey:@"title"];
    }

    if ([(CPLMemoryChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"subtitle")])
    {
      v9 = [(CPLMemoryChange *)v6 subtitle];
      if (v9)
      {
        [v34 setLegacyEncryptedObject:v9 forKey:@"subtitle"];
      }
    }

    if ([(CPLMemoryChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"category")])
    {
      v10 = [NSNumber numberWithInteger:[(CPLMemoryChange *)v6 category]];
      [v34 setLegacyEncryptedObject:v10 forKey:@"type"];
    }

    if ([(CPLMemoryChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"subcategory")])
    {
      v11 = [NSNumber numberWithInteger:[(CPLMemoryChange *)v6 subcategory]];
      [v34 setLegacyEncryptedObject:v11 forKey:@"subtype"];
    }

    if ([(CPLMemoryChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"assetList")])
    {
      v12 = [(CPLMemoryChange *)v6 assetList];
      v13 = v12;
      if (v12)
      {
        [v12 setVersion:kCPLMemoryListCurrentVersion];
        v14 = [v13 data];
        [v34 setObject:v14 forKey:@"assetList"];
      }
    }

    if ([(CPLMemoryChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"assetListPredicate")])
    {
      v15 = [(CPLMemoryChange *)v6 assetListPredicate];
      if (v15)
      {
        [v34 setLegacyEncryptedObject:v15 forKey:@"assetListPredicate"];
      }
    }

    if ([(CPLMemoryChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"creationDate")])
    {
      v16 = [(CPLMemoryChange *)v6 creationDate];
      [v34 setObject:v16 forKey:@"createDate"];
    }

    if ([(CPLMemoryChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"graphData")])
    {
      v17 = [(CPLMemoryChange *)v6 graphData];
      if (v17)
      {
        [v34 setLegacyEncryptedObject:v17 forKey:@"graphData"];
      }
    }

    if ([(CPLMemoryChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"graphVersion")])
    {
      v18 = [NSNumber numberWithLongLong:[(CPLMemoryChange *)v6 graphVersion]];
      [v34 setObject:v18 forKey:@"graphVersion"];
    }

    if ([(CPLMemoryChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"favorite")])
    {
      v19 = [NSNumber numberWithBool:[(CPLMemoryChange *)v6 isFavorite]];
      [v34 setObject:v19 forKey:@"isFavorite"];
    }

    if ([(CPLMemoryChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"rejected")])
    {
      v20 = [NSNumber numberWithBool:[(CPLMemoryChange *)v6 isRejected]];
      [v34 setObject:v20 forKey:@"isRejected"];
    }

    if ([(CPLMemoryChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"movieData")])
    {
      v21 = [(CPLMemoryChange *)v6 movieData];
      if (v21)
      {
        [v34 setLegacyEncryptedObject:v21 forKey:@"movieData"];
      }
    }

    if ([(CPLMemoryChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"score")])
    {
      [(CPLMemoryChange *)v6 score];
      v22 = [NSNumber numberWithDouble:?];
      [v34 setLegacyEncryptedObject:v22 forKey:@"score"];
    }

    if ([(CPLMemoryChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"notificationState")])
    {
      v23 = [NSNumber numberWithInteger:[(CPLMemoryChange *)v6 notificationState]];
      [v34 setObject:v23 forKey:@"notificationState"];
    }

    if ([(CPLMemoryChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"blacklistedFeature")])
    {
      v24 = [(CPLMemoryChange *)v6 blacklistedFeature];
      [v34 setLegacyEncryptedObject:v24 forKey:@"blacklistedFeature"];
    }

    if ([(CPLMemoryChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"viewCount")])
    {
      v25 = [NSNumber numberWithLongLong:[(CPLMemoryChange *)v6 viewCount]];
      [v34 setObject:v25 forKey:@"viewCount"];
    }

    if ([(CPLMemoryChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"shareCount")])
    {
      v26 = [NSNumber numberWithLongLong:[(CPLMemoryChange *)v6 shareCount]];
      [v34 setObject:v26 forKey:@"shareCount"];
    }

    if ([(CPLMemoryChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"playCount")])
    {
      v27 = [NSNumber numberWithLongLong:[(CPLMemoryChange *)v6 playCount]];
      [v34 setObject:v27 forKey:@"playCount"];
    }

    if ([(CPLMemoryChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"userActionOptions")])
    {
      v28 = [NSNumber numberWithLongLong:[(CPLMemoryChange *)v6 userActionOptions]];
      [v34 setObject:v28 forKey:@"isUserCreated"];
    }

    if ([(CPLMemoryChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"customUserAssetList")])
    {
      v29 = [(CPLMemoryChange *)v6 customUserAssetList];
      v30 = v29;
      if (v29)
      {
        [v29 setVersion:kCPLMemoryListCurrentVersion];
        v31 = [CKAsset alloc];
        v32 = [v30 data];
        v33 = [v31 initWithAssetContent:v32 itemTypeHint:@"fxd"];

        [v34 setObject:v33 forKey:@"resCustomUserAssetList"];
      }
    }
  }
}

- (void)fillMissingCKAssetProperties:(id)a3 withCKRecord:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = CPLMemoryChange;
  v7 = a3;
  [(CPLMemoryChange *)&v10 fillMissingCKAssetProperties:v7 withCKRecord:v6];
  v8 = [v7 objectForKeyedSubscript:{@"resCustomUserAssetList", v10.receiver, v10.super_class}];

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
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to find any customUserAssetList from %@", buf, 0xCu);
    }

    goto LABEL_6;
  }

LABEL_7:
}

- (void)fillWithCKRecord:(id)a3
{
  v5 = a3;
  v6 = self;
  v7 = &CPLFeatureNameEPP_ptr;
  [v5 cpl_legacyDecryptedObjectForKey:@"title" validateClass:objc_opt_class()];
  objc_claimAutoreleasedReturnValue();
  [sub_1000A1018() setTitle:?];

  [v5 cpl_legacyDecryptedObjectForKey:@"subtitle" validateClass:objc_opt_class()];
  objc_claimAutoreleasedReturnValue();
  [sub_1000A1018() setSubtitle:?];

  v8 = [v5 cpl_legacyDecryptedObjectForKey:@"type" validateClass:objc_opt_class()];
  v9 = v8;
  if (!v8)
  {
    v8 = &off_10028EE30;
  }

  [v8 integerValue];
  [sub_1000A1038() setCategory:?];

  v10 = [v5 cpl_legacyDecryptedObjectForKey:@"subtype" validateClass:objc_opt_class()];
  [sub_1000A1028(v10) integerValue];
  [sub_1000A1038() setSubcategory:?];

  v11 = [v5 cpl_objectForKey:@"assetList" validateClass:objc_opt_class()];
  if (v11)
  {
    v7 = [[CPLMemoryAssetList alloc] initWithData:v11];
    [v7 setVersion:0];
    [v7 setHasVersion:0];
    [(CPLMemoryChange *)v6 setAssetList:v7];
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
  [v5 cpl_legacyDecryptedObjectForKey:@"assetListPredicate" validateClass:objc_opt_class()];
  objc_claimAutoreleasedReturnValue();
  [sub_1000A1018() setAssetListPredicate:?];

  [v5 objectForKey:@"createDate"];
  objc_claimAutoreleasedReturnValue();
  [sub_1000A1018() setCreationDate:?];

  [v5 cpl_legacyDecryptedObjectForKey:@"graphData" validateClass:objc_opt_class()];
  objc_claimAutoreleasedReturnValue();
  [sub_1000A1018() setGraphData:?];

  v19 = [v5 cpl_objectForKey:@"graphVersion" validateClass:objc_opt_class()];
  [sub_1000A1028(v19) longLongValue];
  [sub_1000A1038() setGraphVersion:?];

  v20 = [v5 cpl_objectForKey:@"isFavorite" validateClass:objc_opt_class()];
  v21 = v20;
  if (!v20)
  {
    v20 = &__kCFBooleanFalse;
  }

  -[CPLMemoryChange setFavorite:](v6, "setFavorite:", [v20 BOOLValue]);

  v22 = [v5 cpl_objectForKey:@"isRejected" validateClass:objc_opt_class()];
  v23 = v22;
  if (!v22)
  {
    v22 = &__kCFBooleanFalse;
  }

  -[CPLMemoryChange setRejected:](v6, "setRejected:", [v22 BOOLValue]);

  [v5 cpl_legacyDecryptedObjectForKey:@"movieData" validateClass:objc_opt_class()];
  objc_claimAutoreleasedReturnValue();
  [sub_1000A1018() setMovieData:?];

  v24 = [v5 cpl_legacyDecryptedObjectForKey:@"score" validateClass:objc_opt_class()];
  v25 = v24;
  if (!v24)
  {
    v24 = &off_100291518;
  }

  [v24 doubleValue];
  [(CPLMemoryChange *)v6 setScore:?];

  v26 = [v5 cpl_objectForKey:@"notificationState" validateClass:objc_opt_class()];
  [sub_1000A1028(v26) integerValue];
  [sub_1000A1038() setNotificationState:?];

  [v5 cpl_legacyDecryptedObjectForKey:@"blacklistedFeature" validateClass:objc_opt_class()];
  objc_claimAutoreleasedReturnValue();
  [sub_1000A1018() setBlacklistedFeature:?];

  v27 = [v5 cpl_objectForKey:@"viewCount" validateClass:objc_opt_class()];
  [sub_1000A1028(v27) longLongValue];
  [sub_1000A1038() setViewCount:?];

  v28 = [v5 cpl_objectForKey:@"shareCount" validateClass:objc_opt_class()];
  [sub_1000A1028(v28) longLongValue];
  [sub_1000A1038() setShareCount:?];

  v29 = [v5 cpl_objectForKey:@"playCount" validateClass:objc_opt_class()];
  [sub_1000A1028(v29) longLongValue];
  [sub_1000A1038() setPlayCount:?];

  v30 = [v5 cpl_objectForKey:@"isUserCreated" validateClass:objc_opt_class()];
  if (([v30 integerValue] & 0x8000000000000000) != 0 || objc_msgSend(v30, "integerValue") > 0x80000000)
  {
    v31 = 1;
  }

  else
  {
    v31 = [v30 integerValue];
  }

  [(CPLMemoryChange *)v6 setUserActionOptions:v31];
}

@end