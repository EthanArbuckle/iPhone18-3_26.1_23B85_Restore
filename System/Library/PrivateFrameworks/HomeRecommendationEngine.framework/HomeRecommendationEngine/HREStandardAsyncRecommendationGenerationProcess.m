@interface HREStandardAsyncRecommendationGenerationProcess
- (BOOL)shouldGenerateRecommendations;
- (HREStandardAsyncRecommendationGenerationProcess)initWithHome:(id)a3 sourceItems:(id)a4 accessoryTypeGroup:(id)a5 options:(unint64_t)a6;
- (id)generateRecommendations;
@end

@implementation HREStandardAsyncRecommendationGenerationProcess

- (HREStandardAsyncRecommendationGenerationProcess)initWithHome:(id)a3 sourceItems:(id)a4 accessoryTypeGroup:(id)a5 options:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v19.receiver = self;
  v19.super_class = HREStandardAsyncRecommendationGenerationProcess;
  v14 = [(HREStandardAsyncRecommendationGenerationProcess *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_home, a3);
    v16 = [MEMORY[0x277CBEB98] setWithArray:v12];
    sourceItems = v15->_sourceItems;
    v15->_sourceItems = v16;

    objc_storeStrong(&v15->_typeGroup, a5);
    v15->_options = a6;
  }

  return v15;
}

- (BOOL)shouldGenerateRecommendations
{
  v3 = [(HREStandardAsyncRecommendationGenerationProcess *)self sourceItems];
  if ([v3 count])
  {
    v4 = [(HREStandardAsyncRecommendationGenerationProcess *)self sourceRecommendableObjects];
    v5 = [v4 count];

    if (!v5)
    {
      return 0;
    }
  }

  else
  {
  }

  v7 = [(HREStandardAsyncRecommendationGenerationProcess *)self typeGroup];
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  v9 = [(HREStandardAsyncRecommendationGenerationProcess *)self sourceRecommendableObjects];
  v6 = [v9 count] != 0;

  return v6;
}

- (id)generateRecommendations
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HREStandardAsyncRecommendationSource.m" lineNumber:192 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HREStandardAsyncRecommendationGenerationProcess generateRecommendations]", objc_opt_class()}];

  v5 = objc_opt_new();

  return v5;
}

@end