@interface MADImageEmbeddingResult
- (MADImageEmbeddingResult)initWithCoder:(id)a3;
- (MADImageEmbeddingResult)initWithVersion:(unint64_t)a3 data:(id)a4 type:(unint64_t)a5;
- (MADImageEmbeddingResult)initWithVersion:(unint64_t)a3 data:(id)a4 type:(unint64_t)a5 shape:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADImageEmbeddingResult

- (MADImageEmbeddingResult)initWithVersion:(unint64_t)a3 data:(id)a4 type:(unint64_t)a5
{
  v8 = a4;
  v13.receiver = self;
  v13.super_class = MADImageEmbeddingResult;
  v9 = [(MADResult *)&v13 init];
  if (v9)
  {
    v10 = [[MADEmbeddingResult alloc] initWithVersion:a3 data:v8 type:a5];
    embedding = v9->_embedding;
    v9->_embedding = v10;
  }

  return v9;
}

- (MADImageEmbeddingResult)initWithVersion:(unint64_t)a3 data:(id)a4 type:(unint64_t)a5 shape:(id)a6
{
  v10 = a4;
  v11 = a6;
  v16.receiver = self;
  v16.super_class = MADImageEmbeddingResult;
  v12 = [(MADResult *)&v16 init];
  if (v12)
  {
    v13 = [[MADEmbeddingResult alloc] initWithVersion:a3 data:v10 type:a5 shape:v11];
    embedding = v12->_embedding;
    v12->_embedding = v13;
  }

  return v12;
}

- (MADImageEmbeddingResult)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MADImageEmbeddingResult;
  v5 = [(MADResult *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"embedding"];
    embedding = v5->_embedding;
    v5->_embedding = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MADImageEmbeddingResult;
  [(MADResult *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_embedding forKey:@"embedding"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"embedding: %@>", self->_embedding];

  return v3;
}

@end