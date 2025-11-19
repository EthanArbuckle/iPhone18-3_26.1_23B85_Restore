@interface CDMEmbeddingResponseCommand
- (CDMEmbeddingResponseCommand)initWithTokenChain:(id)a3 embeddingTensor:(id)a4 numTokens:(unint64_t)a5 numLayers:(unint64_t)a6 embeddingDim:(unint64_t)a7;
- (id)dictionaryRepresentation;
@end

@implementation CDMEmbeddingResponseCommand

- (id)dictionaryRepresentation
{
  v12[4] = *MEMORY[0x1E69E9840];
  v3 = [(NLv4EmbeddingTensor *)self->_embeddingTensor values];
  v4 = [v3 componentsJoinedByString:{@", "}];

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

- (CDMEmbeddingResponseCommand)initWithTokenChain:(id)a3 embeddingTensor:(id)a4 numTokens:(unint64_t)a5 numLayers:(unint64_t)a6 embeddingDim:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v20.receiver = self;
  v20.super_class = CDMEmbeddingResponseCommand;
  v14 = [(CDMBaseCommand *)&v20 init];
  if (v14)
  {
    v15 = [v12 copy];
    tokenChain = v14->_tokenChain;
    v14->_tokenChain = v15;

    v17 = [v13 copy];
    embeddingTensor = v14->_embeddingTensor;
    v14->_embeddingTensor = v17;

    v14->_numTokens = a5;
    v14->_numLayers = a6;
    v14->_embeddingDim = a7;
  }

  return v14;
}

@end