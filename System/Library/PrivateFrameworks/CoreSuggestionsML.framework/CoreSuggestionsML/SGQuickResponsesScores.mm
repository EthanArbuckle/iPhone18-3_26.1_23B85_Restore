@interface SGQuickResponsesScores
+ (id)quickResponsesScoresWithModelScores:(id)scores normalizedModelScores:(id)modelScores;
- (SGQuickResponsesScores)initWithModelScores:(id)scores normalizedModelScores:(id)modelScores;
@end

@implementation SGQuickResponsesScores

- (SGQuickResponsesScores)initWithModelScores:(id)scores normalizedModelScores:(id)modelScores
{
  scoresCopy = scores;
  modelScoresCopy = modelScores;
  if (!scoresCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesInference.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"modelScores != nil"}];
  }

  v14.receiver = self;
  v14.super_class = SGQuickResponsesScores;
  v10 = [(SGQuickResponsesScores *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_modelScores, scores);
    objc_storeStrong(&v11->_normalizedModelScores, modelScores);
  }

  return v11;
}

+ (id)quickResponsesScoresWithModelScores:(id)scores normalizedModelScores:(id)modelScores
{
  modelScoresCopy = modelScores;
  scoresCopy = scores;
  v8 = [[self alloc] initWithModelScores:scoresCopy normalizedModelScores:modelScoresCopy];

  return v8;
}

@end