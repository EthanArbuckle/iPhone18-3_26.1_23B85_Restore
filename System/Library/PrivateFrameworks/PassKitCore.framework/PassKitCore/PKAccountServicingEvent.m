@interface PKAccountServicingEvent
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PKAccountServicingEvent)initWithCoder:(id)a3;
- (PKAccountServicingEvent)initWithDictionary:(id)a3;
- (PKAccountServicingEvent)initWithRecord:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithRecord:(id)a3;
@end

@implementation PKAccountServicingEvent

- (PKAccountServicingEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = PKAccountServicingEvent;
  v5 = [(PKAccountServicingEvent *)&v29 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 PKStringForKey:@"status"];
    v5->_status = PKAccountServicingEventStatusFromString(v8);

    v9 = [v4 PKStringForKey:@"currencyCode"];
    v10 = [v4 PKDecimalNumberFromStringForKey:@"amount"];
    v11 = PKCurrencyAmountCreate(v10, v9, 0);
    amount = v5->_amount;
    v5->_amount = v11;

    v13 = [v4 PKStringForKey:@"activityIdentifier"];
    activityIdentifier = v5->_activityIdentifier;
    v5->_activityIdentifier = v13;

    v15 = [v4 PKStringForKey:@"activityType"];
    v5->_activityType = PKAccountServicingEventActivityTypeFromString(v15);

    v16 = [v4 PKDateForKey:@"openDate"];
    openDate = v5->_openDate;
    v5->_openDate = v16;

    v18 = [v4 PKDateForKey:@"lastUpdatedDate"];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v18;

    v20 = [v4 PKStringForKey:@"reasonCode"];
    reasonCode = v5->_reasonCode;
    v5->_reasonCode = v20;

    v22 = [v4 PKStringForKey:@"claimIdentifier"];
    claimIdentifier = v5->_claimIdentifier;
    v5->_claimIdentifier = v22;

    v24 = [v4 PKArrayContaining:objc_opt_class() forKey:@"linkedCaseIdentifiers"];
    linkedCaseIdentifiers = v5->_linkedCaseIdentifiers;
    v5->_linkedCaseIdentifiers = v24;

    v26 = [[PKAccountServicingEventStatusDetails alloc] initWithDictionary:v4 currencyCode:v9];
    statusDetails = v5->_statusDetails;
    v5->_statusDetails = v26;
  }

  return v5;
}

- (PKAccountServicingEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = PKAccountServicingEvent;
  v5 = [(PKAccountServicingEvent *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"openDate"];
    openDate = v5->_openDate;
    v5->_openDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdatedDate"];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v10;

    v5->_status = [v4 decodeIntegerForKey:@"status"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activityIdentifier"];
    activityIdentifier = v5->_activityIdentifier;
    v5->_activityIdentifier = v12;

    v5->_activityType = [v4 decodeIntegerForKey:@"activityType"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyAmount"];
    amount = v5->_amount;
    v5->_amount = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reasonCode"];
    reasonCode = v5->_reasonCode;
    v5->_reasonCode = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"claimIdentifier"];
    claimIdentifier = v5->_claimIdentifier;
    v5->_claimIdentifier = v18;

    v20 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"linkedCaseIdentifiers"];
    linkedCaseIdentifiers = v5->_linkedCaseIdentifiers;
    v5->_linkedCaseIdentifiers = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statusDetails"];
    statusDetails = v5->_statusDetails;
    v5->_statusDetails = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_openDate forKey:@"openDate"];
  [v5 encodeObject:self->_lastUpdatedDate forKey:@"lastUpdatedDate"];
  [v5 encodeInteger:self->_status forKey:@"status"];
  [v5 encodeObject:self->_activityIdentifier forKey:@"activityIdentifier"];
  [v5 encodeInteger:self->_activityType forKey:@"activityType"];
  [v5 encodeObject:self->_amount forKey:@"currencyAmount"];
  [v5 encodeObject:self->_reasonCode forKey:@"reasonCode"];
  [v5 encodeObject:self->_claimIdentifier forKey:@"claimIdentifier"];
  [v5 encodeObject:self->_linkedCaseIdentifiers forKey:@"linkedCaseIdentifiers"];
  [v5 encodeObject:self->_statusDetails forKey:@"statusDetails"];
}

- (PKAccountServicingEvent)initWithRecord:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = PKAccountServicingEvent;
  v5 = [(PKAccountServicingEvent *)&v30 init];
  if (v5)
  {
    v6 = [v4 pk_encryptedStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 pk_encryptedDateForKey:@"openDate"];
    openDate = v5->_openDate;
    v5->_openDate = v8;

    v10 = [v4 pk_encryptedDateForKey:@"lastUpdatedDate"];
    lastUpdatedDate = v5->_lastUpdatedDate;
    v5->_lastUpdatedDate = v10;

    v12 = [v4 pk_encryptedStringForKey:@"currencyCode"];
    v13 = [v4 pk_encryptedDecimalNumberForKey:@"amount"];
    v14 = PKCurrencyAmountCreate(v13, v12, 0);
    amount = v5->_amount;
    v5->_amount = v14;

    v16 = [v4 pk_encryptedStringForKey:@"status"];
    v5->_status = PKAccountServicingEventStatusFromString(v16);

    v17 = [v4 pk_encryptedStringForKey:@"activityIdentifier"];
    activityIdentifier = v5->_activityIdentifier;
    v5->_activityIdentifier = v17;

    v19 = [v4 pk_encryptedStringForKey:@"activityType"];
    v5->_activityType = PKAccountServicingEventActivityTypeFromString(v19);

    v20 = [v4 pk_encryptedStringForKey:@"reasonCode"];
    reasonCode = v5->_reasonCode;
    v5->_reasonCode = v20;

    v22 = [v4 pk_encryptedStringForKey:@"claimIdentifier"];
    claimIdentifier = v5->_claimIdentifier;
    v5->_claimIdentifier = v22;

    v24 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v25 = [v4 pk_encryptedArrayOfClasses:v24 forKey:@"linkedCaseIdentifiers"];
    linkedCaseIdentifiers = v5->_linkedCaseIdentifiers;
    v5->_linkedCaseIdentifiers = v25;

    v27 = [[PKAccountServicingEventStatusDetails alloc] initWithRecord:v4 currencyCode:v12];
    statusDetails = v5->_statusDetails;
    v5->_statusDetails = v27;
  }

  return v5;
}

- (void)encodeWithRecord:(id)a3
{
  v13 = a3;
  v4 = [v13 encryptedValues];
  [v4 setObject:self->_identifier forKey:@"identifier"];
  [v4 setObject:self->_openDate forKey:@"openDate"];
  [v4 setObject:self->_lastUpdatedDate forKey:@"lastUpdatedDate"];
  v5 = PKAccountServicingEventStatusToString(self->_status);
  [v4 setObject:v5 forKey:@"status"];

  [v4 setObject:self->_activityIdentifier forKey:@"activityIdentifier"];
  v6 = PKAccountServicingEventActivityTypeToString(self->_activityType);
  [v4 setObject:v6 forKey:@"activityType"];

  v7 = [(PKCurrencyAmount *)self->_amount currency];
  [v4 setObject:v7 forKey:@"currencyCode"];

  v8 = [(PKCurrencyAmount *)self->_amount amount];
  v9 = [v8 stringValue];
  [v4 setObject:v9 forKey:@"amount"];

  [v4 setObject:self->_reasonCode forKey:@"reasonCode"];
  [v4 setObject:self->_claimIdentifier forKey:@"claimIdentifier"];
  if (self->_linkedCaseIdentifiers)
  {
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = [MEMORY[0x1E696ACB0] dataWithJSONObject:self->_linkedCaseIdentifiers options:0 error:0];
    v12 = [v10 initWithData:v11 encoding:4];

    [v4 setObject:v12 forKey:@"linkedCaseIdentifiers"];
  }

  [(PKAccountServicingEventStatusDetails *)self->_statusDetails encodeWithRecord:v13];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_46;
  }

  identifier = self->_identifier;
  v6 = v4[1];
  if (identifier && v6)
  {
    if (([(NSString *)identifier isEqual:?]& 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else if (identifier != v6)
  {
    goto LABEL_46;
  }

  openDate = self->_openDate;
  v8 = v4[5];
  if (openDate && v8)
  {
    if (([(NSDate *)openDate isEqual:?]& 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else if (openDate != v8)
  {
    goto LABEL_46;
  }

  lastUpdatedDate = self->_lastUpdatedDate;
  v10 = v4[6];
  if (lastUpdatedDate && v10)
  {
    if (([(NSDate *)lastUpdatedDate isEqual:?]& 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else if (lastUpdatedDate != v10)
  {
    goto LABEL_46;
  }

  activityIdentifier = self->_activityIdentifier;
  v12 = v4[4];
  if (activityIdentifier && v12)
  {
    if (([(NSString *)activityIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else if (activityIdentifier != v12)
  {
    goto LABEL_46;
  }

  amount = self->_amount;
  v14 = v4[7];
  if (amount && v14)
  {
    if (![(PKCurrencyAmount *)amount isEqual:?])
    {
      goto LABEL_46;
    }
  }

  else if (amount != v14)
  {
    goto LABEL_46;
  }

  reasonCode = self->_reasonCode;
  v16 = v4[8];
  if (reasonCode && v16)
  {
    if (([(NSString *)reasonCode isEqual:?]& 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else if (reasonCode != v16)
  {
    goto LABEL_46;
  }

  if (self->_activityType != v4[3] || self->_status != v4[2])
  {
    goto LABEL_46;
  }

  claimIdentifier = self->_claimIdentifier;
  v18 = v4[9];
  if (claimIdentifier && v18)
  {
    if (([(NSString *)claimIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_46;
    }
  }

  else if (claimIdentifier != v18)
  {
    goto LABEL_46;
  }

  linkedCaseIdentifiers = self->_linkedCaseIdentifiers;
  v20 = v4[10];
  if (!linkedCaseIdentifiers || !v20)
  {
    if (linkedCaseIdentifiers == v20)
    {
      goto LABEL_42;
    }

LABEL_46:
    v23 = 0;
    goto LABEL_47;
  }

  if (([(NSArray *)linkedCaseIdentifiers isEqual:?]& 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_42:
  statusDetails = self->_statusDetails;
  v22 = v4[11];
  if (statusDetails && v22)
  {
    v23 = [(PKAccountServicingEventStatusDetails *)statusDetails isEqual:?];
  }

  else
  {
    v23 = statusDetails == v22;
  }

LABEL_47:

  return v23;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_openDate];
  [v3 safelyAddObject:self->_lastUpdatedDate];
  [v3 safelyAddObject:self->_activityIdentifier];
  [v3 safelyAddObject:self->_amount];
  [v3 safelyAddObject:self->_reasonCode];
  [v3 safelyAddObject:self->_claimIdentifier];
  [v3 safelyAddObject:self->_linkedCaseIdentifiers];
  [v3 safelyAddObject:self->_statusDetails];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_status - v4 + 32 * v4;
  v6 = self->_activityType - v5 + 32 * v5;

  return v6;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  v4 = [(NSDate *)self->_openDate description];
  [v3 appendFormat:@"openDate: '%@'; ", v4];

  v5 = [(NSDate *)self->_lastUpdatedDate description];
  [v3 appendFormat:@"lastUpdatedDate: '%@'; ", v5];

  v6 = PKAccountServicingEventStatusToString(self->_status);
  [v3 appendFormat:@"status: '%@'; ", v6];

  [v3 appendFormat:@"activityIdentifier: '%@'; ", self->_activityIdentifier];
  v7 = PKAccountServicingEventActivityTypeToString(self->_activityType);
  [v3 appendFormat:@"activityType: '%@'; ", v7];

  v8 = [(PKCurrencyAmount *)self->_amount description];
  [v3 appendFormat:@"amount: '%@'; ", v8];

  [v3 appendFormat:@"reasonCode: '%@'; ", self->_reasonCode];
  [v3 appendFormat:@"claimIdentifier: '%@'; ", self->_claimIdentifier];
  [v3 appendFormat:@"linkedCaseIdentifiers: '%@'; ", self->_linkedCaseIdentifiers];
  [v3 appendFormat:@"statusDetails: '%@'; ", self->_statusDetails];
  [v3 appendFormat:@">"];

  return v3;
}

@end