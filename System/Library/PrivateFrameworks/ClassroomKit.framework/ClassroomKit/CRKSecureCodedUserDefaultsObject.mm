@interface CRKSecureCodedUserDefaultsObject
- (BOOL)setValue:(id)a3 error:(id *)a4;
- (CRKSecureCodedUserDefaultsObject)initWithKey:(id)a3 classes:(id)a4;
- (CRKSecureCodedUserDefaultsObject)initWithStore:(id)a3 key:(id)a4 classes:(id)a5;
- (id)value;
- (id)valueWithError:(id *)a3;
- (void)registerDefaultValue:(id)a3;
- (void)setValue:(id)a3;
- (void)value;
@end

@implementation CRKSecureCodedUserDefaultsObject

- (CRKSecureCodedUserDefaultsObject)initWithKey:(id)a3 classes:(id)a4
{
  v6 = MEMORY[0x277CBEBD0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 standardUserDefaults];
  v10 = [(CRKSecureCodedUserDefaultsObject *)self initWithStore:v9 key:v8 classes:v7];

  return v10;
}

- (CRKSecureCodedUserDefaultsObject)initWithStore:(id)a3 key:(id)a4 classes:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = CRKSecureCodedUserDefaultsObject;
  v9 = [(CRKUserDefaultsObject *)&v13 initWithStore:a3 key:a4];
  if (v9)
  {
    v10 = [v8 copy];
    classes = v9->_classes;
    v9->_classes = v10;
  }

  return v9;
}

- (id)valueWithError:(id *)a3
{
  v10.receiver = self;
  v10.super_class = CRKSecureCodedUserDefaultsObject;
  v5 = [(CRKUserDefaultsObject *)&v10 value];
  if (v5)
  {
    v6 = MEMORY[0x277CCAAC8];
    v7 = [(CRKSecureCodedUserDefaultsObject *)self classes];
    v8 = [v6 cat_unarchiveObjectOfClasses:v7 withData:v5 error:a3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)setValue:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [MEMORY[0x277CCAAB0] cat_archivedDataWithRootObject:v6 error:a4];
    if (!v7)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v8 = v7;
    v12.receiver = self;
    v12.super_class = CRKSecureCodedUserDefaultsObject;
    [(CRKUserDefaultsObject *)&v12 setValue:v7];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CRKSecureCodedUserDefaultsObject;
    [(CRKUserDefaultsObject *)&v11 setValue:0];
  }

  v9 = 1;
LABEL_7:

  return v9;
}

- (id)value
{
  v8 = 0;
  v3 = [(CRKSecureCodedUserDefaultsObject *)self valueWithError:&v8];
  v4 = v8;
  v5 = v4;
  if (!v3 && v4)
  {
    v6 = _CRKLogGeneral_19();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CRKSecureCodedUserDefaultsObject *)self value];
    }
  }

  return v3;
}

- (void)setValue:(id)a3
{
  v7 = 0;
  v4 = [(CRKSecureCodedUserDefaultsObject *)self setValue:a3 error:&v7];
  v5 = v7;
  if (!v4)
  {
    v6 = _CRKLogGeneral_19();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CRKSecureCodedUserDefaultsObject *)self setValue:v5];
    }
  }
}

- (void)registerDefaultValue:(id)a3
{
  v8 = 0;
  v4 = [MEMORY[0x277CCAAB0] cat_archivedDataWithRootObject:a3 error:&v8];
  v5 = v8;
  if (v4)
  {
    v7.receiver = self;
    v7.super_class = CRKSecureCodedUserDefaultsObject;
    [(CRKUserDefaultsObject *)&v7 registerDefaultValue:v4];
  }

  else
  {
    v6 = _CRKLogGeneral_19();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CRKSecureCodedUserDefaultsObject *)self setValue:v5];
    }
  }
}

- (void)value
{
  v3 = [a1 key];
  v4 = [a2 verboseDescription];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_2(&dword_243550000, v5, v6, "Failed to deserialize value for key %{public}@: %{public}@", v7, v8, v9, v10, v11);
}

- (void)setValue:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = [a1 key];
  v4 = [a2 verboseDescription];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_2(&dword_243550000, v5, v6, "Failed to serialize value for key %{public}@: %{public}@", v7, v8, v9, v10, v11);
}

@end