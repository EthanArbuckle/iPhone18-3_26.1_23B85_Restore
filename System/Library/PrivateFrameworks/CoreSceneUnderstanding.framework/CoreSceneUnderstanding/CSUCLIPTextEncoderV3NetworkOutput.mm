@interface CSUCLIPTextEncoderV3NetworkOutput
- (CSUCLIPTextEncoderV3NetworkOutput)initWithTokenEmbeddingIDs:(id)ds tokenEmbeddingMask:(id)mask clipTextEmbedding:(id)embedding;
@end

@implementation CSUCLIPTextEncoderV3NetworkOutput

- (CSUCLIPTextEncoderV3NetworkOutput)initWithTokenEmbeddingIDs:(id)ds tokenEmbeddingMask:(id)mask clipTextEmbedding:(id)embedding
{
  dsCopy = ds;
  maskCopy = mask;
  embeddingCopy = embedding;
  v16.receiver = self;
  v16.super_class = CSUCLIPTextEncoderV3NetworkOutput;
  v12 = [(CSUCLIPTextEncoderV3NetworkOutput *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_tokenEmbeddingIDs, ds);
    objc_storeStrong(&v13->_tokenEmbeddingMask, mask);
    objc_storeStrong(&v13->_clipTextEmbedding, embedding);
    v14 = v13;
  }

  return v13;
}

@end