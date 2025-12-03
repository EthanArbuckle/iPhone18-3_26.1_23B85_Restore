@interface ODCurarePersonalizationPolicy
- (ODCurarePersonalizationPolicy)initWithModelSelectionParameters:(id)parameters minimumNumberOfSamplesForPersonalization:(id)personalization minimumNumberOfSamplesForPersonalizationSelection:(id)selection;
@end

@implementation ODCurarePersonalizationPolicy

- (ODCurarePersonalizationPolicy)initWithModelSelectionParameters:(id)parameters minimumNumberOfSamplesForPersonalization:(id)personalization minimumNumberOfSamplesForPersonalizationSelection:(id)selection
{
  parametersCopy = parameters;
  personalizationCopy = personalization;
  selectionCopy = selection;
  v11 = [(ODCurarePersonalizationPolicy *)self init];
  v12 = v11;
  if (v11)
  {
    [(ODCurarePersonalizationPolicy *)v11 setHyperparameterSelectionPolicy:parametersCopy];
    [(ODCurarePersonalizationPolicy *)v12 setMinimumNumberOfSamplesForPersonalization:personalizationCopy];
    [(ODCurarePersonalizationPolicy *)v12 setMinimumNumberOfSamplesForPersonalizationSelection:selectionCopy];
  }

  return v12;
}

@end