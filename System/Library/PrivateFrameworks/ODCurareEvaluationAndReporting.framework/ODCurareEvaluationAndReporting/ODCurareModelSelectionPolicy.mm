@interface ODCurareModelSelectionPolicy
- (ODCurareModelSelectionPolicy)initWithModelSelectionParameters:(id)parameters minimumNumberOfEvaluations:(id)evaluations minimumNumberOfSamples:(id)samples;
- (id)description;
@end

@implementation ODCurareModelSelectionPolicy

- (ODCurareModelSelectionPolicy)initWithModelSelectionParameters:(id)parameters minimumNumberOfEvaluations:(id)evaluations minimumNumberOfSamples:(id)samples
{
  parametersCopy = parameters;
  evaluationsCopy = evaluations;
  samplesCopy = samples;
  v11 = [(ODCurareModelSelectionPolicy *)self init];
  v12 = v11;
  if (v11)
  {
    [(ODCurareModelSelectionPolicy *)v11 setModelSelectionParameters:parametersCopy];
    [(ODCurareModelSelectionPolicy *)v12 setMinimumNumberOfSamples:samplesCopy];
    [(ODCurareModelSelectionPolicy *)v12 setMinimumNumberOfEvaluations:evaluationsCopy];
    minimumNumberOfSamples = [(ODCurareModelSelectionPolicy *)v12 minimumNumberOfSamples];
    if (minimumNumberOfSamples)
    {
    }

    else
    {
      minimumNumberOfEvaluations = [(ODCurareModelSelectionPolicy *)v12 minimumNumberOfEvaluations];

      if (!minimumNumberOfEvaluations)
      {
        NSLog(&cfstr_Odcuraremodels.isa);
        goto LABEL_6;
      }
    }
  }

  minimumNumberOfEvaluations = v12;
LABEL_6:

  return minimumNumberOfEvaluations;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  modelSelectionParameters = [(ODCurareModelSelectionPolicy *)self modelSelectionParameters];
  minimumNumberOfSamples = [(ODCurareModelSelectionPolicy *)self minimumNumberOfSamples];
  minimumNumberOfEvaluations = [(ODCurareModelSelectionPolicy *)self minimumNumberOfEvaluations];
  v7 = [v3 stringWithFormat:@"ODCurareModelSelectionPolicy, modelSelectionParameters: %@, minimumNumberOfSamples: %@, minimumNumberOfEvaluations: %@", modelSelectionParameters, minimumNumberOfSamples, minimumNumberOfEvaluations];

  return v7;
}

@end