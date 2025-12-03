@interface MOXPCContext
- (MOXPCContext)init;
- (MOXPCContext)initWithCoder:(id)coder;
- (id)decodeToDictionary:(id)dictionary;
- (id)encodeDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOXPCContext

- (MOXPCContext)init
{
  v9.receiver = self;
  v9.super_class = MOXPCContext;
  v2 = [(MOXPCContext *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    configuration = v2->_configuration;
    v2->_configuration = v3;

    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    [(NSMutableDictionary *)v2->_configuration setObject:processName forKeyedSubscript:@"ProcessName"];

    v7 = v2;
  }

  return v2;
}

- (MOXPCContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MOXPCContext *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProcessName"];
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    configuration = v5->_configuration;
    v5->_configuration = v7;

    [(NSMutableDictionary *)v5->_configuration setObject:v6 forKeyedSubscript:@"ProcessName"];
    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  configuration = self->_configuration;
  coderCopy = coder;
  v5 = [(NSMutableDictionary *)configuration objectForKeyedSubscript:@"ProcessName"];
  [coderCopy encodeObject:v5 forKey:@"ProcessName"];
}

- (id)encodeDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    v9 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MOXPCContext encodeDictionary:];
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v7 = currentHandler;
    v11 = @"Invalid parameter not satisfying: value";
    v12 = a2;
    selfCopy2 = self;
    v14 = 62;
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MOXPCContext encodeDictionary:];
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v7 = currentHandler;
    v11 = @"Invalid parameter not satisfying: [value isKindOfClass:[NSDictionary class]]";
    v12 = a2;
    selfCopy2 = self;
    v14 = 63;
LABEL_12:
    [currentHandler handleFailureInMethod:v12 object:selfCopy2 file:@"MOXPCContext.m" lineNumber:v14 description:v11];
    v8 = 0;
    goto LABEL_17;
  }

  v18 = 0;
  v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionaryCopy options:0 error:&v18];
  v7 = v18;
  if (v7 || !v6)
  {
    v16 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MOXPCContext encodeDictionary:];
    }

    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

LABEL_17:

  return v8;
}

- (id)decodeToDictionary:(id)dictionary
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
      [MOXPCContext decodeToDictionary:];
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MOXPCContext.m" lineNumber:83 description:{@"Object is not of data type (in %s:%d)", "-[MOXPCContext decodeToDictionary:]", 83}];
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
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [MOXPCContext decodeToDictionary:];
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

- (void)encodeDictionary:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)decodeToDictionary:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)decodeToDictionary:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end