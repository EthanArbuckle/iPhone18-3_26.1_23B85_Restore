@interface CSUCLIPImageEncoderV3NetworkOutput
- (CSUCLIPImageEncoderV3NetworkOutput)initWithImageEmbedding:(id)a3;
@end

@implementation CSUCLIPImageEncoderV3NetworkOutput

- (CSUCLIPImageEncoderV3NetworkOutput)initWithImageEmbedding:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CSUCLIPImageEncoderV3NetworkOutput;
  v6 = [(CSUCLIPImageEncoderV3NetworkOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageEmbedding, a3);
  }

  return v7;
}

@end