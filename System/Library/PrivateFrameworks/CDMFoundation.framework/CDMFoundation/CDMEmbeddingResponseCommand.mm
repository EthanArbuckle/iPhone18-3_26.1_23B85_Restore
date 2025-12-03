@interface CDMEmbeddingResponseCommand
- (CDMEmbeddingResponseCommand)initWithTokenChain:(id)chain embeddingTensor:(id)tensor numTokens:(unint64_t)tokens numLayers:(unint64_t)layers embeddingDim:(unint64_t)dim;
- (id)dictionaryRepresentation;
@end

@implementation CDMEmbeddingResponseCommand

- (id)dictionaryRepresentation
{
  v12[4] = *MEMORY[0x1E69E9840];
  values = [(NLv4EmbeddingTensor *)self->_embeddingTensor values];
  v4 = [values componentsJoinedByString:{@", "}];

  v12[0] = v4;
  v11[0] = @"embeddings";
  v11[1] = @"numTokens";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_numTokens];
  v12[1] = v5;
  v11[2] = @"numLayers";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_numLayers];
  v12[2] = v6;
  v11[3] = @"embeddingDim";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_embeddingDim];
  v12[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (CDMEmbeddingResponseCommand)initWithTokenChain:(id)chain embeddingTensor:(id)tensor numTokens:(unint64_t)tokens numLayers:(unint64_t)layers embeddingDim:(unint64_t)dim
{
  chainCopy = chain;
  tensorCopy = tensor;
  v20.receiver = self;
  v20.super_class = CDMEmbeddingResponseCommand;
  v14 = [(CDMBaseCommand *)&v20 init];
  if (v14)
  {
    v15 = [chainCopy copy];
    tokenChain = v14->_tokenChain;
    v14->_tokenChain = v15;

    v17 = [tensorCopy copy];
    embeddingTensor = v14->_embeddingTensor;
    v14->_embeddingTensor = v17;

    v14->_numTokens = tokens;
    v14->_numLayers = layers;
    v14->_embeddingDim = dim;
  }

  return v14;
}

@end