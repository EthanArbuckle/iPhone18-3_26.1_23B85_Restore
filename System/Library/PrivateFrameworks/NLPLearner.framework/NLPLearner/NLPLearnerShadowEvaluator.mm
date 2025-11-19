@interface NLPLearnerShadowEvaluator
+ (id)evaluatorWithLocale:(id)a3 andTask:(int64_t)a4;
+ (void)initialize;
- (NLPLearnerShadowEvaluator)initWithLocale:(id)a3 andTask:(int64_t)a4;
- (id)evaluateModel:(id)a3 onRecords:(id)a4 options:(id)a5 completion:(id)a6 error:(id *)a7;
- (id)prepareDataFromRecords:(id)a3;
@end

@implementation NLPLearnerShadowEvaluator

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    sLog_5 = os_log_create("com.apple.NLPLearner", "NLPLearnerShadowEvaluator");

    MEMORY[0x2821F96F8]();
  }
}

+ (id)evaluatorWithLocale:(id)a3 andTask:(int64_t)a4
{
  v5 = a3;
  if ((a4 - 5) > 2)
  {
    v6 = off_279928620;
  }

  else
  {
    v6 = off_279928C68[a4 - 5];
  }

  v7 = [objc_alloc(*v6) initWithLocale:v5 andTask:a4];

  return v7;
}

- (NLPLearnerShadowEvaluator)initWithLocale:(id)a3 andTask:(int64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = NLPLearnerShadowEvaluator;
  v7 = [(NLPLearnerShadowEvaluator *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    locale = v7->_locale;
    v7->_locale = v8;

    v7->_evaluationTask = a4;
    v10 = 3;
    if ((a4 - 4) >= 3)
    {
      v10 = 1;
    }

    v7->_topK = v10;
  }

  return v7;
}

- (id)prepareDataFromRecords:(id)a3
{
  v4 = a3;
  v5 = [(NLPLearnerShadowEvaluator *)self evaluationTask];
  v6 = [(NLPLearnerShadowEvaluator *)self locale];
  v7 = [NLPLearnerTextData dataForTask:v5 andLocale:v6];

  [v7 loadFromCoreDuet:v4 limitSamplesTo:{-[NLPLearnerShadowEvaluator maxSamples](self, "maxSamples")}];

  return v7;
}

- (id)evaluateModel:(id)a3 onRecords:(id)a4 options:(id)a5 completion:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
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