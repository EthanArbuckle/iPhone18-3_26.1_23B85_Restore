@interface INFVariantsDescriptor
+ (id)variant;
+ (id)variantWithVariants:(unint64_t)variants;
- (BOOL)isEqual:(id)equal;
- (INFVariantsDescriptor)init;
- (INFVariantsDescriptor)initWithVariants:(unint64_t)variants;
- (NSString)dictionaryKey;
- (id)append:(id)append toString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)variantByRemovingOneAttribute;
@end

@implementation INFVariantsDescriptor

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    gender = self->_gender;
    if (gender != [(INFVariantsDescriptor *)equalCopy gender])
    {
      v8 = 0;
      goto LABEL_9;
    }

    plurality = self->_plurality;
    v7 = plurality == [(INFVariantsDescriptor *)equalCopy plurality];
  }

  else
  {
    v7 = self == equalCopy;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (self)
  {
    [v4 setPlurality:self->_plurality];
    [v5 setGender:self->_gender];
  }

  return v5;
}

- (INFVariantsDescriptor)initWithVariants:(unint64_t)variants
{
  variantsCopy = variants;
  result = [(INFVariantsDescriptor *)self init];
  if (result)
  {
    if (variantsCopy)
    {
      result->_plurality = 1;
      if ((variantsCopy & 2) == 0)
      {
LABEL_4:
        if ((variantsCopy & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_10;
      }
    }

    else if ((variantsCopy & 2) == 0)
    {
      goto LABEL_4;
    }

    result->_plurality = 2;
    if ((variantsCopy & 4) == 0)
    {
LABEL_5:
      if ((variantsCopy & 8) == 0)
      {
        return result;
      }

      goto LABEL_6;
    }

LABEL_10:
    result->_gender = 2;
    if ((variantsCopy & 8) == 0)
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

- (id)append:(id)append toString:(id)string
{
  appendCopy = append;
  stringCopy = string;
  if ([stringCopy length])
  {
    appendCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, %@", stringCopy, appendCopy];
  }

  else
  {
    appendCopy = appendCopy;
  }

  v8 = appendCopy;

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
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)variantWithVariants:(unint64_t)variants
{
  v3 = [[self alloc] initWithVariants:variants];

  return v3;
}

@end