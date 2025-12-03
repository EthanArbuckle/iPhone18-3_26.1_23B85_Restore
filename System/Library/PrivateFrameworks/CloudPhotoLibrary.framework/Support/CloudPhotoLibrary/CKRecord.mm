@interface CKRecord
+ (id)cpl_expungedRecordFromCPLRecordChange:(id)change inZone:(id)zone target:(id)target;
+ (id)cpl_expungedSharedRecordFromCPLRecordChange:(id)change inZone:(id)zone target:(id)target;
+ (id)cpl_recordFromCPLRecordChange:(id)change scopeProvider:(id)provider currentUserRecordID:(id)d inZone:(id)zone resourceCountAndSize:(id)size error:(id *)error;
- (BOOL)cpl_inExpunged;
- (BOOL)cpl_isEPPRecord;
- (BOOL)cpl_isSharedWithScopeWithIdentifier:(id)identifier scopeProvider:(id)provider currentUserRecordID:(id)d isSparseRecord:(BOOL *)record;
- (BOOL)cpl_isSparseRecord;
- (BOOL)cpl_supportsSharingScopeIdentifier;
- (Class)cpl_recordChangeClass;
- (id)cplChangedKeys;
- (id)cplFullDescription;
- (id)cplResourceWithType:(unint64_t)type scopedIdentifier:(id)identifier forRecord:(id)record isCoherent:(BOOL *)coherent scopeProvider:(id)provider;
- (id)cplResourcesWithScopedIdentifier:(id)identifier coherent:(BOOL *)coherent forRecord:(id)record scopeProvider:(id)provider;
- (id)cpl_decryptedObjectForKey:(id)key validateClass:(Class)class;
- (id)cpl_destinationRecordIDInPrivateScopeWithCurrentUserRecordID:(id)d proposedDestinationRecordID:(id)iD;
- (id)cpl_legacyDecryptedObjectForKey:(id)key validateClass:(Class)class;
- (id)cpl_objectForKey:(id)key validateClass:(Class)class;
- (id)cpl_recordChangeMissingResourceProperties:(id *)properties scopeIdentifier:(id)identifier scopeProvider:(id)provider currentUserRecordID:(id)d;
- (id)cpl_sharingRecordScopedIdentifierWithScopeProvider:(id)provider currentUserRecordID:(id)d isSparseRecord:(BOOL *)record;
- (id)plistArchiveWithCPLArchiver:(id)archiver;
- (id)selfIfMatchesRecordName:(id)name;
- (void)cplValidateAndWarnIntegrityOfResourceData:(id)data withFingerPrintKey:(id)key andFileSizeKey:(id)sizeKey fingerprintScheme:(id)scheme;
- (void)cpl_markRecordAsEPP;
- (void)cpl_setEncryptedObject:(id)object forKey:(id)key validateClass:(Class)class;
- (void)cpl_setLegacyEncryptedObject:(id)object forKey:(id)key;
- (void)cpl_updateContributorsOnSharedRecord:(id)record;
- (void)cpl_updatePrivateRecordSharedToRecordWithID:(id)d currentUserRecordID:(id)iD setSparseRecordFlag:(BOOL)flag force:(BOOL)force;
@end

@implementation CKRecord

- (id)cplFullDescription
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  recordType = [(CKRecord *)self recordType];
  recordID = [(CKRecord *)self recordID];
  cplFullDescription = [recordID cplFullDescription];
  recordChangeTag = [(CKRecord *)self recordChangeTag];
  v9 = recordChangeTag;
  v10 = @"<no etag>";
  if (recordChangeTag)
  {
    v10 = recordChangeTag;
  }

  v11 = [v3 initWithFormat:@"[%@ (%@) %@ recordChangeTag=%@", v4, recordType, cplFullDescription, v10];

  valueStore = [(CKRecord *)self valueStore];
  encryptedValueStore = [(CKRecord *)self encryptedValueStore];
  v14 = [NSSet alloc];
  v35 = encryptedValueStore;
  allKeys = [encryptedValueStore allKeys];
  v16 = [v14 initWithArray:allKeys];

  v17 = [NSMutableSet alloc];
  v36 = valueStore;
  allKeys2 = [valueStore allKeys];
  v19 = [v17 initWithArray:allKeys2];

  [v19 unionSet:v16];
  changedKeys = [(CKRecord *)self changedKeys];
  [v19 addObjectsFromArray:changedKeys];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v34 = v19;
  allObjects = [v19 allObjects];
  v22 = [allObjects sortedArrayUsingSelector:"compare:"];

  obj = v22;
  v23 = [v22 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v39;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v39 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v38 + 1) + 8 * i);
        if ([v16 containsObject:v27])
        {
          v28 = [v35 objectForKeyedSubscript:v27];
          if (v28)
          {
            v29 = v28;
          }

          else
          {
            v29 = @"<failed to decrypt>";
          }

          v30 = @" (encrypted)";
        }

        else
        {
          v29 = [v36 objectForKeyedSubscript:v27];
          v30 = &stru_10027C2F0;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v31 = [[NSString alloc] initWithFormat:@"<%lu bytes>", -[__CFString length](v29, "length")];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = [[NSString alloc] initWithFormat:@"%@", v29];
          }

          else
          {
            v31 = [(__CFString *)v29 description];
          }
        }

        v32 = v31;
        [v11 appendFormat:@"\n%@%@%@ = %@", @"  ", v27, v30, v31];
      }

      v24 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v24);
  }

  [v11 appendString:@"]"];

  return v11;
}

- (Class)cpl_recordChangeClass
{
  recordType = [(CKRecord *)self recordType];
  v3 = CPLRecordChangeClassForCKRecordType(recordType);

  return v3;
}

- (id)cpl_objectForKey:(id)key validateClass:(Class)class
{
  keyCopy = key;
  v6 = [(CKRecord *)self objectForKey:keyCopy];
  if (v6 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1001A2E40(keyCopy, self, v6);
    v6 = 0;
  }

  return v6;
}

- (id)cplChangedKeys
{
  valueStore = [(CKRecord *)self valueStore];
  changedKeysSet = [valueStore changedKeysSet];
  allObjects = [changedKeysSet allObjects];
  v6 = [allObjects mutableCopy];

  encryptedValueStore = [(CKRecord *)self encryptedValueStore];
  changedKeysSet2 = [encryptedValueStore changedKeysSet];
  allObjects2 = [changedKeysSet2 allObjects];
  [v6 addObjectsFromArray:allObjects2];

  return v6;
}

- (BOOL)cpl_inExpunged
{
  v2 = [(CKRecord *)self objectForKeyedSubscript:@"isExpunged"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)cpl_isSparseRecord
{
  v2 = [(CKRecord *)self objectForKey:@"isSparsePrivateRecord"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)cpl_sharingRecordScopedIdentifierWithScopeProvider:(id)provider currentUserRecordID:(id)d isSparseRecord:(BOOL *)record
{
  providerCopy = provider;
  dCopy = d;
  v10 = [(CKRecord *)self objectForKey:@"isSparsePrivateRecord"];
  *record = [v10 BOOLValue];

  if (!*record)
  {
    self = 0;
    goto LABEL_17;
  }

  v11 = [(CKRecord *)self objectForKey:@"linkedShareZoneName"];
  v12 = [(CKRecord *)self objectForKey:@"linkedShareZoneOwner"];
  if (!v11)
  {
    goto LABEL_15;
  }

  v13 = CKCurrentUserDefaultName;
  if (v12)
  {
    recordID = [v12 recordID];
    recordName = [recordID recordName];

    recordName2 = [dCopy recordName];
    v17 = recordName2;
    if (recordName && recordName2)
    {
      v18 = [recordName isEqual:recordName2];

      if (v18)
      {
        goto LABEL_11;
      }
    }

    else
    {

      if (!(recordName | v17))
      {
        goto LABEL_11;
      }
    }

    recordID2 = [v12 recordID];
    recordName3 = [recordID2 recordName];

    v13 = recordName3;
  }

LABEL_11:
  v21 = [[CKRecordZoneID alloc] initWithZoneName:v11 ownerName:v13];
  v22 = [providerCopy scopeIdentifierFromZoneID:v21];
  v23 = [providerCopy cloudKitScopeForScopeIdentifier:v22];
  v24 = v23 == 0;
  if (v23)
  {
    if (!v22)
    {
      v24 = 1;
      goto LABEL_14;
    }

    sub_1001A2FE0(self, v22, &v26);
  }

  else
  {
    sub_1001A2F1C(self);
  }

  self = v26;

LABEL_14:
  if (v24)
  {
LABEL_15:
    self = 0;
  }

LABEL_17:

  return self;
}

- (BOOL)cpl_supportsSharingScopeIdentifier
{
  cpl_recordChangeClass = [(CKRecord *)self cpl_recordChangeClass];
  if (cpl_recordChangeClass)
  {

    LOBYTE(cpl_recordChangeClass) = [(objc_class *)cpl_recordChangeClass supportsSharingScopedIdentifier];
  }

  return cpl_recordChangeClass;
}

- (BOOL)cpl_isSharedWithScopeWithIdentifier:(id)identifier scopeProvider:(id)provider currentUserRecordID:(id)d isSparseRecord:(BOOL *)record
{
  identifierCopy = identifier;
  providerCopy = provider;
  dCopy = d;
  v13 = [(CKRecord *)self objectForKey:@"isSparsePrivateRecord"];
  *record = [v13 BOOLValue];

  v14 = [(CKRecord *)self objectForKey:@"linkedShareZoneName"];
  v15 = [(CKRecord *)self objectForKey:@"linkedShareZoneOwner"];
  if (!v14)
  {
    goto LABEL_17;
  }

  v16 = CKCurrentUserDefaultName;
  if (v15)
  {
    recordID = [v15 recordID];
    recordName = [recordID recordName];

    recordName2 = [dCopy recordName];
    v20 = recordName2;
    if (recordName && recordName2)
    {
      v21 = [recordName isEqual:recordName2];

      if (v21)
      {
        goto LABEL_9;
      }
    }

    else
    {

      if (!(recordName | v20))
      {
        goto LABEL_9;
      }
    }

    recordID2 = [v15 recordID];
    recordName3 = [recordID2 recordName];

    v16 = recordName3;
  }

LABEL_9:
  v24 = [[CKRecordZoneID alloc] initWithZoneName:v14 ownerName:v16];
  v25 = [providerCopy scopeIdentifierFromZoneID:v24];
  v26 = [providerCopy cloudKitScopeForScopeIdentifier:v25];
  if (!v26)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_1001A3094(self);
    }

    v25 = 0;
    goto LABEL_16;
  }

  if (!v25 || ([v25 isEqualToString:identifierCopy] & 1) == 0)
  {
LABEL_16:

LABEL_17:
    v27 = 0;
    goto LABEL_18;
  }

  v27 = 1;
LABEL_18:

  return v27;
}

- (void)cpl_updatePrivateRecordSharedToRecordWithID:(id)d currentUserRecordID:(id)iD setSparseRecordFlag:(BOOL)flag force:(BOOL)force
{
  flagCopy = flag;
  dCopy = d;
  iDCopy = iD;
  if (force || [(objc_class *)[(CKRecord *)self cpl_recordChangeClass] supportsSharingScopedIdentifier])
  {
    zoneID = [dCopy zoneID];
    ownerName = [zoneID ownerName];
    v13 = CPLCKReferenceToUser(ownerName, iDCopy);

    [(CKRecord *)self setObject:v13 forKey:@"linkedShareZoneOwner"];
    zoneID2 = [dCopy zoneID];
    zoneName = [zoneID2 zoneName];
    [(CKRecord *)self setObject:zoneName forKey:@"linkedShareZoneName"];

    recordName = [dCopy recordName];
    [(CKRecord *)self setObject:recordName forKey:@"linkedShareRecordName"];

    if (flagCopy)
    {
      [(CKRecord *)self setObject:&__kCFBooleanTrue forKey:@"isSparsePrivateRecord"];
    }
  }
}

- (void)cpl_updateContributorsOnSharedRecord:(id)record
{
  recordCopy = record;
  if ([recordCopy count])
  {
    selfCopy = self;
    recordID = [(CKRecord *)self recordID];
    zoneID = [recordID zoneID];

    v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(recordCopy, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = recordCopy;
    v8 = recordCopy;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[CKRecordID alloc] initWithRecordName:*(*(&v24 + 1) + 8 * i) zoneID:zoneID];
          v14 = [[CKReference alloc] initWithRecordID:v13 action:0];
          [v7 addObject:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v10);
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      v15 = sub_100068094();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        recordID2 = [(CKRecord *)selfCopy recordID];
        *buf = 138412546;
        v29 = v7;
        v30 = 2114;
        v31 = recordID2;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Setting proposed contributors to %@ for record %{public}@", buf, 0x16u);
      }
    }

    pluginFields = [(CKRecord *)selfCopy pluginFields];
    v18 = [pluginFields mutableCopy];

    if (!v18)
    {
      v18 = objc_alloc_init(NSMutableDictionary);
    }

    [v18 setValue:v7 forKey:@"proposedContributors"];
    [(CKRecord *)selfCopy setPluginFields:v18];
    recordCopy = v23;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        recordID3 = [(CKRecord *)selfCopy recordID];
        recordName = [recordID3 recordName];
        *buf = 138412546;
        v29 = v18;
        v30 = 2112;
        v31 = recordName;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Setting plugin fields to %@ for %@", buf, 0x16u);
      }
    }
  }
}

- (BOOL)cpl_isEPPRecord
{
  cpl_recordChangeClass = [(CKRecord *)self cpl_recordChangeClass];
  if ([(objc_class *)cpl_recordChangeClass isSubclassOfClass:objc_opt_class()])
  {
    recordID2 = [(CKRecord *)self objectForKeyedSubscript:@"masterRef"];
    recordID = [recordID2 recordID];
    recordName = [recordID recordName];
  }

  else
  {
    if (![(objc_class *)cpl_recordChangeClass isSubclassOfClass:objc_opt_class()])
    {
      return 0;
    }

    recordID2 = [(CKRecord *)self recordID];
    recordName = [recordID2 recordName];
  }

  if (recordName)
  {
    v7 = [CPLFingerprintScheme isMMCSv2Fingerprint:recordName];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)cpl_destinationRecordIDInPrivateScopeWithCurrentUserRecordID:(id)d proposedDestinationRecordID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v8 = [(CKRecord *)self objectForKeyedSubscript:@"remappedBy"];
  if (v8)
  {
    v24 = dCopy;
    recordName = [dCopy recordName];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v23 = [[CPLRemappedBy alloc] initWithData:v8];
    v10 = sub_100199C64(v23);
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          v16 = sub_100198578(v15);
          v17 = [v16 isEqualToString:recordName];

          if (v17)
          {
            v19 = [CKRecordID alloc];
            v20 = sub_10019858C(v15);
            zoneID = [iDCopy zoneID];
            v18 = [v19 initWithRecordName:v20 zoneID:zoneID];

            dCopy = v24;
            goto LABEL_13;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:{16, v23}];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    dCopy = v24;
  }

  v18 = iDCopy;
LABEL_13:

  return v18;
}

- (id)cpl_decryptedObjectForKey:(id)key validateClass:(Class)class
{
  keyCopy = key;
  encryptedValues = [(CKRecord *)self encryptedValues];
  v8 = [encryptedValues objectForKeyedSubscript:keyCopy];

  if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [(CKRecord *)self cpl_legacyDecryptedObjectForKey:keyCopy validateClass:class];
  }

  else
  {
    v9 = v8;
  }

  v10 = v9;

  return v10;
}

- (void)cpl_setEncryptedObject:(id)object forKey:(id)key validateClass:(Class)class
{
  keyCopy = key;
  objectCopy = object;
  encryptedValues = [(CKRecord *)self encryptedValues];
  [encryptedValues setObject:objectCopy forKeyedSubscript:keyCopy];
}

- (id)cpl_legacyDecryptedObjectForKey:(id)key validateClass:(Class)class
{
  keyCopy = key;
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0 && ([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0 && ([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0 && ([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0 && ([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0 && ([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    sub_1001A3148(a2, self, class);
  }

  encryptedValues = [(CKRecord *)self encryptedValues];
  v9 = [encryptedValues objectForKeyedSubscript:keyCopy];

  if (!v9 && ([(CKRecord *)self objectForKeyedSubscript:keyCopy], (v9 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = v9;
    v9 = v10;
LABEL_11:
    v11 = v10;
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_1001A334C(self);
    }

    goto LABEL_17;
  }

  if ([(objc_class *)class isSubclassOfClass:objc_opt_class()])
  {
    v10 = [[NSString alloc] initWithData:v9 encoding:4];
    goto LABEL_11;
  }

  v20 = 0;
  v13 = [NSPropertyListSerialization propertyListWithData:v9 options:0 format:0 error:&v20];
  v14 = v20;
  v15 = v13;
  if (!v15)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = sub_100069014();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        recordType = [(CKRecord *)self recordType];
        recordID = [(CKRecord *)self recordID];
        recordName = [recordID recordName];
        *buf = 138543874;
        v22 = recordType;
        v23 = 2114;
        v24 = recordName;
        v25 = 2112;
        v26 = v14;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Unable to decode property list for %{public}@.%{public}@: %@", buf, 0x20u);
      }
    }

    goto LABEL_17;
  }

  v11 = v15;

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1001A322C(self, v11);
LABEL_17:
    v11 = 0;
  }

LABEL_18:

  return v11;
}

- (void)cpl_setLegacyEncryptedObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (!objectCopy)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [objectCopy dataUsingEncoding:4];
    }

    else
    {
      v15 = 0;
      v8 = [NSPropertyListSerialization dataWithPropertyList:objectCopy format:200 options:0 error:&v15];
      v9 = v15;
      if (!v8 && (_CPLSilentLogging & 1) == 0)
      {
        v10 = sub_100069014();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          recordType = [(CKRecord *)self recordType];
          recordID = [(CKRecord *)self recordID];
          recordName = [recordID recordName];
          *buf = 138543874;
          v17 = recordType;
          v18 = 2114;
          v19 = recordName;
          v20 = 2112;
          v21 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Unable to convert property list for %{public}@.%{public}@: %@", buf, 0x20u);
        }
      }
    }

    if (v8)
    {
      goto LABEL_13;
    }

LABEL_14:
    [(CKRecord *)self setObject:0 forKeyedSubscript:keyCopy];
    goto LABEL_15;
  }

  v8 = objectCopy;
LABEL_13:
  encryptedValues = [(CKRecord *)self encryptedValues];
  [encryptedValues setObject:v8 forKeyedSubscript:keyCopy];

LABEL_15:
}

+ (id)cpl_expungedRecordFromCPLRecordChange:(id)change inZone:(id)zone target:(id)target
{
  changeCopy = change;
  zoneCopy = zone;
  targetCopy = target;
  if (([changeCopy supportsDeletion] & 1) == 0)
  {
    sub_1001A3474();
  }

  if ([changeCopy supportsDirectDeletion])
  {
    sub_1001A3550();
  }

  v10 = CPLBaseCKRecordFromCPLRecordChange(changeCopy, zoneCopy, targetCopy);
  if ([changeCopy supportsRecordModificationDate])
  {
    v11 = +[NSDate date];
    [v10 setObject:v11 forKey:@"recordModificationDate"];
  }

  [v10 setObject:&__kCFBooleanTrue forKey:@"isDeleted"];
  [v10 setObject:&__kCFBooleanTrue forKey:@"isExpunged"];

  return v10;
}

+ (id)cpl_expungedSharedRecordFromCPLRecordChange:(id)change inZone:(id)zone target:(id)target
{
  changeCopy = change;
  zoneCopy = zone;
  targetCopy = target;
  if (([changeCopy supportsDeletion] & 1) == 0)
  {
    sub_1001A362C();
  }

  if ([changeCopy supportsDirectDeletion])
  {
    sub_1001A3708();
  }

  v10 = CPLBaseSharedCKRecordFromCPLRecordChange(changeCopy, zoneCopy, targetCopy);
  if ([changeCopy supportsRecordModificationDate])
  {
    v11 = +[NSDate date];
    [v10 setObject:v11 forKey:@"recordModificationDate"];
  }

  [v10 setObject:&__kCFBooleanTrue forKey:@"isDeleted"];
  [v10 setObject:&__kCFBooleanTrue forKey:@"isExpunged"];

  return v10;
}

+ (id)cpl_recordFromCPLRecordChange:(id)change scopeProvider:(id)provider currentUserRecordID:(id)d inZone:(id)zone resourceCountAndSize:(id)size error:(id *)error
{
  sizeCopy = size;
  zoneCopy = zone;
  dCopy = d;
  providerCopy = provider;
  changeCopy = change;
  v18 = objc_alloc_init(CPLSimpleRecordTargetMapping);
  scopedIdentifier = [changeCopy scopedIdentifier];
  v20 = [v18 targetForRecordWithScopedIdentifier:scopedIdentifier];
  v21 = CPLBaseCKRecordFromCPLRecordChange(changeCopy, zoneCopy, v20);

  v22 = [[CPLSimpleCKRecordBuilder alloc] initWithBaseCKRecord:v21 scopeProvider:providerCopy currentUserRecordID:dCopy targetMapping:v18];
  LODWORD(error) = [changeCopy prepareWithCKRecordBuilder:v22 resourceCountAndSize:sizeCopy scopeProvider:providerCopy error:error];

  if (error)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)cpl_recordChangeMissingResourceProperties:(id *)properties scopeIdentifier:(id)identifier scopeProvider:(id)provider currentUserRecordID:(id)d
{
  identifierCopy = identifier;
  providerCopy = provider;
  dCopy = d;
  recordType = [(CKRecord *)self recordType];
  v14 = CPLRecordChangeClassForCKRecordType(recordType);
  if (v14)
  {
    v15 = objc_alloc_init(v14);
    [v15 prepareWithCKRecord:self scopeIdentifier:identifierCopy scopeProvider:providerCopy currentUserRecordID:dCopy];
    if (([v15 isDelete] & 1) == 0)
    {
      v16 = [(CKRecord *)self objectForKeyedSubscript:@"dateExpunged"];
      v17 = [v16 dateByAddingTimeInterval:-2592000.0];
      [v15 setDateDeleted:v17];

      [v15 fillWithCKRecord:self missingResourceProperties:properties scopeProvider:providerCopy];
    }

    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)cplResourceWithType:(unint64_t)type scopedIdentifier:(id)identifier forRecord:(id)record isCoherent:(BOOL *)coherent scopeProvider:(id)provider
{
  identifierCopy = identifier;
  recordCopy = record;
  providerCopy = provider;
  v15 = sub_100084A0C(CPLCloudKitResourceKeys, type);
  if (v15)
  {
    v75 = providerCopy;
    integerValue2 = 0.0;
    unsignedIntegerValue = 0;
    integerValue = 0.0;
    pluginFields = [(CKRecord *)self pluginFields];
    v17 = sub_1001A8CEC(v15);
    v18 = [pluginFields objectForKeyedSubscript:v17];
    bOOLValue = [v18 BOOLValue];

    typeCopy = type;
    coherentCopy = coherent;
    *coherent = 1;
    v77 = identifierCopy;
    v71 = bOOLValue;
    v74 = recordCopy;
    if (bOOLValue)
    {
      v20 = sub_100194228(v15);
      v21 = [pluginFields objectForKey:v20];
      unsignedIntegerValue = [v21 unsignedIntegerValue];

      v22 = sub_1001A8C80(v15);
      v76 = [pluginFields objectForKey:v22];

      v23 = sub_1001A8C8C(v15);
      v24 = [pluginFields objectForKey:v23];

      v25 = sub_1001A8C98(v15);
      v26 = [pluginFields objectForKey:v25];

      integerValue = [v24 integerValue];
      integerValue2 = [v26 integerValue];
      v27 = sub_1001A8CA4(v15);
      v28 = [pluginFields objectForKey:v27];
      v29 = CPLDynamicFingerPrintFromCloudKitFingerPrint(v28);

      v30 = 0;
      v78 = 0;
      v31 = 0;
      goto LABEL_25;
    }

    v32 = sub_1001A8CA4(v15);
    v29 = [(CKRecord *)self objectForKey:v32];

    v33 = sub_1001A8CE0(v15);
    v78 = [(CKRecord *)self objectForKey:v33];

    if (!v29)
    {
      v30 = 0;
      v31 = 0;
      v76 = 0;
LABEL_25:
      v47 = 1;
      canMatchSignatureToFingerprint = 1;
      if (v29)
      {
LABEL_26:
        v50 = v30;
        v51 = objc_alloc_init(CPLResourceIdentity);
        [v51 setFingerPrint:v29];
        if (v31)
        {
          v52 = 1;
        }

        else
        {
          v52 = v47;
        }

        v53 = typeCopy;
        if ((v52 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
        {
          sub_1001A3890(self, v77, typeCopy);
        }

        [v51 setStableHash:v31];
        [v51 setFileSize:unsignedIntegerValue];
        [v51 setFileUTI:v76];
        [v51 setImageDimensions:{integerValue, integerValue2}];
        if (v78)
        {
          v54 = 1;
        }

        else
        {
          v54 = v71;
        }

        if (v54 == 1)
        {
          [v51 setAvailable:1];
        }

        else if ((_CPLSilentLogging & 1) == 0)
        {
          v55 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = sub_1001A8CE0(v15);
            *buf = 138412546;
            v85 = v56;
            v86 = 2112;
            selfCopy = self;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Did not find %@ in %@", buf, 0x16u);

            v53 = typeCopy;
          }
        }

        v49 = v78;
        if (!*coherentCopy)
        {
          goto LABEL_51;
        }

        if (!canMatchSignatureToFingerprint)
        {
          *coherentCopy = 1;
LABEL_51:
          identifierCopy = v77;
          v47 = [[CPLResource alloc] initWithResourceIdentity:v51 itemScopedIdentifier:v77 resourceType:v53];
          fileURL = [v78 fileURL];

          if (fileURL)
          {
            fileURL2 = [v78 fileURL];
            identity = [v47 identity];
            [identity setFileURL:fileURL2];

            identifierCopy = v77;
          }

          v30 = v50;
LABEL_54:

          recordCopy = v74;
          providerCopy = v75;
          if (v29)
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        }

        if (v50)
        {
          v57 = [CKAsset cplFingerPrintForSignature:v50];
          v58 = v29;
          v59 = v57;
          if (v59 && ([v58 isEqual:v59] & 1) != 0)
          {
            v60 = 1;
LABEL_50:

            *coherentCopy = v60;
            v53 = typeCopy;
            goto LABEL_51;
          }
        }

        else
        {
          v61 = v29;
          v59 = 0;
        }

        v60 = 0;
        goto LABEL_50;
      }

LABEL_23:
      identifierCopy = v77;
      v49 = v78;
      goto LABEL_54;
    }

    fingerprintContext = [v75 fingerprintContext];
    v35 = [fingerprintContext fingerprintSchemeForFingerprint:v29];

    v70 = v35;
    if (v35 && [v35 isValid])
    {
      v36 = sub_1001ACA54([CPLCloudKitResourceRecordProperties alloc], v15, [recordCopy recordClass], v35);
      v79 = 0;
      v80 = 0;
      sub_1001ACB00(v36, &v80, &unsignedIntegerValue, &integerValue, &v79, self);
      v31 = v80;
      v76 = v79;
      [v78 signature];
      v30 = v37 = v35;
      if (v30)
      {
        v68 = v36;
        fingerprintContext2 = [v75 fingerprintContext];
        v39 = [fingerprintContext2 fingerprintSchemeForSignature:v30];

        v69 = v39;
        if (v39 == v37)
        {
          if (([v37 isForStableHash]& 1) != 0)
          {
            v47 = 1;
          }

          else
          {
            v47 = [v74 requiresStableHashForResourceType:type] ^ 1;
          }

          v36 = v68;
          canMatchSignatureToFingerprint = [v39 canMatchSignatureToFingerprint];
        }

        else
        {
          v67 = v30;
          if ((_CPLSilentLogging & 1) == 0)
          {
            v40 = __CPLGenericOSLogDomain();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              recordID = [(CKRecord *)self recordID];
              v42 = [CPLResource shortDescriptionForResourceType:type];
              fingerprintSchemeDescription = [v69 fingerprintSchemeDescription];
              fingerprintSchemeDescription2 = [v70 fingerprintSchemeDescription];
              *buf = 138544386;
              v85 = recordID;
              v86 = 2112;
              selfCopy = v77;
              v88 = 2112;
              v89 = v42;
              v90 = 2114;
              v91 = fingerprintSchemeDescription;
              v92 = 2114;
              v93 = fingerprintSchemeDescription2;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "CKRecord %{public}@ (for %@) has a CKAsset for %@ with a fingerprint of a different scheme %{public}@ (vs. %{public}@)", buf, 0x34u);
            }
          }

          *coherentCopy = 0;
          v30 = v67;
          if (!v31)
          {
            if ([v70 isForStableHash]&& ([v69 isForStableHash]& 1) == 0)
            {
              v31 = v29;
            }

            else
            {
              v31 = 0;
            }
          }

          v66 = [CKAsset cplFingerPrintForSignature:v67];

          canMatchSignatureToFingerprint = 0;
          v47 = 1;
          v29 = v66;
          v36 = v68;
          v39 = v69;
        }

LABEL_21:

        goto LABEL_22;
      }

      v47 = 1;
      canMatchSignatureToFingerprint = 1;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v39 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          recordID2 = [(CKRecord *)self recordID];
          v46 = [CPLResource shortDescriptionForResourceType:type];
          *buf = 138544130;
          v85 = recordID2;
          v86 = 2112;
          selfCopy = identifierCopy;
          v88 = 2112;
          v89 = v46;
          v90 = 2112;
          v91 = v29;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "CKRecord %{public}@ (for %@) has a CKAsset for %@ with an invalid fingerprint (%@) attached", buf, 0x2Au);
        }

        v30 = 0;
        v31 = 0;
        v76 = 0;
        v47 = 1;
        v36 = v29;
        canMatchSignatureToFingerprint = 1;
        v29 = 0;
        goto LABEL_21;
      }

      v30 = 0;
      v31 = 0;
      v76 = 0;
      v47 = 1;
      v36 = v29;
      canMatchSignatureToFingerprint = 1;
      v29 = 0;
    }

LABEL_22:

    if (v29)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

LABEL_55:
  v47 = 0;
LABEL_56:

  return v47;
}

- (id)cplResourcesWithScopedIdentifier:(id)identifier coherent:(BOOL *)coherent forRecord:(id)record scopeProvider:(id)provider
{
  identifierCopy = identifier;
  recordCopy = record;
  providerCopy = provider;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_100004460;
  v36 = sub_100005314;
  v37 = 0;
  v22 = _NSConcreteStackBlock;
  v23 = 3221225472;
  v24 = sub_10006A37C;
  v25 = &unk_1002753C8;
  v13 = recordCopy;
  v26 = v13;
  selfCopy = self;
  v14 = identifierCopy;
  v28 = v14;
  v15 = providerCopy;
  v29 = v15;
  v30 = &v32;
  coherentCopy = coherent;
  [CPLResource enumerateResourceTypesWithBlock:&v22];
  v16 = v33[5];
  v17 = v16;
  if (*coherent && [v16 count])
  {
    v18 = [CPLCloudKitFakeDynamicDerivatives overriddenResourcesFromResources:v17];

    v17 = v18;
  }

  v19 = v29;
  v20 = v17;

  _Block_object_dispose(&v32, 8);

  return v20;
}

- (id)plistArchiveWithCPLArchiver:(id)archiver
{
  archiverCopy = archiver;
  v5 = objc_alloc_init(NSMutableDictionary);
  archiveCursor = [archiverCopy archiveCursor];
  [archiverCopy setArchiveCursor:v5];
  [(CKRecord *)self encodeWithCoder:archiverCopy];
  [archiverCopy setArchiveCursor:archiveCursor];

  return v5;
}

- (id)selfIfMatchesRecordName:(id)name
{
  nameCopy = name;
  recordID = [(CKRecord *)self recordID];
  recordName = [recordID recordName];
  v7 = [recordName isEqualToString:nameCopy];

  if (v7)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)cplValidateAndWarnIntegrityOfResourceData:(id)data withFingerPrintKey:(id)key andFileSizeKey:(id)sizeKey fingerprintScheme:(id)scheme
{
  dataCopy = data;
  keyCopy = key;
  sizeKeyCopy = sizeKey;
  v35 = 0;
  v13 = [scheme fingerPrintForData:dataCopy error:&v35];
  v14 = v35;
  if (v13)
  {
    v15 = [(CKRecord *)self objectForKey:keyCopy];
    v16 = v15;
    if ((!v15 || ([v15 isEqual:v13]& 1) == 0) && (_CPLSilentLogging & 1) == 0)
    {
      v17 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        selfCopy = v13;
        sub_10006D02C();
        sub_10006D064(&_mh_execute_header, v18, v19, "Mismatching fingerprint (fetched %@ vs. expected %@) for resourceData for %@", v20, v21, v22, v23, v34, v35, buf[0]);
      }
    }

LABEL_11:

    goto LABEL_12;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    v16 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v38 = 2112;
      v39 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Unable to fingerprint resource data for %@: %@", buf, 0x16u);
    }

    goto LABEL_11;
  }

LABEL_12:
  v24 = [(CKRecord *)self objectForKey:sizeKeyCopy];
  v25 = [dataCopy length];
  if (v25 != [v24 unsignedIntegerValue] && (_CPLSilentLogging & 1) == 0)
  {
    v26 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [dataCopy length];
      *buf = 134218498;
      selfCopy = v27;
      sub_10006D02C();
      sub_10006D064(&_mh_execute_header, v28, v29, "Mismatching filesize (fetched %lu vs. expected %@) for resourceData for %@", v30, v31, v32, v33, v34, v35, buf[0]);
    }
  }
}

- (void)cpl_markRecordAsEPP
{
  pluginFields = [(CKRecord *)self pluginFields];
  v4 = [pluginFields mutableCopy];

  if (!v4)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
  }

  [v4 setValue:&__kCFBooleanTrue forKey:@"eppRecord"];
  [(CKRecord *)self setPluginFields:v4];
  if ((_CPLSilentLogging & 1) == 0)
  {
    v5 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      recordID = [(CKRecord *)self recordID];
      recordName = [recordID recordName];
      v9 = 138412546;
      v10 = v4;
      sub_1000033B4();
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting plugin fields to %@ for %@", &v9, 0x16u);
    }
  }
}

@end