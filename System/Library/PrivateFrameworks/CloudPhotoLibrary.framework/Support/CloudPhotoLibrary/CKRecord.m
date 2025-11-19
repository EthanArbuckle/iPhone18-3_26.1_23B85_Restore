@interface CKRecord
+ (id)cpl_expungedRecordFromCPLRecordChange:(id)a3 inZone:(id)a4 target:(id)a5;
+ (id)cpl_expungedSharedRecordFromCPLRecordChange:(id)a3 inZone:(id)a4 target:(id)a5;
+ (id)cpl_recordFromCPLRecordChange:(id)a3 scopeProvider:(id)a4 currentUserRecordID:(id)a5 inZone:(id)a6 resourceCountAndSize:(id)a7 error:(id *)a8;
- (BOOL)cpl_inExpunged;
- (BOOL)cpl_isEPPRecord;
- (BOOL)cpl_isSharedWithScopeWithIdentifier:(id)a3 scopeProvider:(id)a4 currentUserRecordID:(id)a5 isSparseRecord:(BOOL *)a6;
- (BOOL)cpl_isSparseRecord;
- (BOOL)cpl_supportsSharingScopeIdentifier;
- (Class)cpl_recordChangeClass;
- (id)cplChangedKeys;
- (id)cplFullDescription;
- (id)cplResourceWithType:(unint64_t)a3 scopedIdentifier:(id)a4 forRecord:(id)a5 isCoherent:(BOOL *)a6 scopeProvider:(id)a7;
- (id)cplResourcesWithScopedIdentifier:(id)a3 coherent:(BOOL *)a4 forRecord:(id)a5 scopeProvider:(id)a6;
- (id)cpl_decryptedObjectForKey:(id)a3 validateClass:(Class)a4;
- (id)cpl_destinationRecordIDInPrivateScopeWithCurrentUserRecordID:(id)a3 proposedDestinationRecordID:(id)a4;
- (id)cpl_legacyDecryptedObjectForKey:(id)a3 validateClass:(Class)a4;
- (id)cpl_objectForKey:(id)a3 validateClass:(Class)a4;
- (id)cpl_recordChangeMissingResourceProperties:(id *)a3 scopeIdentifier:(id)a4 scopeProvider:(id)a5 currentUserRecordID:(id)a6;
- (id)cpl_sharingRecordScopedIdentifierWithScopeProvider:(id)a3 currentUserRecordID:(id)a4 isSparseRecord:(BOOL *)a5;
- (id)plistArchiveWithCPLArchiver:(id)a3;
- (id)selfIfMatchesRecordName:(id)a3;
- (void)cplValidateAndWarnIntegrityOfResourceData:(id)a3 withFingerPrintKey:(id)a4 andFileSizeKey:(id)a5 fingerprintScheme:(id)a6;
- (void)cpl_markRecordAsEPP;
- (void)cpl_setEncryptedObject:(id)a3 forKey:(id)a4 validateClass:(Class)a5;
- (void)cpl_setLegacyEncryptedObject:(id)a3 forKey:(id)a4;
- (void)cpl_updateContributorsOnSharedRecord:(id)a3;
- (void)cpl_updatePrivateRecordSharedToRecordWithID:(id)a3 currentUserRecordID:(id)a4 setSparseRecordFlag:(BOOL)a5 force:(BOOL)a6;
@end

@implementation CKRecord

- (id)cplFullDescription
{
  v3 = [NSMutableString alloc];
  v4 = objc_opt_class();
  v5 = [(CKRecord *)self recordType];
  v6 = [(CKRecord *)self recordID];
  v7 = [v6 cplFullDescription];
  v8 = [(CKRecord *)self recordChangeTag];
  v9 = v8;
  v10 = @"<no etag>";
  if (v8)
  {
    v10 = v8;
  }

  v11 = [v3 initWithFormat:@"[%@ (%@) %@ recordChangeTag=%@", v4, v5, v7, v10];

  v12 = [(CKRecord *)self valueStore];
  v13 = [(CKRecord *)self encryptedValueStore];
  v14 = [NSSet alloc];
  v35 = v13;
  v15 = [v13 allKeys];
  v16 = [v14 initWithArray:v15];

  v17 = [NSMutableSet alloc];
  v36 = v12;
  v18 = [v12 allKeys];
  v19 = [v17 initWithArray:v18];

  [v19 unionSet:v16];
  v20 = [(CKRecord *)self changedKeys];
  [v19 addObjectsFromArray:v20];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v34 = v19;
  v21 = [v19 allObjects];
  v22 = [v21 sortedArrayUsingSelector:"compare:"];

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
  v2 = [(CKRecord *)self recordType];
  v3 = CPLRecordChangeClassForCKRecordType(v2);

  return v3;
}

- (id)cpl_objectForKey:(id)a3 validateClass:(Class)a4
{
  v5 = a3;
  v6 = [(CKRecord *)self objectForKey:v5];
  if (v6 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_1001A2E40(v5, self, v6);
    v6 = 0;
  }

  return v6;
}

- (id)cplChangedKeys
{
  v3 = [(CKRecord *)self valueStore];
  v4 = [v3 changedKeysSet];
  v5 = [v4 allObjects];
  v6 = [v5 mutableCopy];

  v7 = [(CKRecord *)self encryptedValueStore];
  v8 = [v7 changedKeysSet];
  v9 = [v8 allObjects];
  [v6 addObjectsFromArray:v9];

  return v6;
}

- (BOOL)cpl_inExpunged
{
  v2 = [(CKRecord *)self objectForKeyedSubscript:@"isExpunged"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)cpl_isSparseRecord
{
  v2 = [(CKRecord *)self objectForKey:@"isSparsePrivateRecord"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)cpl_sharingRecordScopedIdentifierWithScopeProvider:(id)a3 currentUserRecordID:(id)a4 isSparseRecord:(BOOL *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CKRecord *)self objectForKey:@"isSparsePrivateRecord"];
  *a5 = [v10 BOOLValue];

  if (!*a5)
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
    v14 = [v12 recordID];
    v15 = [v14 recordName];

    v16 = [v9 recordName];
    v17 = v16;
    if (v15 && v16)
    {
      v18 = [v15 isEqual:v16];

      if (v18)
      {
        goto LABEL_11;
      }
    }

    else
    {

      if (!(v15 | v17))
      {
        goto LABEL_11;
      }
    }

    v19 = [v12 recordID];
    v20 = [v19 recordName];

    v13 = v20;
  }

LABEL_11:
  v21 = [[CKRecordZoneID alloc] initWithZoneName:v11 ownerName:v13];
  v22 = [v8 scopeIdentifierFromZoneID:v21];
  v23 = [v8 cloudKitScopeForScopeIdentifier:v22];
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
  v2 = [(CKRecord *)self cpl_recordChangeClass];
  if (v2)
  {

    LOBYTE(v2) = [(objc_class *)v2 supportsSharingScopedIdentifier];
  }

  return v2;
}

- (BOOL)cpl_isSharedWithScopeWithIdentifier:(id)a3 scopeProvider:(id)a4 currentUserRecordID:(id)a5 isSparseRecord:(BOOL *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(CKRecord *)self objectForKey:@"isSparsePrivateRecord"];
  *a6 = [v13 BOOLValue];

  v14 = [(CKRecord *)self objectForKey:@"linkedShareZoneName"];
  v15 = [(CKRecord *)self objectForKey:@"linkedShareZoneOwner"];
  if (!v14)
  {
    goto LABEL_17;
  }

  v16 = CKCurrentUserDefaultName;
  if (v15)
  {
    v17 = [v15 recordID];
    v18 = [v17 recordName];

    v19 = [v12 recordName];
    v20 = v19;
    if (v18 && v19)
    {
      v21 = [v18 isEqual:v19];

      if (v21)
      {
        goto LABEL_9;
      }
    }

    else
    {

      if (!(v18 | v20))
      {
        goto LABEL_9;
      }
    }

    v22 = [v15 recordID];
    v23 = [v22 recordName];

    v16 = v23;
  }

LABEL_9:
  v24 = [[CKRecordZoneID alloc] initWithZoneName:v14 ownerName:v16];
  v25 = [v11 scopeIdentifierFromZoneID:v24];
  v26 = [v11 cloudKitScopeForScopeIdentifier:v25];
  if (!v26)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_1001A3094(self);
    }

    v25 = 0;
    goto LABEL_16;
  }

  if (!v25 || ([v25 isEqualToString:v10] & 1) == 0)
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

- (void)cpl_updatePrivateRecordSharedToRecordWithID:(id)a3 currentUserRecordID:(id)a4 setSparseRecordFlag:(BOOL)a5 force:(BOOL)a6
{
  v7 = a5;
  v17 = a3;
  v10 = a4;
  if (a6 || [(objc_class *)[(CKRecord *)self cpl_recordChangeClass] supportsSharingScopedIdentifier])
  {
    v11 = [v17 zoneID];
    v12 = [v11 ownerName];
    v13 = CPLCKReferenceToUser(v12, v10);

    [(CKRecord *)self setObject:v13 forKey:@"linkedShareZoneOwner"];
    v14 = [v17 zoneID];
    v15 = [v14 zoneName];
    [(CKRecord *)self setObject:v15 forKey:@"linkedShareZoneName"];

    v16 = [v17 recordName];
    [(CKRecord *)self setObject:v16 forKey:@"linkedShareRecordName"];

    if (v7)
    {
      [(CKRecord *)self setObject:&__kCFBooleanTrue forKey:@"isSparsePrivateRecord"];
    }
  }
}

- (void)cpl_updateContributorsOnSharedRecord:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v22 = self;
    v5 = [(CKRecord *)self recordID];
    v6 = [v5 zoneID];

    v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = v4;
    v8 = v4;
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

          v13 = [[CKRecordID alloc] initWithRecordName:*(*(&v24 + 1) + 8 * i) zoneID:v6];
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
        v16 = [(CKRecord *)v22 recordID];
        *buf = 138412546;
        v29 = v7;
        v30 = 2114;
        v31 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Setting proposed contributors to %@ for record %{public}@", buf, 0x16u);
      }
    }

    v17 = [(CKRecord *)v22 pluginFields];
    v18 = [v17 mutableCopy];

    if (!v18)
    {
      v18 = objc_alloc_init(NSMutableDictionary);
    }

    [v18 setValue:v7 forKey:@"proposedContributors"];
    [(CKRecord *)v22 setPluginFields:v18];
    v4 = v23;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(CKRecord *)v22 recordID];
        v21 = [v20 recordName];
        *buf = 138412546;
        v29 = v18;
        v30 = 2112;
        v31 = v21;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Setting plugin fields to %@ for %@", buf, 0x16u);
      }
    }
  }
}

- (BOOL)cpl_isEPPRecord
{
  v3 = [(CKRecord *)self cpl_recordChangeClass];
  if ([(objc_class *)v3 isSubclassOfClass:objc_opt_class()])
  {
    v4 = [(CKRecord *)self objectForKeyedSubscript:@"masterRef"];
    v5 = [v4 recordID];
    v6 = [v5 recordName];
  }

  else
  {
    if (![(objc_class *)v3 isSubclassOfClass:objc_opt_class()])
    {
      return 0;
    }

    v4 = [(CKRecord *)self recordID];
    v6 = [v4 recordName];
  }

  if (v6)
  {
    v7 = [CPLFingerprintScheme isMMCSv2Fingerprint:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)cpl_destinationRecordIDInPrivateScopeWithCurrentUserRecordID:(id)a3 proposedDestinationRecordID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CKRecord *)self objectForKeyedSubscript:@"remappedBy"];
  if (v8)
  {
    v24 = v6;
    v9 = [v6 recordName];
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
          v17 = [v16 isEqualToString:v9];

          if (v17)
          {
            v19 = [CKRecordID alloc];
            v20 = sub_10019858C(v15);
            v21 = [v7 zoneID];
            v18 = [v19 initWithRecordName:v20 zoneID:v21];

            v6 = v24;
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

    v6 = v24;
  }

  v18 = v7;
LABEL_13:

  return v18;
}

- (id)cpl_decryptedObjectForKey:(id)a3 validateClass:(Class)a4
{
  v6 = a3;
  v7 = [(CKRecord *)self encryptedValues];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = [(CKRecord *)self cpl_legacyDecryptedObjectForKey:v6 validateClass:a4];
  }

  else
  {
    v9 = v8;
  }

  v10 = v9;

  return v10;
}

- (void)cpl_setEncryptedObject:(id)a3 forKey:(id)a4 validateClass:(Class)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [(CKRecord *)self encryptedValues];
  [v9 setObject:v8 forKeyedSubscript:v7];
}

- (id)cpl_legacyDecryptedObjectForKey:(id)a3 validateClass:(Class)a4
{
  v7 = a3;
  if (([(objc_class *)a4 isSubclassOfClass:objc_opt_class()]& 1) == 0 && ([(objc_class *)a4 isSubclassOfClass:objc_opt_class()]& 1) == 0 && ([(objc_class *)a4 isSubclassOfClass:objc_opt_class()]& 1) == 0 && ([(objc_class *)a4 isSubclassOfClass:objc_opt_class()]& 1) == 0 && ([(objc_class *)a4 isSubclassOfClass:objc_opt_class()]& 1) == 0 && ([(objc_class *)a4 isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    sub_1001A3148(a2, self, a4);
  }

  v8 = [(CKRecord *)self encryptedValues];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (!v9 && ([(CKRecord *)self objectForKeyedSubscript:v7], (v9 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_opt_isKindOfClass() & 1) != 0)
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

  if ([(objc_class *)a4 isSubclassOfClass:objc_opt_class()])
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
        v17 = [(CKRecord *)self recordType];
        v18 = [(CKRecord *)self recordID];
        v19 = [v18 recordName];
        *buf = 138543874;
        v22 = v17;
        v23 = 2114;
        v24 = v19;
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

- (void)cpl_setLegacyEncryptedObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v6 dataUsingEncoding:4];
    }

    else
    {
      v15 = 0;
      v8 = [NSPropertyListSerialization dataWithPropertyList:v6 format:200 options:0 error:&v15];
      v9 = v15;
      if (!v8 && (_CPLSilentLogging & 1) == 0)
      {
        v10 = sub_100069014();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = [(CKRecord *)self recordType];
          v12 = [(CKRecord *)self recordID];
          v13 = [v12 recordName];
          *buf = 138543874;
          v17 = v11;
          v18 = 2114;
          v19 = v13;
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
    [(CKRecord *)self setObject:0 forKeyedSubscript:v7];
    goto LABEL_15;
  }

  v8 = v6;
LABEL_13:
  v14 = [(CKRecord *)self encryptedValues];
  [v14 setObject:v8 forKeyedSubscript:v7];

LABEL_15:
}

+ (id)cpl_expungedRecordFromCPLRecordChange:(id)a3 inZone:(id)a4 target:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (([v7 supportsDeletion] & 1) == 0)
  {
    sub_1001A3474();
  }

  if ([v7 supportsDirectDeletion])
  {
    sub_1001A3550();
  }

  v10 = CPLBaseCKRecordFromCPLRecordChange(v7, v8, v9);
  if ([v7 supportsRecordModificationDate])
  {
    v11 = +[NSDate date];
    [v10 setObject:v11 forKey:@"recordModificationDate"];
  }

  [v10 setObject:&__kCFBooleanTrue forKey:@"isDeleted"];
  [v10 setObject:&__kCFBooleanTrue forKey:@"isExpunged"];

  return v10;
}

+ (id)cpl_expungedSharedRecordFromCPLRecordChange:(id)a3 inZone:(id)a4 target:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (([v7 supportsDeletion] & 1) == 0)
  {
    sub_1001A362C();
  }

  if ([v7 supportsDirectDeletion])
  {
    sub_1001A3708();
  }

  v10 = CPLBaseSharedCKRecordFromCPLRecordChange(v7, v8, v9);
  if ([v7 supportsRecordModificationDate])
  {
    v11 = +[NSDate date];
    [v10 setObject:v11 forKey:@"recordModificationDate"];
  }

  [v10 setObject:&__kCFBooleanTrue forKey:@"isDeleted"];
  [v10 setObject:&__kCFBooleanTrue forKey:@"isExpunged"];

  return v10;
}

+ (id)cpl_recordFromCPLRecordChange:(id)a3 scopeProvider:(id)a4 currentUserRecordID:(id)a5 inZone:(id)a6 resourceCountAndSize:(id)a7 error:(id *)a8
{
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = objc_alloc_init(CPLSimpleRecordTargetMapping);
  v19 = [v17 scopedIdentifier];
  v20 = [v18 targetForRecordWithScopedIdentifier:v19];
  v21 = CPLBaseCKRecordFromCPLRecordChange(v17, v14, v20);

  v22 = [[CPLSimpleCKRecordBuilder alloc] initWithBaseCKRecord:v21 scopeProvider:v16 currentUserRecordID:v15 targetMapping:v18];
  LODWORD(a8) = [v17 prepareWithCKRecordBuilder:v22 resourceCountAndSize:v13 scopeProvider:v16 error:a8];

  if (a8)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)cpl_recordChangeMissingResourceProperties:(id *)a3 scopeIdentifier:(id)a4 scopeProvider:(id)a5 currentUserRecordID:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(CKRecord *)self recordType];
  v14 = CPLRecordChangeClassForCKRecordType(v13);
  if (v14)
  {
    v15 = objc_alloc_init(v14);
    [v15 prepareWithCKRecord:self scopeIdentifier:v10 scopeProvider:v11 currentUserRecordID:v12];
    if (([v15 isDelete] & 1) == 0)
    {
      v16 = [(CKRecord *)self objectForKeyedSubscript:@"dateExpunged"];
      v17 = [v16 dateByAddingTimeInterval:-2592000.0];
      [v15 setDateDeleted:v17];

      [v15 fillWithCKRecord:self missingResourceProperties:a3 scopeProvider:v11];
    }

    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)cplResourceWithType:(unint64_t)a3 scopedIdentifier:(id)a4 forRecord:(id)a5 isCoherent:(BOOL *)a6 scopeProvider:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = sub_100084A0C(CPLCloudKitResourceKeys, a3);
  if (v15)
  {
    v75 = v14;
    v82 = 0.0;
    v83 = 0;
    v81 = 0.0;
    v16 = [(CKRecord *)self pluginFields];
    v17 = sub_1001A8CEC(v15);
    v18 = [v16 objectForKeyedSubscript:v17];
    v19 = [v18 BOOLValue];

    v72 = a3;
    v73 = a6;
    *a6 = 1;
    v77 = v12;
    v71 = v19;
    v74 = v13;
    if (v19)
    {
      v20 = sub_100194228(v15);
      v21 = [v16 objectForKey:v20];
      v83 = [v21 unsignedIntegerValue];

      v22 = sub_1001A8C80(v15);
      v76 = [v16 objectForKey:v22];

      v23 = sub_1001A8C8C(v15);
      v24 = [v16 objectForKey:v23];

      v25 = sub_1001A8C98(v15);
      v26 = [v16 objectForKey:v25];

      v81 = [v24 integerValue];
      v82 = [v26 integerValue];
      v27 = sub_1001A8CA4(v15);
      v28 = [v16 objectForKey:v27];
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
      v48 = 1;
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

        v53 = v72;
        if ((v52 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
        {
          sub_1001A3890(self, v77, v72);
        }

        [v51 setStableHash:v31];
        [v51 setFileSize:v83];
        [v51 setFileUTI:v76];
        [v51 setImageDimensions:{v81, v82}];
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
            v87 = self;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Did not find %@ in %@", buf, 0x16u);

            v53 = v72;
          }
        }

        v49 = v78;
        if (!*v73)
        {
          goto LABEL_51;
        }

        if (!v48)
        {
          *v73 = 1;
LABEL_51:
          v12 = v77;
          v47 = [[CPLResource alloc] initWithResourceIdentity:v51 itemScopedIdentifier:v77 resourceType:v53];
          v62 = [v78 fileURL];

          if (v62)
          {
            v63 = [v78 fileURL];
            v64 = [v47 identity];
            [v64 setFileURL:v63];

            v12 = v77;
          }

          v30 = v50;
LABEL_54:

          v13 = v74;
          v14 = v75;
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

            *v73 = v60;
            v53 = v72;
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
      v12 = v77;
      v49 = v78;
      goto LABEL_54;
    }

    v34 = [v75 fingerprintContext];
    v35 = [v34 fingerprintSchemeForFingerprint:v29];

    v70 = v35;
    if (v35 && [v35 isValid])
    {
      v36 = sub_1001ACA54([CPLCloudKitResourceRecordProperties alloc], v15, [v13 recordClass], v35);
      v79 = 0;
      v80 = 0;
      sub_1001ACB00(v36, &v80, &v83, &v81, &v79, self);
      v31 = v80;
      v76 = v79;
      [v78 signature];
      v30 = v37 = v35;
      if (v30)
      {
        v68 = v36;
        v38 = [v75 fingerprintContext];
        v39 = [v38 fingerprintSchemeForSignature:v30];

        v69 = v39;
        if (v39 == v37)
        {
          if (([v37 isForStableHash]& 1) != 0)
          {
            v47 = 1;
          }

          else
          {
            v47 = [v74 requiresStableHashForResourceType:a3] ^ 1;
          }

          v36 = v68;
          v48 = [v39 canMatchSignatureToFingerprint];
        }

        else
        {
          v67 = v30;
          if ((_CPLSilentLogging & 1) == 0)
          {
            v40 = __CPLGenericOSLogDomain();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v41 = [(CKRecord *)self recordID];
              v42 = [CPLResource shortDescriptionForResourceType:a3];
              v43 = [v69 fingerprintSchemeDescription];
              v44 = [v70 fingerprintSchemeDescription];
              *buf = 138544386;
              v85 = v41;
              v86 = 2112;
              v87 = v77;
              v88 = 2112;
              v89 = v42;
              v90 = 2114;
              v91 = v43;
              v92 = 2114;
              v93 = v44;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "CKRecord %{public}@ (for %@) has a CKAsset for %@ with a fingerprint of a different scheme %{public}@ (vs. %{public}@)", buf, 0x34u);
            }
          }

          *v73 = 0;
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

          v48 = 0;
          v47 = 1;
          v29 = v66;
          v36 = v68;
          v39 = v69;
        }

LABEL_21:

        goto LABEL_22;
      }

      v47 = 1;
      v48 = 1;
    }

    else
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v39 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v45 = [(CKRecord *)self recordID];
          v46 = [CPLResource shortDescriptionForResourceType:a3];
          *buf = 138544130;
          v85 = v45;
          v86 = 2112;
          v87 = v12;
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
        v48 = 1;
        v29 = 0;
        goto LABEL_21;
      }

      v30 = 0;
      v31 = 0;
      v76 = 0;
      v47 = 1;
      v36 = v29;
      v48 = 1;
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

- (id)cplResourcesWithScopedIdentifier:(id)a3 coherent:(BOOL *)a4 forRecord:(id)a5 scopeProvider:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
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
  v13 = v11;
  v26 = v13;
  v27 = self;
  v14 = v10;
  v28 = v14;
  v15 = v12;
  v29 = v15;
  v30 = &v32;
  v31 = a4;
  [CPLResource enumerateResourceTypesWithBlock:&v22];
  v16 = v33[5];
  v17 = v16;
  if (*a4 && [v16 count])
  {
    v18 = [CPLCloudKitFakeDynamicDerivatives overriddenResourcesFromResources:v17];

    v17 = v18;
  }

  v19 = v29;
  v20 = v17;

  _Block_object_dispose(&v32, 8);

  return v20;
}

- (id)plistArchiveWithCPLArchiver:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [v4 archiveCursor];
  [v4 setArchiveCursor:v5];
  [(CKRecord *)self encodeWithCoder:v4];
  [v4 setArchiveCursor:v6];

  return v5;
}

- (id)selfIfMatchesRecordName:(id)a3
{
  v4 = a3;
  v5 = [(CKRecord *)self recordID];
  v6 = [v5 recordName];
  v7 = [v6 isEqualToString:v4];

  if (v7)
  {
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)cplValidateAndWarnIntegrityOfResourceData:(id)a3 withFingerPrintKey:(id)a4 andFileSizeKey:(id)a5 fingerprintScheme:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v35 = 0;
  v13 = [a6 fingerPrintForData:v10 error:&v35];
  v14 = v35;
  if (v13)
  {
    v15 = [(CKRecord *)self objectForKey:v11];
    v16 = v15;
    if ((!v15 || ([v15 isEqual:v13]& 1) == 0) && (_CPLSilentLogging & 1) == 0)
    {
      v17 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v37 = v13;
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
      v37 = self;
      v38 = 2112;
      v39 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Unable to fingerprint resource data for %@: %@", buf, 0x16u);
    }

    goto LABEL_11;
  }

LABEL_12:
  v24 = [(CKRecord *)self objectForKey:v12];
  v25 = [v10 length];
  if (v25 != [v24 unsignedIntegerValue] && (_CPLSilentLogging & 1) == 0)
  {
    v26 = __CPLGenericOSLogDomain();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [v10 length];
      *buf = 134218498;
      v37 = v27;
      sub_10006D02C();
      sub_10006D064(&_mh_execute_header, v28, v29, "Mismatching filesize (fetched %lu vs. expected %@) for resourceData for %@", v30, v31, v32, v33, v34, v35, buf[0]);
    }
  }
}

- (void)cpl_markRecordAsEPP
{
  v3 = [(CKRecord *)self pluginFields];
  v4 = [v3 mutableCopy];

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
      v6 = [(CKRecord *)self recordID];
      v7 = [v6 recordName];
      v9 = 138412546;
      v10 = v4;
      sub_1000033B4();
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting plugin fields to %@ for %@", &v9, 0x16u);
    }
  }
}

@end