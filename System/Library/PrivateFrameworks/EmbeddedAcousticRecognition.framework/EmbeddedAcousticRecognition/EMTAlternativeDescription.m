@interface EMTAlternativeDescription
- (BOOL)isEqual:(id)a3;
- (EMTAlternativeDescription)initWithGenderDescription:(id)a3;
- (EMTAlternativeDescription)initWithMeaningDescription:(id)a3;
@end

@implementation EMTAlternativeDescription

- (EMTAlternativeDescription)initWithGenderDescription:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EMTAlternativeDescription;
  v6 = [(EMTAlternativeDescription *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_alternativeType = 0;
    objc_storeStrong(&v6->_genderDescription, a3);
  }

  return v7;
}

- (EMTAlternativeDescription)initWithMeaningDescription:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = EMTAlternativeDescription;
  v6 = [(EMTAlternativeDescription *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_alternativeType = 1;
    objc_storeStrong(&v6->_meaningDescription, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    alternativeType = self->_alternativeType;
    if (alternativeType == 1)
    {
      meaningDescription = self->_meaningDescription;
      v9 = [v5 meaningDescription];
      v10 = [(EMTMeaningDescription *)meaningDescription isEqual:v9];
    }

    else
    {
      if (alternativeType)
      {
        v11 = 0;
        goto LABEL_9;
      }

      genderDescription = self->_genderDescription;
      v9 = [v5 genderDescription];
      v10 = [(EMTGenderDescription *)genderDescription isEqual:v9];
    }

    v11 = v10;

LABEL_9:
    goto LABEL_10;
  }

  v11 = 0;
LABEL_10:

  return v11;
}

@end