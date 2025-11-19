@interface FCCKDatabaseEncryptionMiddleware
- (id)_clientZoneIDFromServerZoneID:(void *)a3 error:;
- (id)_decryptedRecordIDWithOriginalRecordID:(void *)a3 withEncryptionKey:(void *)a4 mapping:(void *)a5 error:;
- (id)_encryptedRecordIDWithOriginalRecordID:(void *)a3 withEncryptionKey:(void *)a4 mapping:(void *)a5 error:;
- (id)_encryptionKeyForClientRecordID:(void *)a3 inDatabase:;
- (id)_serverZoneIDFromClientZoneID:(uint64_t)a3 database:(void *)a4 error:;
- (id)clientToServerRecord:(id)a3 inDatabase:(id)a4 error:(id *)a5;
- (id)clientToServerRecordID:(id)a3 inDatabase:(id)a4 error:(id *)a5;
- (id)clientToServerRecordType:(id)a3 withRecordID:(id)a4 inDatabase:(id)a5 error:(id *)a6;
- (id)clientToServerRecordZone:(id)a3 inDatabase:(id)a4 error:(id *)a5;
- (id)initWithEncryptionSchema:(void *)a3 recordNameCipher:;
- (id)serverToClientRecord:(id)a3 inDatabase:(id)a4 error:(id *)a5;
- (id)serverToClientRecordID:(id)a3 inDatabase:(id)a4 error:(id *)a5;
- (id)serverToClientRecordType:(id)a3 withRecordID:(id)a4 inDatabase:(id)a5 error:(id *)a6;
- (id)serverToClientRecordZone:(id)a3 inDatabase:(id)a4 error:(id *)a5;
- (int64_t)database:(id)a3 willEnqueueOperation:(id)a4 error:(id *)a5;
- (void)_encryptionKeyForServerRecordID:(void *)a3 inDatabase:;
- (void)_removeField:(void *)a1 fromRecord:(void *)a2;
@end

@implementation FCCKDatabaseEncryptionMiddleware

- (id)initWithEncryptionSchema:(void *)a3 recordNameCipher:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = FCCKDatabaseEncryptionMiddleware;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      if (!v7)
      {
        [(FCCKPrivateDatabaseSchema *)v6 enumerateZoneSchemasWithBlock:?];
      }
    }
  }

  return a1;
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

- (int64_t)database:(id)a3 willEnqueueOperation:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 || *(v7 + 10) != 1 || v7[5] > 0 || (v7[1] & 1) == 0 || ([(CKDatabaseOperation *)v8 fc_canBypassEncryptionRequirement]& 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = 0;
  }

  else
  {
    *a5 = [MEMORY[0x1E696ABC0] fc_encryptionRequiredError];
    v10 = 1;
  }

  return v10;
}

- (id)_serverZoneIDFromClientZoneID:(uint64_t)a3 database:(void *)a4 error:
{
  v7 = a2;
  v8 = v7;
  if (a1)
  {
    v9 = v7;
    v10 = *(a1 + 8);
    v11 = v10;
    if (a3)
    {
      v12 = *(a3 + 40);
    }

    else
    {
      v12 = 0;
    }

    v13 = [(FCCKPrivateDatabaseSchema *)v10 mappingFromRecordZoneID:v9 toVersion:v12];

    if ([v13 hasChanges])
    {
      v14 = objc_alloc(MEMORY[0x1E695BA90]);
      v15 = [v13 toZoneSchema];
      v16 = v15;
      if (v15)
      {
        v17 = *(v15 + 16);
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;
      v19 = [v9 ownerName];
      v20 = [v14 initWithZoneName:v18 ownerName:v19];

      v9 = v20;
    }

    if (a4)
    {
      *a4 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_clientZoneIDFromServerZoneID:(void *)a3 error:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = v5;
    v8 = [(FCCKPrivateDatabaseSchema *)*(a1 + 8) mappingFromRecordZoneID:v7 toVersion:0];
    if ([v8 hasChanges])
    {
      v9 = objc_alloc(MEMORY[0x1E695BA90]);
      v10 = [v8 toZoneSchema];
      v11 = v10;
      if (v10)
      {
        v12 = *(v10 + 16);
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      v14 = [v7 ownerName];
      v15 = [v9 initWithZoneName:v13 ownerName:v14];

      v7 = v15;
    }

    if (a3)
    {
      *a3 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)clientToServerRecordID:(id)a3 inDatabase:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(FCCKDatabaseEncryptionMiddleware *)self _encryptionKeyForClientRecordID:v9 inDatabase:v8];
  if (self)
  {
    encryptionSchema = self->_encryptionSchema;
  }

  else
  {
    encryptionSchema = 0;
  }

  v12 = encryptionSchema;
  if (v8)
  {
    v13 = v8[5];
  }

  else
  {
    v13 = 0;
  }

  v14 = [(FCCKPrivateDatabaseSchema *)v12 mappingFromRecordID:v9 toVersion:v13];

  v20 = 0;
  v15 = [(FCCKDatabaseEncryptionMiddleware *)self _encryptedRecordIDWithOriginalRecordID:v9 withEncryptionKey:v10 mapping:v14 error:&v20];

  v16 = v20;
  if (v15)
  {
    v17 = v15;
  }

  if (a5)
  {
    v18 = v16;
    *a5 = v16;
  }

  return v15;
}

- (id)_encryptionKeyForClientRecordID:(void *)a3 inDatabase:
{
  v5 = a3;
  if (a1)
  {
    v6 = *(a1 + 8);
    v7 = a2;
    if (v5)
    {
      v8 = v5[5];
    }

    else
    {
      v8 = 0;
    }

    v9 = [(FCCKPrivateDatabaseSchema *)v6 mappingFromRecordID:v7 toVersion:v8];

    v10 = [v9 toZoneSchema];
    v12 = v10;
    if (v10 && (*(v10 + 10) & 1) != 0)
    {
      if (v5)
      {
        v13 = 56;
LABEL_10:
        Property = objc_getProperty(v5, v11, v13, 1);
LABEL_11:
        v15 = Property;

        goto LABEL_12;
      }
    }

    else if (v5)
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

- (id)_encryptedRecordIDWithOriginalRecordID:(void *)a3 withEncryptionKey:(void *)a4 mapping:(void *)a5 error:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (!a1)
  {
    v49 = 0;
    goto LABEL_27;
  }

  v13 = [v11 toRecordName];
  v14 = [v12 fromRecordName];
  v15 = [v13 isEqualToString:v14];

  if (v15)
  {
    v16 = [v12 toZoneSchema];
    v17 = [v12 toRecordName];
    if (!v16 || ([v16[4] containsObject:v17] & 1) == 0)
    {
      v18 = [v12 toZoneSchema];
      v19 = v18;
      if (v18 && (v18[8] & 1) != 0)
      {
        v20 = [v12 fromZoneSchema];
        if (!v20)
        {

LABEL_9:
          v22 = *(a1 + 16);
          v23 = [v9 recordName];
          v24 = [v22 encryptRecordName:v23 withKey:v10];

          if (v24)
          {
            v54 = 0;
            v25 = [MEMORY[0x1E695BA70] isValidRecordName:v24 outError:&v54];
            v26 = v54;
            if (v25)
            {
              v27 = v24;
LABEL_32:
              v53 = v27;

              goto LABEL_18;
            }
          }

          else
          {
            v51 = MEMORY[0x1E696ABC0];
            v52 = [v9 recordName];
            v26 = [v51 fc_encryptionErrorWithCode:2 descriptionFormat:@"Cipher failed to encrypt record name: %@", v52];
          }

          v27 = 0;
          goto LABEL_32;
        }

        v21 = v20[8];

        if ((v21 & 1) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_17;
      }
    }

LABEL_17:
    v53 = [v9 recordName];
    v26 = 0;
    goto LABEL_18;
  }

  v28 = MEMORY[0x1E695BA70];
  v29 = [v12 toRecordName];
  v55 = 0;
  v30 = [v28 isValidRecordName:v29 outError:&v55];
  v26 = v55;

  if (v30)
  {
    v53 = [v12 toRecordName];
  }

  else
  {
    v31 = MEMORY[0x1E696ABC0];
    v32 = [v12 toRecordName];
    v33 = [v31 fc_encryptionErrorWithCode:4 descriptionFormat:@"Record name is invalid: %@", v32];

    v53 = 0;
    v26 = v33;
  }

LABEL_18:
  v34 = a5;
  v35 = objc_alloc(MEMORY[0x1E695BA90]);
  v36 = v12;
  v37 = [v12 toZoneSchema];
  v38 = v37;
  v39 = v26;
  v40 = v10;
  if (v37)
  {
    v41 = *(v37 + 16);
  }

  else
  {
    v41 = 0;
  }

  v42 = v41;
  v43 = v9;
  v44 = [v9 zoneID];
  v45 = [v44 ownerName];
  v46 = [v35 initWithZoneName:v42 ownerName:v45];

  v47 = v39;
  if (v34)
  {
    v48 = v39;
    *v34 = v39;
  }

  v49 = 0;
  v10 = v40;
  if (v53)
  {
    v9 = v43;
    v12 = v36;
    if (v46)
    {
      v49 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v53 zoneID:v46];
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

- (id)serverToClientRecordID:(id)a3 inDatabase:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(FCCKDatabaseEncryptionMiddleware *)self _encryptionKeyForServerRecordID:v8 inDatabase:a4];
  if (self)
  {
    encryptionSchema = self->_encryptionSchema;
  }

  else
  {
    encryptionSchema = 0;
  }

  v11 = [(FCCKPrivateDatabaseSchema *)encryptionSchema mappingFromRecordID:v8 toVersion:0];
  v17 = 0;
  v12 = [(FCCKDatabaseEncryptionMiddleware *)self _decryptedRecordIDWithOriginalRecordID:v8 withEncryptionKey:v9 mapping:v11 error:&v17];

  v13 = v17;
  if (v12)
  {
    v14 = v12;
  }

  if (a5)
  {
    v15 = v13;
    *a5 = v13;
  }

  return v12;
}

- (void)_encryptionKeyForServerRecordID:(void *)a3 inDatabase:
{
  v5 = a3;
  if (a1)
  {
    v6 = [(FCCKPrivateDatabaseSchema *)a1[1] schemaForZoneContainingRecordID:a2];
    v8 = v6;
    if (v6 && (*(v6 + 10) & 1) != 0)
    {
      if (v5)
      {
        v9 = 56;
LABEL_8:
        Property = objc_getProperty(v5, v7, v9, 1);
LABEL_9:
        a1 = Property;

        goto LABEL_10;
      }
    }

    else if (v5)
    {
      v9 = 48;
      goto LABEL_8;
    }

    Property = 0;
    goto LABEL_9;
  }

LABEL_10:

  return a1;
}

- (id)_decryptedRecordIDWithOriginalRecordID:(void *)a3 withEncryptionKey:(void *)a4 mapping:(void *)a5 error:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (!a1)
  {
    v49 = 0;
    goto LABEL_27;
  }

  v13 = [v11 toRecordName];
  v14 = [v12 fromRecordName];
  v15 = [v13 isEqualToString:v14];

  if (v15)
  {
    v16 = [v12 fromZoneSchema];
    v17 = [v12 fromRecordName];
    if (!v16 || ([v16[4] containsObject:v17] & 1) == 0)
    {
      v18 = [v12 fromZoneSchema];
      v19 = v18;
      if (v18 && (v18[8] & 1) != 0)
      {
        v20 = [v12 toZoneSchema];
        if (!v20)
        {

LABEL_9:
          v22 = *(a1 + 16);
          v23 = [v9 recordName];
          v24 = [v22 decryptRecordName:v23 withKey:v10];

          if (v24)
          {
            v54 = 0;
            v25 = [MEMORY[0x1E695BA70] isValidRecordName:v24 outError:&v54];
            v26 = v54;
            if (v25)
            {
              v27 = v24;
LABEL_32:
              v53 = v27;

              goto LABEL_18;
            }
          }

          else
          {
            v51 = MEMORY[0x1E696ABC0];
            v52 = [v9 recordName];
            v26 = [v51 fc_encryptionErrorWithCode:2 descriptionFormat:@"Cipher failed to decrypt record name: %@", v52];
          }

          v27 = 0;
          goto LABEL_32;
        }

        v21 = v20[8];

        if ((v21 & 1) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_17;
      }
    }

LABEL_17:
    v53 = [v9 recordName];
    v26 = 0;
    goto LABEL_18;
  }

  v28 = MEMORY[0x1E695BA70];
  v29 = [v12 toRecordName];
  v55 = 0;
  v30 = [v28 isValidRecordName:v29 outError:&v55];
  v26 = v55;

  if (v30)
  {
    v53 = [v12 toRecordName];
  }

  else
  {
    v31 = MEMORY[0x1E696ABC0];
    v32 = [v12 toRecordName];
    v33 = [v31 fc_encryptionErrorWithCode:4 descriptionFormat:@"Record name is invalid: %@", v32];

    v53 = 0;
    v26 = v33;
  }

LABEL_18:
  v34 = a5;
  v35 = objc_alloc(MEMORY[0x1E695BA90]);
  v36 = v12;
  v37 = [v12 toZoneSchema];
  v38 = v37;
  v39 = v26;
  v40 = v10;
  if (v37)
  {
    v41 = *(v37 + 16);
  }

  else
  {
    v41 = 0;
  }

  v42 = v41;
  v43 = v9;
  v44 = [v9 zoneID];
  v45 = [v44 ownerName];
  v46 = [v35 initWithZoneName:v42 ownerName:v45];

  v47 = v39;
  if (v34)
  {
    v48 = v39;
    *v34 = v39;
  }

  v49 = 0;
  v10 = v40;
  if (v53)
  {
    v9 = v43;
    v12 = v36;
    if (v46)
    {
      v49 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:v53 zoneID:v46];
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

- (id)clientToServerRecord:(id)a3 inDatabase:(id)a4 error:(id *)a5
{
  v124 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v8;
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
  if (v9)
  {
    v14 = v9[5];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(FCCKPrivateDatabaseSchema *)v12 mappingFromRecord:v10 toVersion:v14];

  if ([v15 hasChanges])
  {
    v16 = [v10 copy];
    v17 = [v10 recordID];
    v18 = [(FCCKDatabaseEncryptionMiddleware *)self _encryptionKeyForClientRecordID:v17 inDatabase:v9];

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

      v93 = self;
      v94 = v20;
      v95 = v15;
      v96 = a5;
      v97 = v10;
      v98 = v9;
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v23 = [v19 allKeys];
      v24 = [v23 countByEnumeratingWithState:&v109 objects:v116 count:16];
      if (v24)
      {
        v25 = v24;
        v108 = 0;
        v26 = *v110;
        v100 = v23;
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
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v109 + 1) + 8 * v27);
            v29 = [v22 toRecordSchema];
            v30 = [(FCCKRecordSchema *)v29 schemaForField:v28];

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
                  v35 = [v32 valueStore];
                  v36 = [v35 changedKeysSet];
                  v37 = [v36 containsObject:v31];

                  if (v37)
                  {
                    v38 = [v32 valueStore];
                    v39 = [v38 changedKeysSet];
                    [v39 removeObject:v31];

                    v40 = [v32 encryptedValueStore];
                    v41 = [v40 changedKeysSet];
                    [v41 addObject:v31];
                  }

                  v42 = [v32 valueStore];
                  v43 = [v42 values];
                  v44 = [v43 objectForKey:v31];

                  v105 = v44;
                  if (v44)
                  {
                    v45 = [(FCCKRecordFieldSchema *)v107 sanitizeValue:v44];
                    v46 = [objc_alloc(MEMORY[0x1E695B8E0]) initWithValue:v45];
                    v106 = v46 != 0;
                    if (v46)
                    {
                      v47 = [v32 valueStore];
                      v48 = [v47 values];
                      [v48 removeObjectForKey:v31];

                      v49 = [v32 encryptedValueStore];
                      v50 = [v49 values];
                      [v50 setObject:v46 forKey:v31];

                      v44 = 0;
                    }

                    else
                    {
                      v54 = MEMORY[0x1E696ABC0];
                      v49 = [v32 recordType];
                      v44 = [v54 fc_encryptionErrorWithCode:3 descriptionFormat:@"CKRecord failed to serialize value {%@.%@, %@}", v49, v31, v45];
                    }
                  }

                  else
                  {
                    v106 = 1;
                  }

                  v55 = [v32 valueStore];
                  v56 = [v55 originalValues];
                  v57 = [v56 objectForKey:v31];

                  if (v57)
                  {
                    v58 = [(FCCKRecordFieldSchema *)v107 sanitizeValue:v57];
                    objc_opt_class();
                    v101 = v57;
                    if (objc_opt_isKindOfClass())
                    {
                      v59 = [v32 valueStore];
                      [v59 originalValues];
                      v60 = v19;
                      v62 = v61 = v58;
                      [v62 removeObjectForKey:v31];

                      v63 = [v32 encryptedValueStore];
                      v64 = [v63 originalValues];
                      [v64 setObject:v61 forKey:v31];
                    }

                    else
                    {
                      v65 = [objc_alloc(MEMORY[0x1E695B8E0]) initWithValue:v58];
                      if (v65)
                      {
                        v66 = [v32 valueStore];
                        v67 = [v66 originalValues];
                        [v67 removeObjectForKey:v31];

                        v64 = [v32 encryptedValueStore];
                        v68 = [v64 originalValues];
                        v63 = v65;
                        [v68 setObject:v65 forKey:v31];
                      }

                      else
                      {
                        v63 = 0;
                        v69 = MEMORY[0x1E696ABC0];
                        v64 = [v32 recordType];
                        [v69 fc_encryptionErrorWithCode:3 descriptionFormat:@"CKRecord failed to serialize original value {%@.%@, %@}", v64, v31, v58];
                        v106 = 0;
                        v44 = v68 = v44;
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

                  v23 = v100;
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
                  v9 = v98;
                  v15 = v95;
                  v20 = v94;
                  v19 = v52;
                  a5 = v96;
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
                v73 = [v19 recordType];
                *buf = 138543618;
                *&buf[4] = v73;
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
          v25 = [v23 countByEnumeratingWithState:&v109 objects:v116 count:16];
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

      v77 = [v19 recordID];
      [v22 recordIDMapping];
      v79 = v78 = v22;
      *buf = v108;
      v20 = v94;
      v80 = [(FCCKDatabaseEncryptionMiddleware *)v93 _encryptedRecordIDWithOriginalRecordID:v77 withEncryptionKey:v94 mapping:v79 error:buf];
      v71 = *buf;

      if (v80)
      {
        v100 = v80;
        [v19 setRecordID:v80];
        v81 = [v78 toRecordSchema];
        v10 = v97;
        v9 = v98;
        a5 = v96;
        if (v81)
        {
          v82 = v81;
          v83 = *(v81 + 16);
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
        v9 = v98;
        v15 = v95;
        a5 = v96;
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

    if (a5)
    {
      if (v74 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        v89 = objc_alloc(MEMORY[0x1E696AEC0]);
        v90 = [v10 recordType];
        v91 = [v89 initWithFormat:@"Failed to encrypt record of type %@ with error: %@", v90, v74];
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
    if (a5)
    {
LABEL_61:
      v86 = v74;
      *a5 = v74;
    }
  }

  v87 = *MEMORY[0x1E69E9840];

  return v75;
}

- (id)serverToClientRecord:(id)a3 inDatabase:(id)a4 error:(id *)a5
{
  v114 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v8;
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
    v14 = [v10 recordID];
    v15 = [(FCCKDatabaseEncryptionMiddleware *)self _encryptionKeyForServerRecordID:v14 inDatabase:v9];

    v16 = v13;
    v17 = v15;
    v18 = v12;
    v92 = v16;
    v86 = self;
    if (self)
    {
      v87 = v17;
      v88 = v12;
      v89 = a5;
      v90 = v10;
      v91 = v9;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v19 = [v16 allKeys];
      v20 = [v19 countByEnumeratingWithState:&v99 objects:v106 count:16];
      v21 = v16;
      if (v20)
      {
        v22 = v20;
        v23 = 0;
        v24 = *v100;
        v93 = v19;
        v94 = *v100;
        while (2)
        {
          v25 = 0;
          v95 = v22;
          do
          {
            if (*v100 != v24)
            {
              objc_enumerationMutation(v19);
            }

            v26 = *(*(&v99 + 1) + 8 * v25);
            v27 = [v18 fromRecordSchema];
            v28 = [(FCCKRecordSchema *)v27 isFieldKnown:v26];

            if (v28)
            {
              v29 = [v18 fromRecordSchema];
              v30 = [(FCCKRecordSchema *)v29 isFieldEncrypted:v26];

              if (v30)
              {
                v31 = v26;
                v32 = v21;
                v33 = v32;
                if (v31)
                {
                  v34 = [v32 encryptedValueStore];
                  v35 = [v34 changedKeysSet];
                  v36 = [v35 containsObject:v31];

                  if (v36)
                  {
                    v37 = [v33 encryptedValueStore];
                    v38 = [v37 changedKeysSet];
                    [v38 removeObject:v31];

                    v39 = [v33 valueStore];
                    v40 = [v39 changedKeysSet];
                    [v40 addObject:v31];
                  }

                  v41 = [v33 encryptedValueStore];
                  v42 = [v41 values];
                  v43 = [v42 objectForKey:v31];

                  v96 = v43;
                  v97 = v23;
                  if (v43)
                  {
                    v44 = [v43 value];
                    v98 = v44 != 0;
                    if (v44)
                    {
                      v45 = [v33 encryptedValueStore];
                      v46 = [v45 values];
                      [v46 removeObjectForKey:v31];

                      v47 = [v33 valueStore];
                      v48 = [v47 values];
                      [v48 setObject:v44 forKey:v31];

                      v43 = 0;
                    }

                    else
                    {
                      v51 = MEMORY[0x1E696ABC0];
                      v47 = [v33 recordType];
                      v43 = [v51 fc_encryptionErrorWithCode:3 descriptionFormat:@"CKRecord failed to deserialize value {%@.%@}", v47, v31, v86];
                    }
                  }

                  else
                  {
                    v98 = 1;
                  }

                  v52 = [v33 encryptedValueStore];
                  v53 = [v52 originalValues];
                  v54 = [v53 objectForKey:v31];

                  if (v54)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v55 = [v33 encryptedValueStore];
                      v56 = [v55 originalValues];
                      [v56 removeObjectForKey:v31];

                      v57 = [v33 valueStore];
                      v58 = [v57 originalValues];
                      [v58 setObject:v54 forKey:v31];
                    }

                    else
                    {
                      v59 = objc_opt_class();
                      v57 = FCCheckedDynamicCast(v59, v54);
                      v58 = [v57 value];
                      if (v58)
                      {
                        v60 = [v33 encryptedValueStore];
                        v61 = [v60 originalValues];
                        [v61 removeObjectForKey:v31];

                        v62 = [v33 valueStore];
                        v63 = [v62 originalValues];
                        [v63 setObject:v58 forKey:v31];
                      }

                      else
                      {
                        v66 = MEMORY[0x1E696ABC0];
                        v62 = [v33 recordType];
                        [v66 fc_encryptionErrorWithCode:3 descriptionFormat:@"CKRecord failed to deserialize original value {%@.%@}", v62, v31];
                        v98 = 0;
                        v43 = v63 = v43;
                      }
                    }

                    v21 = v92;
                    v19 = v93;
                  }

                  v23 = v97;

                  v50 = v98;
                }

                else
                {
                  v43 = 0;
                  v50 = 1;
                }

                v67 = v43;

                v68 = v43;
                if ((v50 & 1) == 0)
                {
                  v71 = 0;
                  v10 = v90;
                  v9 = v91;
                  v12 = v88;
                  a5 = v89;
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
                v65 = [v21 recordType];
                *buf = 138543618;
                *&buf[4] = v65;
                v104 = 2114;
                v105 = v26;
                _os_log_error_impl(&dword_1B63EF000, v64, OS_LOG_TYPE_ERROR, "Server record field is missing from the schema: %{public}@.%{public}@", buf, 0x16u);
              }

              [FCCKDatabaseEncryptionMiddleware _removeField:v26 fromRecord:v21];
            }

            ++v25;
          }

          while (v22 != v25);
          v22 = [v19 countByEnumeratingWithState:&v99 objects:v106 count:16];
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

      v72 = [v21 recordID];
      v73 = [v18 recordIDMapping];
      *buf = v23;
      v17 = v87;
      v74 = [(FCCKDatabaseEncryptionMiddleware *)v86 _decryptedRecordIDWithOriginalRecordID:v72 withEncryptionKey:v87 mapping:v73 error:buf];
      v68 = *buf;

      if (v74)
      {
        v93 = v74;
        [v21 setRecordID:v74];
        v75 = [v18 toRecordSchema];
        v76 = v75;
        a5 = v89;
        v10 = v90;
        if (v75)
        {
          v77 = *(v75 + 16);
        }

        else
        {
          v77 = 0;
        }

        v78 = v77;
        [v21 setRecordType:v78];

        v71 = 1;
        v9 = v91;
      }

      else
      {
        v93 = 0;
        v71 = 1;
        v10 = v90;
        v9 = v91;
        a5 = v89;
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

    if (a5)
    {
      if (v69 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        v83 = objc_alloc(MEMORY[0x1E696AEC0]);
        v84 = [v10 recordType];
        v85 = [v83 initWithFormat:@"Failed to decrypt record of type %@ with error: %@", v84, v69];
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
    if (a5)
    {
LABEL_56:
      v80 = v69;
      *a5 = v69;
    }
  }

  v81 = *MEMORY[0x1E69E9840];

  return v70;
}

- (id)clientToServerRecordZone:(id)a3 inDatabase:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 zoneID];
  v11 = [(FCCKDatabaseEncryptionMiddleware *)self _serverZoneIDFromClientZoneID:v10 database:v9 error:a5];

  v12 = [v8 zoneID];
  LOBYTE(v9) = [v11 isEqual:v12];

  v13 = v8;
  if ((v9 & 1) == 0)
  {
    v13 = [v8 copy];

    [v13 setZoneID:v11];
  }

  if (a5)
  {
    *a5 = 0;
  }

  return v13;
}

- (id)serverToClientRecordZone:(id)a3 inDatabase:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [v7 zoneID];
  v16 = 0;
  v9 = [(FCCKDatabaseEncryptionMiddleware *)self _clientZoneIDFromServerZoneID:v8 error:&v16];
  v10 = v16;

  v11 = [v7 zoneID];
  v12 = [v9 isEqual:v11];

  v13 = v7;
  if ((v12 & 1) == 0)
  {
    v13 = [v7 copy];

    [v13 setZoneID:v9];
  }

  if (a5)
  {
    v14 = v10;
    *a5 = v10;
  }

  return v13;
}

- (id)clientToServerRecordType:(id)a3 withRecordID:(id)a4 inDatabase:(id)a5 error:(id *)a6
{
  v10 = a3;
  if (self)
  {
    encryptionSchema = self->_encryptionSchema;
  }

  else
  {
    encryptionSchema = 0;
  }

  v12 = encryptionSchema;
  v13 = a5;
  v14 = [a4 zoneID];
  if (v13)
  {
    v15 = v13[5];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(FCCKPrivateDatabaseSchema *)v12 mappingFromRecordType:v10 inZoneID:v14 toVersion:v15];

  v17 = v10;
  if ([v16 hasChanges])
  {
    v18 = [v16 toRecordSchema];
    v19 = v18;
    if (v18)
    {
      v20 = *(v18 + 16);
    }

    else
    {
      v20 = 0;
    }

    v17 = v20;
  }

  if (a6)
  {
    *a6 = 0;
  }

  return v17;
}

- (id)serverToClientRecordType:(id)a3 withRecordID:(id)a4 inDatabase:(id)a5 error:(id *)a6
{
  v9 = a3;
  if (self)
  {
    encryptionSchema = self->_encryptionSchema;
  }

  else
  {
    encryptionSchema = 0;
  }

  v11 = encryptionSchema;
  v12 = [a4 zoneID];
  v13 = [(FCCKPrivateDatabaseSchema *)v11 mappingFromRecordType:v9 inZoneID:v12 toVersion:0];

  v14 = v9;
  if ([v13 hasChanges])
  {
    v15 = [v13 toRecordSchema];
    v16 = v15;
    if (v15)
    {
      v17 = *(v15 + 16);
    }

    else
    {
      v17 = 0;
    }

    v14 = v17;
  }

  if (a6)
  {
    *a6 = 0;
  }

  return v14;
}

- (void)_removeField:(void *)a1 fromRecord:(void *)a2
{
  if (a1)
  {
    v4 = a2;
    v5 = a1;
    v6 = [v4 valueStore];
    v7 = [v6 changedKeysSet];
    [v7 removeObject:v5];

    v8 = [v4 valueStore];
    v9 = [v8 values];
    [v9 removeObjectForKey:v5];

    v10 = [v4 encryptedValueStore];
    v11 = [v10 changedKeysSet];
    [v11 removeObject:v5];

    v12 = [v4 encryptedValueStore];
    v13 = [v12 values];
    [v13 removeObjectForKey:v5];

    v14 = [v4 valueStore];
    v15 = [v14 originalValues];
    [v15 removeObjectForKey:v5];

    v17 = [v4 encryptedValueStore];

    v16 = [v17 originalValues];
    [v16 removeObjectForKey:v5];
  }
}

@end