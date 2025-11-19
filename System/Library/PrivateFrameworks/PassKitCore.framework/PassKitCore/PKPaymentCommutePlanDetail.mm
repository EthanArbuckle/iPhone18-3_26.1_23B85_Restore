@interface PKPaymentCommutePlanDetail
- (BOOL)isEqual:(id)a3;
- (NSString)identifier;
- (NSString)uniqueIdentifier;
- (PKPaymentCommutePlanDetail)initWithAppletCommutePlan:(id)a3 label:(id)a4 value:(id)a5;
- (PKPaymentCommutePlanDetail)initWithCoder:(id)a3;
- (PKPaymentCommutePlanDetail)initWithDictionary:(id)a3;
- (PKPaymentCommutePlanDetail)initWithIdentifier:(id)a3 uniqueIdentifier:(id)a4 startDate:(id)a5 expiryDate:(id)a6 title:(id)a7 description:(id)a8;
- (PKPaymentCommutePlanDetail)initWithTransitCommutePlan:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentCommutePlanDetail

- (PKPaymentCommutePlanDetail)initWithDictionary:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKPaymentCommutePlanDetail;
  v5 = [(PKPaymentCommutePlanDetail *)&v21 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 PKStringForKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;

    v5->_value = [v4 PKIntegerForKey:@"value"];
    v10 = [v4 PKStringForKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v10;

    v12 = [v4 PKStringForKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v12;

    v14 = [v4 PKDateForKey:@"lastUpdatedDate"];
    lastUpdateDate = v5->_lastUpdateDate;
    v5->_lastUpdateDate = v14;

    v16 = [v4 PKDateForKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v16;

    v18 = [v4 PKDateForKey:@"expiryDate"];
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = v18;

    v5->_status = [v4 PKIntegerForKey:@"status"];
  }

  return v5;
}

- (PKPaymentCommutePlanDetail)initWithAppletCommutePlan:(id)a3 label:(id)a4 value:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = PKPaymentCommutePlanDetail;
  v11 = [(PKPaymentCommutePlanDetail *)&v21 init];
  if (v11)
  {
    v12 = [v8 identifier];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [v8 uniqueIdentifier];
    uniqueIdentifier = v11->_uniqueIdentifier;
    v11->_uniqueIdentifier = v14;

    v11->_status = [v8 status];
    v16 = [v8 startDate];
    startDate = v11->_startDate;
    v11->_startDate = v16;

    v18 = [v8 expirationDate];
    expiryDate = v11->_expiryDate;
    v11->_expiryDate = v18;

    objc_storeStrong(&v11->_localizedTitle, a4);
    objc_storeStrong(&v11->_localizedDescription, a5);
  }

  return v11;
}

- (PKPaymentCommutePlanDetail)initWithTransitCommutePlan:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PKPaymentCommutePlanDetail;
  v5 = [(PKPaymentCommutePlanDetail *)&v20 init];
  if (v5)
  {
    v6 = [v4 identifier];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 uniqueIdentifier];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;

    v5->_status = 0;
    v10 = [v4 startDate];
    startDate = v5->_startDate;
    v5->_startDate = v10;

    v12 = [v4 expiryDate];
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = v12;

    v14 = [v4 title];
    v15 = [v14 label];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v15;

    v17 = [v14 value];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v17;
  }

  return v5;
}

- (PKPaymentCommutePlanDetail)initWithIdentifier:(id)a3 uniqueIdentifier:(id)a4 startDate:(id)a5 expiryDate:(id)a6 title:(id)a7 description:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = PKPaymentCommutePlanDetail;
  v18 = [(PKPaymentCommutePlanDetail *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, a3);
    objc_storeStrong(&v19->_uniqueIdentifier, a4);
    objc_storeStrong(&v19->_startDate, a5);
    objc_storeStrong(&v19->_expiryDate, a6);
    objc_storeStrong(&v19->_localizedTitle, a7);
    objc_storeStrong(&v19->_localizedDescription, a8);
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPaymentCommutePlanDetail allocWithZone:](PKPaymentCommutePlanDetail init];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [(PKPaymentCommutePlanDetail *)self uniqueIdentifier];
  v9 = [v8 copyWithZone:a3];
  uniqueIdentifier = v5->_uniqueIdentifier;
  v5->_uniqueIdentifier = v9;

  v5->_value = self->_value;
  v11 = [(NSString *)self->_localizedTitle copyWithZone:a3];
  localizedTitle = v5->_localizedTitle;
  v5->_localizedTitle = v11;

  v13 = [(NSString *)self->_localizedDescription copyWithZone:a3];
  localizedDescription = v5->_localizedDescription;
  v5->_localizedDescription = v13;

  v15 = [(NSDate *)self->_lastUpdateDate copyWithZone:a3];
  lastUpdateDate = v5->_lastUpdateDate;
  v5->_lastUpdateDate = v15;

  v17 = [(NSDate *)self->_startDate copyWithZone:a3];
  startDate = v5->_startDate;
  v5->_startDate = v17;

  v19 = [(NSDate *)self->_expiryDate copyWithZone:a3];
  expiryDate = v5->_expiryDate;
  v5->_expiryDate = v19;

  v5->_status = self->_status;
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v6 = a3;
  [v6 encodeObject:identifier forKey:@"identifier"];
  v5 = [(PKPaymentCommutePlanDetail *)self uniqueIdentifier];
  [v6 encodeObject:v5 forKey:@"uniqueIdentifier"];

  [v6 encodeInteger:self->_value forKey:@"value"];
  [v6 encodeObject:self->_localizedTitle forKey:@"localizedTitle"];
  [v6 encodeObject:self->_localizedDescription forKey:@"localizedDescription"];
  [v6 encodeObject:self->_lastUpdateDate forKey:@"lastUpdatedDate"];
  [v6 encodeObject:self->_startDate forKey:@"startDate"];
  [v6 encodeObject:self->_expiryDate forKey:@"expiryDate"];
  [v6 encodeInteger:self->_status forKey:@"status"];
}

- (PKPaymentCommutePlanDetail)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKPaymentCommutePlanDetail;
  v5 = [(PKPaymentCommutePlanDetail *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v8;

    v5->_value = [v4 decodeIntegerForKey:@"value"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    localizedTitle = v5->_localizedTitle;
    v5->_localizedTitle = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdatedDate"];
    lastUpdateDate = v5->_lastUpdateDate;
    v5->_lastUpdateDate = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expiryDate"];
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = v18;

    v5->_status = [v4 decodeIntegerForKey:@"status"];
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
  v6 = [(PKPaymentCommutePlanDetail *)self uniqueIdentifier];
  v7 = v6;
  if (planType)
  {
    [v4 stringWithFormat:@"Count Plan: %@ %@ %ld %@ %@ %lu", identifier, v6, self->_value, self->_localizedTitle, self->_localizedDescription, self->_status, v10];
  }

  else
  {
    [v4 stringWithFormat:@"Timed Plan: %@ %@ %@ %@ %@ %@ %lu", identifier, v6, self->_startDate, self->_expiryDate, self->_localizedTitle, self->_localizedDescription, self->_status];
  }
  v8 = ;

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  v4 = [(PKPaymentCommutePlanDetail *)self uniqueIdentifier];
  [v3 safelyAddObject:v4];

  [v3 safelyAddObject:self->_localizedTitle];
  [v3 safelyAddObject:self->_localizedDescription];
  [v3 safelyAddObject:self->_lastUpdateDate];
  [v3 safelyAddObject:self->_startDate];
  [v3 safelyAddObject:self->_expiryDate];
  v5 = PKCombinedHash(17, v3);
  v6 = self->_value - v5 + 32 * v5;
  v7 = self->_status - v6 + 32 * v6;

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = self->_identifier;
    v6 = [v4 identifier];
    v7 = v6;
    if (identifier && v6)
    {
      if (([(NSString *)identifier isEqual:v6]& 1) != 0)
      {
LABEL_5:
        v8 = [(PKPaymentCommutePlanDetail *)self uniqueIdentifier];
        v9 = [v4 uniqueIdentifier];
        v10 = v9;
        if (v8 && v9)
        {
          if (([v8 isEqual:v9] & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else if (v8 != v9)
        {
LABEL_30:
          v11 = 0;
LABEL_31:

          goto LABEL_32;
        }

        value = self->_value;
        if (value != [v4 value])
        {
          goto LABEL_30;
        }

        status = self->_status;
        if (status != [v4 status])
        {
          goto LABEL_30;
        }

        localizedTitle = self->_localizedTitle;
        v15 = [v4 localizedTitle];
        v16 = v15;
        if (localizedTitle && v15)
        {
          if (([(NSString *)localizedTitle isEqual:v15]& 1) != 0)
          {
LABEL_18:
            localizedDescription = self->_localizedDescription;
            v18 = [v4 localizedDescription];
            v19 = v18;
            if (localizedDescription && v18)
            {
              if (([(NSString *)localizedDescription isEqual:v18]& 1) != 0)
              {
LABEL_21:
                startDate = self->_startDate;
                v21 = [v4 startDate];
                v22 = v21;
                if (startDate && v21)
                {
                  if (([(NSDate *)startDate isEqual:v21]& 1) != 0)
                  {
LABEL_24:
                    expiryDate = self->_expiryDate;
                    v24 = [v4 expiryDate];
                    v25 = v24;
                    if (expiryDate && v24)
                    {
                      if (([(NSDate *)expiryDate isEqual:v24]& 1) != 0)
                      {
                        goto LABEL_27;
                      }
                    }

                    else if (expiryDate == v24)
                    {
LABEL_27:
                      lastUpdateDate = self->_lastUpdateDate;
                      v27 = [v4 lastUpdateDate];
                      v28 = v27;
                      if (lastUpdateDate && v27)
                      {
                        v11 = [(NSDate *)lastUpdateDate isEqual:v27];
                      }

                      else
                      {
                        v11 = lastUpdateDate == v27;
                      }

                      goto LABEL_44;
                    }

                    v11 = 0;
LABEL_44:

                    goto LABEL_45;
                  }
                }

                else if (startDate == v21)
                {
                  goto LABEL_24;
                }

                v11 = 0;
LABEL_45:

                goto LABEL_46;
              }
            }

            else if (localizedDescription == v18)
            {
              goto LABEL_21;
            }

            v11 = 0;
LABEL_46:

            goto LABEL_47;
          }
        }

        else if (localizedTitle == v15)
        {
          goto LABEL_18;
        }

        v11 = 0;
LABEL_47:

        goto LABEL_31;
      }
    }

    else if (identifier == v6)
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