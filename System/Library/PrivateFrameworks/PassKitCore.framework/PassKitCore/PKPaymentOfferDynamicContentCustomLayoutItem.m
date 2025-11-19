@interface PKPaymentOfferDynamicContentCustomLayoutItem
- (BOOL)isEqual:(id)a3;
- (PKPaymentOfferDynamicContentCustomLayoutItem)initWithCoder:(id)a3;
- (PKPaymentOfferDynamicContentCustomLayoutItem)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentOfferDynamicContentCustomLayoutItem

- (PKPaymentOfferDynamicContentCustomLayoutItem)initWithDictionary:(id)a3
{
  v4 = a3;
  if (![v4 count])
  {
    goto LABEL_14;
  }

  v5 = [v4 PKStringForKey:@"type"];
  v6 = v5;
  if (v5 != @"text")
  {
    if (v5)
    {
      v7 = [(__CFString *)v5 isEqualToString:@"text"];

      if (v7)
      {
        goto LABEL_5;
      }

      v13 = v6;
      v14 = v13;
      if (v13 == @"divider" || (v15 = [(__CFString *)v13 isEqualToString:@"divider"], v14, (v15 & 1) != 0))
      {

        v10 = 0;
        v11 = 0;
        v12 = 2;
        goto LABEL_10;
      }
    }

    goto LABEL_14;
  }

LABEL_5:

  v8 = [v4 PKDictionaryForKey:@"leadingText"];
  v9 = [v4 PKDictionaryForKey:@"trailingText"];
  v10 = [[PKPaymentOfferDynamicContentCustomLayoutItemTextDetails alloc] initWithDictionary:v8];
  v11 = [[PKPaymentOfferDynamicContentCustomLayoutItemTextDetails alloc] initWithDictionary:v9];

  if (!(v10 | v11))
  {
LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  v12 = 1;
LABEL_10:
  v20.receiver = self;
  v20.super_class = PKPaymentOfferDynamicContentCustomLayoutItem;
  v16 = [(PKPaymentOfferDynamicContentCustomLayoutItem *)&v20 init];
  p_isa = &v16->super.isa;
  if (v16)
  {
    v16->_type = v12;
    objc_storeStrong(&v16->_leadingText, v10);
    objc_storeStrong(p_isa + 3, v11);
  }

  self = p_isa;

  v18 = self;
LABEL_15:

  return v18;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  type = self->_type;
  v6 = @"unknown";
  if (type == 1)
  {
    v6 = @"text";
  }

  if (type == 2)
  {
    v7 = @"divider";
  }

  else
  {
    v7 = v6;
  }

  [v3 setObject:v7 forKeyedSubscript:@"type"];
  v8 = [(PKPaymentOfferDynamicContentCustomLayoutItemTextDetails *)self->_leadingText dictionaryRepresentation];
  [v4 setObject:v8 forKeyedSubscript:@"leadingText"];

  v9 = [(PKPaymentOfferDynamicContentCustomLayoutItemTextDetails *)self->_trailingText dictionaryRepresentation];
  [v4 setObject:v9 forKeyedSubscript:@"trailingText"];

  v10 = [v4 copy];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        leadingText = self->_leadingText;
        v8 = v6->_leadingText;
        if (leadingText && v8)
        {
          if (![(PKPaymentOfferDynamicContentCustomLayoutItemTextDetails *)leadingText isEqual:?])
          {
            goto LABEL_16;
          }
        }

        else if (leadingText != v8)
        {
          goto LABEL_16;
        }

        trailingText = self->_trailingText;
        v11 = v6->_trailingText;
        if (trailingText && v11)
        {
          if ([(PKPaymentOfferDynamicContentCustomLayoutItemTextDetails *)trailingText isEqual:?])
          {
LABEL_14:
            v9 = self->_type == v6->_type;
LABEL_17:

            goto LABEL_18;
          }
        }

        else if (trailingText == v11)
        {
          goto LABEL_14;
        }

LABEL_16:
        v9 = 0;
        goto LABEL_17;
      }
    }

    v9 = 0;
  }

LABEL_18:

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_leadingText];
  [v3 safelyAddObject:self->_trailingText];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  type = self->_type;
  v5 = @"unknown";
  if (type == 1)
  {
    v5 = @"text";
  }

  if (type == 2)
  {
    v6 = @"divider";
  }

  else
  {
    v6 = v5;
  }

  [v3 appendFormat:@"type: '%@'; ", v6];
  if (self->_leadingText)
  {
    [v3 appendFormat:@"leadingText: '%@'; ", self->_leadingText];
  }

  if (self->_trailingText)
  {
    [v3 appendFormat:@"trailingText: '%@'; ", self->_trailingText];
  }

  [v3 appendFormat:@">"];

  return v3;
}

- (PKPaymentOfferDynamicContentCustomLayoutItem)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPaymentOfferDynamicContentCustomLayoutItem;
  v5 = [(PKPaymentOfferDynamicContentCustomLayoutItem *)&v11 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"leadingText"];
    leadingText = v5->_leadingText;
    v5->_leadingText = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trailingText"];
    trailingText = v5->_trailingText;
    v5->_trailingText = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeObject:self->_leadingText forKey:@"leadingText"];
  [v5 encodeObject:self->_trailingText forKey:@"trailingText"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPaymentOfferDynamicContentCustomLayoutItem allocWithZone:](PKPaymentOfferDynamicContentCustomLayoutItem init];
  v6 = [(PKPaymentOfferDynamicContentCustomLayoutItemTextDetails *)self->_leadingText copyWithZone:a3];
  leadingText = v5->_leadingText;
  v5->_leadingText = v6;

  v8 = [(PKPaymentOfferDynamicContentCustomLayoutItemTextDetails *)self->_trailingText copyWithZone:a3];
  trailingText = v5->_trailingText;
  v5->_trailingText = v8;

  v5->_type = self->_type;
  return v5;
}

@end