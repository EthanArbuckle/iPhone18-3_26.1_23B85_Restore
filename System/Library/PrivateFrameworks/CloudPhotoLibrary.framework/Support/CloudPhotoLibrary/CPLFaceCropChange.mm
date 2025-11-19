@interface CPLFaceCropChange
+ (id)ckAssetProperties;
+ (id)ckValueForRelatedRecord:(id)a3;
- (void)fillCKRecordBuilder:(id)a3 scopeProvider:(id)a4;
- (void)fillMissingCKAssetProperties:(id)a3 withCKRecord:(id)a4;
- (void)fillWithCKRecord:(id)a3;
@end

@implementation CPLFaceCropChange

+ (id)ckAssetProperties
{
  if (qword_1002C55D0 != -1)
  {
    sub_1001AAD48();
  }

  v3 = qword_1002C55D8;

  return v3;
}

- (void)fillMissingCKAssetProperties:(id)a3 withCKRecord:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = CPLFaceCropChange;
  v7 = a3;
  [(CPLFaceCropChange *)&v10 fillMissingCKAssetProperties:v7 withCKRecord:v6];
  v8 = [v7 objectForKeyedSubscript:{@"resFaceCropRes", v10.receiver, v10.super_class}];

  if (v8)
  {
    v9 = +[CPLFingerprintScheme nonPrivateFingerprintScheme];
    [v6 cplValidateAndWarnIntegrityOfResourceData:v8 withFingerPrintKey:@"resFaceCropFingerprint" andFileSizeKey:@"resFaceCropFileSize" fingerprintScheme:v9];

    [(CPLFaceCropChange *)self setResourceData:v8];
  }
}

+ (id)ckValueForRelatedRecord:(id)a3
{
  v3 = a3;
  v4 = [[CKReference alloc] initWithRecord:v3 action:0];

  return v4;
}

- (void)fillWithCKRecord:(id)a3
{
  v11 = a3;
  v4 = self;
  v5 = [v11 objectForKey:@"personRef"];
  v6 = [v5 recordID];
  v7 = [v6 recordName];

  [(CPLFaceCropChange *)v4 setPersonIdentifier:v7];
  v8 = [v11 cpl_objectForKey:@"type" validateClass:objc_opt_class()];
  v9 = v8;
  if (!v8)
  {
    v8 = &off_10028EE30;
  }

  -[CPLFaceCropChange setFaceCropType:](v4, "setFaceCropType:", [v8 integerValue]);

  if (+[CPLPersonChange serverSupportsGraphPeopleHome])
  {
    v10 = [v11 cpl_legacyDecryptedObjectForKey:@"rejectedPersonIdentifier" validateClass:objc_opt_class()];
    [(CPLFaceCropChange *)v4 setRejectedPersonIdentifier:v10];
  }
}

- (void)fillCKRecordBuilder:(id)a3 scopeProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = [v8 fingerprintContext];
  if ([(CPLFaceCropChange *)v9 hasChangeType:2])
  {
    if ([(CPLFaceCropChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"personIdentifier")])
    {
      v11 = [(CPLFaceCropChange *)v9 personScopedIdentifier];
      if (!v11)
      {
        sub_1001AC390(a2, v9);
      }

      v12 = v11;
      [v7 setCKReferenceWithScopedIdentifier:v11 forKey:@"personRef" referenceAction:0];
    }

    if ([(CPLFaceCropChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"resourceData")])
    {
      [(CPLFaceCropChange *)v9 resourceData];
      if (!objc_claimAutoreleasedReturnValue())
      {
        sub_1001AC2C4(a2, v9);
      }

      sub_1001AC138();
    }

    if ([(CPLFaceCropChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"faceCropType")])
    {
      v13 = [NSNumber numberWithInteger:[(CPLFaceCropChange *)v9 faceCropType]];
      [v7 setObject:v13 forKey:@"type"];
    }

    if ([(CPLFaceCropChange *)v9 shouldApplyPropertiesWithSelector:NSSelectorFromString(@"rejectedPersonIdentifier")])
    {
      if (+[CPLPersonChange serverSupportsGraphPeopleHome])
      {
        v14 = [(CPLFaceCropChange *)v9 rejectedPersonIdentifier];

        if (v14)
        {
          v15 = [(CPLFaceCropChange *)v9 rejectedPersonIdentifier];
          [v7 setLegacyEncryptedObject:v15 forKey:@"rejectedPersonIdentifier"];
        }
      }
    }
  }
}

@end