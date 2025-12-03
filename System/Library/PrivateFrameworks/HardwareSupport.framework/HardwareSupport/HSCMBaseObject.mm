@interface HSCMBaseObject
- (BOOL)setValue:(id)value forProperty:(__CFString *)property error:(id *)error;
- (HSCMBaseObject)initWithBaseObject:(OpaqueCMBaseObject *)object;
- (id)valueForProperty:(__CFString *)property error:(id *)error;
@end

@implementation HSCMBaseObject

- (HSCMBaseObject)initWithBaseObject:(OpaqueCMBaseObject *)object
{
  v5.receiver = self;
  v5.super_class = HSCMBaseObject;
  result = [(HSCMBaseObject *)&v5 init];
  result->_underlyingObject = object;
  return result;
}

- (BOOL)setValue:(id)value forProperty:(__CFString *)property error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v9 = HSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [HSCMBaseObject setValue:valueCopy forProperty:property error:v9];
  }

  underlyingObject = self->_underlyingObject;
  VTable = CMBaseObjectGetVTable();
  v12 = *(*(VTable + 8) + 56);
  if (v12)
  {
    v13 = *(VTable + 8) + 56;
    v14 = v12(underlyingObject, property, valueCopy);
    if (!v14)
    {
      LOBYTE(error) = 1;
      goto LABEL_11;
    }
  }

  else
  {
    v14 = 4294954514;
  }

  v15 = HSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v26 = [objc_opt_class() statusDescription:v14];
    *buf = 138412802;
    propertyCopy = property;
    v31 = 2112;
    v32 = valueCopy;
    v33 = 2112;
    v34 = v26;
    _os_log_error_impl(&dword_2510E6000, v15, OS_LOG_TYPE_ERROR, "Failed to set property %@ to %@: %@!", buf, 0x20u);
  }

  if (error)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = [objc_opt_class() statusDescription:v14];
    v18 = [v16 stringWithFormat:@"Failed to set property %@ to %@: %@!", property, valueCopy, v17];

    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA590];
    v27 = *MEMORY[0x277CCA450];
    v28 = v18;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v22 = [v19 errorWithDomain:v20 code:v14 userInfo:v21];

    v23 = v22;
    *error = v22;

    LOBYTE(error) = 0;
  }

LABEL_11:

  v24 = *MEMORY[0x277D85DE8];
  return error;
}

- (id)valueForProperty:(__CFString *)property error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  v23 = 0;
  underlyingObject = self->_underlyingObject;
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v8 = v7(underlyingObject, property, 0, &v23);
  }

  else
  {
    v8 = 4294954514;
  }

  v9 = HSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(HSCMBaseObject *)property valueForProperty:v9 error:?];
  }

  if (!v8)
  {
    v13 = v23;
    if (v23)
    {
      null = v23;
      v13 = null;
    }

    else
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    error = null;
    goto LABEL_15;
  }

  v10 = HSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v22 = [objc_opt_class() statusDescription:v8];
    *buf = 138412546;
    propertyCopy = property;
    v28 = 2112;
    v29 = v22;
    _os_log_error_impl(&dword_2510E6000, v10, OS_LOG_TYPE_ERROR, "Failed to copy property %@: %@!", buf, 0x16u);
  }

  if (error)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [objc_opt_class() statusDescription:v8];
    v13 = [v11 stringWithFormat:@"Failed to copy property %@: %@!", property, v12];

    v14 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA590];
    v24 = *MEMORY[0x277CCA450];
    v25 = v13;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v17 = [v14 errorWithDomain:v15 code:v8 userInfo:v16];

    v18 = v17;
    *error = v17;

    error = 0;
LABEL_15:
  }

  v20 = *MEMORY[0x277D85DE8];

  return error;
}

- (void)setValue:(uint64_t)a1 forProperty:(uint64_t)a2 error:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  *v4 = 136315650;
  *&v4[4] = "[HSCMBaseObject setValue:forProperty:error:]";
  *&v4[12] = 2112;
  *&v4[14] = a1;
  *&v4[22] = 2112;
  OUTLINED_FUNCTION_0(&dword_2510E6000, a2, a3, "%s: Set %@ > %@", *v4, *&v4[8], *&v4[16], a2);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)valueForProperty:(NSObject *)a3 error:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  *v4 = 136315650;
  *&v4[4] = "[HSCMBaseObject valueForProperty:error:]";
  *&v4[12] = 2112;
  *&v4[14] = a1;
  *&v4[22] = 2112;
  OUTLINED_FUNCTION_0(&dword_2510E6000, a2, a3, "%s: Copy %@ > %@", *v4, *&v4[8], *&v4[16], *a2);
  v3 = *MEMORY[0x277D85DE8];
}

@end