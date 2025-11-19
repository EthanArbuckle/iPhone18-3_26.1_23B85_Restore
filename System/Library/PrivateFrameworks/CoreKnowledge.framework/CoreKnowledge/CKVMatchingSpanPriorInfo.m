@interface CKVMatchingSpanPriorInfo
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMatchingSpanPriorInfo:(id)a3;
- (CKVMatchingSpanPriorInfo)init;
- (CKVMatchingSpanPriorInfo)initWithCoder:(id)a3;
- (CKVMatchingSpanPriorInfo)initWithOrdinality:(unsigned int)a3 score:(float)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKVMatchingSpanPriorInfo

- (BOOL)isEqualToMatchingSpanPriorInfo:(id)a3
{
  v4 = a3;
  ordinality = self->_ordinality;
  if (ordinality == [v4 ordinality])
  {
    score = self->_score;
    [v4 score];
    v8 = score == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CKVMatchingSpanPriorInfo *)self isEqualToMatchingSpanPriorInfo:v5];
  }

  return v6;
}

- (CKVMatchingSpanPriorInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CKVMatchingSpanPriorInfo;
  v5 = [(CKVMatchingSpanPriorInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ordinality"];
    v5->_ordinality = [v6 unsignedIntValue];

    [v4 decodeFloatForKey:@"score"];
    v5->_score = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  ordinality = self->_ordinality;
  v8 = a3;
  v6 = [v4 numberWithUnsignedInt:ordinality];
  [v8 encodeObject:v6 forKey:@"ordinality"];

  *&v7 = self->_score;
  [v8 encodeFloat:@"score" forKey:v7];
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

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_opt_class() allocWithZone:a3];
  *(result + 2) = self->_ordinality;
  *(result + 3) = LODWORD(self->_score);
  return result;
}

- (CKVMatchingSpanPriorInfo)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"You must use supported initializers" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CKVMatchingSpanPriorInfo)initWithOrdinality:(unsigned int)a3 score:(float)a4
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

  if (a4 >= 0.0)
  {
    v6->_ordinality = a3;
    v6->_score = a4;
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