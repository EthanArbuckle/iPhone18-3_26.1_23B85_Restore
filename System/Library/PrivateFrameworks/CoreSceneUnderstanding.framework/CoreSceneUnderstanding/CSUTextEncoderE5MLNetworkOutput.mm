@interface CSUTextEncoderE5MLNetworkOutput
- (CSUTextEncoderE5MLNetworkOutput)initWithTextEmbedding:(id)embedding tokenSegments:(id)segments textChunksTokenIDs:(id)ds tokenEmbedding:(id)tokenEmbedding;
@end

@implementation CSUTextEncoderE5MLNetworkOutput

- (CSUTextEncoderE5MLNetworkOutput)initWithTextEmbedding:(id)embedding tokenSegments:(id)segments textChunksTokenIDs:(id)ds tokenEmbedding:(id)tokenEmbedding
{
  embeddingCopy = embedding;
  segmentsCopy = segments;
  dsCopy = ds;
  tokenEmbeddingCopy = tokenEmbedding;
  v19.receiver = self;
  v19.super_class = CSUTextEncoderE5MLNetworkOutput;
  v15 = [(CSUTextEncoderE5MLNetworkOutput *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_tokenSegments, segments);
    objc_storeStrong(&v16->_textEmbedding, embedding);
    objc_storeStrong(&v16->_textChunksTokenIDs, ds);
    objc_storeStrong(&v16->_tokenEmbedding, tokenEmbedding);
    v17 = v16;
  }

  return v16;
}

@end