@interface NLPLearnerCharacterLanguageModelingData
+ (void)initialize;
- (BOOL)loadFromCoreDuet:(id)duet limitSamplesTo:(unint64_t)to;
- (NLPLearnerCharacterLanguageModelingData)initWithLocale:(id)locale;
- (void)addResource:(id)resource;
@end

@implementation NLPLearnerCharacterLanguageModelingData

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sLogCharLM = os_log_create("com.apple.NLP", "NLPLearnerCharacterLanguageModelingData");

    MEMORY[0x2821F96F8]();
  }
}

- (NLPLearnerCharacterLanguageModelingData)initWithLocale:(id)locale
{
  localeCopy = locale;
  v7.receiver = self;
  v7.super_class = NLPLearnerCharacterLanguageModelingData;
  v5 = [(NLPLearnerLanguageModelingData *)&v7 initWithLocale:localeCopy];
  if (v5)
  {
    -[NLPLearnerTextData setMaxSequenceLength:](v5, "setMaxSequenceLength:", [objc_opt_class() defaultMaxSequenceLength]);
  }

  return v5;
}

- (void)addResource:(id)resource
{
  resourceCopy = resource;
  [(NLPLearnerLanguageModelingData *)self setTokenIDMapPath:resourceCopy];
  v5 = objc_alloc(MEMORY[0x277CF6F78]);
  v6 = [MEMORY[0x277CBEBC0] URLWithString:resourceCopy];
  v7 = [v5 initWithResource:v6 andTokenType:1];
  tokenConverter = self->_tokenConverter;
  self->_tokenConverter = v7;

  if (!self->_tokenConverter)
  {
    v9 = sLogCharLM;
    if (os_log_type_enabled(sLogCharLM, OS_LOG_TYPE_ERROR))
    {
      [(NLPLearnerCharacterLanguageModelingData *)resourceCopy addResource:v9];
    }
  }
}

- (BOOL)loadFromCoreDuet:(id)duet limitSamplesTo:(unint64_t)to
{
  v43 = *MEMORY[0x277D85DE8];
  duetCopy = duet;
  tokenConverter = self->_tokenConverter;
  v27 = duetCopy;
  if (tokenConverter)
  {
    v7 = sLogCharLM;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      -[NLPLearnerTextData loadFromCoreDuet:limitSamplesTo:].cold.1(buf, [v27 count], v7);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v27;
    v8 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v8)
    {
      v9 = *v37;
LABEL_6:
      v10 = 0;
      while (1)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v36 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        if (to && [(NLPLearnerTextData *)self numSamples]>= to)
        {
          v23 = 2;
        }

        else
        {
          locale = [(NLPLearnerTextData *)self locale];
          languageCode = [locale languageCode];
          v15 = [NLPLearnerUtils messageContentForEvent:v11 andLanguage:languageCode];

          if (v15)
          {
            v30 = 0;
            v31 = &v30;
            v32 = 0x3032000000;
            v33 = __Block_byref_object_copy__51;
            v34 = __Block_byref_object_dispose__52;
            v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[CVNLPTokenIDConverter bosTokenID](self->_tokenConverter, "bosTokenID")}];
            v40 = v16;
            v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
            v35 = [v17 mutableCopy];

            v18 = self->_tokenConverter;
            v29[0] = MEMORY[0x277D85DD0];
            v29[1] = 3221225472;
            v29[2] = __75__NLPLearnerCharacterLanguageModelingData_loadFromCoreDuet_limitSamplesTo___block_invoke;
            v29[3] = &unk_279928BA0;
            v29[4] = self;
            v29[5] = &v30;
            [(CVNLPTokenIDConverter *)v18 enumerateTokenIDsForText:v15 withBlock:v29];
            v19 = [v31[5] count];
            if (v19 < [(NLPLearnerTextData *)self maxSequenceLength])
            {
              v20 = v31[5];
              v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[CVNLPTokenIDConverter eosTokenID](self->_tokenConverter, "eosTokenID")}];
              [v20 addObject:v21];

              sentences = [(NLPLearnerTextData *)self sentences];
              [sentences addObject:v31[5]];
            }

            _Block_object_dispose(&v30, 8);

            v23 = 0;
          }

          else
          {
            v23 = 3;
          }
        }

        objc_autoreleasePoolPop(v12);
        if (v23 != 3)
        {
          if (v23)
          {
            break;
          }
        }

        if (v8 == ++v10)
        {
          v8 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
          if (v8)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
  return tokenConverter != 0;
}

void __75__NLPLearnerCharacterLanguageModelingData_loadFromCoreDuet_limitSamplesTo___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [*(*(*(a1 + 40) + 8) + 40) count];
  if (v6 >= [*(a1 + 32) maxSequenceLength])
  {
    v9 = [*(a1 + 32) sentences];
    v7 = [*(*(*(a1 + 40) + 8) + 40) copy];
    [v9 addObject:v7];

    [*(*(*(a1 + 40) + 8) + 40) removeAllObjects];
  }

  v8 = *(*(*(a1 + 40) + 8) + 40);
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a4];
  [v8 addObject:?];
}

- (void)addResource:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25AE22000, a2, OS_LOG_TYPE_ERROR, "Failed to load character tokenization resources from '%@'", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end