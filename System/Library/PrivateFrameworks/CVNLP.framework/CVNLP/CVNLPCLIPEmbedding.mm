@interface CVNLPCLIPEmbedding
- (CVNLPCLIPEmbedding)initWithData:(id)data;
@end

@implementation CVNLPCLIPEmbedding

- (CVNLPCLIPEmbedding)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = CVNLPCLIPEmbedding;
  v6 = [(CVNLPCLIPEmbedding *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
  }

  return v7;
}

@end