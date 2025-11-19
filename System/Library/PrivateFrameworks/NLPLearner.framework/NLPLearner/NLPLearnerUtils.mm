@interface NLPLearnerUtils
+ (BOOL)checkVietnameseCharactersInText:(id)a3;
+ (BOOL)isInternalInstall;
+ (id)getAttachmentURLByName:(id)a3 attachments:(id)a4 error:(id *)a5;
+ (id)getAttachmentURLByName:(id)a3 inDirectory:(id)a4 error:(id *)a5;
+ (id)languageForText:(id)a3 checkVietnamese:(BOOL)a4;
+ (id)messageContentForEvent:(id)a3;
+ (id)messageContentForEvent:(id)a3 andLanguage:(id)a4;
+ (unint64_t)sourceForEvent:(id)a3;
+ (void)initialize;
+ (void)removeTemporaryFile:(id)a3;
@end

@implementation NLPLearnerUtils

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    sLog_0 = os_log_create("com.apple.NLPLearner", "NLPLearnerUtils");

    MEMORY[0x2821F96F8]();
  }
}

+ (BOOL)isInternalInstall
{
  if (isInternalInstall_onceToken != -1)
  {
    +[NLPLearnerUtils isInternalInstall];
  }

  return isInternalInstall_sIsInternalInstall;
}

uint64_t __36__NLPLearnerUtils_isInternalInstall__block_invoke()
{
  result = MGGetBoolAnswer();
  isInternalInstall_sIsInternalInstall = result;
  return result;
}

+ (id)getAttachmentURLByName:(id)a3 inDirectory:(id)a4 error:(id *)a5
{
  v7 = MEMORY[0x277CCAA00];
  v8 = a4;
  v9 = a3;
  v10 = [v7 defaultManager];
  v11 = [v10 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:0 options:0 error:a5];

  v12 = [NLPLearnerUtils getAttachmentURLByName:v9 attachments:v11 error:a5];

  return v12;
}

+ (id)getAttachmentURLByName:(id)a3 attachments:(id)a4 error:(id *)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        v16 = [v15 lastPathComponent];
        v17 = [v16 hasSuffix:v7];

        if (v17)
        {
          v21 = [v15 path];
          v22 = [v9 fileExistsAtPath:v21 isDirectory:0];

          if (v22)
          {
            a5 = v15;
          }

          else if (a5)
          {
            v23 = MEMORY[0x277CCA9B8];
            v34 = *MEMORY[0x277CCA450];
            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ resource not downloaded", v7];
            v35 = v24;
            v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
            *a5 = [v23 errorWithDomain:@"com.apple.QuickTypeDESPlugin" code:5 userInfo:v25];

            a5 = 0;
          }

          v19 = v10;
          goto LABEL_16;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  if (a5)
  {
    v18 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA450];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"missing %@ resource for PFL", v7];
    v33 = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    *a5 = [v18 errorWithDomain:@"com.apple.QuickTypeDESPlugin" code:5 userInfo:v20];

    a5 = 0;
LABEL_16:
  }

  v26 = *MEMORY[0x277D85DE8];

  return a5;
}

+ (void)removeTemporaryFile:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v7 = 0;
  v5 = [v4 removeItemAtPath:v3 error:&v7];
  v6 = v7;
  if (v5)
  {
    if (os_log_type_enabled(sLog_0, OS_LOG_TYPE_DEBUG))
    {
      +[NLPLearnerUtils removeTemporaryFile:];
    }
  }

  else if (os_log_type_enabled(sLog_0, OS_LOG_TYPE_ERROR))
  {
    +[NLPLearnerUtils removeTemporaryFile:];
  }
}

+ (id)messageContentForEvent:(id)a3
{
  v3 = [a3 interaction];
  v4 = INTypedInteractionWithInteraction();

  v5 = [v4 intent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 content];
    if (os_log_type_enabled(sLog_0, OS_LOG_TYPE_DEBUG))
    {
      +[NLPLearnerUtils messageContentForEvent:];
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 _nonNilParameters], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsObject:", @"userTypedContent"), v7, v8))
    {
      v6 = [v5 userTypedContent];
      if (os_log_type_enabled(sLog_0, OS_LOG_TYPE_DEBUG))
      {
        +[NLPLearnerUtils messageContentForEvent:];
      }
    }

    else
    {
      v9 = sLog_0;
      if (os_log_type_enabled(sLog_0, OS_LOG_TYPE_ERROR))
      {
        [NLPLearnerUtils messageContentForEvent:v9];
      }

      v6 = 0;
    }
  }

  return v6;
}

+ (id)messageContentForEvent:(id)a3 andLanguage:(id)a4
{
  v5 = a4;
  v6 = [NLPLearnerUtils messageContentForEvent:a3];
  if (v6 && (+[NLPLearnerUtils languageForText:](NLPLearnerUtils, "languageForText:", v6), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isEqualToString:v5], v7, (v8 & 1) != 0))
  {
    if ([v6 length] > 0x1D || (objc_msgSend(v5, "isEqualToString:", *MEMORY[0x277CD8790]) & 1) != 0)
    {
      v9 = v6;
      goto LABEL_9;
    }

    if (os_log_type_enabled(sLog_0, OS_LOG_TYPE_DEBUG))
    {
      +[NLPLearnerUtils messageContentForEvent:andLanguage:];
    }
  }

  else if (os_log_type_enabled(sLog_0, OS_LOG_TYPE_DEBUG))
  {
    +[NLPLearnerUtils messageContentForEvent:andLanguage:];
  }

  v9 = 0;
LABEL_9:

  return v9;
}

+ (unint64_t)sourceForEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 source];
  v5 = [v4 bundleID];
  v6 = [v5 containsString:@"MobileSMS"];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [v3 source];
    v9 = [v8 bundleID];
    v10 = [v9 containsString:@"mobilemail"];

    if (v10)
    {
      v7 = 2;
    }

    else
    {
      if (os_log_type_enabled(sLog_0, OS_LOG_TYPE_ERROR))
      {
        +[NLPLearnerUtils sourceForEvent:];
      }

      v7 = 0;
    }
  }

  return v7;
}

+ (id)languageForText:(id)a3 checkVietnamese:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (v4 && ([objc_opt_class() checkVietnameseCharactersInText:v5] & 1) != 0)
  {
    v6 = 0x277CD89A0;
  }

  else
  {
    v6 = 0x277CD89C0;
  }

  v7 = objc_alloc_init(*v6);
  [v7 processString:v5];
  v8 = [v7 dominantLanguage];

  return v8;
}

+ (BOOL)checkVietnameseCharactersInText:(id)a3
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v5 = [v3 vietnameseCharacterSet];
  v6 = [v4 rangeOfCharacterFromSet:v5];

  return v6 != 0x7FFFFFFFFFFFFFFFLL;
}

+ (void)removeTemporaryFile:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_25AE22000, v1, OS_LOG_TYPE_ERROR, "Failed to remove temporary file %@: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)removeTemporaryFile:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25AE22000, v0, v1, "Removed temporary file %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)messageContentForEvent:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25AE22000, v0, v1, "Processing sent email from CoreDuet:\n'%{sensitive}@'", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)messageContentForEvent:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25AE22000, v0, v1, "Processing sent message from CoreDuet: '%{sensitive}@'", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)messageContentForEvent:andLanguage:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_25AE22000, v0, v1, "'%{sensitive}@' discarded (too short)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)messageContentForEvent:andLanguage:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_25AE22000, v1, OS_LOG_TYPE_DEBUG, "'%{sensitive}@' discarded (detected language not matching %@)", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)sourceForEvent:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25AE22000, v0, OS_LOG_TYPE_ERROR, "Telemtry not supported for CoreDuet event %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end