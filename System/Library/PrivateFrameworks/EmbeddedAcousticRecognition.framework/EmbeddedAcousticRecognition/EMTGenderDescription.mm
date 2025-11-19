@interface EMTGenderDescription
- (BOOL)isEqual:(id)a3;
- (EMTGenderDescription)initWithGender:(unint64_t)a3 defaultGender:(unint64_t)a4;
@end

@implementation EMTGenderDescription

- (EMTGenderDescription)initWithGender:(unint64_t)a3 defaultGender:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = EMTGenderDescription;
  result = [(EMTGenderDescription *)&v7 init];
  if (result)
  {
    result->_gender = a3;
    result->_defaultGender = a4;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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