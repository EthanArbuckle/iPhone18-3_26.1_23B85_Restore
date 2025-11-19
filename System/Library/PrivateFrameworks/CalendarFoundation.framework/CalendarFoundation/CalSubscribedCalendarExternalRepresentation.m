@interface CalSubscribedCalendarExternalRepresentation
+ (id)dictionaryWithExternalRepresentationData:(id)a3;
+ (id)externalRepresentationDataWithDictionary:(id)a3;
+ (id)logHandle;
+ (int)migrationVersionFromDictionary:(id)a3;
+ (unint64_t)subscribedCalendarRefreshFlagsFromDictionary:(id)a3;
+ (void)setSubscribedCalendarRefreshFlags:(unint64_t)a3 inDictionary:(id)a4;
@end

@implementation CalSubscribedCalendarExternalRepresentation

+ (id)logHandle
{
  if (logHandle_onceToken_0 != -1)
  {
    +[CalSubscribedCalendarExternalRepresentation logHandle];
  }

  v3 = logHandle_logHandle_0;

  return v3;
}

uint64_t __56__CalSubscribedCalendarExternalRepresentation_logHandle__block_invoke()
{
  logHandle_logHandle_0 = os_log_create("com.apple.calendar.foundation", "SubscribedCalendarExternalDataRepresentation");

  return MEMORY[0x1EEE66BB8]();
}

+ (id)externalRepresentationDataWithDictionary:(id)a3
{
  v14 = 0;
  v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:a3 format:200 options:0 error:&v14];
  v5 = v14;
  if (!v4)
  {
    v6 = [a1 logHandle];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CalSubscribedCalendarExternalRepresentation *)v5 externalRepresentationDataWithDictionary:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  return v4;
}

+ (id)dictionaryWithExternalRepresentationData:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v17 = 0;
    v5 = [MEMORY[0x1E696AE40] propertyListWithData:v4 options:1 format:0 error:&v17];
    v6 = v17;
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_10;
      }

      v7 = [a1 logHandle];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = objc_opt_class();
        [(CalSubscribedCalendarExternalRepresentation *)v8 dictionaryWithExternalRepresentationData:buf, v7];
      }
    }

    else
    {
      v5 = [a1 logHandle];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(CalSubscribedCalendarExternalRepresentation *)v6 dictionaryWithExternalRepresentationData:v5, v9, v10, v11, v12, v13, v14];
      }
    }

    v5 = 0;
LABEL_10:

    if (v5)
    {
      goto LABEL_12;
    }
  }

  v5 = [MEMORY[0x1E695DF90] dictionary];
LABEL_12:

  v15 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (unint64_t)subscribedCalendarRefreshFlagsFromDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"SCRefreshFlags"];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 4;
  }

  return v4;
}

+ (void)setSubscribedCalendarRefreshFlags:(unint64_t)a3 inDictionary:(id)a4
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a4;
  v7 = [v5 numberWithUnsignedInteger:a3];
  [v6 setValue:v7 forKey:@"SCRefreshFlags"];
}

+ (int)migrationVersionFromDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"migrationVersion"];
  v4 = [v3 intValue];

  return v4;
}

+ (void)externalRepresentationDataWithDictionary:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1(&dword_1B990D000, a2, a3, "Failed to serialize subscribed calendar external representation data: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)dictionaryWithExternalRepresentationData:(os_log_t)log .cold.1(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B990D000, log, OS_LOG_TYPE_ERROR, "Got unexpected data type (%{public}@) after deserializing subscribed calendar external representation data", buf, 0xCu);
}

+ (void)dictionaryWithExternalRepresentationData:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1(&dword_1B990D000, a2, a3, "Exception caught while deserializating subscribed calendar external representation data: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

+ (void)dictionaryWithExternalRepresentationData:(uint64_t)a3 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1(&dword_1B990D000, a2, a3, "Failed to deserialize subscribed calendar external representation data: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end