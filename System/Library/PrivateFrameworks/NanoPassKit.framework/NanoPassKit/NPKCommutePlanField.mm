@interface NPKCommutePlanField
- (BOOL)hasPendingUpdate;
- (BOOL)isActive;
- (NPKCommutePlanField)initWithLabel:(id)a3 detailLabel:(id)a4 formattedValue:(id)a5 rawCountValue:(id)a6 usageDateRange:(id)a7 identifier:(id)a8 details:(id)a9 action:(id)a10 isDeviceBound:(BOOL)a11 pendingUpdateExpireDate:(id)a12;
- (NSDate)availableFrom;
- (NSDate)availableUntil;
- (NSString)description;
@end

@implementation NPKCommutePlanField

- (NPKCommutePlanField)initWithLabel:(id)a3 detailLabel:(id)a4 formattedValue:(id)a5 rawCountValue:(id)a6 usageDateRange:(id)a7 identifier:(id)a8 details:(id)a9 action:(id)a10 isDeviceBound:(BOOL)a11 pendingUpdateExpireDate:(id)a12
{
  v38 = a3;
  v37 = a4;
  v18 = a5;
  v36 = a6;
  v35 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a12;
  v39.receiver = self;
  v39.super_class = NPKCommutePlanField;
  v23 = [(NPKCommutePlanField *)&v39 init];
  if (v23)
  {
    v24 = [v38 copy];
    label = v23->_label;
    v23->_label = v24;

    v26 = [v37 copy];
    detailLabel = v23->_detailLabel;
    v23->_detailLabel = v26;

    v28 = [v18 copy];
    formattedValue = v23->_formattedValue;
    v23->_formattedValue = v28;

    v30 = [v19 copy];
    identifier = v23->_identifier;
    v23->_identifier = v30;

    v32 = [v20 copy];
    details = v23->_details;
    v23->_details = v32;

    objc_storeStrong(&v23->_action, a10);
    objc_storeStrong(&v23->_usageDateRange, a7);
    objc_storeStrong(&v23->_rawCountValue, a6);
    v23->_isDeviceBound = a11;
    objc_storeStrong(&v23->_pendingUpdateExpireDate, a12);
  }

  return v23;
}

- (BOOL)hasPendingUpdate
{
  pendingUpdateExpireDate = self->_pendingUpdateExpireDate;
  if (pendingUpdateExpireDate)
  {
    [(NSDate *)pendingUpdateExpireDate timeIntervalSinceNow];
    LOBYTE(pendingUpdateExpireDate) = v3 > 0.0;
  }

  return pendingUpdateExpireDate;
}

- (BOOL)isActive
{
  if ([(NPKCommutePlanField *)self isCountBasedCommutePlan])
  {
    v3 = [(NPKCommutePlanField *)self rawCountValue];
    v4 = [v3 integerValue];

    if (v4 > 0)
    {
      return 1;
    }
  }

  if ([(NPKCommutePlanField *)self isCountBasedCommutePlan])
  {
    return 0;
  }

  v6 = [(NPKCommutePlanField *)self usageDateRange];
  v7 = [v6 expiryDate];

  if (!v7)
  {
    return 0;
  }

  v8 = [(NPKCommutePlanField *)self usageDateRange];
  v9 = [v8 expiryDate];
  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = [v9 compare:v10];

  if (v11 != 1)
  {
    return 0;
  }

  v12 = [(NPKCommutePlanField *)self usageDateRange];
  v13 = [v12 startDate];

  if (!v13)
  {
    return 1;
  }

  v14 = [(NPKCommutePlanField *)self usageDateRange];
  v15 = [v14 startDate];
  v16 = [MEMORY[0x277CBEAA8] now];
  v17 = [v15 compare:v16];

  return v17 == -1;
}

- (NSDate)availableFrom
{
  v3 = [(NPKDateRange *)self->_usageDateRange startDate];
  if (v3)
  {
    [(PKPaymentPassAction *)self->_action availableFromRelative];
    if (v4 != 0.0)
    {
      [(PKPaymentPassAction *)self->_action availableFromRelative];
      v5 = [v3 dateByAddingTimeInterval:?];
      goto LABEL_6;
    }
  }

  v6 = [(PKPaymentPassAction *)self->_action availableFrom];

  if (v6)
  {
    v5 = [(PKPaymentPassAction *)self->_action availableFrom];
LABEL_6:
    v7 = v5;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  v7 = [MEMORY[0x277CBEAA8] distantPast];
LABEL_8:

  return v7;
}

- (NSDate)availableUntil
{
  v3 = [(NPKDateRange *)self->_usageDateRange expiryDate];
  if (v3)
  {
    [(PKPaymentPassAction *)self->_action availableUntilRelative];
    if (v4 != 0.0)
    {
      [(PKPaymentPassAction *)self->_action availableUntilRelative];
      v5 = [v3 dateByAddingTimeInterval:?];
      goto LABEL_6;
    }
  }

  v6 = [(PKPaymentPassAction *)self->_action availableUntil];

  if (v6)
  {
    v5 = [(PKPaymentPassAction *)self->_action availableUntil];
LABEL_6:
    v7 = v5;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  v7 = [MEMORY[0x277CBEAA8] distantFuture];
LABEL_8:

  return v7;
}

- (NSString)description
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = [(NPKCommutePlanField *)self label];
  v6 = [(NPKCommutePlanField *)self detailLabel];
  v7 = [(NPKCommutePlanField *)self identifier];
  v8 = [v3 stringWithFormat:@"<%@: %p> {label:%@ detailLabel:%@ ID:%@", v4, self, v5, v6, v7];

  v9 = [(NPKCommutePlanField *)self formattedValue];

  if (v9)
  {
    v10 = [(NPKCommutePlanField *)self formattedValue];
    [v8 appendFormat:@" formattedValue:%@", v10];
  }

  v11 = [(NPKCommutePlanField *)self action];

  if (v11)
  {
    v12 = [(NPKCommutePlanField *)self action];
    [v8 appendFormat:@" action:%@", v12];
  }

  v13 = [(NPKCommutePlanField *)self details];
  v14 = [v13 count];

  if (v14)
  {
    [v8 appendString:@" details:"];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = [(NPKCommutePlanField *)self details];
    v16 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v34;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v34 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v33 + 1) + 8 * i);
          v21 = [v20 label];
          v22 = [v20 value];
          [v8 appendFormat:@" (%@: %@)", v21, v22];
        }

        v17 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v17);
    }
  }

  v23 = [(NPKCommutePlanField *)self usageDateRange];
  v24 = [v23 startDate];

  if (v24)
  {
    v25 = [(NPKCommutePlanField *)self usageDateRange];
    v26 = [v25 startDate];
    [v8 appendFormat:@" startDate:%@", v26];
  }

  v27 = [(NPKCommutePlanField *)self usageDateRange];
  v28 = [v27 expiryDate];

  if (v28)
  {
    v29 = [(NPKCommutePlanField *)self usageDateRange];
    v30 = [v29 expiryDate];
    [v8 appendFormat:@" expiryDate:%@", v30];
  }

  [v8 appendString:@"}"];
  v31 = *MEMORY[0x277D85DE8];

  return v8;
}

@end