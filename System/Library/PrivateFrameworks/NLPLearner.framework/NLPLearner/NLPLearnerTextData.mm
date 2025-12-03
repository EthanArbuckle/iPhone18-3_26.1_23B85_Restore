@interface NLPLearnerTextData
+ (id)dataForPFL:(int64_t)l andLocale:(id)locale;
+ (id)dataForTask:(int64_t)task andLocale:(id)locale;
+ (void)initialize;
- (BOOL)addExamples:(id)examples;
- (BOOL)loadFromCoreDuet:(id)duet limitSamplesTo:(unint64_t)to;
- (BOOL)loadFromCoreDuet:(id)duet limitSamplesTo:(unint64_t)to withLocale:(id)locale andLMStreamTokenizationBlock:(id)block;
- (NLPLearnerTextData)initWithLocale:(id)locale;
- (void)addResource:(id)resource;
@end

@implementation NLPLearnerTextData

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sLog = os_log_create("com.apple.NLP", "NLPLearnerTextData");

    MEMORY[0x2821F96F8]();
  }
}

- (NLPLearnerTextData)initWithLocale:(id)locale
{
  localeCopy = locale;
  v8.receiver = self;
  v8.super_class = NLPLearnerTextData;
  v5 = [(NLPLearnerTextData *)&v8 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NLPLearnerTextData *)v5 setSentences:v6];

    [(NLPLearnerTextData *)v5 setIterator:0];
    [(NLPLearnerTextData *)v5 setLocale:localeCopy];
  }

  return v5;
}

+ (id)dataForTask:(int64_t)task andLocale:(id)locale
{
  localeCopy = locale;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_DEBUG))
  {
    +[NLPLearnerTextData dataForTask:andLocale:];
  }

  if ((task - 1) >= 7)
  {
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      +[NLPLearnerTextData dataForTask:andLocale:];
    }

    v6 = 0;
  }

  else
  {
    v6 = [objc_alloc(*off_279928A08[task - 1]) initWithLocale:localeCopy];
  }

  return v6;
}

+ (id)dataForPFL:(int64_t)l andLocale:(id)locale
{
  localeCopy = locale;
  if ((l - 1) >= 4)
  {
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      +[NLPLearnerTextData dataForTask:andLocale:];
    }

    v6 = 0;
  }

  else
  {
    v6 = [objc_alloc(*off_279928A40[l - 1]) initWithLocale:localeCopy];
  }

  return v6;
}

- (BOOL)loadFromCoreDuet:(id)duet limitSamplesTo:(unint64_t)to
{
  v27 = *MEMORY[0x277D85DE8];
  duetCopy = duet;
  v6 = sLog;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    -[NLPLearnerTextData loadFromCoreDuet:limitSamplesTo:].cold.1(buf, [duetCopy count], v6);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = duetCopy;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = *v22;
LABEL_5:
    v9 = 0;
    while (1)
    {
      if (*v22 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v21 + 1) + 8 * v9);
      v11 = objc_autoreleasePoolPush();
      if (to && [(NLPLearnerTextData *)self numSamples]>= to)
      {
        v16 = 2;
      }

      else
      {
        locale = [(NLPLearnerTextData *)self locale];
        languageCode = [locale languageCode];
        v14 = [NLPLearnerUtils messageContentForEvent:v10 andLanguage:languageCode];

        if (v14)
        {
          sentences = [(NLPLearnerTextData *)self sentences];
          [sentences addObject:v14];

          v16 = 0;
        }

        else
        {
          v16 = 3;
        }
      }

      objc_autoreleasePoolPop(v11);
      if (v16 != 3)
      {
        if (v16)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v7)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)loadFromCoreDuet:(id)duet limitSamplesTo:(unint64_t)to withLocale:(id)locale andLMStreamTokenizationBlock:(id)block
{
  v36 = *MEMORY[0x277D85DE8];
  duetCopy = duet;
  localeCopy = locale;
  blockCopy = block;
  v28 = localeCopy;
  cf = LMStreamTokenizerCreate();
  v33 = cf;
  v11 = sLog;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    -[NLPLearnerTextData loadFromCoreDuet:limitSamplesTo:].cold.1(buf, [duetCopy count], v11);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = duetCopy;
  v13 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v13)
  {
    v14 = *v30;
LABEL_5:
    v15 = 0;
    while (1)
    {
      if (*v30 != v14)
      {
        objc_enumerationMutation(v12);
      }

      v16 = *(*(&v29 + 1) + 8 * v15);
      v17 = objc_autoreleasePoolPush();
      if (to && [(NLPLearnerTextData *)self numSamples]>= to)
      {
        v22 = 2;
      }

      else
      {
        languageCode = [v28 languageCode];
        v19 = [NLPLearnerUtils messageContentForEvent:v16 andLanguage:languageCode];

        if (v19)
        {
          v20 = v19;
          uTF8String = [v19 UTF8String];
          [(NLPLearnerTextData *)self setProcessingNewRecord:1];
          strlen(uTF8String);
          LMStreamTokenizerPushBytes();
          v22 = 0;
        }

        else
        {
          v22 = 3;
        }
      }

      objc_autoreleasePoolPop(v17);
      if (v22 != 3)
      {
        if (v22)
        {
          break;
        }
      }

      if (v13 == ++v15)
      {
        v13 = [v12 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v13)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  [(NLPLearnerTextData *)self setProcessingNewRecord:0];
  if (cf)
  {
    CFRelease(cf);
  }

  v23 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)addResource:(id)resource
{
  resourceCopy = resource;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    [NLPLearnerTextData addResource:];
  }
}

- (BOOL)addExamples:(id)examples
{
  examplesCopy = examples;
  sentences = [(NLPLearnerTextData *)self sentences];
  [sentences addObjectsFromArray:examplesCopy];

  return 1;
}

+ (void)dataForTask:andLocale:.cold.1()
{
  v17 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 2048;
  v4 = 1;
  v5 = 2048;
  v6 = 2;
  v7 = 2048;
  v8 = 3;
  v9 = 2048;
  v10 = 4;
  v11 = 2048;
  v12 = 5;
  v13 = 2048;
  v14 = 6;
  v15 = 2048;
  v16 = 7;
  _os_log_debug_impl(&dword_25AE22000, v0, OS_LOG_TYPE_DEBUG, "Initializing data for %ld task.\n (Emoji %ld, LM Legacy %ld, Character LM %ld, LM Shipping %ld, LM Fragment %ld, LM Ngram %ld, ACT %ld)", v2, 0x52u);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)dataForTask:andLocale:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_25AE22000, v0, v1, "NLPLearnerTask %ld is not supported", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)loadFromCoreDuet:(os_log_t)log limitSamplesTo:.cold.1(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&dword_25AE22000, log, OS_LOG_TYPE_DEBUG, "Processing %ld events extracted from CoreDuet", buf, 0xCu);
}

- (void)addResource:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_25AE22000, v0, v1, "Unexpected call to addResource with '%@'", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end