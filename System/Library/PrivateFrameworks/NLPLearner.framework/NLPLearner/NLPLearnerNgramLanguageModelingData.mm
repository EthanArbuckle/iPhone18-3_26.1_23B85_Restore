@interface NLPLearnerNgramLanguageModelingData
+ (void)initialize;
- (NLPLearnerNgramLanguageModelingData)initWithLocale:(id)locale;
- (void)addPreprocessedExample:(void *)example;
@end

@implementation NLPLearnerNgramLanguageModelingData

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sLogNgramLM = os_log_create("com.apple.NLP", "NLPLearnerNgramLanguageModelingData");

    MEMORY[0x2821F96F8]();
  }
}

- (NLPLearnerNgramLanguageModelingData)initWithLocale:(id)locale
{
  localeCopy = locale;
  v7.receiver = self;
  v7.super_class = NLPLearnerNgramLanguageModelingData;
  v5 = [(NLPLearnerLanguageModelingData *)&v7 initWithLocale:localeCopy];
  if (v5)
  {
    -[NLPLearnerTextData setMaxSequenceLength:](v5, "setMaxSequenceLength:", [objc_opt_class() defaultMaxSequenceLength]);
  }

  return v5;
}

- (void)addPreprocessedExample:(void *)example
{
  v5 = *(example + 1) - *example;
  v6 = malloc_type_malloc(v5, 0x100004052888210uLL);
  if (v6)
  {
    v7 = v6;
    memcpy(v6, *example, v5);
    v9 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v7 length:v5 freeWhenDone:1];
    sentences = [(NLPLearnerTextData *)self sentences];
    [sentences addObject:v9];
  }
}

@end