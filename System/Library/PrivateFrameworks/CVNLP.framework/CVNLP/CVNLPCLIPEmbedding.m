@interface CVNLPCLIPEmbedding
- (CVNLPCLIPEmbedding)initWithData:(id)a3;
@end

@implementation CVNLPCLIPEmbedding

- (CVNLPCLIPEmbedding)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CVNLPCLIPEmbedding;
  v6 = [(CVNLPCLIPEmbedding *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
  }

  return v7;
}

@end