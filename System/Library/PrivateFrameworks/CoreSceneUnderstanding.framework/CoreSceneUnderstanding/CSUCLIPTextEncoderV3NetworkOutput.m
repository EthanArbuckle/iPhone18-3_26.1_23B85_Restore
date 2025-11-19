@interface CSUCLIPTextEncoderV3NetworkOutput
- (CSUCLIPTextEncoderV3NetworkOutput)initWithTokenEmbeddingIDs:(id)a3 tokenEmbeddingMask:(id)a4 clipTextEmbedding:(id)a5;
@end

@implementation CSUCLIPTextEncoderV3NetworkOutput

- (CSUCLIPTextEncoderV3NetworkOutput)initWithTokenEmbeddingIDs:(id)a3 tokenEmbeddingMask:(id)a4 clipTextEmbedding:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = CSUCLIPTextEncoderV3NetworkOutput;
  v12 = [(CSUCLIPTextEncoderV3NetworkOutput *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_tokenEmbeddingIDs, a3);
    objc_storeStrong(&v13->_tokenEmbeddingMask, a4);
    objc_storeStrong(&v13->_clipTextEmbedding, a5);
    v14 = v13;
  }

  return v13;
}

@end