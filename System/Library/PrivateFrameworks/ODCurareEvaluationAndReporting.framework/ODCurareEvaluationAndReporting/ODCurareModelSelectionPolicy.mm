@interface ODCurareModelSelectionPolicy
- (ODCurareModelSelectionPolicy)initWithModelSelectionParameters:(id)a3 minimumNumberOfEvaluations:(id)a4 minimumNumberOfSamples:(id)a5;
- (id)description;
@end

@implementation ODCurareModelSelectionPolicy

- (ODCurareModelSelectionPolicy)initWithModelSelectionParameters:(id)a3 minimumNumberOfEvaluations:(id)a4 minimumNumberOfSamples:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ODCurareModelSelectionPolicy *)self init];
  v12 = v11;
  if (v11)
  {
    [(ODCurareModelSelectionPolicy *)v11 setModelSelectionParameters:v8];
    [(ODCurareModelSelectionPolicy *)v12 setMinimumNumberOfSamples:v10];
    [(ODCurareModelSelectionPolicy *)v12 setMinimumNumberOfEvaluations:v9];
    v13 = [(ODCurareModelSelectionPolicy *)v12 minimumNumberOfSamples];
    if (v13)
    {
    }

    else
    {
      v14 = [(ODCurareModelSelectionPolicy *)v12 minimumNumberOfEvaluations];

      if (!v14)
      {
        NSLog(&cfstr_Odcuraremodels.isa);
        goto LABEL_6;
      }
    }
  }

  v14 = v12;
LABEL_6:

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ODCurareModelSelectionPolicy *)self modelSelectionParameters];
  v5 = [(ODCurareModelSelectionPolicy *)self minimumNumberOfSamples];
  v6 = [(ODCurareModelSelectionPolicy *)self minimumNumberOfEvaluations];
  v7 = [v3 stringWithFormat:@"ODCurareModelSelectionPolicy, modelSelectionParameters: %@, minimumNumberOfSamples: %@, minimumNumberOfEvaluations: %@", v4, v5, v6];

  return v7;
}

@end