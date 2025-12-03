@interface DEAnnotation
+ (id)errorWithMessage:(id)message;
+ (id)readExtendedAttributeInURL:(id)l forKey:(id)key error:(id *)error;
+ (id)writeExtendedAttributeInURL:(id)l forKey:(id)key value:(id)value;
+ (void)annotateURL:(id)l displayName:(id)name description:(id)description iconType:(id)type additionalInfo:(id)info error:(id *)error;
@end

@implementation DEAnnotation

+ (void)annotateURL:(id)l displayName:(id)name description:(id)description iconType:(id)type additionalInfo:(id)info error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  lCopy = l;
  descriptionCopy = description;
  typeCopy = type;
  infoCopy = info;
  v18 = [self writeExtendedAttributeInURL:lCopy forKey:@"com.apple.diagnosticextensions.displayName" value:name];
  if (v18 || ([self writeExtendedAttributeInURL:lCopy forKey:@"com.apple.diagnosticextensions.description" value:descriptionCopy], (v18 = objc_claimAutoreleasedReturnValue()) != 0) || typeCopy && (objc_msgSend(self, "writeExtendedAttributeInURL:forKey:value:", lCopy, @"com.apple.diagnosticextensions.iconType", typeCopy), (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = v18;
    if (error)
    {
      *error = [v18 copy];
    }
  }

  else if (infoCopy)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v21 = infoCopy;
    v22 = [v21 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v22)
    {
      v23 = v22;
      v30 = infoCopy;
      v31 = typeCopy;
      v32 = descriptionCopy;
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
          v29 = [self writeExtendedAttributeInURL:lCopy forKey:v28 value:v27];
          if (v29)
          {
            v19 = v29;
            if (error)
            {
              *error = [v29 copy];
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
      typeCopy = v31;
      descriptionCopy = v32;
      infoCopy = v30;
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

+ (id)readExtendedAttributeInURL:(id)l forKey:(id)key error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  lCopy = l;
  keyCopy = key;
  path = [lCopy path];

  if (!path)
  {
    if (!error)
    {
      goto LABEL_25;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"URL path is nil. Cannot read annotation for key [%@]", keyCopy, v27];
    goto LABEL_23;
  }

  path2 = [lCopy path];
  v12 = [path2 cStringUsingEncoding:4];

  if (!v12)
  {
    if (!error)
    {
      goto LABEL_25;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"urlPathAsCString is nil. Cannot read annotation for key [%@]", keyCopy, v27];
    goto LABEL_23;
  }

  v13 = [keyCopy cStringUsingEncoding:4];
  if (!v13)
  {
    if (!error)
    {
      goto LABEL_25;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"keyAsCString is nil. Cannot write annotation for key [%@]", keyCopy, v27];
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
        v29 = keyCopy;
        _os_log_impl(&dword_248AB3000, v20, OS_LOG_TYPE_INFO, "Extended attribute not found for key [%{public}@]", buf, 0xCu);
      }
    }

    else
    {
      if (error)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"Error reading key [%@] errno: [%i]", keyCopy, *__error()];
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
    if (error)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Error allocating buffer to read value for key [%@] size: [%li]", keyCopy, v16];
      v21 = LABEL_23:;
      *error = [self errorWithMessage:v21];

LABEL_24:
      error = 0;
      goto LABEL_25;
    }

    v20 = +[DELogging fwHandle];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [DEAnnotation readExtendedAttributeInURL:keyCopy forKey:v16 error:v20];
    }

    goto LABEL_34;
  }

  v18 = v17;
  if (getxattr(v12, v14, v17, v16, 0, 0) == -1)
  {
    if (error)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error reading key [%@], errno: [%i]", keyCopy, *__error()];
      *error = [self errorWithMessage:v24];
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
    lastPathComponent = [lCopy lastPathComponent];
    *buf = 136381187;
    v29 = v18;
    v30 = 2114;
    v31 = keyCopy;
    v32 = 2114;
    v33 = lastPathComponent;
    _os_log_debug_impl(&dword_248AB3000, v19, OS_LOG_TYPE_DEBUG, "Read [%{private}s] for key [%{public}@] in file [%{public}@]", buf, 0x20u);
  }

  error = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:4];
  free(v18);
LABEL_25:

  v22 = *MEMORY[0x277D85DE8];

  return error;
}

+ (id)writeExtendedAttributeInURL:(id)l forKey:(id)key value:(id)value
{
  lCopy = l;
  keyCopy = key;
  valueCopy = value;
  path = [lCopy path];

  if (path)
  {
    path2 = [lCopy path];
    v13 = [path2 cStringUsingEncoding:4];

    if (v13)
    {
      v14 = [valueCopy cStringUsingEncoding:4];
      if (v14)
      {
        v15 = v14;
        v16 = [keyCopy cStringUsingEncoding:4];
        if (v16)
        {
          v17 = v16;
          v18 = strlen(v15);
          setxattr(v13, v17, v15, v18, 0, 0);
          v19 = 0;
          goto LABEL_11;
        }

        [MEMORY[0x277CCACA8] stringWithFormat:@"keyAsCString is nil. Cannot write annotation for key [%@]", keyCopy];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"valueAsCString is nil. Cannot write annotation for key [%@]", keyCopy];
      }
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"urlPathAsCString is nil. Cannot write annotation for key [%@]", keyCopy];
    }
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"URL path is nil. Cannot write annotation for key [%@]", keyCopy];
  }
  v20 = ;
  v19 = [self errorWithMessage:v20];

LABEL_11:

  return v19;
}

+ (id)errorWithMessage:(id)message
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277CCA068];
  v11[0] = message;
  v4 = MEMORY[0x277CBEAC0];
  messageCopy = message;
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