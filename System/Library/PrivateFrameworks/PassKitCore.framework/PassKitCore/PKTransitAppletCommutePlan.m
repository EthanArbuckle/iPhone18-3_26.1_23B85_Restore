@interface PKTransitAppletCommutePlan
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCommutePlan:(id)a3;
- (NSString)uniqueIdentifier;
- (PKTransitAppletCommutePlan)initWithCoder:(id)a3;
- (PKTransitAppletCommutePlan)initWithDictionary:(id)a3;
- (PKTransitAppletCommutePlan)initWithIdentifier:(id)a3 uniqueIdentifier:(id)a4 startDate:(id)a5 expirationDate:(id)a6 status:(unint64_t)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKTransitAppletCommutePlan

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKTransitAppletCommutePlan *)self isEqualToCommutePlan:v5];
  }

  return v6;
}

- (BOOL)isEqualToCommutePlan:(id)a3
{
  v4 = a3;
  if (v4)
  {
    identifier = self->_identifier;
    v6 = v4[1];
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
        v10 = [(PKTransitAppletCommutePlan *)self uniqueIdentifier];
        v11 = [v4 uniqueIdentifier];
        v12 = v11;
        if (v10 && v11)
        {
          if (([v10 isEqual:v11] & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else if (v10 != v11)
        {
          goto LABEL_25;
        }

        startDate = self->_startDate;
        v14 = v4[4];
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
        v16 = v4[5];
        if (expirationDate && v16)
        {
          if (([(NSDate *)expirationDate isEqual:?]& 1) != 0)
          {
LABEL_23:
            v8 = self->_status == v4[3];
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
  v5 = [(PKTransitAppletCommutePlan *)self uniqueIdentifier];
  v6 = v5;
  v7 = self->_status - 1;
  if (v7 > 3)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = off_1E79DB198[v7];
  }

  v9 = [v3 stringWithFormat:@"Applet Plan: %@ %@ %@ %@ %@", identifier, v5, self->_startDate, self->_expirationDate, v8];

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
  v4 = [(PKTransitAppletCommutePlan *)self uniqueIdentifier];
  [v3 safelyAddObject:v4];

  [v3 safelyAddObject:self->_startDate];
  [v3 safelyAddObject:self->_expirationDate];
  v5 = PKCombinedHash(17, v3);
  v6 = self->_status - v5 + 32 * v5;

  return v6;
}

- (PKTransitAppletCommutePlan)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKTransitAppletCommutePlan;
  v5 = [(PKTransitAppletCommutePlan *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;

    v5->_status = [v4 decodeIntegerForKey:@"status"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v6 = a3;
  [v6 encodeObject:identifier forKey:@"identifier"];
  v5 = [(PKTransitAppletCommutePlan *)self uniqueIdentifier];
  [v6 encodeObject:v5 forKey:@"UniqueIdentifier"];

  [v6 encodeObject:self->_startDate forKey:@"startDate"];
  [v6 encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [v6 encodeInteger:self->_status forKey:@"status"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(PKTransitAppletCommutePlan *)self uniqueIdentifier];
  v9 = [v8 copyWithZone:a3];
  v10 = v5[2];
  v5[2] = v9;

  v11 = [(NSDate *)self->_startDate copyWithZone:a3];
  v12 = v5[4];
  v5[4] = v11;

  v13 = [(NSDate *)self->_expirationDate copyWithZone:a3];
  v14 = v5[5];
  v5[5] = v13;

  v5[3] = self->_status;
  return v5;
}

- (PKTransitAppletCommutePlan)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PKTransitAppletCommutePlan;
  v5 = [(PKTransitAppletCommutePlan *)&v20 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v4 objectForKeyedSubscript:@"CommutePlanIdentifier"];
    v8 = [v7 copy];
    identifier = v6->_identifier;
    v6->_identifier = v8;

    v10 = [v4 objectForKeyedSubscript:@"CommutePlanUniqueIdentifier"];
    v11 = [v10 copy];
    uniqueIdentifier = v6->_uniqueIdentifier;
    v6->_uniqueIdentifier = v11;

    v6->_status = [v4 PKIntegerForKey:@"ContractStatus"];
    v13 = [v4 PKDateComponentsForKey:@"CommutePlanValidityStartDate"];
    v14 = PKDateFromDateComponents(v13);
    startDate = v6->_startDate;
    v6->_startDate = v14;

    v16 = [v4 PKDateComponentsForKey:@"CommutePlanValidityEndDate"];
    v17 = PKDateFromDateComponents(v16);
    expirationDate = v6->_expirationDate;
    v6->_expirationDate = v17;
  }

  return v6;
}

- (PKTransitAppletCommutePlan)initWithIdentifier:(id)a3 uniqueIdentifier:(id)a4 startDate:(id)a5 expirationDate:(id)a6 status:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v26.receiver = self;
  v26.super_class = PKTransitAppletCommutePlan;
  v16 = [(PKTransitAppletCommutePlan *)&v26 init];
  if (v16)
  {
    v17 = [v12 copy];
    identifier = v16->_identifier;
    v16->_identifier = v17;

    v19 = [v13 copy];
    uniqueIdentifier = v16->_uniqueIdentifier;
    v16->_uniqueIdentifier = v19;

    v21 = PKDateFromDateComponents(v14);
    startDate = v16->_startDate;
    v16->_startDate = v21;

    v23 = PKDateFromDateComponents(v15);
    expirationDate = v16->_expirationDate;
    v16->_expirationDate = v23;

    v16->_status = a7;
  }

  return v16;
}

@end