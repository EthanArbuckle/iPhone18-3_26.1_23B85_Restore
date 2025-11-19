@interface PKAccountServicingEventStatusDetails
- (BOOL)isEqual:(id)a3;
- (PKAccountServicingEventStatusDetails)initWithCoder:(id)a3;
- (PKAccountServicingEventStatusDetails)initWithDictionary:(id)a3 currencyCode:(id)a4;
- (PKAccountServicingEventStatusDetails)initWithRecord:(id)a3 currencyCode:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithRecord:(id)a3;
@end

@implementation PKAccountServicingEventStatusDetails

- (PKAccountServicingEventStatusDetails)initWithDictionary:(id)a3 currencyCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = PKAccountServicingEventStatusDetails;
  v8 = [(PKAccountServicingEventStatusDetails *)&v25 init];
  if (v8)
  {
    v9 = [v6 PKArrayContaining:objc_opt_class() forKey:@"statusReasonCodes"];
    statusReasons = v8->_statusReasons;
    v8->_statusReasons = v9;

    v11 = [v6 PKDateForKey:@"customerResponseByDate"];
    customerResponseByDate = v8->_customerResponseByDate;
    v8->_customerResponseByDate = v11;

    v13 = [v6 PKDateForKey:@"merchantResponseByDate"];
    merchantResponseByDate = v8->_merchantResponseByDate;
    v8->_merchantResponseByDate = v13;

    v15 = [v6 PKArrayContaining:objc_opt_class() forKey:@"evidenceDocumentTypes"];
    evidenceDocumentTypes = v8->_evidenceDocumentTypes;
    v8->_evidenceDocumentTypes = v15;

    v17 = [v6 PKStringForKey:@"resolutionReasonCode"];
    resolutionReason = v8->_resolutionReason;
    v8->_resolutionReason = v17;

    v19 = [v6 PKDecimalNumberFromStringForKey:@"partiallyApprovedAmount"];
    v20 = PKCurrencyAmountCreate(v19, v7, 0);
    partiallyApprovedAmount = v8->_partiallyApprovedAmount;
    v8->_partiallyApprovedAmount = v20;

    v22 = [v6 PKDateForKey:@"resolutionDate"];
    resolutionDate = v8->_resolutionDate;
    v8->_resolutionDate = v22;
  }

  return v8;
}

- (PKAccountServicingEventStatusDetails)initWithRecord:(id)a3 currencyCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = PKAccountServicingEventStatusDetails;
  v8 = [(PKAccountServicingEventStatusDetails *)&v28 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v10 = [v6 pk_encryptedArrayOfClasses:v9 forKey:@"statusReasonCodes"];
    statusReasons = v8->_statusReasons;
    v8->_statusReasons = v10;

    v12 = [v6 pk_encryptedDateForKey:@"customerResponseByDate"];
    customerResponseByDate = v8->_customerResponseByDate;
    v8->_customerResponseByDate = v12;

    v14 = [v6 pk_encryptedDateForKey:@"merchantResponseByDate"];
    merchantResponseByDate = v8->_merchantResponseByDate;
    v8->_merchantResponseByDate = v14;

    v16 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v17 = [v6 pk_encryptedArrayOfClasses:v16 forKey:@"evidenceDocumentTypes"];
    evidenceDocumentTypes = v8->_evidenceDocumentTypes;
    v8->_evidenceDocumentTypes = v17;

    v19 = [v6 pk_encryptedStringForKey:@"resolutionReasonCode"];
    resolutionReason = v8->_resolutionReason;
    v8->_resolutionReason = v19;

    v21 = [v6 pk_encryptedDecimalNumberForKey:@"partiallyApprovedAmount"];
    v22 = v21;
    if (v21)
    {
      v23 = PKCurrencyAmountCreate(v21, v7, 0);
      partiallyApprovedAmount = v8->_partiallyApprovedAmount;
      v8->_partiallyApprovedAmount = v23;
    }

    v25 = [v6 pk_encryptedDateForKey:@"resolutionDate"];
    resolutionDate = v8->_resolutionDate;
    v8->_resolutionDate = v25;
  }

  return v8;
}

- (void)encodeWithRecord:(id)a3
{
  v12 = [a3 encryptedValues];
  if (self->_statusReasons)
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = [MEMORY[0x1E696ACB0] dataWithJSONObject:self->_statusReasons options:0 error:0];
    v6 = [v4 initWithData:v5 encoding:4];

    [v12 setObject:v6 forKey:@"statusReasonCodes"];
  }

  [v12 setObject:self->_customerResponseByDate forKey:@"customerResponseByDate"];
  [v12 setObject:self->_merchantResponseByDate forKey:@"merchantResponseByDate"];
  if (self->_evidenceDocumentTypes)
  {
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = [MEMORY[0x1E696ACB0] dataWithJSONObject:self->_evidenceDocumentTypes options:0 error:0];
    v9 = [v7 initWithData:v8 encoding:4];

    [v12 setObject:v9 forKey:@"evidenceDocumentTypes"];
  }

  [v12 setObject:self->_resolutionReason forKey:@"resolutionReasonCode"];
  v10 = [(PKCurrencyAmount *)self->_partiallyApprovedAmount amount];
  v11 = [v10 stringValue];
  [v12 setObject:v11 forKey:@"partiallyApprovedAmount"];

  [v12 setObject:self->_resolutionDate forKey:@"resolutionDate"];
}

- (PKAccountServicingEventStatusDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKAccountServicingEventStatusDetails;
  v5 = [(PKAccountServicingEventStatusDetails *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"statusReasonCodes"];
    statusReasons = v5->_statusReasons;
    v5->_statusReasons = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customerResponseByDate"];
    customerResponseByDate = v5->_customerResponseByDate;
    v5->_customerResponseByDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantResponseByDate"];
    merchantResponseByDate = v5->_merchantResponseByDate;
    v5->_merchantResponseByDate = v10;

    v12 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"evidenceDocumentTypes"];
    evidenceDocumentTypes = v5->_evidenceDocumentTypes;
    v5->_evidenceDocumentTypes = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resolutionReasonCode"];
    resolutionReason = v5->_resolutionReason;
    v5->_resolutionReason = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"partiallyApprovedAmount"];
    partiallyApprovedAmount = v5->_partiallyApprovedAmount;
    v5->_partiallyApprovedAmount = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resolutionDate"];
    resolutionDate = v5->_resolutionDate;
    v5->_resolutionDate = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  statusReasons = self->_statusReasons;
  v5 = a3;
  [v5 encodeObject:statusReasons forKey:@"statusReasonCodes"];
  [v5 encodeObject:self->_customerResponseByDate forKey:@"customerResponseByDate"];
  [v5 encodeObject:self->_merchantResponseByDate forKey:@"merchantResponseByDate"];
  [v5 encodeObject:self->_evidenceDocumentTypes forKey:@"evidenceDocumentTypes"];
  [v5 encodeObject:self->_resolutionReason forKey:@"resolutionReasonCode"];
  [v5 encodeObject:self->_partiallyApprovedAmount forKey:@"partiallyApprovedAmount"];
  [v5 encodeObject:self->_resolutionDate forKey:@"resolutionDate"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_34;
  }

  statusReasons = self->_statusReasons;
  v6 = v4[1];
  if (statusReasons && v6)
  {
    if (([(NSArray *)statusReasons isEqual:?]& 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (statusReasons != v6)
  {
    goto LABEL_34;
  }

  customerResponseByDate = self->_customerResponseByDate;
  v8 = v4[2];
  if (customerResponseByDate && v8)
  {
    if (([(NSDate *)customerResponseByDate isEqual:?]& 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (customerResponseByDate != v8)
  {
    goto LABEL_34;
  }

  merchantResponseByDate = self->_merchantResponseByDate;
  v10 = v4[3];
  if (merchantResponseByDate && v10)
  {
    if (([(NSDate *)merchantResponseByDate isEqual:?]& 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (merchantResponseByDate != v10)
  {
    goto LABEL_34;
  }

  evidenceDocumentTypes = self->_evidenceDocumentTypes;
  v12 = v4[4];
  if (evidenceDocumentTypes && v12)
  {
    if (([(NSArray *)evidenceDocumentTypes isEqual:?]& 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (evidenceDocumentTypes != v12)
  {
    goto LABEL_34;
  }

  resolutionReason = self->_resolutionReason;
  v14 = v4[5];
  if (resolutionReason && v14)
  {
    if (([(NSString *)resolutionReason isEqual:?]& 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (resolutionReason != v14)
  {
    goto LABEL_34;
  }

  partiallyApprovedAmount = self->_partiallyApprovedAmount;
  v16 = v4[6];
  if (!partiallyApprovedAmount || !v16)
  {
    if (partiallyApprovedAmount == v16)
    {
      goto LABEL_30;
    }

LABEL_34:
    v19 = 0;
    goto LABEL_35;
  }

  if (![(PKCurrencyAmount *)partiallyApprovedAmount isEqual:?])
  {
    goto LABEL_34;
  }

LABEL_30:
  resolutionDate = self->_resolutionDate;
  v18 = v4[7];
  if (resolutionDate && v18)
  {
    v19 = [(NSDate *)resolutionDate isEqual:?];
  }

  else
  {
    v19 = resolutionDate == v18;
  }

LABEL_35:

  return v19;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_statusReasons];
  [v3 safelyAddObject:self->_customerResponseByDate];
  [v3 safelyAddObject:self->_merchantResponseByDate];
  [v3 safelyAddObject:self->_evidenceDocumentTypes];
  [v3 safelyAddObject:self->_partiallyApprovedAmount];
  [v3 safelyAddObject:self->_resolutionDate];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(PKAccountServicingEventStatusDetails *)self statusReasons];
  [v3 appendFormat:@"statusReasons: '%@'; ", v4];

  v5 = [(PKAccountServicingEventStatusDetails *)self customerResponseByDate];
  [v3 appendFormat:@"customerResponseByDate: '%@'; ", v5];

  v6 = [(PKAccountServicingEventStatusDetails *)self merchantResponseByDate];
  [v3 appendFormat:@"merchantResponseByDate: '%@'; ", v6];

  v7 = [(PKAccountServicingEventStatusDetails *)self evidenceDocumentTypes];
  [v3 appendFormat:@"evidenceDocumentTypes: '%@'; ", v7];

  v8 = [(PKAccountServicingEventStatusDetails *)self resolutionReason];
  [v3 appendFormat:@"resolutionReasonCode: '%@'; ", v8];

  v9 = [(PKAccountServicingEventStatusDetails *)self partiallyApprovedAmount];
  [v3 appendFormat:@"partiallyApprovedAmount: '%@'; ", v9];

  v10 = [(PKAccountServicingEventStatusDetails *)self resolutionDate];
  [v3 appendFormat:@"resolutionDate: '%@'; ", v10];

  [v3 appendFormat:@">"];

  return v3;
}

@end