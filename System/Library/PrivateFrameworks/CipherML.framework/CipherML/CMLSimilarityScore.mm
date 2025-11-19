@interface CMLSimilarityScore
+ (id)scoreWithIdentifier:(unint64_t)a3 score:(float)a4;
+ (id)scoreWithIdentifier:(unint64_t)a3 score:(float)a4 metadata:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSimilarityScore:(id)a3;
- (CMLSimilarityScore)initWithCoder:(id)a3;
- (CMLSimilarityScore)initWithIdentifier:(unint64_t)a3 score:(float)a4 metadata:(id)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMLSimilarityScore

- (CMLSimilarityScore)initWithIdentifier:(unint64_t)a3 score:(float)a4 metadata:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = CMLSimilarityScore;
  v10 = [(CMLSimilarityScore *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_identifier = a3;
    v10->_score = a4;
    objc_storeStrong(&v10->_metadata, a5);
  }

  return v11;
}

+ (id)scoreWithIdentifier:(unint64_t)a3 score:(float)a4
{
  v6 = objc_alloc(objc_opt_class());
  *&v7 = a4;
  v8 = [v6 initWithIdentifier:a3 score:0 metadata:v7];

  return v8;
}

+ (id)scoreWithIdentifier:(unint64_t)a3 score:(float)a4 metadata:(id)a5
{
  v7 = a5;
  v8 = objc_alloc(objc_opt_class());
  *&v9 = a4;
  v10 = [v8 initWithIdentifier:a3 score:v7 metadata:v9];

  return v10;
}

- (BOOL)isEqualToSimilarityScore:(id)a3
{
  v4 = a3;
  v5 = [(CMLSimilarityScore *)self metadata];
  if (v5)
  {

LABEL_4:
    v7 = [(CMLSimilarityScore *)self metadata];
    v8 = [v4 metadata];
    v9 = [v7 isEqual:v8];

    goto LABEL_5;
  }

  v6 = [v4 metadata];

  if (v6)
  {
    goto LABEL_4;
  }

  v9 = 1;
LABEL_5:
  v10 = [(CMLSimilarityScore *)self identifier];
  if (v10 == [v4 identifier])
  {
    [(CMLSimilarityScore *)self score];
    v12 = v11;
    [v4 score];
    if (v12 == v13)
    {
      v14 = v9;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CMLSimilarityScore *)self isEqualToSimilarityScore:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[CMLSimilarityScore identifier](self, "identifier")}];
  v4 = [v3 hash];
  v5 = MEMORY[0x277CCABB0];
  [(CMLSimilarityScore *)self score];
  v6 = [v5 numberWithFloat:?];
  v7 = [v6 hash] ^ v4;
  v8 = [(CMLSimilarityScore *)self metadata];
  v9 = [v8 hash];

  return v7 ^ v9;
}

- (CMLSimilarityScore)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"identifier"];
  [v4 decodeFloatForKey:@"score"];
  v7 = v6;
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];

  LODWORD(v9) = v7;
  v10 = [(CMLSimilarityScore *)self initWithIdentifier:v5 score:v8 metadata:v9];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[CMLSimilarityScore identifier](self forKey:{"identifier"), @"identifier"}];
  [(CMLSimilarityScore *)self score];
  [v4 encodeFloat:@"score" forKey:?];
  v5 = [(CMLSimilarityScore *)self metadata];
  [v4 encodeObject:v5 forKey:@"metadata"];
}

@end