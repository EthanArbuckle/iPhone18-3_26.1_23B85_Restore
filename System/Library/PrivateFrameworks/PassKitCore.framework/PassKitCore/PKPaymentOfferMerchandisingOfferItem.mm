@interface PKPaymentOfferMerchandisingOfferItem
- (BOOL)isEqual:(id)equal;
- (PKPaymentOfferMerchandisingOfferItem)initWithCoder:(id)coder;
- (PKPaymentOfferMerchandisingOfferItem)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentOfferMerchandisingOfferItem

- (PKPaymentOfferMerchandisingOfferItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PKPaymentOfferMerchandisingOfferItem;
  v5 = [(PKPaymentOfferMerchandisingOfferItem *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [dictionaryCopy PKDictionaryForKey:@"dynamicContent"];
    if ([v8 count])
    {
      v9 = [[PKPaymentOfferDynamicContent alloc] initWithDictionary:v8];
      dynamicContent = v5->_dynamicContent;
      v5->_dynamicContent = v9;
    }
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_identifier forKeyedSubscript:@"identifier"];
  dictionaryRepresentation = [(PKPaymentOfferDynamicContent *)self->_dynamicContent dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"dynamicContent"];

  v5 = [v3 copy];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        identifier = v6->_identifier;
        v8 = self->_identifier;
        v9 = identifier;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          if (!v8 || !v9)
          {

LABEL_16:
            v12 = 0;
LABEL_18:

            goto LABEL_19;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_16;
          }
        }

        dynamicContent = self->_dynamicContent;
        v14 = v6->_dynamicContent;
        if (dynamicContent && v14)
        {
          v12 = [(PKPaymentOfferDynamicContent *)dynamicContent isEqual:?];
        }

        else
        {
          v12 = dynamicContent == v14;
        }

        goto LABEL_18;
      }
    }

    v12 = 0;
  }

LABEL_19:

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_dynamicContent];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v3 appendFormat:@"dynamicContent: '%@'; ", self->_dynamicContent];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKPaymentOfferMerchandisingOfferItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPaymentOfferMerchandisingOfferItem;
  v5 = [(PKPaymentOfferMerchandisingOfferItem *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dynamicContent"];
    dynamicContent = v5->_dynamicContent;
    v5->_dynamicContent = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_dynamicContent forKey:@"dynamicContent"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentOfferMerchandisingOfferItem allocWithZone:](PKPaymentOfferMerchandisingOfferItem init];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [(PKPaymentOfferDynamicContent *)self->_dynamicContent copyWithZone:zone];
  dynamicContent = v5->_dynamicContent;
  v5->_dynamicContent = v8;

  return v5;
}

@end