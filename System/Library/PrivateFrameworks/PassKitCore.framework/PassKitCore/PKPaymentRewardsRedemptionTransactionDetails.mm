@interface PKPaymentRewardsRedemptionTransactionDetails
- (BOOL)isEqual:(id)equal;
- (PKPaymentRewardsRedemptionTransactionDetails)initWithCoder:(id)coder;
- (PKPaymentRewardsRedemptionTransactionDetails)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)redactedDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentRewardsRedemptionTransactionDetails

- (PKPaymentRewardsRedemptionTransactionDetails)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = PKPaymentRewardsRedemptionTransactionDetails;
  v5 = [(PKPaymentRewardsRedemptionTransactionDetails *)&v20 init];
  if (!v5 || ([dictionaryCopy PKStringForKey:@"identifier"], v6 = objc_claimAutoreleasedReturnValue(), identifier = v5->_identifier, v5->_identifier = v6, identifier, objc_msgSend(dictionaryCopy, "PKDateForKey:", @"timestamp"), v8 = objc_claimAutoreleasedReturnValue(), timestamp = v5->_timestamp, v5->_timestamp = v8, timestamp, objc_msgSend(dictionaryCopy, "PKStringForKey:", @"description"), v10 = objc_claimAutoreleasedReturnValue(), descriptionText = v5->_descriptionText, v5->_descriptionText = v10, descriptionText, objc_msgSend(dictionaryCopy, "PKCurrencyAmountForKey:", @"monetaryValue"), v12 = objc_claimAutoreleasedReturnValue(), monetaryValue = v5->_monetaryValue, v5->_monetaryValue = v12, monetaryValue, objc_msgSend(dictionaryCopy, "PKDecimalNumberFromStringForKey:", @"merchantCategoryCode"), v14 = objc_claimAutoreleasedReturnValue(), merchantCategoryCode = v5->_merchantCategoryCode, v5->_merchantCategoryCode = v14, merchantCategoryCode, objc_msgSend(dictionaryCopy, "PKStringForKey:", @"merchantRawName"), v16 = objc_claimAutoreleasedReturnValue(), merchantRawName = v5->_merchantRawName, v5->_merchantRawName = v16, merchantRawName, v5->_identifier) && v5->_merchantRawName && v5->_monetaryValue)
  {
    v18 = v5;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_identifier forKeyedSubscript:@"identifier"];
  v4 = PKW3CDateStringFromDate(self->_timestamp);
  [v3 setObject:v4 forKeyedSubscript:@"timestamp"];

  [v3 setObject:self->_descriptionText forKeyedSubscript:@"description"];
  dictionaryRepresentation = [(PKCurrencyAmount *)self->_monetaryValue dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"monetaryValue"];

  stringValue = [(NSNumber *)self->_merchantCategoryCode stringValue];
  [v3 setObject:stringValue forKeyedSubscript:@"merchantCategoryCode"];

  [v3 setObject:self->_merchantRawName forKeyedSubscript:@"merchantRawName"];
  v7 = [v3 copy];

  return v7;
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
        identifier = self->_identifier;
        v8 = v6->_identifier;
        if (identifier && v8)
        {
          if (([(NSString *)identifier isEqual:?]& 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else if (identifier != v8)
        {
          goto LABEL_33;
        }

        timestamp = self->_timestamp;
        v11 = v6->_timestamp;
        if (timestamp && v11)
        {
          if (([(NSDate *)timestamp isEqual:?]& 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else if (timestamp != v11)
        {
          goto LABEL_33;
        }

        descriptionText = self->_descriptionText;
        v13 = v6->_descriptionText;
        if (descriptionText && v13)
        {
          if (([(NSString *)descriptionText isEqual:?]& 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else if (descriptionText != v13)
        {
          goto LABEL_33;
        }

        monetaryValue = self->_monetaryValue;
        v15 = v6->_monetaryValue;
        if (monetaryValue && v15)
        {
          if (![(PKCurrencyAmount *)monetaryValue isEqual:?])
          {
            goto LABEL_33;
          }
        }

        else if (monetaryValue != v15)
        {
          goto LABEL_33;
        }

        merchantCategoryCode = self->_merchantCategoryCode;
        v17 = v6->_merchantCategoryCode;
        if (merchantCategoryCode && v17)
        {
          if (([(NSNumber *)merchantCategoryCode isEqual:?]& 1) != 0)
          {
LABEL_29:
            merchantRawName = self->_merchantRawName;
            v19 = v6->_merchantRawName;
            if (merchantRawName && v19)
            {
              v9 = [(NSString *)merchantRawName isEqual:?];
            }

            else
            {
              v9 = merchantRawName == v19;
            }

            goto LABEL_34;
          }
        }

        else if (merchantCategoryCode == v17)
        {
          goto LABEL_29;
        }

LABEL_33:
        v9 = 0;
LABEL_34:

        goto LABEL_35;
      }
    }

    v9 = 0;
  }

LABEL_35:

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_timestamp];
  [v3 safelyAddObject:self->_descriptionText];
  [v3 safelyAddObject:self->_monetaryValue];
  [v3 safelyAddObject:self->_merchantCategoryCode];
  [v3 safelyAddObject:self->_merchantRawName];
  v7.receiver = self;
  v7.super_class = PKPaymentRewardsRedemptionTransactionDetails;
  v4 = [(PKPaymentRewardsRedemptionTransactionDetails *)&v7 hash];
  v5 = PKCombinedHash(v4, v3);

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v3 appendFormat:@"timestamp: '%@'; ", self->_timestamp];
  [v3 appendFormat:@"description: '%@'; ", self->_descriptionText];
  if (self->_monetaryValue)
  {
    v4 = @"<redacted>";
  }

  else
  {
    v4 = 0;
  }

  [v3 appendFormat:@"monetaryValue: '%@'; ", v4];
  [v3 appendFormat:@"merchantCategoryCode: '%@'; ", self->_merchantCategoryCode];
  [v3 appendFormat:@"merchantRawName: '%@'; ", self->_merchantRawName];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v6 appendFormat:@"timestamp: '%@'; ", self->_timestamp];
  [v6 appendFormat:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

- (PKPaymentRewardsRedemptionTransactionDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PKPaymentRewardsRedemptionTransactionDetails;
  v5 = [(PKPaymentRewardsRedemptionTransactionDetails *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"description"];
    descriptionText = v5->_descriptionText;
    v5->_descriptionText = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"monetaryValue"];
    monetaryValue = v5->_monetaryValue;
    v5->_monetaryValue = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantCategoryCode"];
    merchantCategoryCode = v5->_merchantCategoryCode;
    v5->_merchantCategoryCode = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantRawName"];
    merchantRawName = v5->_merchantRawName;
    v5->_merchantRawName = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_timestamp forKey:@"timestamp"];
  [coderCopy encodeObject:self->_descriptionText forKey:@"description"];
  [coderCopy encodeObject:self->_monetaryValue forKey:@"monetaryValue"];
  [coderCopy encodeObject:self->_merchantCategoryCode forKey:@"merchantCategoryCode"];
  [coderCopy encodeObject:self->_merchantRawName forKey:@"merchantRawName"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSDate *)self->_timestamp copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_descriptionText copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(PKCurrencyAmount *)self->_monetaryValue copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSNumber *)self->_merchantCategoryCode copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(NSString *)self->_merchantRawName copyWithZone:zone];
  v17 = v5[6];
  v5[6] = v16;

  return v5;
}

@end