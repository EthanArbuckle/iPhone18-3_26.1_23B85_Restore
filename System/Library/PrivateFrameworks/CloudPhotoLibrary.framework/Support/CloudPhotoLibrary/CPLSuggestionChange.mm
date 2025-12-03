@interface CPLSuggestionChange
- (void)fillCKRecordBuilder:(id)builder scopeProvider:(id)provider;
- (void)fillWithCKRecord:(id)record;
@end

@implementation CPLSuggestionChange

- (void)fillCKRecordBuilder:(id)builder scopeProvider:(id)provider
{
  builderCopy = builder;
  selfCopy = self;
  fingerprintContext = [provider fingerprintContext];
  if ([(CPLSuggestionChange *)selfCopy hasChangeType:2])
  {
    if ([(CPLSuggestionChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"title")])
    {
      title = [(CPLSuggestionChange *)selfCopy title];
      if (title)
      {
        [builderCopy setLegacyEncryptedObject:title forKey:@"title"];
      }
    }

    if ([(CPLSuggestionChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"subtitle")])
    {
      subtitle = [(CPLSuggestionChange *)selfCopy subtitle];
      if (subtitle)
      {
        [builderCopy setLegacyEncryptedObject:subtitle forKey:@"subtitle"];
      }
    }

    if ([(CPLSuggestionChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"activationDate")])
    {
      activationDate = [(CPLSuggestionChange *)selfCopy activationDate];
      if (activationDate)
      {
        [builderCopy setObject:activationDate forKey:@"activationDate"];
      }
    }

    if ([(CPLSuggestionChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"relevantUntilDate")])
    {
      relevantUntilDate = [(CPLSuggestionChange *)selfCopy relevantUntilDate];
      if (relevantUntilDate)
      {
        [builderCopy setObject:relevantUntilDate forKey:@"relevantUntilDate"];
      }
    }

    if ([(CPLSuggestionChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"expungeDate")])
    {
      expungeDate = [(CPLSuggestionChange *)selfCopy expungeDate];
      if (expungeDate)
      {
        [builderCopy setObject:expungeDate forKey:@"expungeDate"];
      }
    }

    if ([(CPLSuggestionChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"state")])
    {
      v13 = [NSNumber numberWithUnsignedShort:[(CPLSuggestionChange *)selfCopy state]];
      [builderCopy setObject:v13 forKey:@"state"];
    }

    if ([(CPLSuggestionChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"type")])
    {
      v14 = [NSNumber numberWithUnsignedShort:[(CPLSuggestionChange *)selfCopy type]];
      [builderCopy setObject:v14 forKey:@"type"];
    }

    if ([(CPLSuggestionChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"subtype")])
    {
      v15 = [NSNumber numberWithUnsignedShort:[(CPLSuggestionChange *)selfCopy subtype]];
      [builderCopy setObject:v15 forKey:@"subtype"];
    }

    if ([(CPLSuggestionChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"creationDate")])
    {
      creationDate = [(CPLSuggestionChange *)selfCopy creationDate];
      [builderCopy setObject:creationDate forKey:@"createDate"];
    }

    if ([(CPLSuggestionChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"version")])
    {
      v17 = [NSNumber numberWithInteger:[(CPLSuggestionChange *)selfCopy version]];
      [builderCopy setObject:v17 forKey:@"version"];
    }

    if ([(CPLSuggestionChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"actionData")])
    {
      actionData = [(CPLSuggestionChange *)selfCopy actionData];
      if (actionData)
      {
        [builderCopy setLegacyEncryptedObject:actionData forKey:@"action"];
      }
    }

    if ([(CPLSuggestionChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"featuresData")])
    {
      featuresData = [(CPLSuggestionChange *)selfCopy featuresData];
      if (featuresData)
      {
        [builderCopy setLegacyEncryptedObject:featuresData forKey:@"features"];
      }
    }

    if ([(CPLSuggestionChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"recordList")])
    {
      recordList = [(CPLSuggestionChange *)selfCopy recordList];
      v21 = recordList;
      if (recordList)
      {
        [recordList setVersion:kCPLSuggestionListCurrentVersion];
        data = [v21 data];
        [builderCopy setObject:data forKey:@"assetList"];
      }
    }

    if ([(CPLSuggestionChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"notificationState")])
    {
      v23 = [NSNumber numberWithUnsignedShort:[(CPLSuggestionChange *)selfCopy notificationState]];
      [builderCopy setObject:v23 forKey:@"notificationState"];
    }
  }
}

- (void)fillWithCKRecord:(id)record
{
  sub_10002B0F4();
  v5 = v4;
  v7 = v6;
  v8 = v5;
  [v7 cpl_legacyDecryptedObjectForKey:@"title" validateClass:objc_opt_class()];
  objc_claimAutoreleasedReturnValue();
  [sub_1000A1018() setTitle:?];

  [v7 cpl_legacyDecryptedObjectForKey:@"subtitle" validateClass:objc_opt_class()];
  objc_claimAutoreleasedReturnValue();
  [sub_1000A1018() setSubtitle:?];

  [v7 objectForKey:@"activationDate"];
  objc_claimAutoreleasedReturnValue();
  [sub_1000A1018() setActivationDate:?];

  [v7 objectForKey:@"relevantUntilDate"];
  objc_claimAutoreleasedReturnValue();
  [sub_1000A1018() setRelevantUntilDate:?];

  [v7 objectForKey:@"expungeDate"];
  objc_claimAutoreleasedReturnValue();
  [sub_1000A1018() setExpungeDate:?];

  v9 = [v7 cpl_objectForKey:@"state" validateClass:objc_opt_class()];
  v10 = v9;
  if (!v9)
  {
    v9 = &off_10028EE30;
  }

  [v9 integerValue];
  [sub_1000A1084() setState:?];

  v11 = [v7 cpl_objectForKey:@"type" validateClass:objc_opt_class()];
  [sub_1000A1028(v11) integerValue];
  [sub_1000A1084() setType:?];

  v12 = [v7 cpl_objectForKey:@"subtype" validateClass:objc_opt_class()];
  [sub_1000A1028(v12) integerValue];
  [sub_1000A1084() setSubtype:?];

  [v7 objectForKey:@"createDate"];
  objc_claimAutoreleasedReturnValue();
  [sub_1000A1018() setCreationDate:?];

  v13 = [v7 cpl_objectForKey:@"version" validateClass:objc_opt_class()];
  [sub_1000A1028(v13) integerValue];
  [sub_1000A1038() setVersion:?];

  v14 = &CPLFeatureNameEPP_ptr;
  [v7 cpl_legacyDecryptedObjectForKey:@"action" validateClass:objc_opt_class()];
  objc_claimAutoreleasedReturnValue();
  [sub_1000A1018() setActionData:?];

  [v7 cpl_legacyDecryptedObjectForKey:@"features" validateClass:objc_opt_class()];
  objc_claimAutoreleasedReturnValue();
  [sub_1000A1018() setFeaturesData:?];

  v15 = [v7 cpl_objectForKey:@"assetList" validateClass:objc_opt_class()];
  if (v15)
  {
    v14 = [[CPLSuggestionRecordList alloc] initWithData:v15];
    [v14 setVersion:0];
    [v14 setHasVersion:0];
    [v8 setRecordList:v14];
LABEL_8:

    goto LABEL_9;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v16 = __CPLGenericOSLogDomain();
    if (sub_10002B0A8(v16))
    {
      sub_1000187DC();
      sub_1000A1044(&_mh_execute_header, v17, v18, "Failed to find any assetListData for %@", v19, v20, v21, v22, v24);
    }

    goto LABEL_8;
  }

LABEL_9:

  v23 = [v7 cpl_objectForKey:@"notificationState" validateClass:objc_opt_class()];
  [sub_1000A1028(v23) integerValue];
  [sub_1000A1084() setNotificationState:?];
}

@end