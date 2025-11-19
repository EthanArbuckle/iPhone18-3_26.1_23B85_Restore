@interface NLPLearnerNgramLanguageModelingData
+ (void)initialize;
- (NLPLearnerNgramLanguageModelingData)initWithLocale:(id)a3;
- (void)addPreprocessedExample:(void *)a3;
@end

@implementation NLPLearnerNgramLanguageModelingData

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    sLogNgramLM = os_log_create("com.apple.NLP", "NLPLearnerNgramLanguageModelingData");

    MEMORY[0x2821F96F8]();
  }
}

- (NLPLearnerNgramLanguageModelingData)initWithLocale:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = NLPLearnerNgramLanguageModelingData;
  v5 = [(NLPLearnerLanguageModelingData *)&v7 initWithLocale:v4];
  if (v5)
  {
    -[NLPLearnerTextData setMaxSequenceLength:](v5, "setMaxSequenceLength:", [objc_opt_class() defaultMaxSequenceLength]);
  }

  return v5;
}

- (void)addPreprocessedExample:(void *)a3
{
  v5 = *(a3 + 1) - *a3;
  v6 = malloc_type_malloc(v5, 0x100004052888210uLL);
  if (v6)
  {
    v7 = v6;
    memcpy(v6, *a3, v5);
    v9 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v7 length:v5 freeWhenDone:1];
    v8 = [(NLPLearnerTextData *)self sentences];
    [v8 addObject:v9];
  }
}

@end