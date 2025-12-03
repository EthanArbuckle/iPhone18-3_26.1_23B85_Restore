@interface CPLFaceCropChange
+ (id)ckAssetProperties;
+ (id)ckValueForRelatedRecord:(id)record;
- (void)fillCKRecordBuilder:(id)builder scopeProvider:(id)provider;
- (void)fillMissingCKAssetProperties:(id)properties withCKRecord:(id)record;
- (void)fillWithCKRecord:(id)record;
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

- (void)fillMissingCKAssetProperties:(id)properties withCKRecord:(id)record
{
  recordCopy = record;
  v10.receiver = self;
  v10.super_class = CPLFaceCropChange;
  propertiesCopy = properties;
  [(CPLFaceCropChange *)&v10 fillMissingCKAssetProperties:propertiesCopy withCKRecord:recordCopy];
  v8 = [propertiesCopy objectForKeyedSubscript:{@"resFaceCropRes", v10.receiver, v10.super_class}];

  if (v8)
  {
    v9 = +[CPLFingerprintScheme nonPrivateFingerprintScheme];
    [recordCopy cplValidateAndWarnIntegrityOfResourceData:v8 withFingerPrintKey:@"resFaceCropFingerprint" andFileSizeKey:@"resFaceCropFileSize" fingerprintScheme:v9];

    [(CPLFaceCropChange *)self setResourceData:v8];
  }
}

+ (id)ckValueForRelatedRecord:(id)record
{
  recordCopy = record;
  v4 = [[CKReference alloc] initWithRecord:recordCopy action:0];

  return v4;
}

- (void)fillWithCKRecord:(id)record
{
  recordCopy = record;
  selfCopy = self;
  v5 = [recordCopy objectForKey:@"personRef"];
  recordID = [v5 recordID];
  recordName = [recordID recordName];

  [(CPLFaceCropChange *)selfCopy setPersonIdentifier:recordName];
  v8 = [recordCopy cpl_objectForKey:@"type" validateClass:objc_opt_class()];
  v9 = v8;
  if (!v8)
  {
    v8 = &off_10028EE30;
  }

  -[CPLFaceCropChange setFaceCropType:](selfCopy, "setFaceCropType:", [v8 integerValue]);

  if (+[CPLPersonChange serverSupportsGraphPeopleHome])
  {
    v10 = [recordCopy cpl_legacyDecryptedObjectForKey:@"rejectedPersonIdentifier" validateClass:objc_opt_class()];
    [(CPLFaceCropChange *)selfCopy setRejectedPersonIdentifier:v10];
  }
}

- (void)fillCKRecordBuilder:(id)builder scopeProvider:(id)provider
{
  builderCopy = builder;
  providerCopy = provider;
  selfCopy = self;
  fingerprintContext = [providerCopy fingerprintContext];
  if ([(CPLFaceCropChange *)selfCopy hasChangeType:2])
  {
    if ([(CPLFaceCropChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"personIdentifier")])
    {
      personScopedIdentifier = [(CPLFaceCropChange *)selfCopy personScopedIdentifier];
      if (!personScopedIdentifier)
      {
        sub_1001AC390(a2, selfCopy);
      }

      v12 = personScopedIdentifier;
      [builderCopy setCKReferenceWithScopedIdentifier:personScopedIdentifier forKey:@"personRef" referenceAction:0];
    }

    if ([(CPLFaceCropChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"resourceData")])
    {
      [(CPLFaceCropChange *)selfCopy resourceData];
      if (!objc_claimAutoreleasedReturnValue())
      {
        sub_1001AC2C4(a2, selfCopy);
      }

      sub_1001AC138();
    }

    if ([(CPLFaceCropChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"faceCropType")])
    {
      v13 = [NSNumber numberWithInteger:[(CPLFaceCropChange *)selfCopy faceCropType]];
      [builderCopy setObject:v13 forKey:@"type"];
    }

    if ([(CPLFaceCropChange *)selfCopy shouldApplyPropertiesWithSelector:NSSelectorFromString(@"rejectedPersonIdentifier")])
    {
      if (+[CPLPersonChange serverSupportsGraphPeopleHome])
      {
        rejectedPersonIdentifier = [(CPLFaceCropChange *)selfCopy rejectedPersonIdentifier];

        if (rejectedPersonIdentifier)
        {
          rejectedPersonIdentifier2 = [(CPLFaceCropChange *)selfCopy rejectedPersonIdentifier];
          [builderCopy setLegacyEncryptedObject:rejectedPersonIdentifier2 forKey:@"rejectedPersonIdentifier"];
        }
      }
    }
  }
}

@end