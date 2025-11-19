@interface MADPersonalizedEmbeddingResult
- (MADPersonalizedEmbeddingResult)initWithCoder:(id)a3;
- (MADPersonalizedEmbeddingResult)initWithEmbedding:(id)a3 hiddenLayer:(id)a4 pooledEmbedding:(id)a5 personalized:(BOOL)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADPersonalizedEmbeddingResult

- (MADPersonalizedEmbeddingResult)initWithEmbedding:(id)a3 hiddenLayer:(id)a4 pooledEmbedding:(id)a5 personalized:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = MADPersonalizedEmbeddingResult;
  v14 = [(MADPersonalizedEmbeddingResult *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_embedding, a3);
    objc_storeStrong(&v15->_hiddenLayer, a4);
    objc_storeStrong(&v15->_pooledEmbedding, a5);
    v15->_personalized = a6;
  }

  return v15;
}

- (MADPersonalizedEmbeddingResult)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MADPersonalizedEmbeddingResult;
  v5 = [(MADMultiModalResult *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Embedding"];
    embedding = v5->_embedding;
    v5->_embedding = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HiddenLayer"];
    hiddenLayer = v5->_hiddenLayer;
    v5->_hiddenLayer = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PooledEmbedding"];
    pooledEmbedding = v5->_pooledEmbedding;
    v5->_pooledEmbedding = v10;

    v5->_personalized = [v4 decodeBoolForKey:@"Personalized"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADPersonalizedEmbeddingResult;
  v4 = a3;
  [(MADMultiModalResult *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_embedding forKey:{@"Embedding", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_hiddenLayer forKey:@"HiddenLayer"];
  [v4 encodeObject:self->_pooledEmbedding forKey:@"PooledEmbedding"];
  [v4 encodeBool:self->_personalized forKey:@"Personalized"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"personalized: %d, ", self->_personalized];
  [v3 appendFormat:@"embedding: %@, ", self->_embedding];
  [v3 appendFormat:@"hiddenLayer: %@, ", self->_hiddenLayer];
  [v3 appendFormat:@"pooledEmbedding: %@>", self->_pooledEmbedding];

  return v3;
}

@end