@interface LNSystemProtocolParameter
- (BOOL)isEqual:(id)a3;
- (LNSystemProtocolParameter)initWithCoder:(id)a3;
- (LNSystemProtocolParameter)initWithVocabularyModel:(int64_t)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNSystemProtocolParameter

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [(LNSystemProtocolParameter *)self vocabularyModel];
      v8 = v7 == [(LNSystemProtocolParameter *)v6 vocabularyModel];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[LNSystemProtocolParameter vocabularyModel](self forKey:{"vocabularyModel"), @"vocabularyModel"}];
}

- (LNSystemProtocolParameter)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"vocabularyModel"];

  return [(LNSystemProtocolParameter *)self initWithVocabularyModel:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNSystemProtocolParameter *)self vocabularyModel];
  v7 = @"AppSetting";
  if (!v6)
  {
    v7 = @"None";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p, vocabularyModel: %@>", v5, self, v7];

  return v8;
}

- (LNSystemProtocolParameter)initWithVocabularyModel:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = LNSystemProtocolParameter;
  v4 = [(LNSystemProtocolParameter *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_vocabularyModel = a3;
    v6 = v4;
  }

  return v5;
}

@end