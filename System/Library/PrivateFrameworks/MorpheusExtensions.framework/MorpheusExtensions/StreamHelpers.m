@interface StreamHelpers
+ (id)eventOfType:(Class)a3 jsonDictionary:(id)a4 error:(id *)a5;
+ (id)logger;
+ (id)lookupStream:(id)a3;
@end

@implementation StreamHelpers

+ (id)logger
{
  if (logger_onceToken[0] != -1)
  {
    +[StreamHelpers logger];
  }

  v3 = logger__framework;

  return v3;
}

uint64_t __23__StreamHelpers_logger__block_invoke()
{
  logger__framework = os_log_create("com.apple.priml.pfl.Morpheus", "MorpheusExtension");

  return MEMORY[0x2821F96F8]();
}

+ (id)lookupStream:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 componentsSeparatedByString:@":"];
  if ([v4 count] < 3)
  {
    v5 = [v4 firstObject];
    v7 = MEMORY[0x25F853310]();
    v6 = [v7 streamWithIdentifier:v5 error:0];

    if (!v6)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v8 = MEMORY[0x25F853310]();
      v9 = [v8 allStreams];

      obj = v9;
      v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v28;
        v25 = v3;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v28 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v27 + 1) + 8 * i);
            v15 = [v14 configuration];
            v16 = [v15 streamUUID];
            v17 = [v16 UUIDString];
            v18 = [v17 isEqual:v5];

            if (v18)
            {
              goto LABEL_20;
            }

            v19 = [v14 configuration];
            v20 = [v19 legacyNames];
            v21 = [v20 containsObject:v5];

            if (v21)
            {
              v22 = +[StreamHelpers logger];
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                [(StreamHelpers *)v5 lookupStream:v14, v22];
              }

LABEL_20:
              v6 = v14;
              v3 = v25;
              goto LABEL_21;
            }
          }

          v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
          v6 = 0;
          v3 = v25;
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v6 = 0;
      }

LABEL_21:
    }
  }

  else
  {
    v5 = +[StreamHelpers logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(StreamHelpers *)v3 lookupStream:v5];
    }

    v6 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)eventOfType:(Class)a3 jsonDictionary:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = [[a3 alloc] initWithJSONDictionary:v7 error:a5];

  return v8;
}

+ (void)lookupStream:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 identifier];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_25AAA0000, a3, OS_LOG_TYPE_ERROR, "WARNING: '%@' is the legacy name for '%@'", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)lookupStream:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25AAA0000, a2, OS_LOG_TYPE_ERROR, "Invalid stream ID %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end