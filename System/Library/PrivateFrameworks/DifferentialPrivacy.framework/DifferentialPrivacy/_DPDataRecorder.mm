@interface _DPDataRecorder
- (_DPDataRecorder)initWithKey:(id)a3;
- (id)description;
@end

@implementation _DPDataRecorder

- (_DPDataRecorder)initWithKey:(id)a3
{
  v5 = a3;
  v45.receiver = self;
  v45.super_class = _DPDataRecorder;
  v6 = [(_DPDataRecorder *)&v45 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_19;
  }

  objc_storeStrong(&v6->_keyName, a3);
  v8 = [_DPKeyNames keyPropertiesForKey:v5];
  p_keyProperties = &v7->_keyProperties;
  keyProperties = v7->_keyProperties;
  v7->_keyProperties = v8;

  if (!v7->_keyProperties)
  {
    v13 = +[_DPLog framework];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(_DPDataRecorder *)v5 initWithKey:v13, v20, v21, v22, v23, v24, v25];
    }

    goto LABEL_8;
  }

  v11 = [(_DPKeyProperties *)v7->_keyProperties privacyParameter];
  [v11 doubleValue];
  v7->_privacyParameter = v12;

  if (!isInvalidEpsilon(v7->_privacyParameter))
  {
    v27 = [(_DPKeyProperties *)v7->_keyProperties possibleRange];
    v28 = [v27 range];
    v7->_range = [v28 unsignedIntegerValue];

    if (!v7->_range)
    {
      v7->_range = 200;
    }

    v7->_directUpload = [(_DPKeyProperties *)v7->_keyProperties directUpload];
    v29 = [(_DPKeyProperties *)v7->_keyProperties dataAlgorithm];
    if (v29 == 4 || v29 == 2)
    {
      privacyParameter = v7->_privacyParameter;
      v32 = [*p_keyProperties privatizationAlgorithm];
      v33 = [*p_keyProperties dataAlgorithm];
      v34 = [*p_keyProperties parameterDictionary];
      v35 = [*p_keyProperties huffmanTableClass];
      v30 = [_DPStringRandomizer stringRandomizerWithEpsilon:v32 privatizationAlgorithm:v33 dataAlgorithm:v34 algorithmParameters:v35 huffmanTableClass:privacyParameter];
    }

    else
    {
      if (v29 != 1)
      {
        goto LABEL_18;
      }

      v30 = [_DPStringRandomizer numbersRandomizerWithEpsilon:[(_DPKeyProperties *)v7->_keyProperties privatizationAlgorithm] privatizationAlgorithm:[(_DPKeyProperties *)v7->_keyProperties dataAlgorithm] dataAlgorithm:v7->_range range:v7->_privacyParameter];
    }

    randomizer = v7->_randomizer;
    v7->_randomizer = v30;

LABEL_18:
    if (!v7->_randomizer)
    {
      v38 = +[_DPLog framework];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [(_DPDataRecorder *)&v7->_keyProperties initWithKey:v38, v39, v40, v41, v42, v43, v44];
      }

      goto LABEL_9;
    }

LABEL_19:
    v26 = v7;
    goto LABEL_20;
  }

  v13 = +[_DPLog framework];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [(_DPDataRecorder *)&v7->_privacyParameter initWithKey:v13, v14, v15, v16, v17, v18, v19];
  }

LABEL_8:

LABEL_9:
  v26 = 0;
LABEL_20:

  return v26;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: { keyName=%@  keyProperties=%@ }", v5, self->_keyName, self->_keyProperties];;

  return v6;
}

- (void)initWithKey:(uint64_t)a3 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_22622D000, a2, a3, "Cannot create _randomizer for _keyProperties = %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithKey:(uint64_t)a3 .cold.2(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_22622D000, a2, a3, "Invalid epsilon = %f", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithKey:(uint64_t)a3 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_22622D000, a2, a3, "Cannot load key property for key = %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end