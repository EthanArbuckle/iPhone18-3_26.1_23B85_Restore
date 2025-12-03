@interface _DPDataRecorder
- (_DPDataRecorder)initWithKey:(id)key;
- (id)description;
@end

@implementation _DPDataRecorder

- (_DPDataRecorder)initWithKey:(id)key
{
  keyCopy = key;
  v45.receiver = self;
  v45.super_class = _DPDataRecorder;
  v6 = [(_DPDataRecorder *)&v45 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_19;
  }

  objc_storeStrong(&v6->_keyName, key);
  v8 = [_DPKeyNames keyPropertiesForKey:keyCopy];
  p_keyProperties = &v7->_keyProperties;
  keyProperties = v7->_keyProperties;
  v7->_keyProperties = v8;

  if (!v7->_keyProperties)
  {
    v13 = +[_DPLog framework];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(_DPDataRecorder *)keyCopy initWithKey:v13, v20, v21, v22, v23, v24, v25];
    }

    goto LABEL_8;
  }

  privacyParameter = [(_DPKeyProperties *)v7->_keyProperties privacyParameter];
  [privacyParameter doubleValue];
  v7->_privacyParameter = v12;

  if (!isInvalidEpsilon(v7->_privacyParameter))
  {
    possibleRange = [(_DPKeyProperties *)v7->_keyProperties possibleRange];
    range = [possibleRange range];
    v7->_range = [range unsignedIntegerValue];

    if (!v7->_range)
    {
      v7->_range = 200;
    }

    v7->_directUpload = [(_DPKeyProperties *)v7->_keyProperties directUpload];
    dataAlgorithm = [(_DPKeyProperties *)v7->_keyProperties dataAlgorithm];
    if (dataAlgorithm == 4 || dataAlgorithm == 2)
    {
      privacyParameter = v7->_privacyParameter;
      privatizationAlgorithm = [*p_keyProperties privatizationAlgorithm];
      dataAlgorithm2 = [*p_keyProperties dataAlgorithm];
      parameterDictionary = [*p_keyProperties parameterDictionary];
      huffmanTableClass = [*p_keyProperties huffmanTableClass];
      v30 = [_DPStringRandomizer stringRandomizerWithEpsilon:privatizationAlgorithm privatizationAlgorithm:dataAlgorithm2 dataAlgorithm:parameterDictionary algorithmParameters:huffmanTableClass huffmanTableClass:privacyParameter];
    }

    else
    {
      if (dataAlgorithm != 1)
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