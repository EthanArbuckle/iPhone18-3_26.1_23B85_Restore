@interface ODCurareEvaluationResult
- (ODCurareEvaluationResult)initWithEvaluationName:(id)a3 numberOfSamplesPositive:(int64_t)a4 numberOfSamplesTotal:(int64_t)a5;
- (id)description;
@end

@implementation ODCurareEvaluationResult

- (ODCurareEvaluationResult)initWithEvaluationName:(id)a3 numberOfSamplesPositive:(int64_t)a4 numberOfSamplesTotal:(int64_t)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = ODCurareEvaluationResult;
  v9 = [(ODCurareEvaluationResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(ODCurareEvaluationResult *)v9 setEvaluationName:v8];
    [(ODCurareEvaluationResult *)v10 setNumberOfSamplesPositive:a4];
    [(ODCurareEvaluationResult *)v10 setNumberOfSamplesTotal:a5];
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ODCurareEvaluationResult *)self evaluationName];
  v5 = [v3 stringWithFormat:@"name: %@, numSampPos: %ld, numSampTot: %ld", v4, -[ODCurareEvaluationResult numberOfSamplesPositive](self, "numberOfSamplesPositive"), -[ODCurareEvaluationResult numberOfSamplesTotal](self, "numberOfSamplesTotal")];

  return v5;
}

@end