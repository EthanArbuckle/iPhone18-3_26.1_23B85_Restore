@interface PKPaymentOfferDynamicContentCustomLayoutItem
- (BOOL)isEqual:(id)equal;
- (PKPaymentOfferDynamicContentCustomLayoutItem)initWithCoder:(id)coder;
- (PKPaymentOfferDynamicContentCustomLayoutItem)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentOfferDynamicContentCustomLayoutItem

- (PKPaymentOfferDynamicContentCustomLayoutItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (![dictionaryCopy count])
  {
    goto LABEL_14;
  }

  v5 = [dictionaryCopy PKStringForKey:@"type"];
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

  v8 = [dictionaryCopy PKDictionaryForKey:@"leadingText"];
  v9 = [dictionaryCopy PKDictionaryForKey:@"trailingText"];
  v10 = [[PKPaymentOfferDynamicContentCustomLayoutItemTextDetails alloc] initWithDictionary:v8];
  v11 = [[PKPaymentOfferDynamicContentCustomLayoutItemTextDetails alloc] initWithDictionary:v9];

  if (!(v10 | v11))
  {
LABEL_14:
    selfCopy = 0;
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

  selfCopy = self;
LABEL_15:

  return selfCopy;
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
  dictionaryRepresentation = [(PKPaymentOfferDynamicContentCustomLayoutItemTextDetails *)self->_leadingText dictionaryRepresentation];
  [v4 setObject:dictionaryRepresentation forKeyedSubscript:@"leadingText"];

  dictionaryRepresentation2 = [(PKPaymentOfferDynamicContentCustomLayoutItemTextDetails *)self->_trailingText dictionaryRepresentation];
  [v4 setObject:dictionaryRepresentation2 forKeyedSubscript:@"trailingText"];

  v10 = [v4 copy];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    if (equalCopy)
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

- (PKPaymentOfferDynamicContentCustomLayoutItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPaymentOfferDynamicContentCustomLayoutItem;
  v5 = [(PKPaymentOfferDynamicContentCustomLayoutItem *)&v11 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"leadingText"];
    leadingText = v5->_leadingText;
    v5->_leadingText = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trailingText"];
    trailingText = v5->_trailingText;
    v5->_trailingText = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeObject:self->_leadingText forKey:@"leadingText"];
  [coderCopy encodeObject:self->_trailingText forKey:@"trailingText"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentOfferDynamicContentCustomLayoutItem allocWithZone:](PKPaymentOfferDynamicContentCustomLayoutItem init];
  v6 = [(PKPaymentOfferDynamicContentCustomLayoutItemTextDetails *)self->_leadingText copyWithZone:zone];
  leadingText = v5->_leadingText;
  v5->_leadingText = v6;

  v8 = [(PKPaymentOfferDynamicContentCustomLayoutItemTextDetails *)self->_trailingText copyWithZone:zone];
  trailingText = v5->_trailingText;
  v5->_trailingText = v8;

  v5->_type = self->_type;
  return v5;
}

@end