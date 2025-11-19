@interface NLPLearnerLanguageModelingData
+ (void)initialize;
- (BOOL)addExamples:(id)a3;
- (BOOL)loadFromCoreDuet:(id)a3 limitSamplesTo:(unint64_t)a4;
- (NLPLearnerLanguageModelingData)initWithLocale:(id)a3;
- (id)nextEvaluationDataPoint;
- (id)nextTrainingDataBatch:(unint64_t)a3;
- (void)addPreprocessedExample:(void *)a3;
@end

@implementation NLPLearnerLanguageModelingData

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    sLog = os_log_create("com.apple.NLP", "NLPLearnerLanguageModelingData");

    MEMORY[0x2821F96F8]();
  }
}

- (NLPLearnerLanguageModelingData)initWithLocale:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NLPLearnerLanguageModelingData;
  v5 = [(NLPLearnerTextData *)&v13 initWithLocale:v4];
  if (!v5)
  {
    goto LABEL_3;
  }

  -[NLPLearnerTextData setMaxSequenceLength:](v5, "setMaxSequenceLength:", [objc_opt_class() defaultMaxSequenceLength]);
  v14 = *MEMORY[0x277D23168];
  v6 = [(NLPLearnerTextData *)v5 locale];
  v7 = [v6 languageCode];
  v15[0] = v7;
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v8 = LXLexiconCreate();
  nlp::CFScopedPtr<_LXLexicon const*>::reset(&v5->_lexicon.m_ref, v8);

  if (!v5->_lexicon.m_ref)
  {
    v10 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      [(NLPLearnerLanguageModelingData *)0 initWithLocale:v10];
    }

    v9 = 0;
  }

  else
  {
LABEL_3:
    v9 = v5;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)addPreprocessedExample:(void *)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [(NLPLearnerLanguageModelingData *)self tokenIDMapPath];

  if (v5)
  {
    v6 = *a3;
    v7 = *(a3 + 1);
    v8 = [(NLPLearnerLanguageModelingData *)self tokenIDMapPath];
    v9 = LMCreateMontrealIDsFromLMTokenIDSequence();

    if (v9)
    {
      CFDataGetBytePtr(v9);
      [(NLPLearnerTextData *)self maxSequenceLength];
      v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
      v12 = sLog;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = [v11 componentsJoinedByString:@" "];
        [(NLPLearnerLanguageModelingData *)v13 addPreprocessedExample:buf, v12];
      }

      v14 = [(NLPLearnerTextData *)self sentences];
      [v14 addObject:v11];

      CFRelease(v9);
    }

    else
    {
      v10 = sLog;
      if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
      {
        [NLPLearnerLanguageModelingData addPreprocessedExample:v10];
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)loadFromCoreDuet:(id)a3 limitSamplesTo:(unint64_t)a4
{
  v6 = a3;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x4812000000;
  v11[3] = __Block_byref_object_copy__0;
  v11[4] = __Block_byref_object_dispose__0;
  v11[5] = &unk_25AE36D43;
  memset(&__p, 0, sizeof(__p));
  std::vector<unsigned int>::reserve(&__p, [(NLPLearnerTextData *)self maxSequenceLength]);
  v7 = [(NLPLearnerTextData *)self locale];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__NLPLearnerLanguageModelingData_loadFromCoreDuet_limitSamplesTo___block_invoke;
  v10[3] = &unk_279928B78;
  v10[4] = self;
  v10[5] = v11;
  v9.receiver = self;
  v9.super_class = NLPLearnerLanguageModelingData;
  [(NLPLearnerTextData *)&v9 loadFromCoreDuet:v6 limitSamplesTo:a4 withLocale:v7 andLMStreamTokenizationBlock:v10];

  _Block_object_dispose(v11, 8);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  return 1;
}

void __66__NLPLearnerLanguageModelingData_loadFromCoreDuet_limitSamplesTo___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v11 = a4;
  if (a4)
  {
    if (a4 == 2)
    {
      std::vector<unsigned int>::push_back[abi:ne200100]((*(*(a1 + 40) + 8) + 48), &v11);
      [*(a1 + 32) addPreprocessedExample:*(*(a1 + 40) + 8) + 48];
      *(*(*(a1 + 40) + 8) + 56) = *(*(*(a1 + 40) + 8) + 48);
      return;
    }

    if (a4 == 1 && *(*(*(a1 + 40) + 8) + 56) != *(*(*(a1 + 40) + 8) + 48))
    {
      __66__NLPLearnerLanguageModelingData_loadFromCoreDuet_limitSamplesTo___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a2 length:a3 encoding:4];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 8217];
    v7 = [v5 stringByReplacingOccurrencesOfString:v6 withString:@"'"];

    v8 = *(*(a1 + 32) + 48);
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__51;
    v23 = __Block_byref_object_dispose__52;
    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = ___ZL16tokenIDForStringPK10_LXLexiconPK10__CFString_block_invoke;
    v15 = &unk_279928BC8;
    v17 = &v19;
    v18 = v7;
    v16 = &v25;
    LXLexiconEnumerateEntriesForString();
    v9 = *(v26 + 6);
    if (!v9)
    {
      if ([v20[5] count] == 1)
      {
        v10 = [v20[5] objectAtIndexedSubscript:0];
        v9 = [v10 unsignedIntValue];
      }

      else
      {
        v9 = *(v26 + 6);
      }
    }

    _Block_object_dispose(&v19, 8);

    _Block_object_dispose(&v25, 8);
    v11 = v9;
  }

  std::vector<unsigned int>::push_back[abi:ne200100]((*(*(a1 + 40) + 8) + 48), &v11);
}

- (id)nextTrainingDataBatch:(unint64_t)a3
{
  v22[2] = *MEMORY[0x277D85DE8];
  v5 = [(NLPLearnerTextData *)self iterator]+ a3;
  if (v5 <= [(NLPLearnerTextData *)self numSamples])
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:a3];
    if (a3)
    {
      v8 = 0;
      v9 = MEMORY[0x277D2A230];
      v10 = MEMORY[0x277D2A228];
      do
      {
        v11 = [(NLPLearnerTextData *)self sentences];
        v12 = [v11 objectAtIndexedSubscript:{v8 + -[NLPLearnerTextData iterator](self, "iterator")}];

        v13 = [v12 subarrayWithRange:{0, objc_msgSend(v12, "count") - 1}];
        v14 = [v12 subarrayWithRange:{1, objc_msgSend(v12, "count") - 1}];
        v15 = *v10;
        v21[0] = *v9;
        v21[1] = v15;
        v22[0] = v13;
        v22[1] = v14;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
        [v7 addObject:v16];

        ++v8;
      }

      while (a3 != v8);
    }

    [(NLPLearnerTextData *)self setIterator:[(NLPLearnerTextData *)self iterator]+ a3];
    v19 = *MEMORY[0x277D2A210];
    v20 = v7;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  }

  else
  {
    v6 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)nextEvaluationDataPoint
{
  v20[2] = *MEMORY[0x277D85DE8];
  v3 = [(NLPLearnerTextData *)self iterator];
  if (v3 >= [(NLPLearnerTextData *)self numSamples])
  {
    v12 = 0;
    goto LABEL_11;
  }

  v4 = [(NLPLearnerTextData *)self sentences];
  v5 = [v4 objectAtIndexedSubscript:{-[NLPLearnerTextData iterator](self, "iterator")}];

  v6 = [v5 subarrayWithRange:{0, objc_msgSend(v5, "count") - 1}];
  v7 = [v5 subarrayWithRange:{1, objc_msgSend(v5, "count") - 1}];
  v8 = v6;
  v9 = v8;
  if (!v8)
  {
    cf = 0;

    goto LABEL_15;
  }

  CFRetain(v8);
  cf = v9;
  v10 = CFGetTypeID(v9);
  if (v10 != CFArrayGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x25F858110](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (!cf)
  {
LABEL_15:
    v15 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x25F858110](v15, "Could not construct");
    __cxa_throw(v15, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  applesauce::CF::convert_to<std::vector<float>,0>(cf, &__p);
  v19[0] = *MEMORY[0x277D2A270];
  v11 = [MEMORY[0x277CBEA90] dataWithBytes:__p.__begin_ length:__p.__end_ - __p.__begin_];
  v19[1] = *MEMORY[0x277D2A278];
  v20[0] = v11;
  v20[1] = v7;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  [(NLPLearnerTextData *)self setIterator:[(NLPLearnerTextData *)self iterator]+ 1];
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_11:
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)addExamples:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v4 setNumberStyle:1];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v19;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v22 = *v28;
    do
    {
      v6 = 0;
      v21 = v5;
      do
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * v6);
        if ([v7 length])
        {
          v8 = [v7 componentsSeparatedByString:@" "];
          v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v10 = v8;
          v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v11)
          {
            v12 = *v24;
LABEL_9:
            v13 = 0;
            while (1)
            {
              if (*v24 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = [v4 numberFromString:*(*(&v23 + 1) + 8 * v13)];
              [v9 addObject:v14];
              v15 = [v9 count];
              LOBYTE(v15) = v15 < [(NLPLearnerTextData *)self maxSequenceLength];

              if ((v15 & 1) == 0)
              {
                break;
              }

              if (v11 == ++v13)
              {
                v11 = [v10 countByEnumeratingWithState:&v23 objects:v31 count:16];
                if (v11)
                {
                  goto LABEL_9;
                }

                break;
              }
            }
          }

          v16 = [(NLPLearnerTextData *)self sentences];
          [v16 addObject:v9];

          v5 = v21;
        }

        ++v6;
      }

      while (v6 != v5);
      v5 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v5);
  }

  v17 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)initWithLocale:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25AE22000, a2, OS_LOG_TYPE_ERROR, "Lexicon load failed %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)addPreprocessedExample:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_25AE22000, log, OS_LOG_TYPE_DEBUG, "Tokens: '%@'", buf, 0xCu);
}

@end