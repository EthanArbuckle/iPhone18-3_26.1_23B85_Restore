@interface PKAccountTaxForm
- (BOOL)isEqual:(id)equal;
- (PKAccountTaxForm)initWithCoder:(id)coder;
- (PKAccountTaxForm)initWithDictionary:(id)dictionary;
- (id)description;
- (id)displayableTaxFormString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountTaxForm

- (PKAccountTaxForm)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = PKAccountTaxForm;
  v5 = [(PKAccountTaxForm *)&v29 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [dictionaryCopy PKStringForKey:@"taxFormType"];
    v9 = v8;
    if (v8 != @"1099-int")
    {
      if (v8)
      {
        v10 = [(__CFString *)v8 isEqualToString:@"1099-int"];

        if (v10)
        {
          goto LABEL_5;
        }

        v12 = v9;
        if (v12 == @"1099-div" || (v13 = v12, v14 = [(__CFString *)v12 isEqualToString:@"1099-div"], v13, (v14 & 1) != 0))
        {
          v11 = 2;
          goto LABEL_19;
        }

        v15 = v13;
        if (v15 == @"1099-b" || (v16 = v15, v17 = [(__CFString *)v15 isEqualToString:@"1099-b"], v16, (v17 & 1) != 0))
        {
          v11 = 3;
          goto LABEL_19;
        }

        v18 = v16;
        if (v18 == @"1099-misc" || (v19 = v18, v20 = [(__CFString *)v18 isEqualToString:@"1099-misc"], v19, (v20 & 1) != 0))
        {
          v11 = 4;
          goto LABEL_19;
        }

        v21 = v19;
        if (v21 == @"1099-consolidated" || (v22 = v21, v23 = [(__CFString *)v21 isEqualToString:@"1099-consolidated"], v22, v23))
        {
          v11 = 5;
          goto LABEL_19;
        }
      }

      v11 = 0;
      goto LABEL_19;
    }

LABEL_5:
    v11 = 1;
LABEL_19:

    v5->_type = v11;
    v24 = [dictionaryCopy PKDateForKey:@"openingDate"];
    openingDate = v5->_openingDate;
    v5->_openingDate = v24;

    v26 = [dictionaryCopy PKDateForKey:@"closingDate"];
    closingDate = v5->_closingDate;
    v5->_closingDate = v26;
  }

  return v5;
}

- (id)displayableTaxFormString
{
  v9 = self->_type - 1;
  if (v9 > 4)
  {
    v10 = 0;
  }

  else
  {
    v10 = PKLocalizedFeatureString(off_1E79D9AA0[v9], 5, 0, v2, v3, v4, v5, v6, v7);
  }

  return v10;
}

- (PKAccountTaxForm)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKAccountTaxForm;
  v5 = [(PKAccountTaxForm *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_type = [coderCopy decodeIntegerForKey:@"taxFormType"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"openingDate"];
    openingDate = v5->_openingDate;
    v5->_openingDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"closingDate"];
    closingDate = v5->_closingDate;
    v5->_closingDate = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeInteger:self->_type forKey:@"taxFormType"];
  [coderCopy encodeObject:self->_openingDate forKey:@"openingDate"];
  [coderCopy encodeObject:self->_closingDate forKey:@"closingDate"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  identifier = self->_identifier;
  v6 = equalCopy[1];
  if (identifier && v6)
  {
    if (([(NSString *)identifier isEqual:?]& 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (identifier != v6)
  {
    goto LABEL_15;
  }

  if (self->_type != equalCopy[2])
  {
    goto LABEL_15;
  }

  openingDate = self->_openingDate;
  v8 = equalCopy[3];
  if (!openingDate || !v8)
  {
    if (openingDate == v8)
    {
      goto LABEL_11;
    }

LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  if (([(NSDate *)openingDate isEqual:?]& 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  closingDate = self->_closingDate;
  v10 = equalCopy[4];
  if (closingDate && v10)
  {
    v11 = [(NSDate *)closingDate isEqual:?];
  }

  else
  {
    v11 = closingDate == v10;
  }

LABEL_16:

  return v11;
}

- (unint64_t)hash
{
  type = self->_type;
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_openingDate];
  [array safelyAddObject:self->_closingDate];
  v5 = PKCombinedHash(type + 527, array);

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  v4 = self->_type - 1;
  if (v4 > 4)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E79D9AC8[v4];
  }

  [v3 appendFormat:@"type: '%@'; ", v5];
  v6 = [(NSDate *)self->_openingDate description];
  [v3 appendFormat:@"openingDate: '%@'; ", v6];

  v7 = [(NSDate *)self->_closingDate description];
  [v3 appendFormat:@"closingDate: '%@'; ", v7];

  [v3 appendFormat:@">"];

  return v3;
}

@end