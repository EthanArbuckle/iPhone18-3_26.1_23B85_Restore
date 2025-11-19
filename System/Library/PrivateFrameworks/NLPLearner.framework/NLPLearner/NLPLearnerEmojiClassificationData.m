@interface NLPLearnerEmojiClassificationData
+ (void)initialize;
- (BOOL)addExamples:(id)a3;
- (BOOL)loadFromCoreDuet:(id)a3 limitSamplesTo:(unint64_t)a4;
- (NLPLearnerEmojiClassificationData)initWithLocale:(id)a3;
- (id)nextEvaluationDataPoint;
- (id)nextTrainingDataBatch:(unint64_t)a3;
- (unint64_t)numOutputClasses;
- (void)addResource:(id)a3;
- (void)sampleNoneClassExample:(id)a3;
@end

@implementation NLPLearnerEmojiClassificationData

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    sLog = os_log_create("com.apple.NLP", "NLPLearnerEmojiClassificationData");

    MEMORY[0x2821F96F8]();
  }
}

- (NLPLearnerEmojiClassificationData)initWithLocale:(id)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = NLPLearnerEmojiClassificationData;
  v5 = [(NLPLearnerTextData *)&v18 initWithLocale:v4];
  if (!v5)
  {
    goto LABEL_4;
  }

  -[NLPLearnerTextData setMaxSequenceLength:](v5, "setMaxSequenceLength:", [objc_opt_class() defaultMaxSequenceLength]);
  v20[0] = *MEMORY[0x277D00370];
  v6 = [(NLPLearnerTextData *)v5 locale];
  v20[1] = *MEMORY[0x277D00378];
  v21[0] = v6;
  v21[1] = *MEMORY[0x277D00388];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v8 = NLStringEmbeddingCreateWithOptions();
  nlp::CFScopedPtr<void *>::reset(&v5->_embedding.m_ref, v8);
  if (v5->_embedding.m_ref)
  {
    v5->_embeddingDimension = NLStringEmbeddingGetDimension();
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    labels = v5->_labels;
    v5->_labels = v9;

    noneClassProbability = v5->_noneClassProbability;
    v5->_noneClassProbability = &unk_286C3AA08;

LABEL_4:
    v12 = v5;
    goto LABEL_8;
  }

  v13 = sLog;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = [(NLPLearnerTextData *)v5 locale];
    v15 = [v14 languageCode];
    [(NLPLearnerEmojiClassificationData *)v15 initWithLocale:buf, v13, v14];
  }

  v12 = 0;
LABEL_8:

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)sampleNoneClassExample:(id)a3
{
  v12 = a3;
  if ([v12 count])
  {
    v4 = arc4random_uniform(0x64u);
    [(NSNumber *)self->_noneClassProbability floatValue];
    if ((v5 * 100.0) > v4)
    {
      labels = self->_labels;
      v7 = [MEMORY[0x277CCABB0] numberWithInt:0];
      [(NSMutableArray *)labels addObject:v7];

      LODWORD(v7) = [v12 count];
      if (v7 >= [(NLPLearnerTextData *)self maxSequenceLength])
      {
        v8 = [(NLPLearnerTextData *)self maxSequenceLength];
      }

      else
      {
        v8 = [v12 count];
      }

      v9 = arc4random_uniform(v8);
      v10 = [(NLPLearnerTextData *)self sentences];
      v11 = [v12 subarrayWithRange:{0, (v9 + 1)}];
      [v10 addObject:v11];
    }
  }
}

- (BOOL)loadFromCoreDuet:(id)a3 limitSamplesTo:(unint64_t)a4
{
  v6 = a3;
  labelClasses = self->_labelClasses;
  if (labelClasses)
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v17 = 0;
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v15 = 0;
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = __Block_byref_object_copy_;
    v12[4] = __Block_byref_object_dispose_;
    v13 = [MEMORY[0x277CBEB18] array];
    v8 = [(NLPLearnerTextData *)self locale];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__NLPLearnerEmojiClassificationData_loadFromCoreDuet_limitSamplesTo___block_invoke;
    v11[3] = &unk_279928998;
    v11[4] = self;
    v11[5] = v14;
    v11[6] = v12;
    v11[7] = v16;
    v10.receiver = self;
    v10.super_class = NLPLearnerEmojiClassificationData;
    [(NLPLearnerTextData *)&v10 loadFromCoreDuet:v6 limitSamplesTo:a4 withLocale:v8 andLMStreamTokenizationBlock:v11];

    _Block_object_dispose(v12, 8);
    _Block_object_dispose(v14, 8);
    _Block_object_dispose(v16, 8);
  }

  return labelClasses != 0;
}

void __69__NLPLearnerEmojiClassificationData_loadFromCoreDuet_limitSamplesTo___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 2)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else if (a4 == 1)
  {
    if ([*(a1 + 32) processingNewRecord])
    {
      if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
      {
        [*(a1 + 32) sampleNoneClassExample:*(*(*(a1 + 48) + 8) + 40)];
      }

      [*(*(*(a1 + 48) + 8) + 40) removeAllObjects];
      v5 = *(a1 + 32);

      [v5 setProcessingNewRecord:0];
    }
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a2 length:a3 encoding:4];
    v14 = [v6 lowercaseString];

    if (CEMStringContainsEmoji())
    {
      v7 = [*(*(a1 + 32) + 56) valueForKey:v14];
      if (v7 && [*(*(*(a1 + 48) + 8) + 40) count])
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        [*(*(a1 + 32) + 48) addObject:v7];
        v8 = [*(*(*(a1 + 48) + 8) + 40) count];
        v9 = [*(a1 + 32) maxSequenceLength];
        v10 = *(a1 + 32);
        if (v8 <= v9)
        {
          v11 = [v10 sentences];
          v12 = [*(*(*(a1 + 48) + 8) + 40) copy];
          [v11 addObject:v12];
        }

        else
        {
          v11 = [v10 sentences];
          v12 = [*(*(*(a1 + 48) + 8) + 40) subarrayWithRange:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "count") - objc_msgSend(*(a1 + 32), "maxSequenceLength"), objc_msgSend(*(a1 + 32), "maxSequenceLength")}];
          v13 = [v12 copy];
          [v11 addObject:v13];
        }
      }
    }

    else
    {
      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
        {
          [*(a1 + 32) sampleNoneClassExample:*(*(*(a1 + 48) + 8) + 40)];
        }

        [*(*(*(a1 + 48) + 8) + 40) removeAllObjects];
        *(*(*(a1 + 56) + 8) + 24) = 0;
        *(*(*(a1 + 40) + 8) + 24) = 0;
      }

      [*(*(*(a1 + 48) + 8) + 40) addObject:v14];
    }
  }
}

- (id)nextTrainingDataBatch:(unint64_t)a3
{
  v20[2] = *MEMORY[0x277D85DE8];
  v5 = [(NLPLearnerTextData *)self iterator]+ a3;
  if (v5 <= [(NLPLearnerTextData *)self numSamples])
  {
    v7 = [(NLPLearnerTextData *)self sentences];
    v8 = [v7 subarrayWithRange:{-[NLPLearnerTextData iterator](self, "iterator"), a3}];

    v9 = 4 * a3 * [(NLPLearnerTextData *)self maxSequenceLength]* self->_embeddingDimension;
    v10 = malloc_type_malloc(v9, 0x100004052888210uLL);
    std::vector<float>::vector[abi:ne200100](__p, self->_embeddingDimension);
    m_ref = self->_embedding.m_ref;
    [(NLPLearnerTextData *)self maxSequenceLength];
    NLStringEmbeddingFillWordVectors();
    v12 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v10 length:v9 freeWhenDone:1];
    v13 = *MEMORY[0x277D2A218];
    v20[0] = v12;
    v14 = *MEMORY[0x277D2A220];
    v19[0] = v13;
    v19[1] = v14;
    v15 = [(NSMutableArray *)self->_labels subarrayWithRange:[(NLPLearnerTextData *)self iterator], a3];
    v20[1] = v15;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

    [(NLPLearnerTextData *)self setIterator:[(NLPLearnerTextData *)self iterator]+ a3];
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    v6 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)nextEvaluationDataPoint
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = [(NLPLearnerTextData *)self iterator];
  if (v3 >= [(NLPLearnerTextData *)self numSamples])
  {
    v15 = 0;
  }

  else
  {
    v4 = [(NLPLearnerTextData *)self sentences];
    v5 = [v4 objectAtIndexedSubscript:{-[NLPLearnerTextData iterator](self, "iterator")}];
    v22[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];

    v7 = 4 * [(NLPLearnerTextData *)self maxSequenceLength]* self->_embeddingDimension;
    v8 = malloc_type_malloc(v7, 0x100004052888210uLL);
    std::vector<float>::vector[abi:ne200100](__p, self->_embeddingDimension);
    m_ref = self->_embedding.m_ref;
    [(NLPLearnerTextData *)self maxSequenceLength];
    NLStringEmbeddingFillWordVectors();
    v10 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v8 length:v7 freeWhenDone:1];
    v11 = *MEMORY[0x277D2A270];
    v21[0] = v10;
    v12 = *MEMORY[0x277D2A278];
    v20[0] = v11;
    v20[1] = v12;
    v13 = [(NSMutableArray *)self->_labels objectAtIndexedSubscript:[(NLPLearnerTextData *)self iterator]];
    v19 = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v21[1] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

    [(NLPLearnerTextData *)self setIterator:[(NLPLearnerTextData *)self iterator]+ 1];
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (unint64_t)numOutputClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(NSDictionary *)self->_labelClasses allValues];
  v4 = [v2 setWithArray:v3];
  v5 = [v4 count];

  return v5;
}

- (void)addResource:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_labelClasses, v5);
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v37[3] = [(NLPLearnerEmojiClassificationData *)self numOutputClasses];
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    labelClasses = self->_labelClasses;
    v36 = 1;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __49__NLPLearnerEmojiClassificationData_addResource___block_invoke;
    v32[3] = &unk_2799289C0;
    v32[4] = self;
    v32[5] = v37;
    v32[6] = &v33;
    [(NSDictionary *)labelClasses enumerateKeysAndObjectsUsingBlock:v32];
    if (v34[3])
    {
      [(NSNumber *)self->_noneClassProbability floatValue];
      if (v7 > 0.0)
      {
        v8 = self->_labelClasses;
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __49__NLPLearnerEmojiClassificationData_addResource___block_invoke_15;
        v31[3] = &unk_2799289E8;
        v31[4] = &v33;
        [(NSDictionary *)v8 enumerateKeysAndObjectsUsingBlock:v31];
      }

      if (v34[3])
      {
        goto LABEL_13;
      }

      v9 = sLog;
      if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
      {
        [(NLPLearnerEmojiClassificationData *)v4 addResource:v9, v10, v11, v12, v13, v14, v15];
      }
    }

    else
    {
      v23 = sLog;
      if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
      {
        [(NLPLearnerEmojiClassificationData *)v4 addResource:v23, v24, v25, v26, v27, v28, v29];
      }
    }

    v30 = self->_labelClasses;
    self->_labelClasses = 0;

LABEL_13:
    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(v37, 8);
    goto LABEL_14;
  }

  v16 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    [(NLPLearnerEmojiClassificationData *)v4 addResource:v16, v17, v18, v19, v20, v21, v22];
  }

LABEL_14:
}

void __49__NLPLearnerEmojiClassificationData_addResource___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && [v10 isEqualToString:@"NONE"] && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_msgSend(v7, "floatValue"), v8 >= 0.0) && (objc_msgSend(v7, "floatValue"), v9 <= 1.0))
  {
    objc_storeStrong((a1[4] + 64), a3);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || !CEMStringContainsEmoji() || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v7 integerValue] < 0 || objc_msgSend(v7, "integerValue") >= *(*(a1[5] + 8) + 24))
    {
      *(*(a1[6] + 8) + 24) = 0;
      *a4 = 1;
    }
  }
}

void __49__NLPLearnerEmojiClassificationData_addResource___block_invoke_15(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v7 = a3;
  if (CEMStringContainsEmoji() && ![v7 integerValue])
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (BOOL)addExamples:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"sentence"];
        v10 = [v9 componentsSeparatedByString:@" "];

        v5 = v10;
        v11 = [v10 count];
        if (v11 <= [(NLPLearnerTextData *)self maxSequenceLength])
        {
          v12 = MEMORY[0x277CCABB0];
          v13 = [v8 objectForKeyedSubscript:@"label"];
          v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v13, "unsignedIntegerValue") - 1}];

          v15 = [(NSDictionary *)self->_labelClasses allValues];
          LODWORD(v12) = [v15 containsObject:v14];

          if (v12)
          {
            [(NSMutableArray *)self->_labels addObject:v14];
            v16 = [(NLPLearnerTextData *)self sentences];
            [v16 addObject:v5];
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v4);
  }

  v17 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)initWithLocale:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_25AE22000, log, OS_LOG_TYPE_ERROR, "Failed to load '%@' word embeddings", buf, 0xCu);
}

- (void)addResource:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_25AE22000, a2, a3, "Failed to load emoji mapping from '%@'", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)addResource:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_25AE22000, a2, a3, "Unexpected format of emoji mapping in '%@'", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)addResource:(uint64_t)a3 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_25AE22000, a2, a3, "Emoji mapped to 0 in presence of NONE class in '%@'", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end