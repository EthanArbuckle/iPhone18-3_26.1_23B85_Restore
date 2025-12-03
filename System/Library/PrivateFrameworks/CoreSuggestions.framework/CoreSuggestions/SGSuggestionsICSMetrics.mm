@interface SGSuggestionsICSMetrics
+ (id)instance;
+ (void)recordWithTimezoneValue:(SGMFoundInAppsICSTZValue_)value datetimeType:(SGMFoundInAppsDatetimeType_)type;
- (SGSuggestionsICSMetrics)init;
@end

@implementation SGSuggestionsICSMetrics

- (SGSuggestionsICSMetrics)init
{
  v5.receiver = self;
  v5.super_class = SGSuggestionsICSMetrics;
  v2 = [(SGSuggestionsICSMetrics *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(SGSuggestionsICSMetrics *)v2 setFoundInAppsICS:v3];
  }

  return v2;
}

+ (void)recordWithTimezoneValue:(SGMFoundInAppsICSTZValue_)value datetimeType:(SGMFoundInAppsDatetimeType_)type
{
  instance = [self instance];
  foundInAppsICS = [instance foundInAppsICS];
  [foundInAppsICS trackEventWithScalar:1 timezone:value.var0 datetime:type.var0];

  v13 = objc_opt_new();
  [v13 setTimezone:value.var0];
  [v13 setDatetime:type.var0];
  mEMORY[0x1E69C5B48] = [MEMORY[0x1E69C5B48] sharedInstance];
  [mEMORY[0x1E69C5B48] trackScalarForMessage:v13];

  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = [v13 key];
  v11 = [v9 initWithFormat:@"%@.%@", @"com.apple.Proactive.CoreSuggestions", v10];

  dictionaryRepresentation = [v13 dictionaryRepresentation];
  AnalyticsSendEvent();
}

+ (id)instance
{
  if (instance_onceToken_268 != -1)
  {
    dispatch_once(&instance_onceToken_268, &__block_literal_global_270);
  }

  v3 = instance__instance_267;

  return v3;
}

uint64_t __35__SGSuggestionsICSMetrics_instance__block_invoke()
{
  instance__instance_267 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

@end