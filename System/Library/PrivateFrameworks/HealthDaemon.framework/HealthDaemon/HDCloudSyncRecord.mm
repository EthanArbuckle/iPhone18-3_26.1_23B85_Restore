@interface HDCloudSyncRecord
+ (BOOL)_deserializeData:(void *)data record:(void *)record fields:(uint64_t)fields error:;
+ (BOOL)hasFutureSchema:(id)schema;
+ (BOOL)requiresUnderlyingMessage;
+ (id)_serializeRecord:(void *)record fields:;
+ (id)fieldsForProtectedSerialization;
+ (id)fieldsForUnprotectedSerialization;
+ (id)initWithSerializedRecord:(id)record error:(id *)error;
+ (id)recordType;
+ (id)recordWithCKRecord:(id)record error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)validateWithError:(id *)error;
- (CKRecord)record;
- (HDCloudSyncRecord)init;
- (HDCloudSyncRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version;
- (NSData)underlyingMessage;
- (id)serialize;
- (id)serializeUnderlyingMessage;
- (int64_t)schemaVersion;
- (unint64_t)hash;
@end

@implementation HDCloudSyncRecord

- (HDCloudSyncRecord)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDCloudSyncRecord)initWithCKRecord:(id)record schemaVersion:(int64_t)version
{
  recordCopy = record;
  v20.receiver = self;
  v20.super_class = HDCloudSyncRecord;
  v8 = [(HDCloudSyncRecord *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_record, record);
    requiresEncryptedSchemaVersion = [objc_opt_class() requiresEncryptedSchemaVersion];
    allKeys = [(CKRecord *)v9->_record allKeys];
    v12 = [allKeys count];

    if (v12)
    {
      record = v9->_record;
      if (requiresEncryptedSchemaVersion)
      {
        encryptedValues = [(CKRecord *)record encryptedValues];
        v15 = [encryptedValues objectForKeyedSubscript:@"Version"];

        if (!v15)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v15 = [(CKRecord *)record objectForKeyedSubscript:@"Version"];
        if (!v15)
        {
          goto LABEL_10;
        }
      }

      if ([v15 integerValue] == version)
      {
LABEL_11:

        goto LABEL_14;
      }

LABEL_10:

      v9 = 0;
      goto LABEL_11;
    }

    v16 = [MEMORY[0x277CCABB0] numberWithInteger:version];
    v17 = v9->_record;
    if (requiresEncryptedSchemaVersion)
    {
      encryptedValues2 = [(CKRecord *)v17 encryptedValues];
      [encryptedValues2 setObject:v16 forKeyedSubscript:@"Version"];
    }

    else
    {
      [(CKRecord *)v17 setObject:v16 forKeyedSubscript:@"Version"];
    }

    v9->_unsaved = 1;
  }

LABEL_14:

  return v9;
}

+ (id)initWithSerializedRecord:(id)record error:(id *)error
{
  recordCopy = record;
  v8 = MEMORY[0x277CBC5A0];
  systemData = [recordCopy systemData];
  v10 = [v8 hd_recordWithSystemData:systemData error:error];

  if (!v10)
  {
    v21 = 0;
    goto LABEL_24;
  }

  fieldsForUnprotectedSerialization = [self fieldsForUnprotectedSerialization];
  if (![fieldsForUnprotectedSerialization count])
  {
    goto LABEL_5;
  }

  unprotectedDBData = [recordCopy unprotectedDBData];

  if (!unprotectedDBData)
  {
    fieldsForProtectedSerialization = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"serializedRecord.unprotectedDBData" class:objc_opt_class() selector:a2 format:@"Class requires unprotected serialized data but none is present in the serialized record."];
    if (fieldsForProtectedSerialization)
    {
      if (error)
      {
        v22 = fieldsForProtectedSerialization;
        *error = fieldsForProtectedSerialization;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_21;
  }

  unprotectedDBData2 = [recordCopy unprotectedDBData];
  v14 = [(HDCloudSyncRecord *)self _deserializeData:unprotectedDBData2 record:v10 fields:fieldsForUnprotectedSerialization error:error];

  if (v14)
  {
LABEL_5:
    fieldsForProtectedSerialization = [self fieldsForProtectedSerialization];
    if (![fieldsForProtectedSerialization count])
    {
LABEL_8:
      valueStore = [v10 valueStore];
      [valueStore resetChangedKeys];

      encryptedValueStore = [v10 encryptedValueStore];
      [encryptedValueStore resetChangedKeys];

      v21 = [self recordWithCKRecord:v10 error:error];
LABEL_22:

      goto LABEL_23;
    }

    protectedDBData = [recordCopy protectedDBData];

    if (protectedDBData)
    {
      protectedDBData2 = [recordCopy protectedDBData];
      v18 = [(HDCloudSyncRecord *)self _deserializeData:protectedDBData2 record:v10 fields:fieldsForProtectedSerialization error:error];

      if (v18)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v23 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"serializedRecord.protectedDBData" class:objc_opt_class() selector:a2 format:@"Class requires protected serialized data but none is present in the serialized record."];
      if (v23)
      {
        if (error)
        {
          v24 = v23;
          *error = v23;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }

LABEL_21:
    v21 = 0;
    goto LABEL_22;
  }

  v21 = 0;
LABEL_23:

LABEL_24:

  return v21;
}

+ (BOOL)_deserializeData:(void *)data record:(void *)record fields:(uint64_t)fields error:
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a2;
  dataCopy = data;
  recordCopy = record;
  objc_opt_self();
  v11 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v8 error:fields];
  if (v11)
  {
    v25 = recordCopy;
    v26 = v8;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = recordCopy;
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v27 + 1) + 8 * i);
          classes = [v17 classes];
          v19 = [v17 key];
          v20 = [v11 decodeObjectOfClasses:classes forKey:v19];

          if ([v17 encrypted])
          {
            encryptedValues = [dataCopy encryptedValues];
            v22 = [v17 key];
            [encryptedValues setObject:v20 forKeyedSubscript:v22];
          }

          else
          {
            encryptedValues = [v17 key];
            [dataCopy setObject:v20 forKeyedSubscript:encryptedValues];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v14);
    }

    [v11 finishDecoding];
    recordCopy = v25;
    v8 = v26;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v11 != 0;
}

- (BOOL)validateWithError:(id *)error
{
  record = [(HDCloudSyncRecord *)self record];
  v6 = [record copy];

  v7 = [objc_opt_class() recordWithCKRecord:v6 error:error];
  if (!v7)
  {
    goto LABEL_5;
  }

  if (![(HDCloudSyncRecord *)self isEqual:v7])
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:709 format:{@"Validation failed for %@; does not compare equal after inflation to %@", self, v7}];
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v8 = 1;
LABEL_6:

  return v8;
}

- (CKRecord)record
{
  serializeUnderlyingMessage = [(HDCloudSyncRecord *)self serializeUnderlyingMessage];
  underlyingMessage = [(HDCloudSyncRecord *)self underlyingMessage];
  v5 = underlyingMessage;
  if (underlyingMessage != serializeUnderlyingMessage && (!serializeUnderlyingMessage || ([underlyingMessage isEqual:serializeUnderlyingMessage] & 1) == 0))
  {
    encryptedValues = [(CKRecord *)self->_record encryptedValues];
    [encryptedValues setObject:serializeUnderlyingMessage forKeyedSubscript:@"UnderlyingMessage"];
  }

  record = self->_record;
  v8 = record;

  return record;
}

- (int64_t)schemaVersion
{
  v24 = *MEMORY[0x277D85DE8];
  requiresEncryptedSchemaVersion = [objc_opt_class() requiresEncryptedSchemaVersion];
  record = self->_record;
  v5 = objc_opt_class();
  if (requiresEncryptedSchemaVersion)
  {
    v19 = 0;
    v6 = &v19;
    v7 = [(CKRecord *)record hd_requiredEncryptedValueForKey:@"Version" type:v5 error:&v19];
  }

  else
  {
    v18 = 0;
    v6 = &v18;
    v7 = [(CKRecord *)record hd_requiredValueForKey:@"Version" type:v5 error:&v18];
  }

  v8 = v7;
  v9 = *v6;
  v10 = v9;
  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9 == 0;
  }

  if (v11)
  {
    integerValue = [v8 integerValue];
  }

  else
  {
    _HKInitializeLogging();
    v13 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
    {
      v17 = self->_record;
      *buf = 138543618;
      v21 = v17;
      v22 = 2114;
      v23 = v10;
      _os_log_fault_impl(&dword_228986000, v13, OS_LOG_TYPE_FAULT, "Failed to find schema version in record %{public}@: %{public}@", buf, 0x16u);
    }

    integerValue = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return integerValue;
}

- (NSData)underlyingMessage
{
  v19 = *MEMORY[0x277D85DE8];
  encryptedValues = [(CKRecord *)self->_record encryptedValues];
  v4 = [encryptedValues objectForKeyedSubscript:@"UnderlyingMessage"];

  if (v4)
  {
    record = self->_record;
    v14 = 0;
    v6 = [(CKRecord *)record hd_requiredEncryptedValueForKey:@"UnderlyingMessage" type:objc_opt_class() error:&v14];
    v7 = v14;
    v8 = v7;
    if (v6)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7 == 0;
    }

    if (!v9)
    {
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_FAULT))
      {
        v13 = self->_record;
        *buf = 138543618;
        v16 = v13;
        v17 = 2114;
        v18 = v8;
        _os_log_fault_impl(&dword_228986000, v10, OS_LOG_TYPE_FAULT, "Failed to find underlying message in record %{public}@: %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)serializeUnderlyingMessage
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (unint64_t)hash
{
  record = [(HDCloudSyncRecord *)self record];
  v3 = [record hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    record = [(HDCloudSyncRecord *)self record];
    record2 = [equalCopy record];
    v7 = [record hd_equivalentRecord:record2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)recordWithCKRecord:(id)record error:(id *)error
{
  recordCopy = record;
  recordType = [recordCopy recordType];
  recordType2 = [self recordType];
  v10 = [recordType isEqualToString:recordType2];

  if ((v10 & 1) == 0)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = objc_opt_class();
    recordType3 = [recordCopy recordType];
    recordType4 = [self recordType];
    v17 = [v13 hk_errorForInvalidArgument:@"record" class:v14 selector:a2 format:{@"record has type (%@), but expected (%@)", recordType3, recordType4}];
    if (v17)
    {
      if (error)
      {
        v18 = v17;
        *error = v17;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_14;
  }

  requiresEncryptedSchemaVersion = [objc_opt_class() requiresEncryptedSchemaVersion];
  v12 = objc_opt_class();
  if (requiresEncryptedSchemaVersion)
  {
    [recordCopy hd_requiredEncryptedValueForKey:@"Version" type:v12 error:error];
  }

  else
  {
    [recordCopy hd_requiredValueForKey:@"Version" type:v12 error:error];
  }
  recordType3 = ;
  if (!recordType3)
  {
LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  if (![self requiresUnderlyingMessage] || (objc_msgSend(recordCopy, "hd_requiredEncryptedValueForKey:type:error:", @"UnderlyingMessage", objc_opt_class(), error), v19 = objc_claimAutoreleasedReturnValue(), v19, v19))
  {
    v19 = [[self alloc] initWithCKRecord:recordCopy schemaVersion:{objc_msgSend(recordType3, "integerValue")}];
  }

LABEL_15:

  return v19;
}

+ (BOOL)requiresUnderlyingMessage
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (id)recordType
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (BOOL)hasFutureSchema:(id)schema
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)serialize
{
  record = [(HDCloudSyncRecord *)self record];
  hd_systemData = [record hd_systemData];

  fieldsForUnprotectedSerialization = [objc_opt_class() fieldsForUnprotectedSerialization];
  if ([fieldsForUnprotectedSerialization count])
  {
    record2 = [(HDCloudSyncRecord *)self record];
    v7 = [HDCloudSyncRecord _serializeRecord:record2 fields:fieldsForUnprotectedSerialization];
  }

  else
  {
    v7 = 0;
  }

  fieldsForProtectedSerialization = [objc_opt_class() fieldsForProtectedSerialization];
  if ([fieldsForProtectedSerialization count])
  {
    record3 = [(HDCloudSyncRecord *)self record];
    v10 = [HDCloudSyncRecord _serializeRecord:record3 fields:fieldsForProtectedSerialization];
  }

  else
  {
    v10 = 0;
  }

  v11 = [[HDCloudSyncSerializedRecord alloc] initWithEncodedSystemData:hd_systemData unprotectedDBData:v7 protectedDBData:v10];

  return v11;
}

+ (id)_serializeRecord:(void *)record fields:
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a2;
  recordCopy = record;
  objc_opt_self();
  v6 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = recordCopy;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if ([v12 encrypted])
        {
          encryptedValues = [v4 encryptedValues];
          v14 = [v12 key];
          v15 = [encryptedValues objectForKeyedSubscript:v14];
        }

        else
        {
          encryptedValues = [v12 key];
          v15 = [v4 objectForKeyedSubscript:encryptedValues];
        }

        v16 = [v12 key];
        [v6 encodeObject:v15 forKey:v16];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  [v6 finishEncoding];
  encodedData = [v6 encodedData];

  v18 = *MEMORY[0x277D85DE8];

  return encodedData;
}

+ (id)fieldsForUnprotectedSerialization
{
  v15[1] = *MEMORY[0x277D85DE8];
  shouldSerializeUnderlyingMessageAsProtected = [self shouldSerializeUnderlyingMessageAsProtected];
  v3 = objc_opt_class();
  if (shouldSerializeUnderlyingMessageAsProtected)
  {
    v14 = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    v5 = +[HDCloudSyncSerializedField fieldForKey:classes:encrypted:](HDCloudSyncSerializedField, "fieldForKey:classes:encrypted:", @"Version", v4, [objc_opt_class() requiresEncryptedSchemaVersion]);
    v15[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  }

  else
  {
    v12 = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
    v5 = +[HDCloudSyncSerializedField fieldForKey:classes:encrypted:](HDCloudSyncSerializedField, "fieldForKey:classes:encrypted:", @"Version", v4, [objc_opt_class() requiresEncryptedSchemaVersion]);
    v13[0] = v5;
    v11 = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    v8 = [HDCloudSyncSerializedField fieldForKey:@"UnderlyingMessage" classes:v7 encrypted:1];
    v13[1] = v8;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)fieldsForProtectedSerialization
{
  v8[1] = *MEMORY[0x277D85DE8];
  if ([self shouldSerializeUnderlyingMessageAsProtected])
  {
    v7 = objc_opt_class();
    v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v7 count:1];
    v3 = [HDCloudSyncSerializedField fieldForKey:@"UnderlyingMessage" classes:v2 encrypted:1];
    v8[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end