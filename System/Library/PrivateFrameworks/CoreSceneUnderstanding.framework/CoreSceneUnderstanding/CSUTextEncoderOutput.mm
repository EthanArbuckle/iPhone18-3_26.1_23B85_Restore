@interface CSUTextEncoderOutput
- (CSUTextEncoderOutput)init;
- (CSUTextEncoderOutput)initWithTextEmbedding:(id)a3;
@end

@implementation CSUTextEncoderOutput

- (CSUTextEncoderOutput)init
{
  v8.receiver = self;
  v8.super_class = CSUTextEncoderOutput;
  v2 = [(CSUTextEncoderOutput *)&v8 init];
  v3 = v2;
  if (v2)
  {
    CSUTextEmbedding = v2->_CSUTextEmbedding;
    v2->_CSUTextEmbedding = 0;

    additionalLayers = v3->_additionalLayers;
    v3->_additionalLayers = 0;

    v6 = v3;
  }

  return v3;
}

- (CSUTextEncoderOutput)initWithTextEmbedding:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CSUTextEncoderOutput;
  v6 = [(CSUTextEncoderOutput *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_CSUTextEmbedding, a3);
    v8 = v7;
  }

  return v7;
}

@end