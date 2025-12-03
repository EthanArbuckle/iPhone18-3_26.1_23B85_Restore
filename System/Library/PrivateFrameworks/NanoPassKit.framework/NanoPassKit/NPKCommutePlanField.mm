@interface NPKCommutePlanField
- (BOOL)hasPendingUpdate;
- (BOOL)isActive;
- (NPKCommutePlanField)initWithLabel:(id)label detailLabel:(id)detailLabel formattedValue:(id)value rawCountValue:(id)countValue usageDateRange:(id)range identifier:(id)identifier details:(id)details action:(id)self0 isDeviceBound:(BOOL)self1 pendingUpdateExpireDate:(id)self2;
- (NSDate)availableFrom;
- (NSDate)availableUntil;
- (NSString)description;
@end

@implementation NPKCommutePlanField

- (NPKCommutePlanField)initWithLabel:(id)label detailLabel:(id)detailLabel formattedValue:(id)value rawCountValue:(id)countValue usageDateRange:(id)range identifier:(id)identifier details:(id)details action:(id)self0 isDeviceBound:(BOOL)self1 pendingUpdateExpireDate:(id)self2
{
  labelCopy = label;
  detailLabelCopy = detailLabel;
  valueCopy = value;
  countValueCopy = countValue;
  rangeCopy = range;
  identifierCopy = identifier;
  detailsCopy = details;
  actionCopy = action;
  dateCopy = date;
  v39.receiver = self;
  v39.super_class = NPKCommutePlanField;
  v23 = [(NPKCommutePlanField *)&v39 init];
  if (v23)
  {
    v24 = [labelCopy copy];
    label = v23->_label;
    v23->_label = v24;

    v26 = [detailLabelCopy copy];
    detailLabel = v23->_detailLabel;
    v23->_detailLabel = v26;

    v28 = [valueCopy copy];
    formattedValue = v23->_formattedValue;
    v23->_formattedValue = v28;

    v30 = [identifierCopy copy];
    identifier = v23->_identifier;
    v23->_identifier = v30;

    v32 = [detailsCopy copy];
    details = v23->_details;
    v23->_details = v32;

    objc_storeStrong(&v23->_action, action);
    objc_storeStrong(&v23->_usageDateRange, range);
    objc_storeStrong(&v23->_rawCountValue, countValue);
    v23->_isDeviceBound = bound;
    objc_storeStrong(&v23->_pendingUpdateExpireDate, date);
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
    rawCountValue = [(NPKCommutePlanField *)self rawCountValue];
    integerValue = [rawCountValue integerValue];

    if (integerValue > 0)
    {
      return 1;
    }
  }

  if ([(NPKCommutePlanField *)self isCountBasedCommutePlan])
  {
    return 0;
  }

  usageDateRange = [(NPKCommutePlanField *)self usageDateRange];
  expiryDate = [usageDateRange expiryDate];

  if (!expiryDate)
  {
    return 0;
  }

  usageDateRange2 = [(NPKCommutePlanField *)self usageDateRange];
  expiryDate2 = [usageDateRange2 expiryDate];
  v10 = [MEMORY[0x277CBEAA8] now];
  v11 = [expiryDate2 compare:v10];

  if (v11 != 1)
  {
    return 0;
  }

  usageDateRange3 = [(NPKCommutePlanField *)self usageDateRange];
  startDate = [usageDateRange3 startDate];

  if (!startDate)
  {
    return 1;
  }

  usageDateRange4 = [(NPKCommutePlanField *)self usageDateRange];
  startDate2 = [usageDateRange4 startDate];
  v16 = [MEMORY[0x277CBEAA8] now];
  v17 = [startDate2 compare:v16];

  return v17 == -1;
}

- (NSDate)availableFrom
{
  startDate = [(NPKDateRange *)self->_usageDateRange startDate];
  if (startDate)
  {
    [(PKPaymentPassAction *)self->_action availableFromRelative];
    if (v4 != 0.0)
    {
      [(PKPaymentPassAction *)self->_action availableFromRelative];
      availableFrom2 = [startDate dateByAddingTimeInterval:?];
      goto LABEL_6;
    }
  }

  availableFrom = [(PKPaymentPassAction *)self->_action availableFrom];

  if (availableFrom)
  {
    availableFrom2 = [(PKPaymentPassAction *)self->_action availableFrom];
LABEL_6:
    distantPast = availableFrom2;
    if (availableFrom2)
    {
      goto LABEL_8;
    }
  }

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
LABEL_8:

  return distantPast;
}

- (NSDate)availableUntil
{
  expiryDate = [(NPKDateRange *)self->_usageDateRange expiryDate];
  if (expiryDate)
  {
    [(PKPaymentPassAction *)self->_action availableUntilRelative];
    if (v4 != 0.0)
    {
      [(PKPaymentPassAction *)self->_action availableUntilRelative];
      availableUntil2 = [expiryDate dateByAddingTimeInterval:?];
      goto LABEL_6;
    }
  }

  availableUntil = [(PKPaymentPassAction *)self->_action availableUntil];

  if (availableUntil)
  {
    availableUntil2 = [(PKPaymentPassAction *)self->_action availableUntil];
LABEL_6:
    distantFuture = availableUntil2;
    if (availableUntil2)
    {
      goto LABEL_8;
    }
  }

  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
LABEL_8:

  return distantFuture;
}

- (NSString)description
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  label = [(NPKCommutePlanField *)self label];
  detailLabel = [(NPKCommutePlanField *)self detailLabel];
  identifier = [(NPKCommutePlanField *)self identifier];
  v8 = [v3 stringWithFormat:@"<%@: %p> {label:%@ detailLabel:%@ ID:%@", v4, self, label, detailLabel, identifier];

  formattedValue = [(NPKCommutePlanField *)self formattedValue];

  if (formattedValue)
  {
    formattedValue2 = [(NPKCommutePlanField *)self formattedValue];
    [v8 appendFormat:@" formattedValue:%@", formattedValue2];
  }

  action = [(NPKCommutePlanField *)self action];

  if (action)
  {
    action2 = [(NPKCommutePlanField *)self action];
    [v8 appendFormat:@" action:%@", action2];
  }

  details = [(NPKCommutePlanField *)self details];
  v14 = [details count];

  if (v14)
  {
    [v8 appendString:@" details:"];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    details2 = [(NPKCommutePlanField *)self details];
    v16 = [details2 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
            objc_enumerationMutation(details2);
          }

          v20 = *(*(&v33 + 1) + 8 * i);
          label2 = [v20 label];
          value = [v20 value];
          [v8 appendFormat:@" (%@: %@)", label2, value];
        }

        v17 = [details2 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v17);
    }
  }

  usageDateRange = [(NPKCommutePlanField *)self usageDateRange];
  startDate = [usageDateRange startDate];

  if (startDate)
  {
    usageDateRange2 = [(NPKCommutePlanField *)self usageDateRange];
    startDate2 = [usageDateRange2 startDate];
    [v8 appendFormat:@" startDate:%@", startDate2];
  }

  usageDateRange3 = [(NPKCommutePlanField *)self usageDateRange];
  expiryDate = [usageDateRange3 expiryDate];

  if (expiryDate)
  {
    usageDateRange4 = [(NPKCommutePlanField *)self usageDateRange];
    expiryDate2 = [usageDateRange4 expiryDate];
    [v8 appendFormat:@" expiryDate:%@", expiryDate2];
  }

  [v8 appendString:@"}"];
  v31 = *MEMORY[0x277D85DE8];

  return v8;
}

@end