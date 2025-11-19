@interface PKAccountTaxForm
- (BOOL)isEqual:(id)a3;
- (PKAccountTaxForm)initWithCoder:(id)a3;
- (PKAccountTaxForm)initWithDictionary:(id)a3;
- (id)description;
- (id)displayableTaxFormString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountTaxForm

- (PKAccountTaxForm)initWithDictionary:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = PKAccountTaxForm;
  v5 = [(PKAccountTaxForm *)&v29 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 PKStringForKey:@"taxFormType"];
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
    v24 = [v4 PKDateForKey:@"openingDate"];
    openingDate = v5->_openingDate;
    v5->_openingDate = v24;

    v26 = [v4 PKDateForKey:@"closingDate"];
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

- (PKAccountTaxForm)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKAccountTaxForm;
  v5 = [(PKAccountTaxForm *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_type = [v4 decodeIntegerForKey:@"taxFormType"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"openingDate"];
    openingDate = v5->_openingDate;
    v5->_openingDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"closingDate"];
    closingDate = v5->_closingDate;
    v5->_closingDate = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeInteger:self->_type forKey:@"taxFormType"];
  [v5 encodeObject:self->_openingDate forKey:@"openingDate"];
  [v5 encodeObject:self->_closingDate forKey:@"closingDate"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  identifier = self->_identifier;
  v6 = v4[1];
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

  if (self->_type != v4[2])
  {
    goto LABEL_15;
  }

  openingDate = self->_openingDate;
  v8 = v4[3];
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
  v10 = v4[4];
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
  v4 = [MEMORY[0x1E695DF70] array];
  [v4 safelyAddObject:self->_identifier];
  [v4 safelyAddObject:self->_openingDate];
  [v4 safelyAddObject:self->_closingDate];
  v5 = PKCombinedHash(type + 527, v4);

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