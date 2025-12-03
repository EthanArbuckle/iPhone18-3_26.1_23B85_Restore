@interface NLPLearnerShadowEvaluator
+ (id)evaluatorWithLocale:(id)locale andTask:(int64_t)task;
+ (void)initialize;
- (NLPLearnerShadowEvaluator)initWithLocale:(id)locale andTask:(int64_t)task;
- (id)evaluateModel:(id)model onRecords:(id)records options:(id)options completion:(id)completion error:(id *)error;
- (id)prepareDataFromRecords:(id)records;
@end

@implementation NLPLearnerShadowEvaluator

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    sLog_5 = os_log_create("com.apple.NLPLearner", "NLPLearnerShadowEvaluator");

    MEMORY[0x2821F96F8]();
  }
}

+ (id)evaluatorWithLocale:(id)locale andTask:(int64_t)task
{
  localeCopy = locale;
  if ((task - 5) > 2)
  {
    v6 = off_279928620;
  }

  else
  {
    v6 = off_279928C68[task - 5];
  }

  v7 = [objc_alloc(*v6) initWithLocale:localeCopy andTask:task];

  return v7;
}

- (NLPLearnerShadowEvaluator)initWithLocale:(id)locale andTask:(int64_t)task
{
  localeCopy = locale;
  v12.receiver = self;
  v12.super_class = NLPLearnerShadowEvaluator;
  v7 = [(NLPLearnerShadowEvaluator *)&v12 init];
  if (v7)
  {
    v8 = [localeCopy copy];
    locale = v7->_locale;
    v7->_locale = v8;

    v7->_evaluationTask = task;
    v10 = 3;
    if ((task - 4) >= 3)
    {
      v10 = 1;
    }

    v7->_topK = v10;
  }

  return v7;
}

- (id)prepareDataFromRecords:(id)records
{
  recordsCopy = records;
  evaluationTask = [(NLPLearnerShadowEvaluator *)self evaluationTask];
  locale = [(NLPLearnerShadowEvaluator *)self locale];
  v7 = [NLPLearnerTextData dataForTask:evaluationTask andLocale:locale];

  [v7 loadFromCoreDuet:recordsCopy limitSamplesTo:{-[NLPLearnerShadowEvaluator maxSamples](self, "maxSamples")}];

  return v7;
}

- (id)evaluateModel:(id)model onRecords:(id)records options:(id)options completion:(id)completion error:(id *)error
{
  modelCopy = model;
  recordsCopy = records;
  optionsCopy = options;
  completionCopy = completion;
  v15 = MEMORY[0x277CBEAD8];
  v16 = *MEMORY[0x277CBE658];
  v17 = MEMORY[0x277CCACA8];
  v18 = NSStringFromSelector(a2);
  v19 = [v17 stringWithFormat:@"You must override %@ in a subclass", v18];
  v20 = [v15 exceptionWithName:v16 reason:v19 userInfo:0];
  v21 = v20;

  objc_exception_throw(v20);
}

@end