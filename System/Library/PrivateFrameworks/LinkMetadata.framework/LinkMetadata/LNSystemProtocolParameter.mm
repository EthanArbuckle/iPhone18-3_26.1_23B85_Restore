@interface LNSystemProtocolParameter
- (BOOL)isEqual:(id)equal;
- (LNSystemProtocolParameter)initWithCoder:(id)coder;
- (LNSystemProtocolParameter)initWithVocabularyModel:(int64_t)model;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNSystemProtocolParameter

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      vocabularyModel = [(LNSystemProtocolParameter *)self vocabularyModel];
      v8 = vocabularyModel == [(LNSystemProtocolParameter *)v6 vocabularyModel];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[LNSystemProtocolParameter vocabularyModel](self forKey:{"vocabularyModel"), @"vocabularyModel"}];
}

- (LNSystemProtocolParameter)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"vocabularyModel"];

  return [(LNSystemProtocolParameter *)self initWithVocabularyModel:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  vocabularyModel = [(LNSystemProtocolParameter *)self vocabularyModel];
  v7 = @"AppSetting";
  if (!vocabularyModel)
  {
    v7 = @"None";
  }

  v8 = [v3 stringWithFormat:@"<%@: %p, vocabularyModel: %@>", v5, self, v7];

  return v8;
}

- (LNSystemProtocolParameter)initWithVocabularyModel:(int64_t)model
{
  v8.receiver = self;
  v8.super_class = LNSystemProtocolParameter;
  v4 = [(LNSystemProtocolParameter *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_vocabularyModel = model;
    v6 = v4;
  }

  return v5;
}

@end