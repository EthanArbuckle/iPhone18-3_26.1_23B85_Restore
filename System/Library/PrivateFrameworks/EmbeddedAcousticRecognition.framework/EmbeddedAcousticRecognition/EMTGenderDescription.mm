@interface EMTGenderDescription
- (BOOL)isEqual:(id)equal;
- (EMTGenderDescription)initWithGender:(unint64_t)gender defaultGender:(unint64_t)defaultGender;
@end

@implementation EMTGenderDescription

- (EMTGenderDescription)initWithGender:(unint64_t)gender defaultGender:(unint64_t)defaultGender
{
  v7.receiver = self;
  v7.super_class = EMTGenderDescription;
  result = [(EMTGenderDescription *)&v7 init];
  if (result)
  {
    result->_gender = gender;
    result->_defaultGender = defaultGender;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    gender = self->_gender;
    if (gender == [v5 gender])
    {
      defaultGender = self->_defaultGender;
      v8 = defaultGender == [v5 defaultGender];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end