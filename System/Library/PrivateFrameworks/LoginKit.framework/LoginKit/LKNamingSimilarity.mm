@interface LKNamingSimilarity
+ (id)namingSimilarityWithSimilarity:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLKNamingSimilarity:(id)a3;
- (LKNamingSimilarity)init;
- (LKNamingSimilarity)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setSimilarity:(unint64_t)a3;
@end

@implementation LKNamingSimilarity

+ (id)namingSimilarityWithSimilarity:(unint64_t)a3
{
  v4 = objc_opt_new();
  [v4 setSimilarity:a3];

  return v4;
}

- (LKNamingSimilarity)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = LKNamingSimilarity;
  v5 = [(LKNamingSimilarity *)&v7 init];
  if (v5)
  {
    -[LKNamingSimilarity setSimilarity:](v5, "setSimilarity:", [v4 decodeIntegerForKey:@"similarity"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[LKNamingSimilarity similarity](self forKey:{"similarity"), @"similarity"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(LKNamingSimilarity *)self isEqualToLKNamingSimilarity:v5];
  }

  return v6;
}

- (BOOL)isEqualToLKNamingSimilarity:(id)a3
{
  v4 = a3;
  v5 = [(LKNamingSimilarity *)self similarity];
  v6 = [v4 similarity];

  return v5 == v6;
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

- (void)setSimilarity:(unint64_t)a3
{
  if (self->_similarity != a3)
  {
    self->_similarity = a3;
  }
}

@end