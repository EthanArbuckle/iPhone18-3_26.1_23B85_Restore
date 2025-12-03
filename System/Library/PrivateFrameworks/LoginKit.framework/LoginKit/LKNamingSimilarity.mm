@interface LKNamingSimilarity
+ (id)namingSimilarityWithSimilarity:(unint64_t)similarity;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLKNamingSimilarity:(id)similarity;
- (LKNamingSimilarity)init;
- (LKNamingSimilarity)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setSimilarity:(unint64_t)similarity;
@end

@implementation LKNamingSimilarity

+ (id)namingSimilarityWithSimilarity:(unint64_t)similarity
{
  v4 = objc_opt_new();
  [v4 setSimilarity:similarity];

  return v4;
}

- (LKNamingSimilarity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = LKNamingSimilarity;
  v5 = [(LKNamingSimilarity *)&v7 init];
  if (v5)
  {
    -[LKNamingSimilarity setSimilarity:](v5, "setSimilarity:", [coderCopy decodeIntegerForKey:@"similarity"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[LKNamingSimilarity similarity](self forKey:{"similarity"), @"similarity"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(LKNamingSimilarity *)self isEqualToLKNamingSimilarity:v5];
  }

  return v6;
}

- (BOOL)isEqualToLKNamingSimilarity:(id)similarity
{
  similarityCopy = similarity;
  similarity = [(LKNamingSimilarity *)self similarity];
  similarity2 = [similarityCopy similarity];

  return similarity == similarity2;
}

- (LKNamingSimilarity)init
{
  v3.receiver = self;
  v3.super_class = LKNamingSimilarity;
  result = [(LKNamingSimilarity *)&v3 init];
  if (result)
  {
    result->_similarity = 2;
  }

  return result;
}

- (void)setSimilarity:(unint64_t)similarity
{
  if (self->_similarity != similarity)
  {
    self->_similarity = similarity;
  }
}

@end