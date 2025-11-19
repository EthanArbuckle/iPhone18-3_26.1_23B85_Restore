@interface DEAnnotation
+ (id)errorWithMessage:(id)a3;
+ (id)readExtendedAttributeInURL:(id)a3 forKey:(id)a4 error:(id *)a5;
+ (id)writeExtendedAttributeInURL:(id)a3 forKey:(id)a4 value:(id)a5;
+ (void)annotateURL:(id)a3 displayName:(id)a4 description:(id)a5 iconType:(id)a6 additionalInfo:(id)a7 error:(id *)a8;
@end

@implementation DEAnnotation

+ (void)annotateURL:(id)a3 displayName:(id)a4 description:(id)a5 iconType:(id)a6 additionalInfo:(id)a7 error:(id *)a8
{
  v38 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [a1 writeExtendedAttributeInURL:v14 forKey:@"com.apple.diagnosticextensions.displayName" value:a4];
  if (v18 || ([a1 writeExtendedAttributeInURL:v14 forKey:@"com.apple.diagnosticextensions.description" value:v15], (v18 = objc_claimAutoreleasedReturnValue()) != 0) || v16 && (objc_msgSend(a1, "writeExtendedAttributeInURL:forKey:value:", v14, @"com.apple.diagnosticextensions.iconType", v16), (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = v18;
    if (a8)
    {
      *a8 = [v18 copy];
    }
  }

  else if (v17)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v21 = v17;
    v22 = [v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v22)
    {
      v23 = v22;
      v30 = v17;
      v31 = v16;
      v32 = v15;
      v24 = *v34;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v34 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v33 + 1) + 8 * i);
          v27 = [v21 objectForKeyedSubscript:v26];
          v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.diagnosticextensions.additionalInfo", v26];
          v29 = [a1 writeExtendedAttributeInURL:v14 forKey:v28 value:v27];
          if (v29)
          {
            v19 = v29;
            if (a8)
            {
              *a8 = [v29 copy];
            }

            goto LABEL_21;
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }

      v19 = 0;
LABEL_21:
      v16 = v31;
      v15 = v32;
      v17 = v30;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
}

+ (id)readExtendedAttributeInURL:(id)a3 forKey:(id)a4 error:(id *)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 path];

  if (!v10)
  {
    if (!a5)
    {
      goto LABEL_25;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"URL path is nil. Cannot read annotation for key [%@]", v9, v27];
    goto LABEL_23;
  }

  v11 = [v8 path];
  v12 = [v11 cStringUsingEncoding:4];

  if (!v12)
  {
    if (!a5)
    {
      goto LABEL_25;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"urlPathAsCString is nil. Cannot read annotation for key [%@]", v9, v27];
    goto LABEL_23;
  }

  v13 = [v9 cStringUsingEncoding:4];
  if (!v13)
  {
    if (!a5)
    {
      goto LABEL_25;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"keyAsCString is nil. Cannot write annotation for key [%@]", v9, v27];
    goto LABEL_23;
  }

  v14 = v13;
  v15 = getxattr(v12, v13, 0, 0, 0, 0);
  if (v15 == -1)
  {
    if (*__error() == 93)
    {
      v20 = +[DELogging fwHandle];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v29 = v9;
        _os_log_impl(&dword_248AB3000, v20, OS_LOG_TYPE_INFO, "Extended attribute not found for key [%{public}@]", buf, 0xCu);
      }
    }

    else
    {
      if (a5)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"Error reading key [%@] errno: [%i]", v9, *__error()];
        goto LABEL_23;
      }

      v20 = +[DELogging fwHandle];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        +[DEAnnotation readExtendedAttributeInURL:forKey:error:];
      }
    }

LABEL_34:

    goto LABEL_24;
  }

  v16 = v15;
  v17 = malloc_type_calloc(v15 + 1, 1uLL, 0x100004077774924uLL);
  if (!v17)
  {
    if (a5)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Error allocating buffer to read value for key [%@] size: [%li]", v9, v16];
      v21 = LABEL_23:;
      *a5 = [a1 errorWithMessage:v21];

LABEL_24:
      a5 = 0;
      goto LABEL_25;
    }

    v20 = +[DELogging fwHandle];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [DEAnnotation readExtendedAttributeInURL:v9 forKey:v16 error:v20];
    }

    goto LABEL_34;
  }

  v18 = v17;
  if (getxattr(v12, v14, v17, v16, 0, 0) == -1)
  {
    if (a5)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error reading key [%@], errno: [%i]", v9, *__error()];
      *a5 = [a1 errorWithMessage:v24];
    }

    else
    {
      v25 = +[DELogging fwHandle];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        +[DEAnnotation readExtendedAttributeInURL:forKey:error:];
      }
    }

    free(v18);
    goto LABEL_24;
  }

  v19 = +[DELogging fwHandle];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v26 = [v8 lastPathComponent];
    *buf = 136381187;
    v29 = v18;
    v30 = 2114;
    v31 = v9;
    v32 = 2114;
    v33 = v26;
    _os_log_debug_impl(&dword_248AB3000, v19, OS_LOG_TYPE_DEBUG, "Read [%{private}s] for key [%{public}@] in file [%{public}@]", buf, 0x20u);
  }

  a5 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:4];
  free(v18);
LABEL_25:

  v22 = *MEMORY[0x277D85DE8];

  return a5;
}

+ (id)writeExtendedAttributeInURL:(id)a3 forKey:(id)a4 value:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 path];

  if (v11)
  {
    v12 = [v8 path];
    v13 = [v12 cStringUsingEncoding:4];

    if (v13)
    {
      v14 = [v10 cStringUsingEncoding:4];
      if (v14)
      {
        v15 = v14;
        v16 = [v9 cStringUsingEncoding:4];
        if (v16)
        {
          v17 = v16;
          v18 = strlen(v15);
          setxattr(v13, v17, v15, v18, 0, 0);
          v19 = 0;
          goto LABEL_11;
        }

        [MEMORY[0x277CCACA8] stringWithFormat:@"keyAsCString is nil. Cannot write annotation for key [%@]", v9];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"valueAsCString is nil. Cannot write annotation for key [%@]", v9];
      }
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"urlPathAsCString is nil. Cannot write annotation for key [%@]", v9];
    }
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"URL path is nil. Cannot write annotation for key [%@]", v9];
  }
  v20 = ;
  v19 = [a1 errorWithMessage:v20];

LABEL_11:

  return v19;
}

+ (id)errorWithMessage:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277CCA068];
  v11[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v3 errorWithDomain:@"DEExtensionErrorDomain" code:5 userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (void)readExtendedAttributeInURL:forKey:error:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_248AB3000, v1, v2, "Error reading extended attribute key [%{public}@], errno: [%i]", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)readExtendedAttributeInURL:(uint64_t)a1 forKey:(uint64_t)a2 error:(os_log_t)log .cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&dword_248AB3000, log, OS_LOG_TYPE_ERROR, "Error allocating buffer to read value for key [%{public}@] size: [%li]", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)readExtendedAttributeInURL:forKey:error:.cold.3()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_248AB3000, v1, v2, "Error reading extended attribute key [%{public}@] errno: [%i]", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

@end