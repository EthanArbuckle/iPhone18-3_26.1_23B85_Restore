@interface MADPersonalizedEmbeddingResult
- (MADPersonalizedEmbeddingResult)initWithCoder:(id)coder;
- (MADPersonalizedEmbeddingResult)initWithEmbedding:(id)embedding hiddenLayer:(id)layer pooledEmbedding:(id)pooledEmbedding personalized:(BOOL)personalized;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADPersonalizedEmbeddingResult

- (MADPersonalizedEmbeddingResult)initWithEmbedding:(id)embedding hiddenLayer:(id)layer pooledEmbedding:(id)pooledEmbedding personalized:(BOOL)personalized
{
  embeddingCopy = embedding;
  layerCopy = layer;
  pooledEmbeddingCopy = pooledEmbedding;
  v17.receiver = self;
  v17.super_class = MADPersonalizedEmbeddingResult;
  v14 = [(MADPersonalizedEmbeddingResult *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_embedding, embedding);
    objc_storeStrong(&v15->_hiddenLayer, layer);
    objc_storeStrong(&v15->_pooledEmbedding, pooledEmbedding);
    v15->_personalized = personalized;
  }

  return v15;
}

- (MADPersonalizedEmbeddingResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MADPersonalizedEmbeddingResult;
  v5 = [(MADMultiModalResult *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Embedding"];
    embedding = v5->_embedding;
    v5->_embedding = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HiddenLayer"];
    hiddenLayer = v5->_hiddenLayer;
    v5->_hiddenLayer = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PooledEmbedding"];
    pooledEmbedding = v5->_pooledEmbedding;
    v5->_pooledEmbedding = v10;

    v5->_personalized = [coderCopy decodeBoolForKey:@"Personalized"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADPersonalizedEmbeddingResult;
  coderCopy = coder;
  [(MADMultiModalResult *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_embedding forKey:{@"Embedding", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_hiddenLayer forKey:@"HiddenLayer"];
  [coderCopy encodeObject:self->_pooledEmbedding forKey:@"PooledEmbedding"];
  [coderCopy encodeBool:self->_personalized forKey:@"Personalized"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"personalized: %d, ", self->_personalized];
  [string appendFormat:@"embedding: %@, ", self->_embedding];
  [string appendFormat:@"hiddenLayer: %@, ", self->_hiddenLayer];
  [string appendFormat:@"pooledEmbedding: %@>", self->_pooledEmbedding];

  return string;
}

@end