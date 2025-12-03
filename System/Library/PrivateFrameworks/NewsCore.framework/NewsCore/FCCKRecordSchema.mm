@interface FCCKRecordSchema
+ (FCCKRecordSchema)recordWithType:(void *)type fields:;
- (BOOL)isEqual:(id)equal;
- (BOOL)isFieldKnown:(uint64_t)known;
- (FCCKRecordSchema)init;
- (id)allEncryptedFieldNames;
- (id)allUnencryptedFieldNames;
- (id)schemaForField:(id *)field;
- (uint64_t)isFieldEncrypted:(uint64_t)encrypted;
- (unint64_t)hash;
@end

@implementation FCCKRecordSchema

+ (FCCKRecordSchema)recordWithType:(void *)type fields:
{
  v28 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v5 = a2;
  objc_opt_self();
  v6 = [FCCKRecordSchema alloc];
  v7 = v5;
  v8 = typeCopy;
  if (v6)
  {
    v26.receiver = v6;
    v26.super_class = FCCKRecordSchema;
    v9 = objc_msgSendSuper2(&v26, sel_init);
    v6 = v9;
    if (v9)
    {
      objc_storeStrong(&v9->_recordType, a2);
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v11 = v8;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        do
        {
          v15 = 0;
          do
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v22 + 1) + 8 * v15);
            if (v16)
            {
              v17 = *(v16 + 16);
            }

            else
            {
              v17 = 0;
            }

            [(NSDictionary *)dictionary setObject:v16 forKeyedSubscript:v17, v22];
            ++v15;
          }

          while (v13 != v15);
          v18 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
          v13 = v18;
        }

        while (v18);
      }

      fieldSchemasByName = v6->_fieldSchemasByName;
      v6->_fieldSchemasByName = dictionary;
    }
  }

  v20 = *MEMORY[0x1E69E9840];

  return v6;
}

- (FCCKRecordSchema)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCCKRecordSchema init]";
    v10 = 2080;
    v11 = "FCCKRecordSchema.m";
    v12 = 1024;
    v13 = 129;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCCKRecordSchema init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = v6;
    if (self)
    {
      recordType = self->_recordType;
    }

    else
    {
      recordType = 0;
    }

    v9 = recordType;
    v10 = v7[2];
    if ([(NSString *)v9 isEqualToString:v10])
    {
      v11 = [(NSDictionary *)self->_fieldSchemasByName isEqualToDictionary:v7[1]];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  if (self)
  {
    recordType = self->_recordType;
  }

  else
  {
    recordType = 0;
  }

  v4 = recordType;
  v5 = [(NSString *)v4 hash];
  v6 = [(NSDictionary *)self->_fieldSchemasByName hash];

  return v6 ^ v5;
}

- (id)allEncryptedFieldNames
{
  if (self)
  {
    allValues = [*(self + 8) allValues];
    v2 = [allValues fc_arrayByTransformingWithBlock:&__block_literal_global_40_0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id __42__FCCKRecordSchema_allEncryptedFieldNames__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2 && *(v2 + 8) == 1)
  {
    v4 = v2[2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)allUnencryptedFieldNames
{
  if (self)
  {
    allValues = [*(self + 8) allValues];
    v2 = [allValues fc_arrayByTransformingWithBlock:&__block_literal_global_42_0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id __44__FCCKRecordSchema_allUnencryptedFieldNames__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (*(v2 + 8))
    {
      v4 = 0;
      goto LABEL_6;
    }

    v5 = *(v2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v4 = v5;
LABEL_6:

  return v4;
}

- (id)schemaForField:(id *)field
{
  if (field)
  {
    field = [field[1] objectForKeyedSubscript:a2];
    v2 = vars8;
  }

  return field;
}

- (BOOL)isFieldKnown:(uint64_t)known
{
  if (!known)
  {
    return 0;
  }

  v2 = [*(known + 8) objectForKeyedSubscript:a2];
  v3 = v2 != 0;

  return v3;
}

- (uint64_t)isFieldEncrypted:(uint64_t)encrypted
{
  if (encrypted)
  {
    v2 = [*(encrypted + 8) objectForKeyedSubscript:a2];
    if (v2)
    {
      v3 = v2[8];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

@end