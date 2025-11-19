@interface DKPredictionTimeline
@end

@implementation DKPredictionTimeline

void __39___DKPredictionTimeline_initWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 dk_dedup];
  }

  else
  {
    v6 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v8 dk_dedup];
  }

  else
  {
    v7 = 0;
  }

  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
}

void __36___DKPredictionTimeline_description__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = description_formatter;
  description_formatter = v0;

  v2 = MEMORY[0x1E696AB78];
  v4 = [MEMORY[0x1E695DF58] currentLocale];
  v3 = [v2 dateFormatFromTemplate:@"HH:mm:ss MM/dd" options:0 locale:v4];
  [description_formatter setDateFormat:v3];
}

void __46___DKPredictionTimeline_predictionUnavailable__block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = objc_alloc(*(a1 + 32));
  v2 = [MEMORY[0x1E695DF00] distantFuture];
  v3 = [(_DKPredictionTimeline *)v1 initWithValues:MEMORY[0x1E695E0F0] forDurations:v2 startingAt:?];
  v4 = predictionUnavailable_prediction;
  predictionUnavailable_prediction = v3;

  v5 = [MEMORY[0x1E695DF00] distantFuture];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [(_DKSyncWindow *)predictionUnavailable_prediction setStartDate:v6];

  v7 = *MEMORY[0x1E69E9840];
}

@end