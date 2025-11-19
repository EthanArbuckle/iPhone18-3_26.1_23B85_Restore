@interface SGMicrodataToJsonParser
+ (id)parseMicrodataToJsonLd:(id)a3 error:(id *)a4;
@end

@implementation SGMicrodataToJsonParser

+ (id)parseMicrodataToJsonLd:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [SGMicrodataParser parse:v5];
  v8 = [v7 asJsonLd];

  objc_autoreleasePoolPop(v6);
  if ([v8 count])
  {
    v9 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v8 options:1 error:a4];
    if (v9)
    {
      v10 = v9;
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
    }

    else
    {
      v12 = sgLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *v14 = 0;
        _os_log_debug_impl(&dword_231E60000, v12, OS_LOG_TYPE_DEBUG, "Error: Failed to serialize to JSON", v14, 2u);
      }

      v10 = 0;
      v11 = 0;
    }
  }

  else
  {
    v10 = sgLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEBUG, "JSON Data is Empty. Nothing to return.", buf, 2u);
    }

    v11 = &stru_284703F00;
  }

  return v11;
}

@end