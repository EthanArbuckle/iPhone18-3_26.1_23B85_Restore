@interface NTPBPersonalizationAggregate(FCPersonalizationAggregate)
- (double)_personalizationValueWithBaselineClicks:()FCPersonalizationAggregate baselineImpressions:decayRate:baselineClicksMultiplier:;
- (double)personalizationValueWithBaseline:()FCPersonalizationAggregate decayRate:baselineClicksMultiplier:;
- (double)personalizationValueWithCorrelatedAggregate:()FCPersonalizationAggregate baseline:decayRate:baselineClicksMultiplier:;
- (double)relativePersonalizationValueWithCorrelatedAggregate:()FCPersonalizationAggregate baseline:decayFactor:baselineClicksMultiplier:;
- (id)dictionaryRepresentation;
- (uint64_t)lastModified;
@end

@implementation NTPBPersonalizationAggregate(FCPersonalizationAggregate)

- (id)dictionaryRepresentation
{
  v13[5] = *MEMORY[0x1E69E9840];
  v12[0] = @"clicks";
  v2 = MEMORY[0x1E696AD98];
  [a1 clicks];
  v3 = [v2 numberWithDouble:?];
  v13[0] = v3;
  v12[1] = @"impressions";
  v4 = MEMORY[0x1E696AD98];
  [a1 impressions];
  v5 = [v4 numberWithDouble:?];
  v13[1] = v5;
  v12[2] = @"eventCount";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a1, "eventCount")}];
  v13[2] = v6;
  v12[3] = @"timestamp";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(a1, "timestamp")}];
  v13[3] = v7;
  v12[4] = @"featureKey";
  v8 = [a1 featureKey];
  v13[4] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:5];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (uint64_t)lastModified
{
  v1 = MEMORY[0x1E695DF00];
  v2 = [a1 timestamp];

  return [v1 fc_dateWithMillisecondTimeIntervalSince1970:v2];
}

- (double)personalizationValueWithBaseline:()FCPersonalizationAggregate decayRate:baselineClicksMultiplier:
{
  v8 = a5;
  v9 = v8;
  if (v8)
  {
    [v8 clicks];
    v11 = v10;
    [v9 impressions];
    [a1 _personalizationValueWithBaselineClicks:v11 baselineImpressions:v12 decayRate:a2 baselineClicksMultiplier:a3];
LABEL_5:
    v14 = v13;
    goto LABEL_6;
  }

  [a1 impressions];
  v14 = 0.0;
  if (v15 > 0.0)
  {
    [a1 clicks];
    v17 = v16;
    [a1 impressions];
    FCClamp(v17 / v18, 0.0, 1.0);
    goto LABEL_5;
  }

LABEL_6:

  return v14;
}

- (double)personalizationValueWithCorrelatedAggregate:()FCPersonalizationAggregate baseline:decayRate:baselineClicksMultiplier:
{
  v10 = a5;
  v11 = a6;
  v12 = v11;
  if (!v10)
  {
    v29 = a1;
    v30 = v12;
LABEL_10:
    [v29 personalizationValueWithBaseline:v30 decayRate:a2 baselineClicksMultiplier:a3];
    goto LABEL_11;
  }

  if (!v11)
  {
    v29 = a1;
    v30 = v10;
    goto LABEL_10;
  }

  [v11 clicks];
  v14 = 1.0;
  if (a3 > 0.0)
  {
    v14 = a3;
  }

  v15 = v14 * v13;
  [v12 impressions];
  v16 = v15;
  if (v15 <= v17)
  {
    [v12 impressions];
    v16 = v18;
  }

  [v10 impressions];
  v20 = v19;
  [v10 impressions];
  v22 = FCPersonalizationLinearImpressionCount(v21, a2);
  v23 = v20 + pow(a2, v22) * v16;
  [v10 clicks];
  v25 = v24;
  [v10 impressions];
  v27 = FCPersonalizationLinearImpressionCount(v26, a2);
  [a1 _personalizationValueWithBaselineClicks:(v25 + pow(a2 baselineImpressions:v27) * v15) decayRate:v23 baselineClicksMultiplier:{a2, 1.0}];
LABEL_11:
  v31 = v28;

  return v31;
}

- (double)relativePersonalizationValueWithCorrelatedAggregate:()FCPersonalizationAggregate baseline:decayFactor:baselineClicksMultiplier:
{
  v10 = a6;
  [a1 personalizationValueWithCorrelatedAggregate:a5 baseline:v10 decayRate:a2 baselineClicksMultiplier:a3];
  v12 = v11;
  [v10 personalizationValueWithBaseline:0 decayRate:a2];
  v14 = v13;

  [a1 powerWithDecayFactor:a2];
  return (v12 - v14) * v15;
}

- (double)_personalizationValueWithBaselineClicks:()FCPersonalizationAggregate baselineImpressions:decayRate:baselineClicksMultiplier:
{
  v7 = 1.0;
  if (a5 > 0.0)
  {
    v7 = a5;
  }

  v8 = v7 * a2;
  if (v7 * a2 <= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v7 * a2;
  }

  [a1 clicks];
  v11 = v10;
  [a1 impressions];
  v13 = FCPersonalizationLinearImpressionCount(v12, a4);
  [a1 impressions];
  v15 = v14;
  [a1 impressions];
  v17 = FCPersonalizationLinearImpressionCount(v16, a4);
  v18 = v15 + pow(a4, v17) * v9;
  if (v18 <= 0.0)
  {
    return 0.0;
  }

  v19 = (v11 + pow(a4, v13) * v8) / v18;

  FCClamp(v19, 0.0, 1.0);
  return result;
}

@end