@interface PKAccountServicingEventStatusDetails
- (BOOL)isEqual:(id)equal;
- (PKAccountServicingEventStatusDetails)initWithCoder:(id)coder;
- (PKAccountServicingEventStatusDetails)initWithDictionary:(id)dictionary currencyCode:(id)code;
- (PKAccountServicingEventStatusDetails)initWithRecord:(id)record currencyCode:(id)code;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithRecord:(id)record;
@end

@implementation PKAccountServicingEventStatusDetails

- (PKAccountServicingEventStatusDetails)initWithDictionary:(id)dictionary currencyCode:(id)code
{
  dictionaryCopy = dictionary;
  codeCopy = code;
  v25.receiver = self;
  v25.super_class = PKAccountServicingEventStatusDetails;
  v8 = [(PKAccountServicingEventStatusDetails *)&v25 init];
  if (v8)
  {
    v9 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"statusReasonCodes"];
    statusReasons = v8->_statusReasons;
    v8->_statusReasons = v9;

    v11 = [dictionaryCopy PKDateForKey:@"customerResponseByDate"];
    customerResponseByDate = v8->_customerResponseByDate;
    v8->_customerResponseByDate = v11;

    v13 = [dictionaryCopy PKDateForKey:@"merchantResponseByDate"];
    merchantResponseByDate = v8->_merchantResponseByDate;
    v8->_merchantResponseByDate = v13;

    v15 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"evidenceDocumentTypes"];
    evidenceDocumentTypes = v8->_evidenceDocumentTypes;
    v8->_evidenceDocumentTypes = v15;

    v17 = [dictionaryCopy PKStringForKey:@"resolutionReasonCode"];
    resolutionReason = v8->_resolutionReason;
    v8->_resolutionReason = v17;

    v19 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"partiallyApprovedAmount"];
    v20 = PKCurrencyAmountCreate(v19, codeCopy, 0);
    partiallyApprovedAmount = v8->_partiallyApprovedAmount;
    v8->_partiallyApprovedAmount = v20;

    v22 = [dictionaryCopy PKDateForKey:@"resolutionDate"];
    resolutionDate = v8->_resolutionDate;
    v8->_resolutionDate = v22;
  }

  return v8;
}

- (PKAccountServicingEventStatusDetails)initWithRecord:(id)record currencyCode:(id)code
{
  recordCopy = record;
  codeCopy = code;
  v28.receiver = self;
  v28.super_class = PKAccountServicingEventStatusDetails;
  v8 = [(PKAccountServicingEventStatusDetails *)&v28 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v10 = [recordCopy pk_encryptedArrayOfClasses:v9 forKey:@"statusReasonCodes"];
    statusReasons = v8->_statusReasons;
    v8->_statusReasons = v10;

    v12 = [recordCopy pk_encryptedDateForKey:@"customerResponseByDate"];
    customerResponseByDate = v8->_customerResponseByDate;
    v8->_customerResponseByDate = v12;

    v14 = [recordCopy pk_encryptedDateForKey:@"merchantResponseByDate"];
    merchantResponseByDate = v8->_merchantResponseByDate;
    v8->_merchantResponseByDate = v14;

    v16 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v17 = [recordCopy pk_encryptedArrayOfClasses:v16 forKey:@"evidenceDocumentTypes"];
    evidenceDocumentTypes = v8->_evidenceDocumentTypes;
    v8->_evidenceDocumentTypes = v17;

    v19 = [recordCopy pk_encryptedStringForKey:@"resolutionReasonCode"];
    resolutionReason = v8->_resolutionReason;
    v8->_resolutionReason = v19;

    v21 = [recordCopy pk_encryptedDecimalNumberForKey:@"partiallyApprovedAmount"];
    v22 = v21;
    if (v21)
    {
      v23 = PKCurrencyAmountCreate(v21, codeCopy, 0);
      partiallyApprovedAmount = v8->_partiallyApprovedAmount;
      v8->_partiallyApprovedAmount = v23;
    }

    v25 = [recordCopy pk_encryptedDateForKey:@"resolutionDate"];
    resolutionDate = v8->_resolutionDate;
    v8->_resolutionDate = v25;
  }

  return v8;
}

- (void)encodeWithRecord:(id)record
{
  encryptedValues = [record encryptedValues];
  if (self->_statusReasons)
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = [MEMORY[0x1E696ACB0] dataWithJSONObject:self->_statusReasons options:0 error:0];
    v6 = [v4 initWithData:v5 encoding:4];

    [encryptedValues setObject:v6 forKey:@"statusReasonCodes"];
  }

  [encryptedValues setObject:self->_customerResponseByDate forKey:@"customerResponseByDate"];
  [encryptedValues setObject:self->_merchantResponseByDate forKey:@"merchantResponseByDate"];
  if (self->_evidenceDocumentTypes)
  {
    v7 = objc_alloc(MEMORY[0x1E696AEC0]);
    v8 = [MEMORY[0x1E696ACB0] dataWithJSONObject:self->_evidenceDocumentTypes options:0 error:0];
    v9 = [v7 initWithData:v8 encoding:4];

    [encryptedValues setObject:v9 forKey:@"evidenceDocumentTypes"];
  }

  [encryptedValues setObject:self->_resolutionReason forKey:@"resolutionReasonCode"];
  amount = [(PKCurrencyAmount *)self->_partiallyApprovedAmount amount];
  stringValue = [amount stringValue];
  [encryptedValues setObject:stringValue forKey:@"partiallyApprovedAmount"];

  [encryptedValues setObject:self->_resolutionDate forKey:@"resolutionDate"];
}

- (PKAccountServicingEventStatusDetails)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = PKAccountServicingEventStatusDetails;
  v5 = [(PKAccountServicingEventStatusDetails *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"statusReasonCodes"];
    statusReasons = v5->_statusReasons;
    v5->_statusReasons = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customerResponseByDate"];
    customerResponseByDate = v5->_customerResponseByDate;
    v5->_customerResponseByDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantResponseByDate"];
    merchantResponseByDate = v5->_merchantResponseByDate;
    v5->_merchantResponseByDate = v10;

    v12 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"evidenceDocumentTypes"];
    evidenceDocumentTypes = v5->_evidenceDocumentTypes;
    v5->_evidenceDocumentTypes = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resolutionReasonCode"];
    resolutionReason = v5->_resolutionReason;
    v5->_resolutionReason = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"partiallyApprovedAmount"];
    partiallyApprovedAmount = v5->_partiallyApprovedAmount;
    v5->_partiallyApprovedAmount = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resolutionDate"];
    resolutionDate = v5->_resolutionDate;
    v5->_resolutionDate = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  statusReasons = self->_statusReasons;
  coderCopy = coder;
  [coderCopy encodeObject:statusReasons forKey:@"statusReasonCodes"];
  [coderCopy encodeObject:self->_customerResponseByDate forKey:@"customerResponseByDate"];
  [coderCopy encodeObject:self->_merchantResponseByDate forKey:@"merchantResponseByDate"];
  [coderCopy encodeObject:self->_evidenceDocumentTypes forKey:@"evidenceDocumentTypes"];
  [coderCopy encodeObject:self->_resolutionReason forKey:@"resolutionReasonCode"];
  [coderCopy encodeObject:self->_partiallyApprovedAmount forKey:@"partiallyApprovedAmount"];
  [coderCopy encodeObject:self->_resolutionDate forKey:@"resolutionDate"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_34;
  }

  statusReasons = self->_statusReasons;
  v6 = equalCopy[1];
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
  v8 = equalCopy[2];
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
  v10 = equalCopy[3];
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
  v12 = equalCopy[4];
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
  v14 = equalCopy[5];
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
  v16 = equalCopy[6];
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
  v18 = equalCopy[7];
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
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_statusReasons];
  [array safelyAddObject:self->_customerResponseByDate];
  [array safelyAddObject:self->_merchantResponseByDate];
  [array safelyAddObject:self->_evidenceDocumentTypes];
  [array safelyAddObject:self->_partiallyApprovedAmount];
  [array safelyAddObject:self->_resolutionDate];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  statusReasons = [(PKAccountServicingEventStatusDetails *)self statusReasons];
  [v3 appendFormat:@"statusReasons: '%@'; ", statusReasons];

  customerResponseByDate = [(PKAccountServicingEventStatusDetails *)self customerResponseByDate];
  [v3 appendFormat:@"customerResponseByDate: '%@'; ", customerResponseByDate];

  merchantResponseByDate = [(PKAccountServicingEventStatusDetails *)self merchantResponseByDate];
  [v3 appendFormat:@"merchantResponseByDate: '%@'; ", merchantResponseByDate];

  evidenceDocumentTypes = [(PKAccountServicingEventStatusDetails *)self evidenceDocumentTypes];
  [v3 appendFormat:@"evidenceDocumentTypes: '%@'; ", evidenceDocumentTypes];

  resolutionReason = [(PKAccountServicingEventStatusDetails *)self resolutionReason];
  [v3 appendFormat:@"resolutionReasonCode: '%@'; ", resolutionReason];

  partiallyApprovedAmount = [(PKAccountServicingEventStatusDetails *)self partiallyApprovedAmount];
  [v3 appendFormat:@"partiallyApprovedAmount: '%@'; ", partiallyApprovedAmount];

  resolutionDate = [(PKAccountServicingEventStatusDetails *)self resolutionDate];
  [v3 appendFormat:@"resolutionDate: '%@'; ", resolutionDate];

  [v3 appendFormat:@">"];

  return v3;
}

@end