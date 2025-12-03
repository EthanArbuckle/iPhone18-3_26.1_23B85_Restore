@interface CSUCLIPImageEncoderV3NetworkOutput
- (CSUCLIPImageEncoderV3NetworkOutput)initWithImageEmbedding:(id)embedding;
@end

@implementation CSUCLIPImageEncoderV3NetworkOutput

- (CSUCLIPImageEncoderV3NetworkOutput)initWithImageEmbedding:(id)embedding
{
  embeddingCopy = embedding;
  v9.receiver = self;
  v9.super_class = CSUCLIPImageEncoderV3NetworkOutput;
  v6 = [(CSUCLIPImageEncoderV3NetworkOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageEmbedding, embedding);
  }

  return v7;
}

@end