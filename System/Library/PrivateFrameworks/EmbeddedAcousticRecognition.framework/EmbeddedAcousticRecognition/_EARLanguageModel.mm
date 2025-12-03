@interface _EARLanguageModel
- (id).cxx_construct;
- (void)addDataSource:(id)source weight:(float)weight;
- (void)enumerateDataSourcesAndWeightsUsingBlock:(id)block;
@end

@implementation _EARLanguageModel

- (void)addDataSource:(id)source weight:(float)weight
{
  sourceCopy = source;
  if (weight < 0.0 || weight > 1.0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"weight must be between 0 and 1 inclusive (weight=%f)", weight}];
  }

  totalWeight = self->_totalWeight;
  if ((totalWeight + weight) > 1.0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"total weight must be between 0 and 1 inclusive (weight=%f, current total weight=%f)", weight, totalWeight}];
  }

  v9 = sourceCopy;
  v10 = v9;
  weightCopy = weight;
  std::vector<std::pair<objc_object  {objcproto27_EARLanguageModelDataSource}* {__strong},float>>::push_back[abi:ne200100](&self->_dataSources.__begin_, &v10);

  self->_totalWeight = self->_totalWeight + weight;
}

- (void)enumerateDataSourcesAndWeightsUsingBlock:(id)block
{
  blockCopy = block;
  v9 = 0;
  begin = self->_dataSources.__begin_;
  for (i = self->_dataSources.__end_; begin != i; begin += 2)
  {
    v7 = *begin;
    blockCopy[2](blockCopy, v7, &v9, *(begin + 2));
    v8 = v9;

    if (v8)
    {
      break;
    }
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end