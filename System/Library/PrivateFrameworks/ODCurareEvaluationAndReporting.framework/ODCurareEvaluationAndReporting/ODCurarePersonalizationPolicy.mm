@interface ODCurarePersonalizationPolicy
- (ODCurarePersonalizationPolicy)initWithModelSelectionParameters:(id)a3 minimumNumberOfSamplesForPersonalization:(id)a4 minimumNumberOfSamplesForPersonalizationSelection:(id)a5;
@end

@implementation ODCurarePersonalizationPolicy

- (ODCurarePersonalizationPolicy)initWithModelSelectionParameters:(id)a3 minimumNumberOfSamplesForPersonalization:(id)a4 minimumNumberOfSamplesForPersonalizationSelection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ODCurarePersonalizationPolicy *)self init];
  v12 = v11;
  if (v11)
  {
    [(ODCurarePersonalizationPolicy *)v11 setHyperparameterSelectionPolicy:v8];
    [(ODCurarePersonalizationPolicy *)v12 setMinimumNumberOfSamplesForPersonalization:v9];
    [(ODCurarePersonalizationPolicy *)v12 setMinimumNumberOfSamplesForPersonalizationSelection:v10];
  }

  return v12;
}

@end