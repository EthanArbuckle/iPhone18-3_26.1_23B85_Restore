@interface _EARLanguageModel
- (id).cxx_construct;
- (void)addDataSource:(id)a3 weight:(float)a4;
- (void)enumerateDataSourcesAndWeightsUsingBlock:(id)a3;
@end

@implementation _EARLanguageModel

- (void)addDataSource:(id)a3 weight:(float)a4
{
  v6 = a3;
  if (a4 < 0.0 || a4 > 1.0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"weight must be between 0 and 1 inclusive (weight=%f)", a4}];
  }

  totalWeight = self->_totalWeight;
  if ((totalWeight + a4) > 1.0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"total weight must be between 0 and 1 inclusive (weight=%f, current total weight=%f)", a4, totalWeight}];
  }

  v9 = v6;
  v10 = v9;
  v11 = a4;
  std::vector<std::pair<objc_object  {objcproto27_EARLanguageModelDataSource}* {__strong},float>>::push_back[abi:ne200100](&self->_dataSources.__begin_, &v10);

  self->_totalWeight = self->_totalWeight + a4;
}

- (void)enumerateDataSourcesAndWeightsUsingBlock:(id)a3
{
  v4 = a3;
  v9 = 0;
  begin = self->_dataSources.__begin_;
  for (i = self->_dataSources.__end_; begin != i; begin += 2)
  {
    v7 = *begin;
    v4[2](v4, v7, &v9, *(begin + 2));
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