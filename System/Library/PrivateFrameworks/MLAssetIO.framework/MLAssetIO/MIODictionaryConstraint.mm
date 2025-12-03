@interface MIODictionaryConstraint
- (BOOL)isEqual:(id)equal;
- (MIODictionaryConstraint)initWithSpecification:(const void *)specification;
- (NSString)description;
- (int64_t)keyType;
@end

@implementation MIODictionaryConstraint

- (MIODictionaryConstraint)initWithSpecification:(const void *)specification
{
  v7.receiver = self;
  v7.super_class = MIODictionaryConstraint;
  v4 = [(MIODictionaryConstraint *)&v7 init];
  v5 = v4;
  if (v4)
  {
    CoreML::Specification::DictionaryFeatureType::CopyFrom((v4 + 8), specification);
  }

  return v5;
}

- (NSString)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = MIOFeatureTypeToString([(MIODictionaryConstraint *)self keyType]);
  v4 = [v2 stringWithFormat:@"MIODictionaryConstraint { keyType: %@ }", v3];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      keyType = [(MIODictionaryConstraint *)self keyType];
      v7 = keyType == [(MIODictionaryConstraint *)v5 keyType];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (int64_t)keyType
{
  v2 = self->_dictionaryFeatureTypeParams._oneof_case_[0];
  v3 = 3;
  if (v2 != 2)
  {
    v3 = 0;
  }

  if (v2 == 1)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

@end