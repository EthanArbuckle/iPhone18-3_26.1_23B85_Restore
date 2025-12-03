@interface CMLSimilarityScore
+ (id)scoreWithIdentifier:(unint64_t)identifier score:(float)score;
+ (id)scoreWithIdentifier:(unint64_t)identifier score:(float)score metadata:(id)metadata;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSimilarityScore:(id)score;
- (CMLSimilarityScore)initWithCoder:(id)coder;
- (CMLSimilarityScore)initWithIdentifier:(unint64_t)identifier score:(float)score metadata:(id)metadata;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMLSimilarityScore

- (CMLSimilarityScore)initWithIdentifier:(unint64_t)identifier score:(float)score metadata:(id)metadata
{
  metadataCopy = metadata;
  v13.receiver = self;
  v13.super_class = CMLSimilarityScore;
  v10 = [(CMLSimilarityScore *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_identifier = identifier;
    v10->_score = score;
    objc_storeStrong(&v10->_metadata, metadata);
  }

  return v11;
}

+ (id)scoreWithIdentifier:(unint64_t)identifier score:(float)score
{
  v6 = objc_alloc(objc_opt_class());
  *&v7 = score;
  v8 = [v6 initWithIdentifier:identifier score:0 metadata:v7];

  return v8;
}

+ (id)scoreWithIdentifier:(unint64_t)identifier score:(float)score metadata:(id)metadata
{
  metadataCopy = metadata;
  v8 = objc_alloc(objc_opt_class());
  *&v9 = score;
  v10 = [v8 initWithIdentifier:identifier score:metadataCopy metadata:v9];

  return v10;
}

- (BOOL)isEqualToSimilarityScore:(id)score
{
  scoreCopy = score;
  metadata = [(CMLSimilarityScore *)self metadata];
  if (metadata)
  {

LABEL_4:
    metadata2 = [(CMLSimilarityScore *)self metadata];
    metadata3 = [scoreCopy metadata];
    v9 = [metadata2 isEqual:metadata3];

    goto LABEL_5;
  }

  metadata4 = [scoreCopy metadata];

  if (metadata4)
  {
    goto LABEL_4;
  }

  v9 = 1;
LABEL_5:
  identifier = [(CMLSimilarityScore *)self identifier];
  if (identifier == [scoreCopy identifier])
  {
    [(CMLSimilarityScore *)self score];
    v12 = v11;
    [scoreCopy score];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CMLSimilarityScore *)self isEqualToSimilarityScore:v5];
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
  metadata = [(CMLSimilarityScore *)self metadata];
  v9 = [metadata hash];

  return v7 ^ v9;
}

- (CMLSimilarityScore)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"identifier"];
  [coderCopy decodeFloatForKey:@"score"];
  v7 = v6;
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];

  LODWORD(v9) = v7;
  v10 = [(CMLSimilarityScore *)self initWithIdentifier:v5 score:v8 metadata:v9];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[CMLSimilarityScore identifier](self forKey:{"identifier"), @"identifier"}];
  [(CMLSimilarityScore *)self score];
  [coderCopy encodeFloat:@"score" forKey:?];
  metadata = [(CMLSimilarityScore *)self metadata];
  [coderCopy encodeObject:metadata forKey:@"metadata"];
}

@end