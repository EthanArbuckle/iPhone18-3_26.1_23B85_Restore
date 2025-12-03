@interface CKVMatchingSpanPriorInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMatchingSpanPriorInfo:(id)info;
- (CKVMatchingSpanPriorInfo)init;
- (CKVMatchingSpanPriorInfo)initWithCoder:(id)coder;
- (CKVMatchingSpanPriorInfo)initWithOrdinality:(unsigned int)ordinality score:(float)score;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKVMatchingSpanPriorInfo

- (BOOL)isEqualToMatchingSpanPriorInfo:(id)info
{
  infoCopy = info;
  ordinality = self->_ordinality;
  if (ordinality == [infoCopy ordinality])
  {
    score = self->_score;
    [infoCopy score];
    v8 = score == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CKVMatchingSpanPriorInfo *)self isEqualToMatchingSpanPriorInfo:v5];
  }

  return v6;
}

- (CKVMatchingSpanPriorInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CKVMatchingSpanPriorInfo;
  v5 = [(CKVMatchingSpanPriorInfo *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ordinality"];
    v5->_ordinality = [v6 unsignedIntValue];

    [coderCopy decodeFloatForKey:@"score"];
    v5->_score = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  ordinality = self->_ordinality;
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInt:ordinality];
  [coderCopy encodeObject:v6 forKey:@"ordinality"];

  *&v7 = self->_score;
  [coderCopy encodeFloat:@"score" forKey:v7];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_ordinality];
  v4 = [v3 hash];
  *&v5 = self->_score;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  v7 = [v6 hash];

  return v7 ^ v4;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CKVMatchingSpanPriorInfo;
  v3 = [(CKVMatchingSpanPriorInfo *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" ordinality: %d, prior score: %f", self->_ordinality, self->_score];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_opt_class() allocWithZone:zone];
  *(result + 2) = self->_ordinality;
  *(result + 3) = LODWORD(self->_score);
  return result;
}

- (CKVMatchingSpanPriorInfo)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"You must use supported initializers" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CKVMatchingSpanPriorInfo)initWithOrdinality:(unsigned int)ordinality score:(float)score
{
  v14 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = CKVMatchingSpanPriorInfo;
  v6 = [(CKVMatchingSpanPriorInfo *)&v11 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_7;
  }

  if (score >= 0.0)
  {
    v6->_ordinality = ordinality;
    v6->_score = score;
LABEL_7:
    v9 = v6;
    goto LABEL_8;
  }

  v8 = CKLogContextVocabulary;
  if (os_log_type_enabled(CKLogContextVocabulary, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v13 = "[CKVMatchingSpanPriorInfo initWithOrdinality:score:]";
    _os_log_error_impl(&dword_1C8683000, v8, OS_LOG_TYPE_ERROR, "%s Cannot construct CKVMatchingSpanPriorInfo with negative prior score.", buf, 0xCu);
  }

  v9 = 0;
LABEL_8:

  return v9;
}

@end