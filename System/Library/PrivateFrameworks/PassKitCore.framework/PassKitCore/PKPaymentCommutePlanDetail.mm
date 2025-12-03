@interface PKPaymentCommutePlanDetail
- (BOOL)isEqual:(id)equal;
- (NSString)identifier;
- (NSString)uniqueIdentifier;
- (PKPaymentCommutePlanDetail)initWithAppletCommutePlan:(id)plan label:(id)label value:(id)value;
- (PKPaymentCommutePlanDetail)initWithCoder:(id)coder;
- (PKPaymentCommutePlanDetail)initWithDictionary:(id)dictionary;
- (PKPaymentCommutePlanDetail)initWithIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier startDate:(id)date expiryDate:(id)expiryDate title:(id)title description:(id)description;
- (PKPaymentCommutePlanDetail)initWithTransitCommutePlan:(id)plan;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentCommutePlanDetail

- (PKPaymentCommutePlanDetail)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = PKPaymentCommutePlanDetail;
  v5 = [(PKPaymentCommutePlanDetail *)&v21 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [dictionaryCopy PKStringForKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;

    v5->_value = [dictionaryCopy PKIntegerForKey:@"value"];
    v10 = [dictionaryCopy PKStringForKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v10;

    v12 = [dictionaryCopy PKStringForKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v12;

    v14 = [dictionaryCopy PKDateForKey:@"lastUpdatedDate"];
    lastUpdateDate = v5->_lastUpdateDate;
    v5->_lastUpdateDate = v14;

    v16 = [dictionaryCopy PKDateForKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v16;

    v18 = [dictionaryCopy PKDateForKey:@"expiryDate"];
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = v18;

    v5->_status = [dictionaryCopy PKIntegerForKey:@"status"];
  }

  return v5;
}

- (PKPaymentCommutePlanDetail)initWithAppletCommutePlan:(id)plan label:(id)label value:(id)value
{
  planCopy = plan;
  labelCopy = label;
  valueCopy = value;
  v21.receiver = self;
  v21.super_class = PKPaymentCommutePlanDetail;
  v11 = [(PKPaymentCommutePlanDetail *)&v21 init];
  if (v11)
  {
    identifier = [planCopy identifier];
    identifier = v11->_identifier;
    v11->_identifier = identifier;

    uniqueIdentifier = [planCopy uniqueIdentifier];
    uniqueIdentifier = v11->_uniqueIdentifier;
    v11->_uniqueIdentifier = uniqueIdentifier;

    v11->_status = [planCopy status];
    startDate = [planCopy startDate];
    startDate = v11->_startDate;
    v11->_startDate = startDate;

    expirationDate = [planCopy expirationDate];
    expiryDate = v11->_expiryDate;
    v11->_expiryDate = expirationDate;

    objc_storeStrong(&v11->_localizedTitle, label);
    objc_storeStrong(&v11->_localizedDescription, value);
  }

  return v11;
}

- (PKPaymentCommutePlanDetail)initWithTransitCommutePlan:(id)plan
{
  planCopy = plan;
  v20.receiver = self;
  v20.super_class = PKPaymentCommutePlanDetail;
  v5 = [(PKPaymentCommutePlanDetail *)&v20 init];
  if (v5)
  {
    identifier = [planCopy identifier];
    identifier = v5->_identifier;
    v5->_identifier = identifier;

    uniqueIdentifier = [planCopy uniqueIdentifier];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = uniqueIdentifier;

    v5->_status = 0;
    startDate = [planCopy startDate];
    startDate = v5->_startDate;
    v5->_startDate = startDate;

    expiryDate = [planCopy expiryDate];
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = expiryDate;

    title = [planCopy title];
    label = [title label];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = label;

    value = [title value];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = value;
  }

  return v5;
}

- (PKPaymentCommutePlanDetail)initWithIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier startDate:(id)date expiryDate:(id)expiryDate title:(id)title description:(id)description
{
  identifierCopy = identifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  dateCopy = date;
  expiryDateCopy = expiryDate;
  titleCopy = title;
  descriptionCopy = description;
  v24.receiver = self;
  v24.super_class = PKPaymentCommutePlanDetail;
  v18 = [(PKPaymentCommutePlanDetail *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, identifier);
    objc_storeStrong(&v19->_uniqueIdentifier, uniqueIdentifier);
    objc_storeStrong(&v19->_startDate, date);
    objc_storeStrong(&v19->_expiryDate, expiryDate);
    objc_storeStrong(&v19->_localizedTitle, title);
    objc_storeStrong(&v19->_localizedDescription, description);
    v19->_planType = 0;
  }

  return v19;
}

- (NSString)uniqueIdentifier
{
  uniqueIdentifier = self->_uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    uniqueIdentifier = self->_identifier;
  }

  v3 = uniqueIdentifier;

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPaymentCommutePlanDetail allocWithZone:](PKPaymentCommutePlanDetail init];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  uniqueIdentifier = [(PKPaymentCommutePlanDetail *)self uniqueIdentifier];
  v9 = [uniqueIdentifier copyWithZone:zone];
  uniqueIdentifier = v5->_uniqueIdentifier;
  v5->_uniqueIdentifier = v9;

  v5->_value = self->_value;
  v11 = [(NSString *)self->_localizedTitle copyWithZone:zone];
  localizedTitle = v5->_localizedTitle;
  v5->_localizedTitle = v11;

  v13 = [(NSString *)self->_localizedDescription copyWithZone:zone];
  localizedDescription = v5->_localizedDescription;
  v5->_localizedDescription = v13;

  v15 = [(NSDate *)self->_lastUpdateDate copyWithZone:zone];
  lastUpdateDate = v5->_lastUpdateDate;
  v5->_lastUpdateDate = v15;

  v17 = [(NSDate *)self->_startDate copyWithZone:zone];
  startDate = v5->_startDate;
  v5->_startDate = v17;

  v19 = [(NSDate *)self->_expiryDate copyWithZone:zone];
  expiryDate = v5->_expiryDate;
  v5->_expiryDate = v19;

  v5->_status = self->_status;
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  uniqueIdentifier = [(PKPaymentCommutePlanDetail *)self uniqueIdentifier];
  [coderCopy encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];

  [coderCopy encodeInteger:self->_value forKey:@"value"];
  [coderCopy encodeObject:self->_localizedTitle forKey:@"localizedTitle"];
  [coderCopy encodeObject:self->_localizedDescription forKey:@"localizedDescription"];
  [coderCopy encodeObject:self->_lastUpdateDate forKey:@"lastUpdatedDate"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_expiryDate forKey:@"expiryDate"];
  [coderCopy encodeInteger:self->_status forKey:@"status"];
}

- (PKPaymentCommutePlanDetail)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = PKPaymentCommutePlanDetail;
  v5 = [(PKPaymentCommutePlanDetail *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;

    v5->_value = [coderCopy decodeIntegerForKey:@"value"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdatedDate"];
    lastUpdateDate = v5->_lastUpdateDate;
    v5->_lastUpdateDate = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expiryDate"];
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = v18;

    v5->_status = [coderCopy decodeIntegerForKey:@"status"];
  }

  return v5;
}

- (NSString)identifier
{
  identifier = self->_identifier;
  if (!identifier)
  {
    identifier = @"ApplicationStoredValueBalanceDefault";
  }

  v3 = identifier;

  return v3;
}

- (id)description
{
  planType = self->_planType;
  v4 = MEMORY[0x1E696AEC0];
  identifier = self->_identifier;
  uniqueIdentifier = [(PKPaymentCommutePlanDetail *)self uniqueIdentifier];
  v7 = uniqueIdentifier;
  if (planType)
  {
    [v4 stringWithFormat:@"Count Plan: %@ %@ %ld %@ %@ %lu", identifier, uniqueIdentifier, self->_value, self->_localizedTitle, self->_localizedDescription, self->_status, v10];
  }

  else
  {
    [v4 stringWithFormat:@"Timed Plan: %@ %@ %@ %@ %@ %@ %lu", identifier, uniqueIdentifier, self->_startDate, self->_expiryDate, self->_localizedTitle, self->_localizedDescription, self->_status];
  }
  v8 = ;

  return v8;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  uniqueIdentifier = [(PKPaymentCommutePlanDetail *)self uniqueIdentifier];
  [array safelyAddObject:uniqueIdentifier];

  [array safelyAddObject:self->_localizedTitle];
  [array safelyAddObject:self->_localizedDescription];
  [array safelyAddObject:self->_lastUpdateDate];
  [array safelyAddObject:self->_startDate];
  [array safelyAddObject:self->_expiryDate];
  v5 = PKCombinedHash(17, array);
  v6 = self->_value - v5 + 32 * v5;
  v7 = self->_status - v6 + 32 * v6;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = self->_identifier;
    identifier = [equalCopy identifier];
    v7 = identifier;
    if (identifier && identifier)
    {
      if (([(NSString *)identifier isEqual:identifier]& 1) != 0)
      {
LABEL_5:
        uniqueIdentifier = [(PKPaymentCommutePlanDetail *)self uniqueIdentifier];
        uniqueIdentifier2 = [equalCopy uniqueIdentifier];
        v10 = uniqueIdentifier2;
        if (uniqueIdentifier && uniqueIdentifier2)
        {
          if (([uniqueIdentifier isEqual:uniqueIdentifier2] & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else if (uniqueIdentifier != uniqueIdentifier2)
        {
LABEL_30:
          v11 = 0;
LABEL_31:

          goto LABEL_32;
        }

        value = self->_value;
        if (value != [equalCopy value])
        {
          goto LABEL_30;
        }

        status = self->_status;
        if (status != [equalCopy status])
        {
          goto LABEL_30;
        }

        localizedTitle = self->_localizedTitle;
        localizedTitle = [equalCopy localizedTitle];
        v16 = localizedTitle;
        if (localizedTitle && localizedTitle)
        {
          if (([(NSString *)localizedTitle isEqual:localizedTitle]& 1) != 0)
          {
LABEL_18:
            localizedDescription = self->_localizedDescription;
            localizedDescription = [equalCopy localizedDescription];
            v19 = localizedDescription;
            if (localizedDescription && localizedDescription)
            {
              if (([(NSString *)localizedDescription isEqual:localizedDescription]& 1) != 0)
              {
LABEL_21:
                startDate = self->_startDate;
                startDate = [equalCopy startDate];
                v22 = startDate;
                if (startDate && startDate)
                {
                  if (([(NSDate *)startDate isEqual:startDate]& 1) != 0)
                  {
LABEL_24:
                    expiryDate = self->_expiryDate;
                    expiryDate = [equalCopy expiryDate];
                    v25 = expiryDate;
                    if (expiryDate && expiryDate)
                    {
                      if (([(NSDate *)expiryDate isEqual:expiryDate]& 1) != 0)
                      {
                        goto LABEL_27;
                      }
                    }

                    else if (expiryDate == expiryDate)
                    {
LABEL_27:
                      lastUpdateDate = self->_lastUpdateDate;
                      lastUpdateDate = [equalCopy lastUpdateDate];
                      v28 = lastUpdateDate;
                      if (lastUpdateDate && lastUpdateDate)
                      {
                        v11 = [(NSDate *)lastUpdateDate isEqual:lastUpdateDate];
                      }

                      else
                      {
                        v11 = lastUpdateDate == lastUpdateDate;
                      }

                      goto LABEL_44;
                    }

                    v11 = 0;
LABEL_44:

                    goto LABEL_45;
                  }
                }

                else if (startDate == startDate)
                {
                  goto LABEL_24;
                }

                v11 = 0;
LABEL_45:

                goto LABEL_46;
              }
            }

            else if (localizedDescription == localizedDescription)
            {
              goto LABEL_21;
            }

            v11 = 0;
LABEL_46:

            goto LABEL_47;
          }
        }

        else if (localizedTitle == localizedTitle)
        {
          goto LABEL_18;
        }

        v11 = 0;
LABEL_47:

        goto LABEL_31;
      }
    }

    else if (identifier == identifier)
    {
      goto LABEL_5;
    }

    v11 = 0;
LABEL_32:

    goto LABEL_33;
  }

  v11 = 0;
LABEL_33:

  return v11;
}

@end