@interface SGPatternMetrics
+ (id)instance;
+ (void)recordSelfIdMatchWithPatternType:(SGMSIPatternType_)type patternHash:(id)hash nameTokenCount:(unint64_t)count nameClassification:(SGMSINameClassification_)classification messageIndex:(unint64_t)index;
- (SGPatternMetrics)init;
@end

@implementation SGPatternMetrics

- (SGPatternMetrics)init
{
  v5.receiver = self;
  v5.super_class = SGPatternMetrics;
  v2 = [(SGPatternMetrics *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(SGPatternMetrics *)v2 setSelfIdPatternMatched:v3];
  }

  return v2;
}

+ (void)recordSelfIdMatchWithPatternType:(SGMSIPatternType_)type patternHash:(id)hash nameTokenCount:(unint64_t)count nameClassification:(SGMSINameClassification_)classification messageIndex:(unint64_t)index
{
  hashCopy = hash;
  instance = [self instance];
  selfIdPatternMatched = [instance selfIdPatternMatched];
  [selfIdPatternMatched trackEventWithScalar:1 patternType:type.var0 patternHash:hashCopy nameTokens:count nameClass:classification.var0 messageIndex:index];

  v20 = objc_opt_new();
  [v20 setPatternType:type.var0];
  [v20 setPatternHash:hashCopy];

  [v20 setNameTokens:count];
  [v20 setNameClass:classification.var0];
  [v20 setMessageIndex:index];
  mEMORY[0x1E69C5B48] = [MEMORY[0x1E69C5B48] sharedInstance];
  [mEMORY[0x1E69C5B48] trackScalarForMessage:v20];

  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17 = [v20 key];
  v18 = [v16 initWithFormat:@"%@.%@", @"com.apple.Proactive.CoreSuggestions", v17];

  dictionaryRepresentation = [v20 dictionaryRepresentation];
  AnalyticsSendEvent();
}

+ (id)instance
{
  if (instance_onceToken_226 != -1)
  {
    dispatch_once(&instance_onceToken_226, &__block_literal_global_228);
  }

  v3 = instance__instance_225;

  return v3;
}

uint64_t __28__SGPatternMetrics_instance__block_invoke()
{
  instance__instance_225 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

@end