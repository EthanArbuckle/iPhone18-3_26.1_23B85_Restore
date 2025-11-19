@interface CPLSocialGroupChange
+ (id)ckValueForRelatedRecord:(id)a3;
+ (void)setRelatedValueOnRecord:(id)a3 fromRelatedRecord:(id)a4;
- (void)fillCKRecordBuilder:(id)a3 scopeProvider:(id)a4;
- (void)fillWithCKRecord:(id)a3;
@end

@implementation CPLSocialGroupChange

+ (id)ckValueForRelatedRecord:(id)a3
{
  v3 = [a3 recordID];
  v4 = [v3 recordName];

  return v4;
}

+ (void)setRelatedValueOnRecord:(id)a3 fromRelatedRecord:(id)a4
{
  if (a4)
  {
    v5 = a3;
    v7 = [a4 recordID];
    v6 = [v7 recordName];
    [v5 cpl_setEncryptedObject:v6 forKey:@"keyAssetIdEnc" validateClass:objc_opt_class()];
  }
}

- (void)fillCKRecordBuilder:(id)a3 scopeProvider:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = [a4 fingerprintContext];
  if (![(CPLSocialGroupChange *)v7 hasChangeType:2])
  {
    goto LABEL_26;
  }

  if ([(CPLSocialGroupChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"verifiedType")])
  {
    v9 = [NSNumber numberWithShort:[(CPLSocialGroupChange *)v7 verifiedType]];
    [v6 setEncryptedObject:v9 forKey:@"verifiedTypeEnc" validateClass:objc_opt_class()];
  }

  if ([(CPLSocialGroupChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"customTitle")])
  {
    v10 = [(CPLSocialGroupChange *)v7 customTitle];
    [v6 setEncryptedObject:v10 forKey:@"customTitleEnc" validateClass:objc_opt_class()];
  }

  if ([(CPLSocialGroupChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"position")])
  {
    v11 = [NSNumber numberWithUnsignedInteger:[(CPLSocialGroupChange *)v7 position]];
    [v6 setEncryptedObject:v11 forKey:@"positionEnc" validateClass:objc_opt_class()];
  }

  if ([(CPLSocialGroupChange *)v7 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"keyAssetIdentifier")])
  {
    v12 = [(CPLSocialGroupChange *)v7 keyAssetIdentifier];
    if (v12)
    {
      [v6 setEncryptedObject:v12 forKey:@"keyAssetIdEnc" validateClass:objc_opt_class()];
    }
  }

  v13 = v7;
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

    [v6 setObject:CPLSocialGroupClientVersion forKey:@"version"];
    goto LABEL_23;
  }

LABEL_21:

LABEL_23:
  if ([(CPLSocialGroupChange *)v13 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"personsData")])
  {
    v18 = [(CPLSocialGroupChange *)v13 personsData];

    if (v18)
    {
      v19 = [(CPLSocialGroupChange *)v13 personsData];
      [v6 setEncryptedObject:v19 forKey:@"personListEnc" validateClass:objc_opt_class()];
    }
  }

LABEL_26:
}

- (void)fillWithCKRecord:(id)a3
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