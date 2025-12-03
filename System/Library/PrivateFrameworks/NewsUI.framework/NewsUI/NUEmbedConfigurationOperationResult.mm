@interface NUEmbedConfigurationOperationResult
- (NUEmbedConfigurationOperationResult)initWithData:(id)data idenfifier:(id)idenfifier;
@end

@implementation NUEmbedConfigurationOperationResult

- (NUEmbedConfigurationOperationResult)initWithData:(id)data idenfifier:(id)idenfifier
{
  dataCopy = data;
  idenfifierCopy = idenfifier;
  v12.receiver = self;
  v12.super_class = NUEmbedConfigurationOperationResult;
  v9 = [(NUEmbedConfigurationOperationResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_data, data);
    objc_storeStrong(&v10->_identifier, idenfifier);
  }

  return v10;
}

@end