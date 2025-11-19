@interface CSUTextEncoderE5MLNetworkOutput
- (CSUTextEncoderE5MLNetworkOutput)initWithTextEmbedding:(id)a3 tokenSegments:(id)a4 textChunksTokenIDs:(id)a5 tokenEmbedding:(id)a6;
@end

@implementation CSUTextEncoderE5MLNetworkOutput

- (CSUTextEncoderE5MLNetworkOutput)initWithTextEmbedding:(id)a3 tokenSegments:(id)a4 textChunksTokenIDs:(id)a5 tokenEmbedding:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = CSUTextEncoderE5MLNetworkOutput;
  v15 = [(CSUTextEncoderE5MLNetworkOutput *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_tokenSegments, a4);
    objc_storeStrong(&v16->_textEmbedding, a3);
    objc_storeStrong(&v16->_textChunksTokenIDs, a5);
    objc_storeStrong(&v16->_tokenEmbedding, a6);
    v17 = v16;
  }

  return v16;
}

@end