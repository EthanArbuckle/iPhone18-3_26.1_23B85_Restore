@interface MADImageEmbeddingResult
- (MADImageEmbeddingResult)initWithCoder:(id)coder;
- (MADImageEmbeddingResult)initWithVersion:(unint64_t)version data:(id)data type:(unint64_t)type;
- (MADImageEmbeddingResult)initWithVersion:(unint64_t)version data:(id)data type:(unint64_t)type shape:(id)shape;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADImageEmbeddingResult

- (MADImageEmbeddingResult)initWithVersion:(unint64_t)version data:(id)data type:(unint64_t)type
{
  dataCopy = data;
  v13.receiver = self;
  v13.super_class = MADImageEmbeddingResult;
  v9 = [(MADResult *)&v13 init];
  if (v9)
  {
    v10 = [[MADEmbeddingResult alloc] initWithVersion:version data:dataCopy type:type];
    embedding = v9->_embedding;
    v9->_embedding = v10;
  }

  return v9;
}

- (MADImageEmbeddingResult)initWithVersion:(unint64_t)version data:(id)data type:(unint64_t)type shape:(id)shape
{
  dataCopy = data;
  shapeCopy = shape;
  v16.receiver = self;
  v16.super_class = MADImageEmbeddingResult;
  v12 = [(MADResult *)&v16 init];
  if (v12)
  {
    v13 = [[MADEmbeddingResult alloc] initWithVersion:version data:dataCopy type:type shape:shapeCopy];
    embedding = v12->_embedding;
    v12->_embedding = v13;
  }

  return v12;
}

- (MADImageEmbeddingResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MADImageEmbeddingResult;
  v5 = [(MADResult *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"embedding"];
    embedding = v5->_embedding;
    v5->_embedding = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = MADImageEmbeddingResult;
  [(MADResult *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_embedding forKey:@"embedding"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"embedding: %@>", self->_embedding];

  return string;
}

@end