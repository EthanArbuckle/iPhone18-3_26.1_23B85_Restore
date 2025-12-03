@interface MODictionaryEncoder
+ (id)decodeToDictionary:(id)dictionary;
+ (id)encodeDictionary:(id)dictionary;
@end

@implementation MODictionaryEncoder

+ (id)encodeDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[MODictionaryEncoder encodeDictionary:];
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MODictionaryEncoder.m" lineNumber:23 description:{@"Object is not of dictionary type (in %s:%d)", "+[MODictionaryEncoder encodeDictionary:]", 23}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0;
    v8 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionaryCopy options:0 error:&v13];
    v9 = v13;
    if (v9 || !v8)
    {
      v11 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(MODictionaryEncoder *)v9 encodeDictionary:v11];
      }

      v10 = 0;
    }

    else
    {
      v10 = v8;
    }
  }

  else
  {
LABEL_10:
    v10 = 0;
  }

  return v10;
}

+ (id)decodeToDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[MODictionaryEncoder decodeToDictionary:];
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MODictionaryEncoder.m" lineNumber:46 description:{@"Object is not of data type (in %s:%d)", "+[MODictionaryEncoder decodeToDictionary:]", 46}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = 0;
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dictionaryCopy options:0 error:&v13];
    v9 = v13;
    if (v9 || !v8)
    {
      v11 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [(MODictionaryEncoder *)v9 decodeToDictionary:v11];
      }

      v10 = 0;
    }

    else
    {
      v10 = v8;
    }
  }

  else
  {
LABEL_10:
    v10 = 0;
  }

  return v10;
}

+ (void)encodeDictionary:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 23;
  _os_log_error_impl(&dword_22D8C5000, v0, OS_LOG_TYPE_ERROR, "Object is not of dictionary type (in %s:%d)", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)encodeDictionary:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22D8C5000, a2, OS_LOG_TYPE_ERROR, "Error when serialization to json, %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)decodeToDictionary:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 46;
  _os_log_error_impl(&dword_22D8C5000, v0, OS_LOG_TYPE_ERROR, "Object is not of data type (in %s:%d)", v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)decodeToDictionary:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_22D8C5000, a2, OS_LOG_TYPE_DEBUG, "Error when serialization to dictionary, %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end