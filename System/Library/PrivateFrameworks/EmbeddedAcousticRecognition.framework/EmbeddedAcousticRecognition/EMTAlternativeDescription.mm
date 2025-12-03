@interface EMTAlternativeDescription
- (BOOL)isEqual:(id)equal;
- (EMTAlternativeDescription)initWithGenderDescription:(id)description;
- (EMTAlternativeDescription)initWithMeaningDescription:(id)description;
@end

@implementation EMTAlternativeDescription

- (EMTAlternativeDescription)initWithGenderDescription:(id)description
{
  descriptionCopy = description;
  v9.receiver = self;
  v9.super_class = EMTAlternativeDescription;
  v6 = [(EMTAlternativeDescription *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_alternativeType = 0;
    objc_storeStrong(&v6->_genderDescription, description);
  }

  return v7;
}

- (EMTAlternativeDescription)initWithMeaningDescription:(id)description
{
  descriptionCopy = description;
  v9.receiver = self;
  v9.super_class = EMTAlternativeDescription;
  v6 = [(EMTAlternativeDescription *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_alternativeType = 1;
    objc_storeStrong(&v6->_meaningDescription, description);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    alternativeType = self->_alternativeType;
    if (alternativeType == 1)
    {
      meaningDescription = self->_meaningDescription;
      meaningDescription = [v5 meaningDescription];
      v10 = [(EMTMeaningDescription *)meaningDescription isEqual:meaningDescription];
    }

    else
    {
      if (alternativeType)
      {
        v11 = 0;
        goto LABEL_9;
      }

      genderDescription = self->_genderDescription;
      meaningDescription = [v5 genderDescription];
      v10 = [(EMTGenderDescription *)genderDescription isEqual:meaningDescription];
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