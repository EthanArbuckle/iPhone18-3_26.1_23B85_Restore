@interface HDCloudSyncRecord
+ (BOOL)_deserializeData:(void *)a3 record:(void *)a4 fields:(uint64_t)a5 error:;
+ (BOOL)hasFutureSchema:(id)a3;
+ (BOOL)requiresUnderlyingMessage;
+ (id)_serializeRecord:(void *)a3 fields:;
+ (id)fieldsForProtectedSerialization;
+ (id)fieldsForUnprotectedSerialization;
+ (id)initWithSerializedRecord:(id)a3 error:(id *)a4;
+ (id)recordType;
+ (id)recordWithCKRecord:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)validateWithError:(id *)a3;
- (CKRecord)record;
- (HDCloudSyncRecord)init;
- (HDCloudSyncRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4;
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

- (HDCloudSyncRecord)initWithCKRecord:(id)a3 schemaVersion:(int64_t)a4
{
  v7 = a3;
  v20.receiver = self;
  v20.super_class = HDCloudSyncRecord;
  v8 = [(HDCloudSyncRecord *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_record, a3);
    v10 = [objc_opt_class() requiresEncryptedSchemaVersion];
    v11 = [(CKRecord *)v9->_record allKeys];
    v12 = [v11 count];

    if (v12)
    {
      record = v9->_record;
      if (v10)
      {
        v14 = [(CKRecord *)record encryptedValues];
        v15 = [v14 objectForKeyedSubscript:@"Version"];

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

      if ([v15 integerValue] == a4)
      {
LABEL_11:

        goto LABEL_14;
      }

LABEL_10:

      v9 = 0;
      goto LABEL_11;
    }

    v16 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v17 = v9->_record;
    if (v10)
    {
      v18 = [(CKRecord *)v17 encryptedValues];
      [v18 setObject:v16 forKeyedSubscript:@"Version"];
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

+ (id)initWithSerializedRecord:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = MEMORY[0x277CBC5A0];
  v9 = [v7 systemData];
  v10 = [v8 hd_recordWithSystemData:v9 error:a4];

  if (!v10)
  {
    v21 = 0;
    goto LABEL_24;
  }

  v11 = [a1 fieldsForUnprotectedSerialization];
  if (![v11 count])
  {
    goto LABEL_5;
  }

  v12 = [v7 unprotectedDBData];

  if (!v12)
  {
    v15 = [MEMORY[0x277CCA9B8] hk_errorForInvalidArgument:@"serializedRecord.unprotectedDBData" class:objc_opt_class() selector:a2 format:@"Class requires unprotected serialized data but none is present in the serialized record."];
    if (v15)
    {
      if (a4)
      {
        v22 = v15;
        *a4 = v15;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_21;
  }

  v13 = [v7 unprotectedDBData];
  v14 = [(HDCloudSyncRecord *)a1 _deserializeData:v13 record:v10 fields:v11 error:a4];

  if (v14)
  {
LABEL_5:
    v15 = [a1 fieldsForProtectedSerialization];
    if (![v15 count])
    {
LABEL_8:
      v19 = [v10 valueStore];
      [v19 resetChangedKeys];

      v20 = [v10 encryptedValueStore];
      [v20 resetChangedKeys];

      v21 = [a1 recordWithCKRecord:v10 error:a4];
LABEL_22:

      goto LABEL_23;
    }

    v16 = [v7 protectedDBData];

    if (v16)
    {
      v17 = [v7 protectedDBData];
      v18 = [(HDCloudSyncRecord *)a1 _deserializeData:v17 record:v10 fields:v15 error:a4];

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
        if (a4)
        {
          v24 = v23;
          *a4 = v23;
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

+ (BOOL)_deserializeData:(void *)a3 record:(void *)a4 fields:(uint64_t)a5 error:
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  objc_opt_self();
  v11 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v8 error:a5];
  if (v11)
  {
    v25 = v10;
    v26 = v8;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = v10;
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
          v18 = [v17 classes];
          v19 = [v17 key];
          v20 = [v11 decodeObjectOfClasses:v18 forKey:v19];

          if ([v17 encrypted])
          {
            v21 = [v9 encryptedValues];
            v22 = [v17 key];
            [v21 setObject:v20 forKeyedSubscript:v22];
          }

          else
          {
            v21 = [v17 key];
            [v9 setObject:v20 forKeyedSubscript:v21];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v14);
    }

    [v11 finishDecoding];
    v10 = v25;
    v8 = v26;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v11 != 0;
}

- (BOOL)validateWithError:(id *)a3
{
  v5 = [(HDCloudSyncRecord *)self record];
  v6 = [v5 copy];

  v7 = [objc_opt_class() recordWithCKRecord:v6 error:a3];
  if (!v7)
  {
    goto LABEL_5;
  }

  if (![(HDCloudSyncRecord *)self isEqual:v7])
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:709 format:{@"Validation failed for %@; does not compare equal after inflation to %@", self, v7}];
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
  v3 = [(HDCloudSyncRecord *)self serializeUnderlyingMessage];
  v4 = [(HDCloudSyncRecord *)self underlyingMessage];
  v5 = v4;
  if (v4 != v3 && (!v3 || ([v4 isEqual:v3] & 1) == 0))
  {
    v6 = [(CKRecord *)self->_record encryptedValues];
    [v6 setObject:v3 forKeyedSubscript:@"UnderlyingMessage"];
  }

  record = self->_record;
  v8 = record;

  return record;
}

- (int64_t)schemaVersion
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_class() requiresEncryptedSchemaVersion];
  record = self->_record;
  v5 = objc_opt_class();
  if (v3)
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
    v12 = [v8 integerValue];
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

    v12 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

- (NSData)underlyingMessage
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(CKRecord *)self->_record encryptedValues];
  v4 = [v3 objectForKeyedSubscript:@"UnderlyingMessage"];

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
  v2 = [(HDCloudSyncRecord *)self record];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(HDCloudSyncRecord *)self record];
    v6 = [v4 record];
    v7 = [v5 hd_equivalentRecord:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)recordWithCKRecord:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = [v7 recordType];
  v9 = [a1 recordType];
  v10 = [v8 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = objc_opt_class();
    v15 = [v7 recordType];
    v16 = [a1 recordType];
    v17 = [v13 hk_errorForInvalidArgument:@"record" class:v14 selector:a2 format:{@"record has type (%@), but expected (%@)", v15, v16}];
    if (v17)
    {
      if (a4)
      {
        v18 = v17;
        *a4 = v17;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_14;
  }

  v11 = [objc_opt_class() requiresEncryptedSchemaVersion];
  v12 = objc_opt_class();
  if (v11)
  {
    [v7 hd_requiredEncryptedValueForKey:@"Version" type:v12 error:a4];
  }

  else
  {
    [v7 hd_requiredValueForKey:@"Version" type:v12 error:a4];
  }
  v15 = ;
  if (!v15)
  {
LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

  if (![a1 requiresUnderlyingMessage] || (objc_msgSend(v7, "hd_requiredEncryptedValueForKey:type:error:", @"UnderlyingMessage", objc_opt_class(), a4), v19 = objc_claimAutoreleasedReturnValue(), v19, v19))
  {
    v19 = [[a1 alloc] initWithCKRecord:v7 schemaVersion:{objc_msgSend(v15, "integerValue")}];
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

+ (BOOL)hasFutureSchema:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)serialize
{
  v3 = [(HDCloudSyncRecord *)self record];
  v4 = [v3 hd_systemData];

  v5 = [objc_opt_class() fieldsForUnprotectedSerialization];
  if ([v5 count])
  {
    v6 = [(HDCloudSyncRecord *)self record];
    v7 = [HDCloudSyncRecord _serializeRecord:v6 fields:v5];
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_opt_class() fieldsForProtectedSerialization];
  if ([v8 count])
  {
    v9 = [(HDCloudSyncRecord *)self record];
    v10 = [HDCloudSyncRecord _serializeRecord:v9 fields:v8];
  }

  else
  {
    v10 = 0;
  }

  v11 = [[HDCloudSyncSerializedRecord alloc] initWithEncodedSystemData:v4 unprotectedDBData:v7 protectedDBData:v10];

  return v11;
}

+ (id)_serializeRecord:(void *)a3 fields:
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v6 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
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
          v13 = [v4 encryptedValues];
          v14 = [v12 key];
          v15 = [v13 objectForKeyedSubscript:v14];
        }

        else
        {
          v13 = [v12 key];
          v15 = [v4 objectForKeyedSubscript:v13];
        }

        v16 = [v12 key];
        [v6 encodeObject:v15 forKey:v16];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  [v6 finishEncoding];
  v17 = [v6 encodedData];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)fieldsForUnprotectedSerialization
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 shouldSerializeUnderlyingMessageAsProtected];
  v3 = objc_opt_class();
  if (v2)
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
  if ([a1 shouldSerializeUnderlyingMessageAsProtected])
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