@interface INFVariantsDescriptor
+ (id)variant;
+ (id)variantWithVariants:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (INFVariantsDescriptor)init;
- (INFVariantsDescriptor)initWithVariants:(unint64_t)a3;
- (NSString)dictionaryKey;
- (id)append:(id)a3 toString:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)variantByRemovingOneAttribute;
@end

@implementation INFVariantsDescriptor

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    gender = self->_gender;
    if (gender != [(INFVariantsDescriptor *)v4 gender])
    {
      v8 = 0;
      goto LABEL_9;
    }

    plurality = self->_plurality;
    v7 = plurality == [(INFVariantsDescriptor *)v4 plurality];
  }

  else
  {
    v7 = self == v4;
  }

  v8 = v7;
LABEL_9:

  return v8;
}

- (id)variantByRemovingOneAttribute
{
  v2 = [(INFVariantsDescriptor *)self copy];
  if ([v2 gender])
  {
    [v2 setGender:0];
  }

  else if ([v2 plurality])
  {
    [v2 setPlurality:0];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (self)
  {
    [v4 setPlurality:self->_plurality];
    [v5 setGender:self->_gender];
  }

  return v5;
}

- (INFVariantsDescriptor)initWithVariants:(unint64_t)a3
{
  v3 = a3;
  result = [(INFVariantsDescriptor *)self init];
  if (result)
  {
    if (v3)
    {
      result->_plurality = 1;
      if ((v3 & 2) == 0)
      {
LABEL_4:
        if ((v3 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_10;
      }
    }

    else if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

    result->_plurality = 2;
    if ((v3 & 4) == 0)
    {
LABEL_5:
      if ((v3 & 8) == 0)
      {
        return result;
      }

      goto LABEL_6;
    }

LABEL_10:
    result->_gender = 2;
    if ((v3 & 8) == 0)
    {
      return result;
    }

LABEL_6:
    result->_gender = 1;
  }

  return result;
}

- (INFVariantsDescriptor)init
{
  v3.receiver = self;
  v3.super_class = INFVariantsDescriptor;
  result = [(INFVariantsDescriptor *)&v3 init];
  if (result)
  {
    result->_plurality = 0;
    result->_gender = 0;
  }

  return result;
}

- (id)append:(id)a3 toString:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 length])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@", v6, v5];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v8;
}

- (NSString)dictionaryKey
{
  plurality = self->_plurality;
  if (plurality)
  {
    v4 = @"LOCPluralityNone";
    if (plurality == 1)
    {
      v4 = @"LOCPluralityOne";
    }

    if (plurality == 2)
    {
      v5 = @"LOCPluralityOther";
    }

    else
    {
      v5 = v4;
    }

    v6 = v5;
    v7 = [(INFVariantsDescriptor *)self append:v6 toString:&stru_28676DA60];
  }

  else
  {
    v7 = &stru_28676DA60;
  }

  gender = self->_gender;
  if (gender)
  {
    v9 = @"LOCGenderNone";
    if (gender == 1)
    {
      v9 = @"LOCGenderFeminine";
    }

    if (gender == 2)
    {
      v10 = @"LOCGenderMasculine";
    }

    else
    {
      v10 = v9;
    }

    v11 = v10;
    v12 = [(INFVariantsDescriptor *)self append:v11 toString:v7];

    v7 = v12;
  }

  if ([(__CFString *)v7 isEqualToString:&stru_28676DA60])
  {
    v13 = @"LOCVariantsNone";

    v7 = @"LOCVariantsNone";
  }

  return v7;
}

+ (id)variant
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)variantWithVariants:(unint64_t)a3
{
  v3 = [[a1 alloc] initWithVariants:a3];

  return v3;
}

@end