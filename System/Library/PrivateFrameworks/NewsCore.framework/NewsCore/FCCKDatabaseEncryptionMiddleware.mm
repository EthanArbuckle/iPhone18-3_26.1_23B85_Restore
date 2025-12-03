@interface FCCKDatabaseEncryptionMiddleware
- (id)_clientZoneIDFromServerZoneID:(void *)d error:;
- (id)_decryptedRecordIDWithOriginalRecordID:(void *)d withEncryptionKey:(void *)key mapping:(void *)mapping error:;
- (id)_encryptedRecordIDWithOriginalRecordID:(void *)d withEncryptionKey:(void *)key mapping:(void *)mapping error:;
- (id)_encryptionKeyForClientRecordID:(void *)d inDatabase:;
- (id)_serverZoneIDFromClientZoneID:(uint64_t)d database:(void *)database error:;
- (id)clientToServerRecord:(id)record inDatabase:(id)database error:(id *)error;
- (id)clientToServerRecordID:(id)d inDatabase:(id)database error:(id *)error;
- (id)clientToServerRecordType:(id)type withRecordID:(id)d inDatabase:(id)database error:(id *)error;
- (id)clientToServerRecordZone:(id)zone inDatabase:(id)database error:(id *)error;
- (id)initWithEncryptionSchema:(void *)schema recordNameCipher:;
- (id)serverToClientRecord:(id)record inDatabase:(id)database error:(id *)error;
- (id)serverToClientRecordID:(id)d inDatabase:(id)database error:(id *)error;
- (id)serverToClientRecordType:(id)type withRecordID:(id)d inDatabase:(id)database error:(id *)error;
- (id)serverToClientRecordZone:(id)zone inDatabase:(id)database error:(id *)error;
- (int64_t)database:(id)database willEnqueueOperation:(id)operation error:(id *)error;
- (void)_encryptionKeyForServerRecordID:(void *)d inDatabase:;
- (void)_removeField:(void *)field fromRecord:(void *)record;
@end

@implementation FCCKDatabaseEncryptionMiddleware

- (id)initWithEncryptionSchema:(void *)schema recordNameCipher:
{
  v6 = a2;
  schemaCopy = schema;
  if (self)
  {
    v10.receiver = self;
    v10.super_class = FCCKDatabaseEncryptionMiddleware;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(self + 2, schema);
      if (!schemaCopy)
      {
        [(FCCKPrivateDatabaseSchema *)v6 enumerateZoneSchemasWithBlock:?];
      }
    }
  }

  return self;
}

void __78__FCCKDatabaseEncryptionMiddleware_initWithEncryptionSchema_recordNameCipher___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a2 && *(a2 + 8) == 1 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"a record name cipher is required for a schema with record name encryption"];
    v4 = 136315906;
    v5 = "[FCCKDatabaseEncryptionMiddleware initWithEncryptionSchema:recordNameCipher:]_block_invoke";
    v6 = 2080;
    v7 = "FCCKDatabaseEncryptionMiddleware.m";
    v8 = 1024;
    v9 = 60;
    v10 = 2114;
    v11 = v3;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v4, 0x26u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

- (int64_t)database:(id)database willEnqueueOperation:(id)operation error:(id *)error
{
  databaseCopy = database;
  operationCopy = operation;
  v9 = operationCopy;
  if (!databaseCopy || *(databaseCopy + 10) != 1 || databaseCopy[5] > 0 || (databaseCopy[1] & 1) == 0 || ([(CKDatabaseOperation *)operationCopy fc_canBypassEncryptionRequirement]& 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = 0;
  }

  else
  {
    *error = [MEMORY[0x1E696ABC0] fc_encryptionRequiredError];
    v10 = 1;
  }

  return v10;
}

- (id)_serverZoneIDFromClientZoneID:(uint64_t)d database:(void *)database error:
{
  v7 = a2;
  v8 = v7;
  if (self)
  {
    v9 = v7;
    v10 = *(self + 8);
    v11 = v10;
    if (d)
    {
      v12 = *(d + 40);
    }

    else
    {
      v12 = 0;
    }

    v13 = [(FCCKPrivateDatabaseSchema *)v10 mappingFromRecordZoneID:v9 toVersion:v12];

    if ([v13 hasChanges])
    {
      v14 = objc_alloc(MEMORY[0x1E695BA90]);
      toZoneSchema = [v13 toZoneSchema];
      v16 = toZoneSchema;
      if (toZoneSchema)
      {
        v17 = *(toZoneSchema + 16);
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;
      ownerName = [v9 ownerName];
      v20 = [v14 initWithZoneName:v18 ownerName:ownerName];

      v9 = v20;
    }

    if (database)
    {
      *database = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_clientZoneIDFromServerZoneID:(void *)d error:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v7 = v5;
    v8 = [(FCCKPrivateDatabaseSchema *)*(self + 8) mappingFromRecordZoneID:v7 toVersion:0];
    if ([v8 hasChanges])
    {
      v9 = objc_alloc(MEMORY[0x1E695BA90]);
      toZoneSchema = [v8 toZoneSchema];
      v11 = toZoneSchema;
      if (toZoneSchema)
      {
        v12 = *(toZoneSchema + 16);
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      ownerName = [v7 ownerName];
      v15 = [v9 initWithZoneName:v13 ownerName:ownerName];

      v7 = v15;
    }

    if (d)
    {
      *d = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)clientToServerRecordID:(id)d inDatabase:(id)database error:(id *)error
{
  databaseCopy = database;
  dCopy = d;
  v10 = [(FCCKDatabaseEncryptionMiddleware *)self _encryptionKeyForClientRecordID:dCopy inDatabase:databaseCopy];
  if (self)
  {
    encryptionSchema = self->_encryptionSchema;
  }

  else
  {
    encryptionSchema = 0;
  }

  v12 = encryptionSchema;
  if (databaseCopy)
  {
    v13 = databaseCopy[5];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(FCCKPrivateDatabaseSchema *)v12 mappingFromRecordID:dCopy toVersion:v13];

  v20 = 0;
  v15 = [(FCCKDatabaseEncryptionMiddleware *)self _encryptedRecordIDWithOriginalRecordID:dCopy withEncryptionKey:v10 mapping:v14 error:&v20];

  v16 = v20;
  if (v15)
  {
    v17 = v15;
  }

  if (error)
  {
    v18 = v16;
    *error = v16;
  }

  return v15;
}

- (id)_encryptionKeyForClientRecordID:(void *)d inDatabase:
{
  dCopy = d;
  if (self)
  {
    v6 = *(self + 8);
    v7 = a2;
    if (dCopy)
    {
      v8 = dCopy[5];
    }

    else
    {
      v8 = 0;
    }

    v9 = [(FCCKPrivateDatabaseSchema *)v6 mappingFromRecordID:v7 toVersion:v8];

    toZoneSchema = [v9 toZoneSchema];
    v12 = toZoneSchema;
    if (toZoneSchema && (*(toZoneSchema + 10) & 1) != 0)
    {
      if (dCopy)
      {
        v13 = 56;
LABEL_10:
        Property = objc_getProperty(dCopy, v11, v13, 1);
LABEL_11:
        v15 = Property;

        goto LABEL_12;
      }
    }

    else if (dCopy)
    {
      v13 = 48;
      goto LABEL_10;
    }

    Property = 0;
    goto LABEL_11;
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (id)_encryptedRecordIDWithOriginalRecordID:(void *)d withEncryptionKey:(void *)key mapping:(void *)mapping error:
{
  v9 = a2;
  dCopy = d;
  keyCopy = key;
  v12 = keyCopy;
  if (!self)
  {
    v49 = 0;
    goto LABEL_27;
  }

  toRecordName = [keyCopy toRecordName];
  fromRecordName = [v12 fromRecordName];
  v15 = [toRecordName isEqualToString:fromRecordName];

  if (v15)
  {
    toZoneSchema = [v12 toZoneSchema];
    toRecordName2 = [v12 toRecordName];
    if (!toZoneSchema || ([toZoneSchema[4] containsObject:toRecordName2] & 1) == 0)
    {
      toZoneSchema2 = [v12 toZoneSchema];
      v19 = toZoneSchema2;
      if (toZoneSchema2 && (toZoneSchema2[8] & 1) != 0)
      {
        fromZoneSchema = [v12 fromZoneSchema];
        if (!fromZoneSchema)
        {

LABEL_9:
          v22 = *(self + 16);
          recordName = [v9 recordName];
          v24 = [v22 encryptRecordName:recordName withKey:dCopy];

          if (v24)
          {
            v54 = 0;
            v25 = [MEMORY[0x1E695BA70] isValidRecordName:v24 outError:&v54];
            v26 = v54;
            if (v25)
            {
              v27 = v24;
LABEL_32:
              recordName3 = v27;

              goto LABEL_18;
            }
          }

          else
          {
            v51 = MEMORY[0x1E696ABC0];
            recordName2 = [v9 recordName];
            v26 = [v51 fc_encryptionErrorWithCode:2 descriptionFormat:@"Cipher failed to encrypt record name: %@", recordName2];
          }

          v27 = 0;
          goto LABEL_32;
        }

        v21 = fromZoneSchema[8];

        if ((v21 & 1) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_17;
      }
    }

LABEL_17:
    recordName3 = [v9 recordName];
    v26 = 0;
    goto LABEL_18;
  }

  v28 = MEMORY[0x1E695BA70];
  toRecordName3 = [v12 toRecordName];
  v55 = 0;
  v30 = [v28 isValidRecordName:toRecordName3 outError:&v55];
  v26 = v55;

  if (v30)
  {
    recordName3 = [v12 toRecordName];
  }

  else
  {
    v31 = MEMORY[0x1E696ABC0];
    toRecordName4 = [v12 toRecordName];
    v33 = [v31 fc_encryptionErrorWithCode:4 descriptionFormat:@"Record name is invalid: %@", toRecordName4];

    recordName3 = 0;
    v26 = v33;
  }

LABEL_18:
  mappingCopy = mapping;
  v35 = objc_alloc(MEMORY[0x1E695BA90]);
  v36 = v12;
  toZoneSchema3 = [v12 toZoneSchema];
  v38 = toZoneSchema3;
  v39 = v26;
  v40 = dCopy;
  if (toZoneSchema3)
  {
    v41 = *(toZoneSchema3 + 16);
  }

  else
  {
    v41 = 0;
  }

  v42 = v41;
  v43 = v9;
  zoneID = [v9 zoneID];
  ownerName = [zoneID ownerName];
  v46 = [v35 initWithZoneName:v42 ownerName:ownerName];

  v47 = v39;
  if (mappingCopy)
  {
    v48 = v39;
    *mappingCopy = v39;
  }

  v49 = 0;
  dCopy = v40;
  if (recordName3)
  {
    v9 = v43;
    v12 = v36;
    if (v46)
    {
      v49 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:recordName3 zoneID:v46];
    }
  }

  else
  {
    v9 = v43;
    v12 = v36;
  }

LABEL_27:

  return v49;
}

- (id)serverToClientRecordID:(id)d inDatabase:(id)database error:(id *)error
{
  dCopy = d;
  v9 = [(FCCKDatabaseEncryptionMiddleware *)self _encryptionKeyForServerRecordID:dCopy inDatabase:database];
  if (self)
  {
    encryptionSchema = self->_encryptionSchema;
  }

  else
  {
    encryptionSchema = 0;
  }

  v11 = [(FCCKPrivateDatabaseSchema *)encryptionSchema mappingFromRecordID:dCopy toVersion:0];
  v17 = 0;
  v12 = [(FCCKDatabaseEncryptionMiddleware *)self _decryptedRecordIDWithOriginalRecordID:dCopy withEncryptionKey:v9 mapping:v11 error:&v17];

  v13 = v17;
  if (v12)
  {
    v14 = v12;
  }

  if (error)
  {
    v15 = v13;
    *error = v13;
  }

  return v12;
}

- (void)_encryptionKeyForServerRecordID:(void *)d inDatabase:
{
  dCopy = d;
  if (self)
  {
    v6 = [(FCCKPrivateDatabaseSchema *)self[1] schemaForZoneContainingRecordID:a2];
    v8 = v6;
    if (v6 && (*(v6 + 10) & 1) != 0)
    {
      if (dCopy)
      {
        v9 = 56;
LABEL_8:
        Property = objc_getProperty(dCopy, v7, v9, 1);
LABEL_9:
        self = Property;

        goto LABEL_10;
      }
    }

    else if (dCopy)
    {
      v9 = 48;
      goto LABEL_8;
    }

    Property = 0;
    goto LABEL_9;
  }

LABEL_10:

  return self;
}

- (id)_decryptedRecordIDWithOriginalRecordID:(void *)d withEncryptionKey:(void *)key mapping:(void *)mapping error:
{
  v9 = a2;
  dCopy = d;
  keyCopy = key;
  v12 = keyCopy;
  if (!self)
  {
    v49 = 0;
    goto LABEL_27;
  }

  toRecordName = [keyCopy toRecordName];
  fromRecordName = [v12 fromRecordName];
  v15 = [toRecordName isEqualToString:fromRecordName];

  if (v15)
  {
    fromZoneSchema = [v12 fromZoneSchema];
    fromRecordName2 = [v12 fromRecordName];
    if (!fromZoneSchema || ([fromZoneSchema[4] containsObject:fromRecordName2] & 1) == 0)
    {
      fromZoneSchema2 = [v12 fromZoneSchema];
      v19 = fromZoneSchema2;
      if (fromZoneSchema2 && (fromZoneSchema2[8] & 1) != 0)
      {
        toZoneSchema = [v12 toZoneSchema];
        if (!toZoneSchema)
        {

LABEL_9:
          v22 = *(self + 16);
          recordName = [v9 recordName];
          v24 = [v22 decryptRecordName:recordName withKey:dCopy];

          if (v24)
          {
            v54 = 0;
            v25 = [MEMORY[0x1E695BA70] isValidRecordName:v24 outError:&v54];
            v26 = v54;
            if (v25)
            {
              v27 = v24;
LABEL_32:
              recordName3 = v27;

              goto LABEL_18;
            }
          }

          else
          {
            v51 = MEMORY[0x1E696ABC0];
            recordName2 = [v9 recordName];
            v26 = [v51 fc_encryptionErrorWithCode:2 descriptionFormat:@"Cipher failed to decrypt record name: %@", recordName2];
          }

          v27 = 0;
          goto LABEL_32;
        }

        v21 = toZoneSchema[8];

        if ((v21 & 1) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_17;
      }
    }

LABEL_17:
    recordName3 = [v9 recordName];
    v26 = 0;
    goto LABEL_18;
  }

  v28 = MEMORY[0x1E695BA70];
  toRecordName2 = [v12 toRecordName];
  v55 = 0;
  v30 = [v28 isValidRecordName:toRecordName2 outError:&v55];
  v26 = v55;

  if (v30)
  {
    recordName3 = [v12 toRecordName];
  }

  else
  {
    v31 = MEMORY[0x1E696ABC0];
    toRecordName3 = [v12 toRecordName];
    v33 = [v31 fc_encryptionErrorWithCode:4 descriptionFormat:@"Record name is invalid: %@", toRecordName3];

    recordName3 = 0;
    v26 = v33;
  }

LABEL_18:
  mappingCopy = mapping;
  v35 = objc_alloc(MEMORY[0x1E695BA90]);
  v36 = v12;
  toZoneSchema2 = [v12 toZoneSchema];
  v38 = toZoneSchema2;
  v39 = v26;
  v40 = dCopy;
  if (toZoneSchema2)
  {
    v41 = *(toZoneSchema2 + 16);
  }

  else
  {
    v41 = 0;
  }

  v42 = v41;
  v43 = v9;
  zoneID = [v9 zoneID];
  ownerName = [zoneID ownerName];
  v46 = [v35 initWithZoneName:v42 ownerName:ownerName];

  v47 = v39;
  if (mappingCopy)
  {
    v48 = v39;
    *mappingCopy = v39;
  }

  v49 = 0;
  dCopy = v40;
  if (recordName3)
  {
    v9 = v43;
    v12 = v36;
    if (v46)
    {
      v49 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:recordName3 zoneID:v46];
    }
  }

  else
  {
    v9 = v43;
    v12 = v36;
  }

LABEL_27:

  return v49;
}

- (id)clientToServerRecord:(id)record inDatabase:(id)database error:(id *)error
{
  v124 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  databaseCopy = database;
  v10 = recordCopy;
  if (self)
  {
    encryptionSchema = self->_encryptionSchema;
  }

  else
  {
    encryptionSchema = 0;
  }

  v12 = encryptionSchema;
  v13 = v12;
  if (databaseCopy)
  {
    v14 = databaseCopy[5];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(FCCKPrivateDatabaseSchema *)v12 mappingFromRecord:v10 toVersion:v14];

  if ([v15 hasChanges])
  {
    v16 = [v10 copy];
    recordID = [v10 recordID];
    v18 = [(FCCKDatabaseEncryptionMiddleware *)self _encryptionKeyForClientRecordID:recordID inDatabase:databaseCopy];

    v19 = v16;
    v20 = v18;
    v21 = v15;
    v102 = v21;
    if (self)
    {
      v22 = v21;
      if (!v21 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v92 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "mapping"];
        *v116 = 136315906;
        v117 = "[FCCKDatabaseEncryptionMiddleware _encryptRecord:withEncryptionKey:mapping:error:]";
        v118 = 2080;
        v119 = "FCCKDatabaseEncryptionMiddleware.m";
        v120 = 1024;
        v121 = 339;
        v122 = 2114;
        v123 = v92;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v116, 0x26u);
      }

      selfCopy = self;
      v94 = v20;
      v95 = v15;
      errorCopy = error;
      v97 = v10;
      v98 = databaseCopy;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      allKeys = [v19 allKeys];
      v24 = [allKeys countByEnumeratingWithState:&v109 objects:v116 count:16];
      if (v24)
      {
        v25 = v24;
        v108 = 0;
        v26 = *v110;
        v100 = allKeys;
        v99 = v19;
        v103 = *v110;
        while (2)
        {
          v27 = 0;
          v104 = v25;
          do
          {
            if (*v110 != v26)
            {
              objc_enumerationMutation(allKeys);
            }

            v28 = *(*(&v109 + 1) + 8 * v27);
            toRecordSchema = [v22 toRecordSchema];
            v30 = [(FCCKRecordSchema *)toRecordSchema schemaForField:v28];

            if (v30)
            {
              if (v30[8] == 1)
              {
                v31 = v28;
                v32 = v19;
                v33 = v30;
                v34 = v33;
                if (v31)
                {
                  v107 = v33;
                  valueStore = [v32 valueStore];
                  changedKeysSet = [valueStore changedKeysSet];
                  v37 = [changedKeysSet containsObject:v31];

                  if (v37)
                  {
                    valueStore2 = [v32 valueStore];
                    changedKeysSet2 = [valueStore2 changedKeysSet];
                    [changedKeysSet2 removeObject:v31];

                    encryptedValueStore = [v32 encryptedValueStore];
                    changedKeysSet3 = [encryptedValueStore changedKeysSet];
                    [changedKeysSet3 addObject:v31];
                  }

                  valueStore3 = [v32 valueStore];
                  values = [valueStore3 values];
                  v44 = [values objectForKey:v31];

                  v105 = v44;
                  if (v44)
                  {
                    v45 = [(FCCKRecordFieldSchema *)v107 sanitizeValue:v44];
                    v46 = [objc_alloc(MEMORY[0x1E695B8E0]) initWithValue:v45];
                    v106 = v46 != 0;
                    if (v46)
                    {
                      valueStore4 = [v32 valueStore];
                      values2 = [valueStore4 values];
                      [values2 removeObjectForKey:v31];

                      encryptedValueStore2 = [v32 encryptedValueStore];
                      values3 = [encryptedValueStore2 values];
                      [values3 setObject:v46 forKey:v31];

                      v44 = 0;
                    }

                    else
                    {
                      v54 = MEMORY[0x1E696ABC0];
                      encryptedValueStore2 = [v32 recordType];
                      v44 = [v54 fc_encryptionErrorWithCode:3 descriptionFormat:@"CKRecord failed to serialize value {%@.%@, %@}", encryptedValueStore2, v31, v45];
                    }
                  }

                  else
                  {
                    v106 = 1;
                  }

                  valueStore5 = [v32 valueStore];
                  originalValues = [valueStore5 originalValues];
                  v57 = [originalValues objectForKey:v31];

                  if (v57)
                  {
                    v58 = [(FCCKRecordFieldSchema *)v107 sanitizeValue:v57];
                    objc_opt_class();
                    v101 = v57;
                    if (objc_opt_isKindOfClass())
                    {
                      valueStore6 = [v32 valueStore];
                      [valueStore6 originalValues];
                      v60 = v19;
                      v62 = v61 = v58;
                      [v62 removeObjectForKey:v31];

                      encryptedValueStore3 = [v32 encryptedValueStore];
                      originalValues2 = [encryptedValueStore3 originalValues];
                      [originalValues2 setObject:v61 forKey:v31];
                    }

                    else
                    {
                      v65 = [objc_alloc(MEMORY[0x1E695B8E0]) initWithValue:v58];
                      if (v65)
                      {
                        valueStore7 = [v32 valueStore];
                        originalValues3 = [valueStore7 originalValues];
                        [originalValues3 removeObjectForKey:v31];

                        originalValues2 = [v32 encryptedValueStore];
                        v64OriginalValues = [originalValues2 originalValues];
                        encryptedValueStore3 = v65;
                        [v64OriginalValues setObject:v65 forKey:v31];
                      }

                      else
                      {
                        encryptedValueStore3 = 0;
                        v69 = MEMORY[0x1E696ABC0];
                        originalValues2 = [v32 recordType];
                        [v69 fc_encryptionErrorWithCode:3 descriptionFormat:@"CKRecord failed to serialize original value {%@.%@, %@}", originalValues2, v31, v58];
                        v106 = 0;
                        v44 = v64OriginalValues = v44;
                      }

                      v60 = v99;
                      v61 = v58;
                    }

                    v52 = v60;

                    v57 = v101;
                    v22 = v102;
                  }

                  else
                  {
                    v52 = v19;
                    v22 = v102;
                  }

                  allKeys = v100;
                  v34 = v107;
                  v53 = v106;
                }

                else
                {
                  v52 = v19;
                  v44 = 0;
                  v53 = 1;
                }

                v70 = v44;

                v71 = v44;
                if ((v53 & 1) == 0)
                {
                  v76 = 0;
                  v10 = v97;
                  databaseCopy = v98;
                  v15 = v95;
                  v20 = v94;
                  v19 = v52;
                  error = errorCopy;
                  goto LABEL_53;
                }

                v108 = v71;
                v26 = v103;
                v25 = v104;
                v19 = v52;
              }
            }

            else
            {
              v51 = FCPrivateDataEncryptionLog;
              if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_ERROR))
              {
                v72 = v51;
                recordType = [v19 recordType];
                *buf = 138543618;
                *&buf[4] = recordType;
                v114 = 2114;
                v115 = v28;
                _os_log_error_impl(&dword_1B63EF000, v72, OS_LOG_TYPE_ERROR, "Client record field is missing from the schema: %{public}@.%{public}@", buf, 0x16u);

                v22 = v102;
              }

              [FCCKDatabaseEncryptionMiddleware _removeField:v28 fromRecord:v19];
            }

            ++v27;
          }

          while (v25 != v27);
          v25 = [allKeys countByEnumeratingWithState:&v109 objects:v116 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v108 = 0;
      }

      recordID2 = [v19 recordID];
      [v22 recordIDMapping];
      v79 = v78 = v22;
      *buf = v108;
      v20 = v94;
      v80 = [(FCCKDatabaseEncryptionMiddleware *)selfCopy _encryptedRecordIDWithOriginalRecordID:recordID2 withEncryptionKey:v94 mapping:v79 error:buf];
      v71 = *buf;

      if (v80)
      {
        v100 = v80;
        [v19 setRecordID:v80];
        toRecordSchema2 = [v78 toRecordSchema];
        v10 = v97;
        databaseCopy = v98;
        error = errorCopy;
        if (toRecordSchema2)
        {
          v82 = toRecordSchema2;
          v83 = *(toRecordSchema2 + 16);
        }

        else
        {
          v82 = 0;
          v83 = 0;
        }

        v84 = v83;
        [v19 setRecordType:v84];

        v76 = 1;
        v15 = v95;
        v34 = v82;
LABEL_53:
      }

      else
      {
        v76 = 1;
        v10 = v97;
        databaseCopy = v98;
        v15 = v95;
        error = errorCopy;
      }

      v85 = v71;
    }

    else
    {
      v71 = 0;
      v76 = 0;
    }

    v74 = v71;
    v75 = v10;
    if (v76)
    {
      v75 = v19;
    }

    if (error)
    {
      if (v74 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        v89 = objc_alloc(MEMORY[0x1E696AEC0]);
        recordType2 = [v10 recordType];
        v91 = [v89 initWithFormat:@"Failed to encrypt record of type %@ with error: %@", recordType2, v74];
        *v116 = 136315906;
        v117 = "[FCCKDatabaseEncryptionMiddleware clientToServerRecord:inDatabase:error:]";
        v118 = 2080;
        v119 = "FCCKDatabaseEncryptionMiddleware.m";
        v120 = 1024;
        v121 = 216;
        v122 = 2114;
        v123 = v91;
        _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: RecordEncryptionFailure) : %s %s:%d %{public}@", v116, 0x26u);
      }

      goto LABEL_61;
    }
  }

  else
  {
    v74 = 0;
    v75 = v10;
    if (error)
    {
LABEL_61:
      v86 = v74;
      *error = v74;
    }
  }

  v87 = *MEMORY[0x1E69E9840];

  return v75;
}

- (id)serverToClientRecord:(id)record inDatabase:(id)database error:(id *)error
{
  v114 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  databaseCopy = database;
  v10 = recordCopy;
  if (self)
  {
    encryptionSchema = self->_encryptionSchema;
  }

  else
  {
    encryptionSchema = 0;
  }

  v12 = [(FCCKPrivateDatabaseSchema *)encryptionSchema mappingFromRecord:v10 toVersion:0];
  if ([v12 hasChanges])
  {
    v13 = [v10 copy];
    recordID = [v10 recordID];
    v15 = [(FCCKDatabaseEncryptionMiddleware *)self _encryptionKeyForServerRecordID:recordID inDatabase:databaseCopy];

    v16 = v13;
    v17 = v15;
    v18 = v12;
    v92 = v16;
    selfCopy = self;
    if (self)
    {
      v87 = v17;
      v88 = v12;
      errorCopy = error;
      v90 = v10;
      v91 = databaseCopy;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      allKeys = [v16 allKeys];
      v20 = [allKeys countByEnumeratingWithState:&v99 objects:v106 count:16];
      v21 = v16;
      if (v20)
      {
        v22 = v20;
        v23 = 0;
        v24 = *v100;
        v93 = allKeys;
        v94 = *v100;
        while (2)
        {
          v25 = 0;
          v95 = v22;
          do
          {
            if (*v100 != v24)
            {
              objc_enumerationMutation(allKeys);
            }

            v26 = *(*(&v99 + 1) + 8 * v25);
            fromRecordSchema = [v18 fromRecordSchema];
            v28 = [(FCCKRecordSchema *)fromRecordSchema isFieldKnown:v26];

            if (v28)
            {
              fromRecordSchema2 = [v18 fromRecordSchema];
              v30 = [(FCCKRecordSchema *)fromRecordSchema2 isFieldEncrypted:v26];

              if (v30)
              {
                v31 = v26;
                v32 = v21;
                v33 = v32;
                if (v31)
                {
                  encryptedValueStore = [v32 encryptedValueStore];
                  changedKeysSet = [encryptedValueStore changedKeysSet];
                  v36 = [changedKeysSet containsObject:v31];

                  if (v36)
                  {
                    encryptedValueStore2 = [v33 encryptedValueStore];
                    changedKeysSet2 = [encryptedValueStore2 changedKeysSet];
                    [changedKeysSet2 removeObject:v31];

                    valueStore = [v33 valueStore];
                    changedKeysSet3 = [valueStore changedKeysSet];
                    [changedKeysSet3 addObject:v31];
                  }

                  encryptedValueStore3 = [v33 encryptedValueStore];
                  values = [encryptedValueStore3 values];
                  selfCopy = [values objectForKey:v31];

                  v96 = selfCopy;
                  v97 = v23;
                  if (selfCopy)
                  {
                    value = [selfCopy value];
                    v98 = value != 0;
                    if (value)
                    {
                      encryptedValueStore4 = [v33 encryptedValueStore];
                      values2 = [encryptedValueStore4 values];
                      [values2 removeObjectForKey:v31];

                      valueStore2 = [v33 valueStore];
                      values3 = [valueStore2 values];
                      [values3 setObject:value forKey:v31];

                      selfCopy = 0;
                    }

                    else
                    {
                      v51 = MEMORY[0x1E696ABC0];
                      valueStore2 = [v33 recordType];
                      selfCopy = [v51 fc_encryptionErrorWithCode:3 descriptionFormat:@"CKRecord failed to deserialize value {%@.%@}", valueStore2, v31, selfCopy];
                    }
                  }

                  else
                  {
                    v98 = 1;
                  }

                  encryptedValueStore5 = [v33 encryptedValueStore];
                  originalValues = [encryptedValueStore5 originalValues];
                  v54 = [originalValues objectForKey:v31];

                  if (v54)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      encryptedValueStore6 = [v33 encryptedValueStore];
                      originalValues2 = [encryptedValueStore6 originalValues];
                      [originalValues2 removeObjectForKey:v31];

                      valueStore3 = [v33 valueStore];
                      originalValues3 = [valueStore3 originalValues];
                      [originalValues3 setObject:v54 forKey:v31];
                    }

                    else
                    {
                      v59 = objc_opt_class();
                      valueStore3 = FCCheckedDynamicCast(v59, v54);
                      originalValues3 = [valueStore3 value];
                      if (originalValues3)
                      {
                        encryptedValueStore7 = [v33 encryptedValueStore];
                        originalValues4 = [encryptedValueStore7 originalValues];
                        [originalValues4 removeObjectForKey:v31];

                        valueStore4 = [v33 valueStore];
                        originalValues5 = [valueStore4 originalValues];
                        [originalValues5 setObject:originalValues3 forKey:v31];
                      }

                      else
                      {
                        v66 = MEMORY[0x1E696ABC0];
                        valueStore4 = [v33 recordType];
                        [v66 fc_encryptionErrorWithCode:3 descriptionFormat:@"CKRecord failed to deserialize original value {%@.%@}", valueStore4, v31];
                        v98 = 0;
                        selfCopy = originalValues5 = selfCopy;
                      }
                    }

                    v21 = v92;
                    allKeys = v93;
                  }

                  v23 = v97;

                  v50 = v98;
                }

                else
                {
                  selfCopy = 0;
                  v50 = 1;
                }

                v67 = selfCopy;

                v68 = selfCopy;
                if ((v50 & 1) == 0)
                {
                  v71 = 0;
                  v10 = v90;
                  databaseCopy = v91;
                  v12 = v88;
                  error = errorCopy;
                  v17 = v87;
                  goto LABEL_49;
                }

                v23 = v68;
                v24 = v94;
                v22 = v95;
              }
            }

            else
            {
              v49 = FCPrivateDataEncryptionLog;
              if (os_log_type_enabled(FCPrivateDataEncryptionLog, OS_LOG_TYPE_ERROR))
              {
                v64 = v49;
                recordType = [v21 recordType];
                *buf = 138543618;
                *&buf[4] = recordType;
                v104 = 2114;
                v105 = v26;
                _os_log_error_impl(&dword_1B63EF000, v64, OS_LOG_TYPE_ERROR, "Server record field is missing from the schema: %{public}@.%{public}@", buf, 0x16u);
              }

              [FCCKDatabaseEncryptionMiddleware _removeField:v26 fromRecord:v21];
            }

            ++v25;
          }

          while (v22 != v25);
          v22 = [allKeys countByEnumeratingWithState:&v99 objects:v106 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v23 = 0;
      }

      recordID2 = [v21 recordID];
      recordIDMapping = [v18 recordIDMapping];
      *buf = v23;
      v17 = v87;
      v74 = [(FCCKDatabaseEncryptionMiddleware *)selfCopy _decryptedRecordIDWithOriginalRecordID:recordID2 withEncryptionKey:v87 mapping:recordIDMapping error:buf];
      v68 = *buf;

      if (v74)
      {
        v93 = v74;
        [v21 setRecordID:v74];
        toRecordSchema = [v18 toRecordSchema];
        v76 = toRecordSchema;
        error = errorCopy;
        v10 = v90;
        if (toRecordSchema)
        {
          v77 = *(toRecordSchema + 16);
        }

        else
        {
          v77 = 0;
        }

        v78 = v77;
        [v21 setRecordType:v78];

        v71 = 1;
        databaseCopy = v91;
      }

      else
      {
        v93 = 0;
        v71 = 1;
        v10 = v90;
        databaseCopy = v91;
        error = errorCopy;
      }

      v12 = v88;
LABEL_49:

      v79 = v68;
    }

    else
    {
      v68 = 0;
      v71 = 0;
    }

    v69 = v68;
    v70 = v10;
    if (v71)
    {
      v70 = v92;
    }

    if (error)
    {
      if (v69 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        v83 = objc_alloc(MEMORY[0x1E696AEC0]);
        recordType2 = [v10 recordType];
        v85 = [v83 initWithFormat:@"Failed to decrypt record of type %@ with error: %@", recordType2, v69];
        *v106 = 136315906;
        v107 = "[FCCKDatabaseEncryptionMiddleware serverToClientRecord:inDatabase:error:]";
        v108 = 2080;
        v109 = "FCCKDatabaseEncryptionMiddleware.m";
        v110 = 1024;
        v111 = 245;
        v112 = 2114;
        v113 = v85;
        _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: RecordDecryptionFailure) : %s %s:%d %{public}@", v106, 0x26u);
      }

      goto LABEL_56;
    }
  }

  else
  {
    v69 = 0;
    v70 = v10;
    if (error)
    {
LABEL_56:
      v80 = v69;
      *error = v69;
    }
  }

  v81 = *MEMORY[0x1E69E9840];

  return v70;
}

- (id)clientToServerRecordZone:(id)zone inDatabase:(id)database error:(id *)error
{
  zoneCopy = zone;
  databaseCopy = database;
  zoneID = [zoneCopy zoneID];
  v11 = [(FCCKDatabaseEncryptionMiddleware *)self _serverZoneIDFromClientZoneID:zoneID database:databaseCopy error:error];

  zoneID2 = [zoneCopy zoneID];
  LOBYTE(databaseCopy) = [v11 isEqual:zoneID2];

  v13 = zoneCopy;
  if ((databaseCopy & 1) == 0)
  {
    v13 = [zoneCopy copy];

    [v13 setZoneID:v11];
  }

  if (error)
  {
    *error = 0;
  }

  return v13;
}

- (id)serverToClientRecordZone:(id)zone inDatabase:(id)database error:(id *)error
{
  zoneCopy = zone;
  zoneID = [zoneCopy zoneID];
  v16 = 0;
  v9 = [(FCCKDatabaseEncryptionMiddleware *)self _clientZoneIDFromServerZoneID:zoneID error:&v16];
  v10 = v16;

  zoneID2 = [zoneCopy zoneID];
  v12 = [v9 isEqual:zoneID2];

  v13 = zoneCopy;
  if ((v12 & 1) == 0)
  {
    v13 = [zoneCopy copy];

    [v13 setZoneID:v9];
  }

  if (error)
  {
    v14 = v10;
    *error = v10;
  }

  return v13;
}

- (id)clientToServerRecordType:(id)type withRecordID:(id)d inDatabase:(id)database error:(id *)error
{
  typeCopy = type;
  if (self)
  {
    encryptionSchema = self->_encryptionSchema;
  }

  else
  {
    encryptionSchema = 0;
  }

  v12 = encryptionSchema;
  databaseCopy = database;
  zoneID = [d zoneID];
  if (databaseCopy)
  {
    v15 = databaseCopy[5];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(FCCKPrivateDatabaseSchema *)v12 mappingFromRecordType:typeCopy inZoneID:zoneID toVersion:v15];

  v17 = typeCopy;
  if ([v16 hasChanges])
  {
    toRecordSchema = [v16 toRecordSchema];
    v19 = toRecordSchema;
    if (toRecordSchema)
    {
      v20 = *(toRecordSchema + 16);
    }

    else
    {
      v20 = 0;
    }

    v17 = v20;
  }

  if (error)
  {
    *error = 0;
  }

  return v17;
}

- (id)serverToClientRecordType:(id)type withRecordID:(id)d inDatabase:(id)database error:(id *)error
{
  typeCopy = type;
  if (self)
  {
    encryptionSchema = self->_encryptionSchema;
  }

  else
  {
    encryptionSchema = 0;
  }

  v11 = encryptionSchema;
  zoneID = [d zoneID];
  v13 = [(FCCKPrivateDatabaseSchema *)v11 mappingFromRecordType:typeCopy inZoneID:zoneID toVersion:0];

  v14 = typeCopy;
  if ([v13 hasChanges])
  {
    toRecordSchema = [v13 toRecordSchema];
    v16 = toRecordSchema;
    if (toRecordSchema)
    {
      v17 = *(toRecordSchema + 16);
    }

    else
    {
      v17 = 0;
    }

    v14 = v17;
  }

  if (error)
  {
    *error = 0;
  }

  return v14;
}

- (void)_removeField:(void *)field fromRecord:(void *)record
{
  if (field)
  {
    recordCopy = record;
    fieldCopy = field;
    valueStore = [recordCopy valueStore];
    changedKeysSet = [valueStore changedKeysSet];
    [changedKeysSet removeObject:fieldCopy];

    valueStore2 = [recordCopy valueStore];
    values = [valueStore2 values];
    [values removeObjectForKey:fieldCopy];

    encryptedValueStore = [recordCopy encryptedValueStore];
    changedKeysSet2 = [encryptedValueStore changedKeysSet];
    [changedKeysSet2 removeObject:fieldCopy];

    encryptedValueStore2 = [recordCopy encryptedValueStore];
    values2 = [encryptedValueStore2 values];
    [values2 removeObjectForKey:fieldCopy];

    valueStore3 = [recordCopy valueStore];
    originalValues = [valueStore3 originalValues];
    [originalValues removeObjectForKey:fieldCopy];

    encryptedValueStore3 = [recordCopy encryptedValueStore];

    originalValues2 = [encryptedValueStore3 originalValues];
    [originalValues2 removeObjectForKey:fieldCopy];
  }
}

@end