@interface SGQuickResponsesScores
+ (id)quickResponsesScoresWithModelScores:(id)a3 normalizedModelScores:(id)a4;
- (SGQuickResponsesScores)initWithModelScores:(id)a3 normalizedModelScores:(id)a4;
@end

@implementation SGQuickResponsesScores

- (SGQuickResponsesScores)initWithModelScores:(id)a3 normalizedModelScores:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"SGQuickResponsesInference.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"modelScores != nil"}];
  }

  v14.receiver = self;
  v14.super_class = SGQuickResponsesScores;
  v10 = [(SGQuickResponsesScores *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_modelScores, a3);
    objc_storeStrong(&v11->_normalizedModelScores, a4);
  }

  return v11;
}

+ (id)quickResponsesScoresWithModelScores:(id)a3 normalizedModelScores:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithModelScores:v7 normalizedModelScores:v6];

  return v8;
}

@end