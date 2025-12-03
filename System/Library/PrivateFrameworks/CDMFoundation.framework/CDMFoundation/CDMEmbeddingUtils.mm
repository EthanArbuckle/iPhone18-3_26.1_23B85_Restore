@interface CDMEmbeddingUtils
+ (BOOL)isValidEmbeddingVersionOnlyNumber:(id)number;
+ (id)setStringToJSONDictionaryWithError:(id *)error stringToConvert:(id)convert;
@end

@implementation CDMEmbeddingUtils

+ (id)setStringToJSONDictionaryWithError:(id *)error stringToConvert:(id)convert
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ACB0];
  v6 = [convert dataUsingEncoding:4];
  v16 = 0;
  v7 = [v5 JSONObjectWithData:v6 options:0 error:&v16];
  v8 = v16;

  if (v8)
  {
    v9 = v8;
    *error = v8;
    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = *error;
      *buf = 136315394;
      v18 = "+[CDMEmbeddingUtils setStringToJSONDictionaryWithError:stringToConvert:]";
      v19 = 2112;
      v20 = v15;
      _os_log_error_impl(&dword_1DC287000, v10, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to convert string to JSONDictionary with error: %@.", buf, 0x16u);
    }

    v11 = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  else
  {
    v11 = v7;
  }

  v12 = v11;

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (BOOL)isValidEmbeddingVersionOnlyNumber:(id)number
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [number componentsSeparatedByString:@"."];
  if ([v3 count] == 3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          if (([*(*(&v13 + 1) + 8 * i) intValue] & 0x80000000) != 0)
          {
            v10 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315138;
              v19 = "+[CDMEmbeddingUtils isValidEmbeddingVersionOnlyNumber:]";
              _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s The embedding Version is invalid as it less than 0.", buf, 0xCu);
            }

            goto LABEL_16;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        v9 = 1;
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v4 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v19 = "+[CDMEmbeddingUtils isValidEmbeddingVersionOnlyNumber:]";
      _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, "%s The embeddingVersion is invalid as it contains more than or less than 3 portions. The valid format is {OS}.{NCV}.{Patch}.", buf, 0xCu);
    }

LABEL_16:
    v9 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

@end