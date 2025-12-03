@interface NLPLearnerUtils
+ (BOOL)checkVietnameseCharactersInText:(id)text;
+ (BOOL)isInternalInstall;
+ (id)getAttachmentURLByName:(id)name attachments:(id)attachments error:(id *)error;
+ (id)getAttachmentURLByName:(id)name inDirectory:(id)directory error:(id *)error;
+ (id)languageForText:(id)text checkVietnamese:(BOOL)vietnamese;
+ (id)messageContentForEvent:(id)event;
+ (id)messageContentForEvent:(id)event andLanguage:(id)language;
+ (unint64_t)sourceForEvent:(id)event;
+ (void)initialize;
+ (void)removeTemporaryFile:(id)file;
@end

@implementation NLPLearnerUtils

+ (void)initialize
{
  if (objc_opt_class() == self)
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

+ (id)getAttachmentURLByName:(id)name inDirectory:(id)directory error:(id *)error
{
  v7 = MEMORY[0x277CCAA00];
  directoryCopy = directory;
  nameCopy = name;
  defaultManager = [v7 defaultManager];
  v11 = [defaultManager contentsOfDirectoryAtURL:directoryCopy includingPropertiesForKeys:0 options:0 error:error];

  v12 = [NLPLearnerUtils getAttachmentURLByName:nameCopy attachments:v11 error:error];

  return v12;
}

+ (id)getAttachmentURLByName:(id)name attachments:(id)attachments error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  attachmentsCopy = attachments;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = attachmentsCopy;
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
        lastPathComponent = [v15 lastPathComponent];
        v17 = [lastPathComponent hasSuffix:nameCopy];

        if (v17)
        {
          path = [v15 path];
          v22 = [defaultManager fileExistsAtPath:path isDirectory:0];

          if (v22)
          {
            error = v15;
          }

          else if (error)
          {
            v23 = MEMORY[0x277CCA9B8];
            v34 = *MEMORY[0x277CCA450];
            nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ resource not downloaded", nameCopy];
            v35 = nameCopy;
            v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
            *error = [v23 errorWithDomain:@"com.apple.QuickTypeDESPlugin" code:5 userInfo:v25];

            error = 0;
          }

          nameCopy2 = v10;
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

  if (error)
  {
    v18 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA450];
    nameCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"missing %@ resource for PFL", nameCopy];
    v33 = nameCopy2;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    *error = [v18 errorWithDomain:@"com.apple.QuickTypeDESPlugin" code:5 userInfo:v20];

    error = 0;
LABEL_16:
  }

  v26 = *MEMORY[0x277D85DE8];

  return error;
}

+ (void)removeTemporaryFile:(id)file
{
  fileCopy = file;
  v4 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v7 = 0;
  v5 = [v4 removeItemAtPath:fileCopy error:&v7];
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

+ (id)messageContentForEvent:(id)event
{
  interaction = [event interaction];
  v4 = INTypedInteractionWithInteraction();

  intent = [v4 intent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    content = [intent content];
    if (os_log_type_enabled(sLog_0, OS_LOG_TYPE_DEBUG))
    {
      +[NLPLearnerUtils messageContentForEvent:];
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([intent _nonNilParameters], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsObject:", @"userTypedContent"), v7, v8))
    {
      content = [intent userTypedContent];
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

      content = 0;
    }
  }

  return content;
}

+ (id)messageContentForEvent:(id)event andLanguage:(id)language
{
  languageCopy = language;
  v6 = [NLPLearnerUtils messageContentForEvent:event];
  if (v6 && (+[NLPLearnerUtils languageForText:](NLPLearnerUtils, "languageForText:", v6), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isEqualToString:languageCopy], v7, (v8 & 1) != 0))
  {
    if ([v6 length] > 0x1D || (objc_msgSend(languageCopy, "isEqualToString:", *MEMORY[0x277CD8790]) & 1) != 0)
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

+ (unint64_t)sourceForEvent:(id)event
{
  eventCopy = event;
  source = [eventCopy source];
  bundleID = [source bundleID];
  v6 = [bundleID containsString:@"MobileSMS"];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    source2 = [eventCopy source];
    bundleID2 = [source2 bundleID];
    v10 = [bundleID2 containsString:@"mobilemail"];

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

+ (id)languageForText:(id)text checkVietnamese:(BOOL)vietnamese
{
  vietnameseCopy = vietnamese;
  textCopy = text;
  if (vietnameseCopy && ([objc_opt_class() checkVietnameseCharactersInText:textCopy] & 1) != 0)
  {
    v6 = 0x277CD89A0;
  }

  else
  {
    v6 = 0x277CD89C0;
  }

  v7 = objc_alloc_init(*v6);
  [v7 processString:textCopy];
  dominantLanguage = [v7 dominantLanguage];

  return dominantLanguage;
}

+ (BOOL)checkVietnameseCharactersInText:(id)text
{
  v3 = MEMORY[0x277CCA900];
  textCopy = text;
  vietnameseCharacterSet = [v3 vietnameseCharacterSet];
  v6 = [textCopy rangeOfCharacterFromSet:vietnameseCharacterSet];

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