@interface CPLSocialGroupChange
+ (id)ckValueForRelatedRecord:(id)record;
+ (void)setRelatedValueOnRecord:(id)record fromRelatedRecord:(id)relatedRecord;
- (void)fillCKRecordBuilder:(id)builder scopeProvider:(id)provider;
- (void)fillWithCKRecord:(id)record;
@end

@implementation CPLSocialGroupChange

+ (id)ckValueForRelatedRecord:(id)record
{
  recordID = [record recordID];
  recordName = [recordID recordName];

  return recordName;
}

+ (void)setRelatedValueOnRecord:(id)record fromRelatedRecord:(id)relatedRecord
{
  if (relatedRecord)
  {
    recordCopy = record;
    recordID = [relatedRecord recordID];
    recordName = [recordID recordName];
    [recordCopy cpl_setEncryptedObject:recordName forKey:@"keyAssetIdEnc" validateClass:objc_opt_class()];
  }
}

- (void)fillCKRecordBuilder:(id)builder scopeProvider:(id)provider
{
  builderCopy = builder;
  selfCopy = self;
  fingerprintContext = [provider fingerprintContext];
  if (![(CPLSocialGroupChange *)selfCopy hasChangeType:2])
  {
    goto LABEL_26;
  }

  if ([(CPLSocialGroupChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"verifiedType")])
  {
    v9 = [NSNumber numberWithShort:[(CPLSocialGroupChange *)selfCopy verifiedType]];
    [builderCopy setEncryptedObject:v9 forKey:@"verifiedTypeEnc" validateClass:objc_opt_class()];
  }

  if ([(CPLSocialGroupChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"customTitle")])
  {
    customTitle = [(CPLSocialGroupChange *)selfCopy customTitle];
    [builderCopy setEncryptedObject:customTitle forKey:@"customTitleEnc" validateClass:objc_opt_class()];
  }

  if ([(CPLSocialGroupChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"position")])
  {
    v11 = [NSNumber numberWithUnsignedInteger:[(CPLSocialGroupChange *)selfCopy position]];
    [builderCopy setEncryptedObject:v11 forKey:@"positionEnc" validateClass:objc_opt_class()];
  }

  if ([(CPLSocialGroupChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"keyAssetIdentifier")])
  {
    keyAssetIdentifier = [(CPLSocialGroupChange *)selfCopy keyAssetIdentifier];
    if (keyAssetIdentifier)
    {
      [builderCopy setEncryptedObject:keyAssetIdentifier forKey:@"keyAssetIdEnc" validateClass:objc_opt_class()];
    }
  }

  v13 = selfCopy;
  if (![&__NSArray0__struct count])
  {
    goto LABEL_22;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = [&__NSArray0__struct countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
LABEL_15:
    v17 = 0;
    while (1)
    {
      if (*v21 != v16)
      {
        objc_enumerationMutation(&__NSArray0__struct);
      }

      if (([(CPLSocialGroupChange *)v13 shouldApplyPropertiesWithSelector:NSSelectorFromString(*(*(&v20 + 1) + 8 * v17))]& 1) != 0)
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [&__NSArray0__struct countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v15)
        {
          goto LABEL_15;
        }

        goto LABEL_21;
      }
    }

LABEL_22:

    [builderCopy setObject:CPLSocialGroupClientVersion forKey:@"version"];
    goto LABEL_23;
  }

LABEL_21:

LABEL_23:
  if ([(CPLSocialGroupChange *)v13 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"personsData")])
  {
    personsData = [(CPLSocialGroupChange *)v13 personsData];

    if (personsData)
    {
      personsData2 = [(CPLSocialGroupChange *)v13 personsData];
      [builderCopy setEncryptedObject:personsData2 forKey:@"personListEnc" validateClass:objc_opt_class()];
    }
  }

LABEL_26:
}

- (void)fillWithCKRecord:(id)record
{
  sub_10002B0F4();
  v4 = v3;
  v6 = v5;
  v7 = v4;
  v8 = [v6 cpl_decryptedObjectForKey:@"verifiedTypeEnc" validateClass:objc_opt_class()];
  v9 = v8;
  if (!v8)
  {
    v8 = &off_10028EE30;
  }

  [v7 setVerifiedType:{objc_msgSend(v8, "integerValue")}];

  [v6 cpl_decryptedObjectForKey:@"customTitleEnc" validateClass:objc_opt_class()];
  objc_claimAutoreleasedReturnValue();
  [sub_1000A1018() setCustomTitle:?];

  v10 = [v6 cpl_decryptedObjectForKey:@"positionEnc" validateClass:objc_opt_class()];
  v11 = v10;
  if (!v10)
  {
    v10 = &off_10028EE30;
  }

  [v10 integerValue];
  [sub_1000A1038() setPosition:?];

  [v6 cpl_decryptedObjectForKey:@"keyAssetIdEnc" validateClass:objc_opt_class()];
  objc_claimAutoreleasedReturnValue();
  [sub_1000A1018() setKeyAssetIdentifier:?];

  v12 = [v6 cpl_decryptedObjectForKey:@"personListEnc" validateClass:objc_opt_class()];
  if ([v12 length])
  {
    [v7 setPersonsData:v12];
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v13 = __CPLGenericOSLogDomain();
    if (sub_10002B0A8(v13))
    {
      sub_1000187DC();
      sub_1000A1044(&_mh_execute_header, v14, v15, "Failed to find any personsData for %@", v16, v17, v18, v19, v20);
    }
  }
}

@end