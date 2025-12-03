@interface HREStandardAsyncRecommendationGenerationProcess
- (BOOL)shouldGenerateRecommendations;
- (HREStandardAsyncRecommendationGenerationProcess)initWithHome:(id)home sourceItems:(id)items accessoryTypeGroup:(id)group options:(unint64_t)options;
- (id)generateRecommendations;
@end

@implementation HREStandardAsyncRecommendationGenerationProcess

- (HREStandardAsyncRecommendationGenerationProcess)initWithHome:(id)home sourceItems:(id)items accessoryTypeGroup:(id)group options:(unint64_t)options
{
  homeCopy = home;
  itemsCopy = items;
  groupCopy = group;
  v19.receiver = self;
  v19.super_class = HREStandardAsyncRecommendationGenerationProcess;
  v14 = [(HREStandardAsyncRecommendationGenerationProcess *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_home, home);
    v16 = [MEMORY[0x277CBEB98] setWithArray:itemsCopy];
    sourceItems = v15->_sourceItems;
    v15->_sourceItems = v16;

    objc_storeStrong(&v15->_typeGroup, group);
    v15->_options = options;
  }

  return v15;
}

- (BOOL)shouldGenerateRecommendations
{
  sourceItems = [(HREStandardAsyncRecommendationGenerationProcess *)self sourceItems];
  if ([sourceItems count])
  {
    sourceRecommendableObjects = [(HREStandardAsyncRecommendationGenerationProcess *)self sourceRecommendableObjects];
    v5 = [sourceRecommendableObjects count];

    if (!v5)
    {
      return 0;
    }
  }

  else
  {
  }

  typeGroup = [(HREStandardAsyncRecommendationGenerationProcess *)self typeGroup];
  if (!typeGroup)
  {
    return 1;
  }

  v8 = typeGroup;
  sourceRecommendableObjects2 = [(HREStandardAsyncRecommendationGenerationProcess *)self sourceRecommendableObjects];
  v6 = [sourceRecommendableObjects2 count] != 0;

  return v6;
}

- (id)generateRecommendations
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HREStandardAsyncRecommendationSource.m" lineNumber:192 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HREStandardAsyncRecommendationGenerationProcess generateRecommendations]", objc_opt_class()}];

  v5 = objc_opt_new();

  return v5;
}

@end