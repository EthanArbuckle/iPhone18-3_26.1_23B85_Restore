@interface CRKSecureCodedUserDefaultsObject
- (BOOL)setValue:(id)value error:(id *)error;
- (CRKSecureCodedUserDefaultsObject)initWithKey:(id)key classes:(id)classes;
- (CRKSecureCodedUserDefaultsObject)initWithStore:(id)store key:(id)key classes:(id)classes;
- (id)value;
- (id)valueWithError:(id *)error;
- (void)registerDefaultValue:(id)value;
- (void)setValue:(id)value;
- (void)value;
@end

@implementation CRKSecureCodedUserDefaultsObject

- (CRKSecureCodedUserDefaultsObject)initWithKey:(id)key classes:(id)classes
{
  v6 = MEMORY[0x277CBEBD0];
  classesCopy = classes;
  keyCopy = key;
  standardUserDefaults = [v6 standardUserDefaults];
  v10 = [(CRKSecureCodedUserDefaultsObject *)self initWithStore:standardUserDefaults key:keyCopy classes:classesCopy];

  return v10;
}

- (CRKSecureCodedUserDefaultsObject)initWithStore:(id)store key:(id)key classes:(id)classes
{
  classesCopy = classes;
  v13.receiver = self;
  v13.super_class = CRKSecureCodedUserDefaultsObject;
  v9 = [(CRKUserDefaultsObject *)&v13 initWithStore:store key:key];
  if (v9)
  {
    v10 = [classesCopy copy];
    classes = v9->_classes;
    v9->_classes = v10;
  }

  return v9;
}

- (id)valueWithError:(id *)error
{
  v10.receiver = self;
  v10.super_class = CRKSecureCodedUserDefaultsObject;
  value = [(CRKUserDefaultsObject *)&v10 value];
  if (value)
  {
    v6 = MEMORY[0x277CCAAC8];
    classes = [(CRKSecureCodedUserDefaultsObject *)self classes];
    v8 = [v6 cat_unarchiveObjectOfClasses:classes withData:value error:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)setValue:(id)value error:(id *)error
{
  valueCopy = value;
  if (valueCopy)
  {
    v7 = [MEMORY[0x277CCAAB0] cat_archivedDataWithRootObject:valueCopy error:error];
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

- (void)setValue:(id)value
{
  v7 = 0;
  v4 = [(CRKSecureCodedUserDefaultsObject *)self setValue:value error:&v7];
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

- (void)registerDefaultValue:(id)value
{
  v8 = 0;
  v4 = [MEMORY[0x277CCAAB0] cat_archivedDataWithRootObject:value error:&v8];
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
  v3 = [self key];
  verboseDescription = [a2 verboseDescription];
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