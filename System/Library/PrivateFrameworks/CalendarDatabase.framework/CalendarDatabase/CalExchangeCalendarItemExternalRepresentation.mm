@interface CalExchangeCalendarItemExternalRepresentation
+ (id)dictionaryWithExternalRepresentationData:(id)data;
+ (id)externalRepresentationDataWithDictionary:(id)dictionary;
+ (id)logHandle;
@end

@implementation CalExchangeCalendarItemExternalRepresentation

+ (id)logHandle
{
  if (logHandle_onceToken != -1)
  {
    +[CalExchangeCalendarItemExternalRepresentation logHandle];
  }

  v3 = logHandle_logHandle;

  return v3;
}

uint64_t __58__CalExchangeCalendarItemExternalRepresentation_logHandle__block_invoke()
{
  v0 = os_log_create("com.apple.calendar.database", "CalExchangeCalendarItemExternalRepresentation");
  v1 = logHandle_logHandle;
  logHandle_logHandle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)externalRepresentationDataWithDictionary:(id)dictionary
{
  v15 = 0;
  v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionary options:0 error:&v15];
  v5 = v15;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    logHandle = [self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      [(CalExchangeCalendarItemExternalRepresentation *)v5 externalRepresentationDataWithDictionary:logHandle, v8, v9, v10, v11, v12, v13];
    }
  }

  return v4;
}

+ (id)dictionaryWithExternalRepresentationData:(id)data
{
  v19 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (!dataCopy)
  {
    logHandle = 0;
    goto LABEL_12;
  }

  v17 = 0;
  logHandle = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:0 error:&v17];
  v6 = v17;
  if (!logHandle)
  {
    logHandle = [self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      [(CalExchangeCalendarItemExternalRepresentation *)v6 dictionaryWithExternalRepresentationData:logHandle, v9, v10, v11, v12, v13, v14];
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    logHandle2 = [self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      [(CalExchangeCalendarItemExternalRepresentation *)v8 dictionaryWithExternalRepresentationData:buf, logHandle2];
    }

LABEL_10:
    logHandle = 0;
  }

LABEL_12:
  v15 = *MEMORY[0x1E69E9840];

  return logHandle;
}

+ (void)externalRepresentationDataWithDictionary:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1DEBB1000, a2, a3, "Failed to serialize Exchange calendar item external representation data: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)dictionaryWithExternalRepresentationData:(os_log_t)log .cold.1(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1DEBB1000, log, OS_LOG_TYPE_ERROR, "Got unexpected data type (%{public}@) after deserializing Exchange calendar item external representation data", buf, 0xCu);
}

+ (void)dictionaryWithExternalRepresentationData:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1DEBB1000, a2, a3, "Exception caught while deserializating Exchange calendar item external representation data: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)dictionaryWithExternalRepresentationData:(uint64_t)a3 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1DEBB1000, a2, a3, "Failed to deserialize Exchange calendar item external representation data: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end