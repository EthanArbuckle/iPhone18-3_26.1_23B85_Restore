@interface PKAccountTransfer
- (BOOL)fundsAreAvailable;
- (BOOL)isCurrentlyCancellable;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PKAccountTransfer)initWithCoder:(id)coder;
- (PKAccountTransfer)initWithDictionary:(id)dictionary productTimeZone:(id)zone;
- (PKAccountTransfer)initWithRecord:(id)record;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithRecord:(id)record;
@end

@implementation PKAccountTransfer

- (PKAccountTransfer)initWithDictionary:(id)dictionary productTimeZone:(id)zone
{
  dictionaryCopy = dictionary;
  zoneCopy = zone;
  v47.receiver = self;
  v47.super_class = PKAccountTransfer;
  v8 = [(PKAccountTransfer *)&v47 init];
  if (!v8)
  {
LABEL_24:
    v36 = v8;
    goto LABEL_28;
  }

  if (zoneCopy)
  {
    v9 = [dictionaryCopy PKStringForKey:@"transferIdentifier"];
    v45 = [dictionaryCopy PKStringForKey:@"transferDate"];
    v44 = [dictionaryCopy PKStringForKey:@"transferStatusDate"];
    v43 = [dictionaryCopy PKStringForKey:@"state"];
    v10 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"amount"];
    v11 = [dictionaryCopy PKStringForKey:@"currencyCode"];
    v42 = [dictionaryCopy PKDictionaryForKey:@"externalAccount"];
    v41 = [dictionaryCopy PKDictionaryForKey:@"scheduleDetails"];
    v39 = [dictionaryCopy PKStringForKey:@"cancellationExpiryDate"];
    v12 = [dictionaryCopy PKStringForKey:@"expectedCompletionDate"];
    v13 = [dictionaryCopy PKStringForKey:@"type"];
    v14 = PKPaymentDateFormatterWithTimeZone(zoneCopy);
    if (v9)
    {
      objc_storeStrong(&v8->_identifier, v9);
    }

    if (v10 && v11)
    {
      v15 = [[PKCurrencyAmount alloc] initWithAmount:v10 currency:v11 exponent:0];
      currencyAmount = v8->_currencyAmount;
      v8->_currencyAmount = v15;
    }

    if (v42)
    {
      v17 = [(PKAccountPaymentFundingSource *)[PKAccountTransferExternalAccount alloc] initWithDictionary:v42];
      externalAccount = v8->_externalAccount;
      v8->_externalAccount = v17;
    }

    if (v41)
    {
      v19 = [[PKAccountTransferScheduleDetails alloc] initWithDictionary:v41 productTimeZone:zoneCopy];
      scheduleDetails = v8->_scheduleDetails;
      v8->_scheduleDetails = v19;
    }

    if (v45)
    {
      v21 = [v14 dateFromString:?];
      transferDate = v8->_transferDate;
      v8->_transferDate = v21;
    }

    if (v44)
    {
      v23 = [v14 dateFromString:?];
      transferStatusDate = v8->_transferStatusDate;
      v8->_transferStatusDate = v23;
    }

    if (v39)
    {
      v25 = [v14 dateFromString:v39];
      cancellationExpiryDate = v8->_cancellationExpiryDate;
      v8->_cancellationExpiryDate = v25;
    }

    v40 = v9;
    if (v12)
    {
      v27 = [v14 dateFromString:v12];
      expectedCompletionDate = v8->_expectedCompletionDate;
      v8->_expectedCompletionDate = v27;
    }

    v29 = [dictionaryCopy PKStringForKey:@"transferReferenceIdentifier"];
    referenceIdentifier = v8->_referenceIdentifier;
    v8->_referenceIdentifier = v29;

    v31 = [dictionaryCopy PKStringForKey:@"clientReferenceIdentifier"];
    clientReferenceIdentifier = v8->_clientReferenceIdentifier;
    v8->_clientReferenceIdentifier = v31;

    v8->_statusCode = [dictionaryCopy PKIntegerForKey:@"statusCode"];
    v8->_state = PKAccountTransferStateFromString(v43);
    v8->_cancellable = [dictionaryCopy PKBoolForKey:@"cancellable"];
    v8->_type = PKAccountTransferTypeFromString(v13);
    v33 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"holdAmount"];
    if (v33 && v11)
    {
      v34 = [[PKCurrencyAmount alloc] initWithAmount:v10 currency:v11 exponent:0];
      v35 = v8->_currencyAmount;
      v8->_currencyAmount = v34;
    }

    goto LABEL_24;
  }

  v37 = PKLogFacilityTypeGetObject(0xFuLL);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v37, OS_LOG_TYPE_DEFAULT, "Warning: Initializing transfer without a product time zone means the dates may be incorrect.", buf, 2u);
  }

  v36 = 0;
LABEL_28:

  return v36;
}

- (PKAccountTransfer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = PKAccountTransfer;
  v5 = [(PKAccountTransfer *)&v29 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferReferenceIdentifier"];
    referenceIdentifier = v5->_referenceIdentifier;
    v5->_referenceIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientReferenceIdentifier"];
    clientReferenceIdentifier = v5->_clientReferenceIdentifier;
    v5->_clientReferenceIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyAmount"];
    currencyAmount = v5->_currencyAmount;
    v5->_currencyAmount = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"holdAmount"];
    holdAmount = v5->_holdAmount;
    v5->_holdAmount = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalAccount"];
    externalAccount = v5->_externalAccount;
    v5->_externalAccount = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scheduleDetails"];
    scheduleDetails = v5->_scheduleDetails;
    v5->_scheduleDetails = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferDate"];
    transferDate = v5->_transferDate;
    v5->_transferDate = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferStatusDate"];
    transferStatusDate = v5->_transferStatusDate;
    v5->_transferStatusDate = v22;

    v5->_state = [coderCopy decodeIntegerForKey:@"state"];
    v5->_statusCode = [coderCopy decodeIntegerForKey:@"statusCode"];
    v5->_cancellable = [coderCopy decodeBoolForKey:@"cancellable"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cancellationExpiryDate"];
    cancellationExpiryDate = v5->_cancellationExpiryDate;
    v5->_cancellationExpiryDate = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expectedCompletionDate"];
    expectedCompletionDate = v5->_expectedCompletionDate;
    v5->_expectedCompletionDate = v26;

    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"transferIdentifier"];
  [coderCopy encodeObject:self->_referenceIdentifier forKey:@"transferReferenceIdentifier"];
  [coderCopy encodeObject:self->_clientReferenceIdentifier forKey:@"clientReferenceIdentifier"];
  [coderCopy encodeObject:self->_currencyAmount forKey:@"currencyAmount"];
  [coderCopy encodeObject:self->_holdAmount forKey:@"holdAmount"];
  [coderCopy encodeObject:self->_externalAccount forKey:@"externalAccount"];
  [coderCopy encodeObject:self->_scheduleDetails forKey:@"scheduleDetails"];
  [coderCopy encodeObject:self->_transferDate forKey:@"transferDate"];
  [coderCopy encodeObject:self->_transferStatusDate forKey:@"transferStatusDate"];
  [coderCopy encodeInteger:self->_state forKey:@"state"];
  [coderCopy encodeInteger:self->_statusCode forKey:@"statusCode"];
  [coderCopy encodeBool:self->_cancellable forKey:@"cancellable"];
  [coderCopy encodeObject:self->_cancellationExpiryDate forKey:@"cancellationExpiryDate"];
  [coderCopy encodeObject:self->_expectedCompletionDate forKey:@"expectedCompletionDate"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
}

- (PKAccountTransfer)initWithRecord:(id)record
{
  recordCopy = record;
  v43.receiver = self;
  v43.super_class = PKAccountTransfer;
  v5 = [(PKAccountTransfer *)&v43 init];
  if (v5)
  {
    v6 = [recordCopy pk_encryptedStringForKey:@"transferIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [recordCopy pk_encryptedStringForKey:@"transferReferenceIdentifier"];
    referenceIdentifier = v5->_referenceIdentifier;
    v5->_referenceIdentifier = v8;

    v10 = [recordCopy pk_encryptedStringForKey:@"clientReferenceIdentifier"];
    clientReferenceIdentifier = v5->_clientReferenceIdentifier;
    v5->_clientReferenceIdentifier = v10;

    v12 = [recordCopy pk_encryptedStringForKey:@"amount"];
    v13 = [recordCopy pk_encryptedStringForKey:@"currencyCode"];
    v14 = v13;
    if (v12 && v13)
    {
      v15 = [PKCurrencyAmount alloc];
      v16 = [MEMORY[0x1E696AB90] decimalNumberWithString:v12];
      v17 = [(PKCurrencyAmount *)v15 initWithAmount:v16 currency:v14 exponent:0];
      currencyAmount = v5->_currencyAmount;
      v5->_currencyAmount = v17;
    }

    v19 = [recordCopy pk_encryptedStringForKey:@"holdAmount"];
    if (v19 && v14)
    {
      v20 = [PKCurrencyAmount alloc];
      v21 = [MEMORY[0x1E696AB90] decimalNumberWithString:v12];
      v22 = [(PKCurrencyAmount *)v20 initWithAmount:v21 currency:v14 exponent:0];
      holdAmount = v5->_holdAmount;
      v5->_holdAmount = v22;
    }

    v24 = [recordCopy pk_encryptedDateForKey:@"transferScheduledDate"];
    transferDate = v5->_transferDate;
    v5->_transferDate = v24;

    v26 = [recordCopy pk_encryptedDateForKey:@"transferStatusDate"];
    transferStatusDate = v5->_transferStatusDate;
    v5->_transferStatusDate = v26;

    v28 = [PKAccountTransferExternalAccount alloc];
    v29 = [recordCopy pk_encryptedDictionaryForKey:@"externalAccount"];
    v30 = [(PKAccountPaymentFundingSource *)v28 initWithDictionary:v29];
    externalAccount = v5->_externalAccount;
    v5->_externalAccount = v30;

    v32 = [PKAccountTransferScheduleDetails alloc];
    v33 = [recordCopy pk_encryptedDictionaryForKey:@"scheduleDetails"];
    v34 = [(PKAccountTransferScheduleDetails *)v32 initWithDictionary:v33];
    scheduleDetails = v5->_scheduleDetails;
    v5->_scheduleDetails = v34;

    v36 = [recordCopy pk_encryptedStringForKey:@"state"];
    v5->_state = PKAccountTransferStateFromString(v36);

    v5->_statusCode = [recordCopy pk_encryptedIntegerForKey:@"statusCode"];
    v5->_cancellable = [recordCopy pk_BOOLForKey:@"cancellable"];
    v37 = [recordCopy pk_encryptedDateForKey:@"cancellationExpiryDate"];
    cancellationExpiryDate = v5->_cancellationExpiryDate;
    v5->_cancellationExpiryDate = v37;

    v39 = [recordCopy pk_encryptedDateForKey:@"expectedCompletionDate"];
    expectedCompletionDate = v5->_expectedCompletionDate;
    v5->_expectedCompletionDate = v39;

    v41 = [recordCopy pk_encryptedStringForKey:@"type"];
    v5->_type = PKAccountTransferTypeFromString(v41);
  }

  return v5;
}

- (void)encodeWithRecord:(id)record
{
  recordCopy = record;
  encryptedValues = [recordCopy encryptedValues];
  valuesByKey = [recordCopy valuesByKey];

  if (PKApplePayContainerEnvironment() == 2)
  {
    [encryptedValues setObject:self->_identifier forKey:@"transferIdentifier"];
    [encryptedValues setObject:self->_referenceIdentifier forKey:@"transferReferenceIdentifier"];
    [encryptedValues setObject:self->_clientReferenceIdentifier forKey:@"clientReferenceIdentifier"];
    jsonString = [(PKAccountPaymentFundingSource *)self->_externalAccount jsonString];
    [encryptedValues setObject:jsonString forKey:@"externalAccount"];

    jsonString2 = [(PKAccountTransferScheduleDetails *)self->_scheduleDetails jsonString];
    [encryptedValues setObject:jsonString2 forKey:@"scheduleDetails"];

    currency = [(PKCurrencyAmount *)self->_currencyAmount currency];
    [encryptedValues setObject:currency forKey:@"currencyCode"];

    amount = [(PKCurrencyAmount *)self->_currencyAmount amount];
    stringValue = [amount stringValue];
    [encryptedValues setObject:stringValue forKey:@"amount"];

    amount2 = [(PKCurrencyAmount *)self->_holdAmount amount];
    stringValue2 = [amount2 stringValue];
    [encryptedValues setObject:stringValue2 forKey:@"holdAmount"];

    [encryptedValues setObject:self->_transferDate forKey:@"transferScheduledDate"];
    [encryptedValues setObject:self->_transferStatusDate forKey:@"transferStatusDate"];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->_statusCode];
    [encryptedValues setObject:v13 forKey:@"statusCode"];

    v14 = PKAccountTransferStateStringForState(self->_state);
    [encryptedValues setObject:v14 forKey:@"state"];

    v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_cancellable];
    [valuesByKey setObject:v15 forKey:@"cancellable"];

    [encryptedValues setObject:self->_cancellationExpiryDate forKey:@"cancellationExpiryDate"];
    [encryptedValues setObject:self->_expectedCompletionDate forKey:@"expectedCompletionDate"];
    v16 = PKAccountTransferTypeToString(self->_type);
    [encryptedValues setObject:v16 forKey:@"type"];
  }
}

- (BOOL)fundsAreAvailable
{
  state = self->_state;
  amount = [(PKCurrencyAmount *)self->_holdAmount amount];
  v4 = amount;
  if (state == 6)
  {
    if (amount && ([amount pk_isNotANumber] & 1) == 0)
    {
      pk_isZeroNumber = [v4 pk_isZeroNumber];
    }

    else
    {
      pk_isZeroNumber = 1;
    }
  }

  else
  {
    pk_isZeroNumber = 0;
  }

  return pk_isZeroNumber;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_60;
  }

  identifier = self->_identifier;
  v6 = equalCopy[2];
  if (identifier && v6)
  {
    if (([(NSString *)identifier isEqual:?]& 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (identifier != v6)
  {
    goto LABEL_60;
  }

  referenceIdentifier = self->_referenceIdentifier;
  v8 = equalCopy[3];
  if (referenceIdentifier && v8)
  {
    if (([(NSString *)referenceIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (referenceIdentifier != v8)
  {
    goto LABEL_60;
  }

  clientReferenceIdentifier = self->_clientReferenceIdentifier;
  v10 = equalCopy[4];
  if (clientReferenceIdentifier && v10)
  {
    if (([(NSString *)clientReferenceIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (clientReferenceIdentifier != v10)
  {
    goto LABEL_60;
  }

  currencyAmount = self->_currencyAmount;
  v12 = equalCopy[5];
  if (currencyAmount && v12)
  {
    if (![(PKCurrencyAmount *)currencyAmount isEqual:?])
    {
      goto LABEL_60;
    }
  }

  else if (currencyAmount != v12)
  {
    goto LABEL_60;
  }

  holdAmount = self->_holdAmount;
  v14 = equalCopy[6];
  if (holdAmount && v14)
  {
    if (![(PKCurrencyAmount *)holdAmount isEqual:?])
    {
      goto LABEL_60;
    }
  }

  else if (holdAmount != v14)
  {
    goto LABEL_60;
  }

  externalAccount = self->_externalAccount;
  v16 = equalCopy[13];
  if (externalAccount && v16)
  {
    if (![(PKAccountPaymentFundingSource *)externalAccount isEqual:?])
    {
      goto LABEL_60;
    }
  }

  else if (externalAccount != v16)
  {
    goto LABEL_60;
  }

  scheduleDetails = self->_scheduleDetails;
  v18 = equalCopy[14];
  if (scheduleDetails && v18)
  {
    if (![(PKAccountTransferScheduleDetails *)scheduleDetails isEqual:?])
    {
      goto LABEL_60;
    }
  }

  else if (scheduleDetails != v18)
  {
    goto LABEL_60;
  }

  transferDate = self->_transferDate;
  v20 = equalCopy[7];
  if (transferDate && v20)
  {
    if (([(NSDate *)transferDate isEqual:?]& 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (transferDate != v20)
  {
    goto LABEL_60;
  }

  transferStatusDate = self->_transferStatusDate;
  v22 = equalCopy[8];
  if (transferStatusDate && v22)
  {
    if (([(NSDate *)transferStatusDate isEqual:?]& 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (transferStatusDate != v22)
  {
    goto LABEL_60;
  }

  if (self->_state != equalCopy[11] || self->_statusCode != equalCopy[12] || self->_cancellable != *(equalCopy + 8))
  {
    goto LABEL_60;
  }

  cancellationExpiryDate = self->_cancellationExpiryDate;
  v24 = equalCopy[9];
  if (cancellationExpiryDate && v24)
  {
    if (([(NSDate *)cancellationExpiryDate isEqual:?]& 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (cancellationExpiryDate != v24)
  {
    goto LABEL_60;
  }

  expectedCompletionDate = self->_expectedCompletionDate;
  v26 = equalCopy[10];
  if (!expectedCompletionDate || !v26)
  {
    if (expectedCompletionDate == v26)
    {
      goto LABEL_58;
    }

LABEL_60:
    v27 = 0;
    goto LABEL_61;
  }

  if (([(NSDate *)expectedCompletionDate isEqual:?]& 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_58:
  v27 = self->_type == equalCopy[15];
LABEL_61:

  return v27;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_referenceIdentifier];
  [array safelyAddObject:self->_clientReferenceIdentifier];
  [array safelyAddObject:self->_currencyAmount];
  [array safelyAddObject:self->_holdAmount];
  [array safelyAddObject:self->_externalAccount];
  [array safelyAddObject:self->_scheduleDetails];
  [array safelyAddObject:self->_transferDate];
  [array safelyAddObject:self->_transferStatusDate];
  [array safelyAddObject:self->_cancellationExpiryDate];
  [array safelyAddObject:self->_expectedCompletionDate];
  v4 = PKCombinedHash(17, array);
  v5 = self->_state - v4 + 32 * v4;
  v6 = self->_statusCode - v5 + 32 * v5;
  v7 = self->_cancellable - v6 + 32 * v6;
  v8 = self->_type - v7 + 32 * v7;

  return v8;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v3 appendFormat:@"referenceIdentifier: '%@'; ", self->_referenceIdentifier];
  [v3 appendFormat:@"clientReferenceIdentifier: '%@'; ", self->_clientReferenceIdentifier];
  [v3 appendFormat:@"currencyAmount: '%@'; ", self->_currencyAmount];
  [v3 appendFormat:@"holdAmount: '%@'; ", self->_holdAmount];
  [v3 appendFormat:@"externalAccount: %@", self->_externalAccount];
  [v3 appendFormat:@"scheduleDetails: %@", self->_scheduleDetails];
  v4 = [(NSDate *)self->_transferDate description];
  [v3 appendFormat:@"transferDate: '%@'; ", v4];

  v5 = [(NSDate *)self->_transferStatusDate description];
  [v3 appendFormat:@"transferStatusDate: '%@'; ", v5];

  v6 = PKAccountTransferStateStringForState(self->_state);
  [v3 appendFormat:@"state: '%@'; ", v6];

  [v3 appendFormat:@"statusCode: '%ld'; ", self->_statusCode];
  [v3 appendFormat:@"cancellable: '%d'; ", self->_cancellable];
  v7 = [(NSDate *)self->_cancellationExpiryDate description];
  [v3 appendFormat:@"cancellationExpiryDate: '%@'; ", v7];

  v8 = [(NSDate *)self->_expectedCompletionDate description];
  [v3 appendFormat:@"expectedCompletionDate: '%@'; ", v8];

  v9 = PKAccountTransferTypeToString(self->_type);
  [v3 appendFormat:@"type: '%@'; ", v9];

  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isCurrentlyCancellable
{
  if (!self->_cancellable)
  {
    return 0;
  }

  externalAccount = self->_externalAccount;
  if (!externalAccount || [(PKAccountPaymentFundingSource *)externalAccount type]!= 1 || self->_state - 1 > 1 || !self->_cancellationExpiryDate)
  {
    return 0;
  }

  date = [MEMORY[0x1E695DF00] date];
  v5 = [date compare:self->_cancellationExpiryDate] == -1;

  return v5;
}

@end