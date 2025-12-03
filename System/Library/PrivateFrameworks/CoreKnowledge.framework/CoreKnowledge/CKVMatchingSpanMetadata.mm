@interface CKVMatchingSpanMetadata
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMatchingSpanMetadata:(id)metadata;
- (CKVMatchingSpanMetadata)init;
- (CKVMatchingSpanMetadata)initWithCoder:(id)coder;
- (CKVMatchingSpanMetadata)initWithMatchingSpanPriorInfo:(id)info matchScore:(float)score;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKVMatchingSpanMetadata

- (BOOL)isEqualToMatchingSpanMetadata:(id)metadata
{
  metadataCopy = metadata;
  matchScore = self->_matchScore;
  [metadataCopy matchScore];
  if (matchScore == v6)
  {
    priorInfo = [metadataCopy priorInfo];
    priorInfo = self->_priorInfo;
    if (priorInfo | priorInfo)
    {
      v7 = 0;
      if (priorInfo && priorInfo)
      {
        v7 = [(CKVMatchingSpanPriorInfo *)priorInfo isEqual:priorInfo];
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CKVMatchingSpanMetadata *)self isEqualToMatchingSpanMetadata:v5];
  }

  return v6;
}

- (CKVMatchingSpanMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CKVMatchingSpanMetadata;
  v5 = [(CKVMatchingSpanMetadata *)&v10 init];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"matchScore"];
    v5->_matchScore = v6;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"priorInfo"];
    priorInfo = v5->_priorInfo;
    v5->_priorInfo = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  matchScore = self->_matchScore;
  coderCopy = coder;
  *&v5 = matchScore;
  [coderCopy encodeFloat:@"matchScore" forKey:v5];
  [coderCopy encodeObject:self->_priorInfo forKey:@"priorInfo"];
}

- (unint64_t)hash
{
  *&v2 = self->_matchScore;
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:v2];
  v5 = [v4 hash];
  v6 = [(CKVMatchingSpanPriorInfo *)self->_priorInfo hash];

  return v6 ^ v5;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CKVMatchingSpanMetadata;
  v3 = [(CKVMatchingSpanMetadata *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" prior information: %@, match score: %f", self->_priorInfo, self->_matchScore];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  *(v4 + 8) = self->_matchScore;
  v5 = [(CKVMatchingSpanPriorInfo *)self->_priorInfo copy];
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  return v4;
}

- (CKVMatchingSpanMetadata)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"You must use supported initializers" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CKVMatchingSpanMetadata)initWithMatchingSpanPriorInfo:(id)info matchScore:(float)score
{
  v16 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v13.receiver = self;
  v13.super_class = CKVMatchingSpanMetadata;
  v8 = [(CKVMatchingSpanMetadata *)&v13 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_7;
  }

  if (score >= 0.0)
  {
    objc_storeStrong(&v8->_priorInfo, info);
    v9[2] = score;
LABEL_7:
    v11 = v9;
    goto LABEL_8;
  }

  v10 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v15 = "[CKVMatchingSpanMetadata initWithMatchingSpanPriorInfo:matchScore:]";
    _os_log_error_impl(&dword_1C8683000, v10, OS_LOG_TYPE_ERROR, "%s Cannot construct CKVMatchingSpanMetadata with negative match score.", buf, 0xCu);
  }

  v11 = 0;
LABEL_8:

  return v11;
}

@end