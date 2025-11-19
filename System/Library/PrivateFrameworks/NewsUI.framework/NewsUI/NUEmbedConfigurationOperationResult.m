@interface NUEmbedConfigurationOperationResult
- (NUEmbedConfigurationOperationResult)initWithData:(id)a3 idenfifier:(id)a4;
@end

@implementation NUEmbedConfigurationOperationResult

- (NUEmbedConfigurationOperationResult)initWithData:(id)a3 idenfifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NUEmbedConfigurationOperationResult;
  v9 = [(NUEmbedConfigurationOperationResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, a3);
    objc_storeStrong(&v10->_identifier, a4);
  }

  return v10;
}

@end