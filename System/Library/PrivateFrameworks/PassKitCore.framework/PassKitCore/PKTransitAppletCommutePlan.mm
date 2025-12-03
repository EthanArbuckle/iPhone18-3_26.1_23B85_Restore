@interface PKTransitAppletCommutePlan
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCommutePlan:(id)plan;
- (NSString)uniqueIdentifier;
- (PKTransitAppletCommutePlan)initWithCoder:(id)coder;
- (PKTransitAppletCommutePlan)initWithDictionary:(id)dictionary;
- (PKTransitAppletCommutePlan)initWithIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier startDate:(id)date expirationDate:(id)expirationDate status:(unint64_t)status;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKTransitAppletCommutePlan

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKTransitAppletCommutePlan *)self isEqualToCommutePlan:v5];
  }

  return v6;
}

- (BOOL)isEqualToCommutePlan:(id)plan
{
  planCopy = plan;
  if (planCopy)
  {
    identifier = self->_identifier;
    v6 = planCopy[1];
    if (identifier)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (identifier == v6)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v9 = [(NSString *)identifier isEqual:?];
      if (v9)
      {
LABEL_10:
        uniqueIdentifier = [(PKTransitAppletCommutePlan *)self uniqueIdentifier];
        uniqueIdentifier2 = [planCopy uniqueIdentifier];
        v12 = uniqueIdentifier2;
        if (uniqueIdentifier && uniqueIdentifier2)
        {
          if (([uniqueIdentifier isEqual:uniqueIdentifier2] & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else if (uniqueIdentifier != uniqueIdentifier2)
        {
          goto LABEL_25;
        }

        startDate = self->_startDate;
        v14 = planCopy[4];
        if (startDate && v14)
        {
          if (([(NSDate *)startDate isEqual:?]& 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else if (startDate != v14)
        {
          goto LABEL_25;
        }

        expirationDate = self->_expirationDate;
        v16 = planCopy[5];
        if (expirationDate && v16)
        {
          if (([(NSDate *)expirationDate isEqual:?]& 1) != 0)
          {
LABEL_23:
            v8 = self->_status == planCopy[3];
LABEL_26:

            goto LABEL_27;
          }
        }

        else if (expirationDate == v16)
        {
          goto LABEL_23;
        }

LABEL_25:
        v8 = 0;
        goto LABEL_26;
      }
    }
  }

  v8 = 0;
LABEL_27:

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = self->_identifier;
  uniqueIdentifier = [(PKTransitAppletCommutePlan *)self uniqueIdentifier];
  v6 = uniqueIdentifier;
  v7 = self->_status - 1;
  if (v7 > 3)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_1E79DB198[v7];
  }

  v9 = [v3 stringWithFormat:@"Applet Plan: %@ %@ %@ %@ %@", identifier, uniqueIdentifier, self->_startDate, self->_expirationDate, v8];

  return v9;
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

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  uniqueIdentifier = [(PKTransitAppletCommutePlan *)self uniqueIdentifier];
  [v3 safelyAddObject:uniqueIdentifier];

  [v3 safelyAddObject:self->_startDate];
  [v3 safelyAddObject:self->_expirationDate];
  v5 = PKCombinedHash(17, v3);
  v6 = self->_status - v5 + 32 * v5;

  return v6;
}

- (PKTransitAppletCommutePlan)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKTransitAppletCommutePlan;
  v5 = [(PKTransitAppletCommutePlan *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;

    v5->_status = [coderCopy decodeIntegerForKey:@"status"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  uniqueIdentifier = [(PKTransitAppletCommutePlan *)self uniqueIdentifier];
  [coderCopy encodeObject:uniqueIdentifier forKey:@"UniqueIdentifier"];

  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [coderCopy encodeInteger:self->_status forKey:@"status"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  uniqueIdentifier = [(PKTransitAppletCommutePlan *)self uniqueIdentifier];
  v9 = [uniqueIdentifier copyWithZone:zone];
  v10 = v5[2];
  v5[2] = v9;

  v11 = [(NSDate *)self->_startDate copyWithZone:zone];
  v12 = v5[4];
  v5[4] = v11;

  v13 = [(NSDate *)self->_expirationDate copyWithZone:zone];
  v14 = v5[5];
  v5[5] = v13;

  v5[3] = self->_status;
  return v5;
}

- (PKTransitAppletCommutePlan)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = PKTransitAppletCommutePlan;
  v5 = [(PKTransitAppletCommutePlan *)&v20 init];
  v6 = v5;
  if (dictionaryCopy && v5)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"CommutePlanIdentifier"];
    v8 = [v7 copy];
    identifier = v6->_identifier;
    v6->_identifier = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"CommutePlanUniqueIdentifier"];
    v11 = [v10 copy];
    uniqueIdentifier = v6->_uniqueIdentifier;
    v6->_uniqueIdentifier = v11;

    v6->_status = [dictionaryCopy PKIntegerForKey:@"ContractStatus"];
    v13 = [dictionaryCopy PKDateComponentsForKey:@"CommutePlanValidityStartDate"];
    v14 = PKDateFromDateComponents(v13);
    startDate = v6->_startDate;
    v6->_startDate = v14;

    v16 = [dictionaryCopy PKDateComponentsForKey:@"CommutePlanValidityEndDate"];
    v17 = PKDateFromDateComponents(v16);
    expirationDate = v6->_expirationDate;
    v6->_expirationDate = v17;
  }

  return v6;
}

- (PKTransitAppletCommutePlan)initWithIdentifier:(id)identifier uniqueIdentifier:(id)uniqueIdentifier startDate:(id)date expirationDate:(id)expirationDate status:(unint64_t)status
{
  identifierCopy = identifier;
  uniqueIdentifierCopy = uniqueIdentifier;
  dateCopy = date;
  expirationDateCopy = expirationDate;
  v26.receiver = self;
  v26.super_class = PKTransitAppletCommutePlan;
  v16 = [(PKTransitAppletCommutePlan *)&v26 init];
  if (v16)
  {
    v17 = [identifierCopy copy];
    identifier = v16->_identifier;
    v16->_identifier = v17;

    v19 = [uniqueIdentifierCopy copy];
    uniqueIdentifier = v16->_uniqueIdentifier;
    v16->_uniqueIdentifier = v19;

    v21 = PKDateFromDateComponents(dateCopy);
    startDate = v16->_startDate;
    v16->_startDate = v21;

    v23 = PKDateFromDateComponents(expirationDateCopy);
    expirationDate = v16->_expirationDate;
    v16->_expirationDate = v23;

    v16->_status = status;
  }

  return v16;
}

@end