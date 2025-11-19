@interface CPLSuggestionChange
- (void)fillCKRecordBuilder:(id)a3 scopeProvider:(id)a4;
- (void)fillWithCKRecord:(id)a3;
@end

@implementation CPLSuggestionChange

- (void)fillCKRecordBuilder:(id)a3 scopeProvider:(id)a4
{
  v24 = a3;
  v6 = self;
  v7 = [a4 fingerprintContext];
  if ([(CPLSuggestionChange *)v6 hasChangeType:2])
  {
    if ([(CPLSuggestionChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"title")])
    {
      v8 = [(CPLSuggestionChange *)v6 title];
      if (v8)
      {
        [v24 setLegacyEncryptedObject:v8 forKey:@"title"];
      }
    }

    if ([(CPLSuggestionChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"subtitle")])
    {
      v9 = [(CPLSuggestionChange *)v6 subtitle];
      if (v9)
      {
        [v24 setLegacyEncryptedObject:v9 forKey:@"subtitle"];
      }
    }

    if ([(CPLSuggestionChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"activationDate")])
    {
      v10 = [(CPLSuggestionChange *)v6 activationDate];
      if (v10)
      {
        [v24 setObject:v10 forKey:@"activationDate"];
      }
    }

    if ([(CPLSuggestionChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"relevantUntilDate")])
    {
      v11 = [(CPLSuggestionChange *)v6 relevantUntilDate];
      if (v11)
      {
        [v24 setObject:v11 forKey:@"relevantUntilDate"];
      }
    }

    if ([(CPLSuggestionChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"expungeDate")])
    {
      v12 = [(CPLSuggestionChange *)v6 expungeDate];
      if (v12)
      {
        [v24 setObject:v12 forKey:@"expungeDate"];
      }
    }

    if ([(CPLSuggestionChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"state")])
    {
      v13 = [NSNumber numberWithUnsignedShort:[(CPLSuggestionChange *)v6 state]];
      [v24 setObject:v13 forKey:@"state"];
    }

    if ([(CPLSuggestionChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"type")])
    {
      v14 = [NSNumber numberWithUnsignedShort:[(CPLSuggestionChange *)v6 type]];
      [v24 setObject:v14 forKey:@"type"];
    }

    if ([(CPLSuggestionChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"subtype")])
    {
      v15 = [NSNumber numberWithUnsignedShort:[(CPLSuggestionChange *)v6 subtype]];
      [v24 setObject:v15 forKey:@"subtype"];
    }

    if ([(CPLSuggestionChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"creationDate")])
    {
      v16 = [(CPLSuggestionChange *)v6 creationDate];
      [v24 setObject:v16 forKey:@"createDate"];
    }

    if ([(CPLSuggestionChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"version")])
    {
      v17 = [NSNumber numberWithInteger:[(CPLSuggestionChange *)v6 version]];
      [v24 setObject:v17 forKey:@"version"];
    }

    if ([(CPLSuggestionChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"actionData")])
    {
      v18 = [(CPLSuggestionChange *)v6 actionData];
      if (v18)
      {
        [v24 setLegacyEncryptedObject:v18 forKey:@"action"];
      }
    }

    if ([(CPLSuggestionChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"featuresData")])
    {
      v19 = [(CPLSuggestionChange *)v6 featuresData];
      if (v19)
      {
        [v24 setLegacyEncryptedObject:v19 forKey:@"features"];
      }
    }

    if ([(CPLSuggestionChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"recordList")])
    {
      v20 = [(CPLSuggestionChange *)v6 recordList];
      v21 = v20;
      if (v20)
      {
        [v20 setVersion:kCPLSuggestionListCurrentVersion];
        v22 = [v21 data];
        [v24 setObject:v22 forKey:@"assetList"];
      }
    }

    if ([(CPLSuggestionChange *)v6 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"notificationState")])
    {
      v23 = [NSNumber numberWithUnsignedShort:[(CPLSuggestionChange *)v6 notificationState]];
      [v24 setObject:v23 forKey:@"notificationState"];
    }
  }
}

- (void)fillWithCKRecord:(id)a3
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