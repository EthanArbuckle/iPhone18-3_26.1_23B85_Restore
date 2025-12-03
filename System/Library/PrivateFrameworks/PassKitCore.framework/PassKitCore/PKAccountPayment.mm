@interface PKAccountPayment
- (BOOL)isBeforeNextCycleForAccount:(id)account;
- (BOOL)isCurrentlyCancellable;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOnHoldForAccount:(id)account;
- (BOOL)isRecurring;
- (BOOL)willSkipFirstPaymentForAccount:(id)account;
- (NSString)description;
- (PKAccountPayment)initWithCoder:(id)coder;
- (PKAccountPayment)initWithDictionary:(id)dictionary productTimeZone:(id)zone;
- (PKAccountPayment)initWithRecord:(id)record;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithRecord:(id)record;
@end

@implementation PKAccountPayment

- (PKAccountPayment)initWithDictionary:(id)dictionary productTimeZone:(id)zone
{
  dictionaryCopy = dictionary;
  zoneCopy = zone;
  v45.receiver = self;
  v45.super_class = PKAccountPayment;
  v8 = [(PKAccountPayment *)&v45 init];
  if (v8)
  {
    if (!zoneCopy)
    {
      v9 = PKLogFacilityTypeGetObject(0xFuLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Warning: Initializing payment without a product time zone means the dates may be incorrect.", buf, 2u);
      }
    }

    v10 = [dictionaryCopy PKStringForKey:@"paymentIdentifier"];
    v43 = [dictionaryCopy PKStringForKey:@"paymentDate"];
    v11 = [dictionaryCopy PKStringForKey:@"paymentStatusDate"];
    v41 = [dictionaryCopy PKStringForKey:@"state"];
    v12 = [dictionaryCopy PKStringForKey:@"amount"];
    v13 = [dictionaryCopy PKStringForKey:@"currencyCode"];
    v14 = [dictionaryCopy PKDictionaryForKey:@"fundingSource"];
    v15 = [dictionaryCopy PKDictionaryForKey:@"scheduleDetails"];
    v40 = [dictionaryCopy PKStringForKey:@"cancellationExpiryDate"];
    v16 = PKPaymentDateFormatterWithTimeZone(zoneCopy);
    obj = v10;
    if (v10)
    {
      objc_storeStrong(&v8->_identifier, v10);
    }

    if (v12 && v13)
    {
      v17 = [PKCurrencyAmount alloc];
      [MEMORY[0x1E696AB90] decimalNumberWithString:v12];
      v39 = v12;
      v19 = v18 = v11;
      v20 = [(PKCurrencyAmount *)v17 initWithAmount:v19 currency:v13 exponent:0];
      currencyAmount = v8->_currencyAmount;
      v8->_currencyAmount = v20;

      v11 = v18;
      v12 = v39;
    }

    if (v14)
    {
      v22 = [[PKAccountPaymentFundingSource alloc] initWithDictionary:v14];
      fundingSource = v8->_fundingSource;
      v8->_fundingSource = v22;
    }

    if (v15)
    {
      v24 = [[PKAccountPaymentScheduleDetails alloc] initWithDictionary:v15 productTimeZone:zoneCopy];
      scheduleDetails = v8->_scheduleDetails;
      v8->_scheduleDetails = v24;
    }

    if (v43)
    {
      v26 = [v16 dateFromString:v43];
      paymentDate = v8->_paymentDate;
      v8->_paymentDate = v26;
    }

    if (v11)
    {
      v28 = [v16 dateFromString:v11];
      paymentStatusDate = v8->_paymentStatusDate;
      v8->_paymentStatusDate = v28;
    }

    if (v40)
    {
      v30 = [v16 dateFromString:v40];
      cancellationExpiryDate = v8->_cancellationExpiryDate;
      v8->_cancellationExpiryDate = v30;
    }

    v32 = [dictionaryCopy PKStringForKey:@"paymentReferenceIdentifier"];
    referenceIdentifier = v8->_referenceIdentifier;
    v8->_referenceIdentifier = v32;

    v34 = [dictionaryCopy PKStringForKey:@"clientReferenceIdentifier"];
    clientReferenceIdentifier = v8->_clientReferenceIdentifier;
    v8->_clientReferenceIdentifier = v34;

    v8->_statusCode = [dictionaryCopy PKIntegerForKey:@"statusCode"];
    v8->_state = PKAccountPaymentStateFromString(v41);
    v8->_cancellable = [dictionaryCopy PKBoolForKey:@"cancellable"];
    v36 = [dictionaryCopy PKDateForKey:@"expectedCreditReleaseDate"];
    expectedCreditReleaseDate = v8->_expectedCreditReleaseDate;
    v8->_expectedCreditReleaseDate = v36;
  }

  return v8;
}

- (PKAccountPayment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = PKAccountPayment;
  v5 = [(PKAccountPayment *)&v27 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentReferenceIdentifier"];
    referenceIdentifier = v5->_referenceIdentifier;
    v5->_referenceIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientReferenceIdentifier"];
    clientReferenceIdentifier = v5->_clientReferenceIdentifier;
    v5->_clientReferenceIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyAmount"];
    currencyAmount = v5->_currencyAmount;
    v5->_currencyAmount = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fundingSource"];
    fundingSource = v5->_fundingSource;
    v5->_fundingSource = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scheduleDetails"];
    scheduleDetails = v5->_scheduleDetails;
    v5->_scheduleDetails = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentDate"];
    paymentDate = v5->_paymentDate;
    v5->_paymentDate = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentStatusDate"];
    paymentStatusDate = v5->_paymentStatusDate;
    v5->_paymentStatusDate = v20;

    v5->_state = [coderCopy decodeIntegerForKey:@"state"];
    v5->_statusCode = [coderCopy decodeIntegerForKey:@"statusCode"];
    v5->_cancellable = [coderCopy decodeBoolForKey:@"cancellable"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cancellationExpiryDate"];
    cancellationExpiryDate = v5->_cancellationExpiryDate;
    v5->_cancellationExpiryDate = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expectedCreditReleaseDate"];
    expectedCreditReleaseDate = v5->_expectedCreditReleaseDate;
    v5->_expectedCreditReleaseDate = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"paymentIdentifier"];
  [coderCopy encodeObject:self->_referenceIdentifier forKey:@"paymentReferenceIdentifier"];
  [coderCopy encodeObject:self->_clientReferenceIdentifier forKey:@"clientReferenceIdentifier"];
  [coderCopy encodeObject:self->_currencyAmount forKey:@"currencyAmount"];
  [coderCopy encodeObject:self->_fundingSource forKey:@"fundingSource"];
  [coderCopy encodeObject:self->_scheduleDetails forKey:@"scheduleDetails"];
  [coderCopy encodeObject:self->_paymentDate forKey:@"paymentDate"];
  [coderCopy encodeObject:self->_paymentStatusDate forKey:@"paymentStatusDate"];
  [coderCopy encodeInteger:self->_state forKey:@"state"];
  [coderCopy encodeInteger:self->_statusCode forKey:@"statusCode"];
  [coderCopy encodeBool:self->_cancellable forKey:@"cancellable"];
  [coderCopy encodeObject:self->_cancellationExpiryDate forKey:@"cancellationExpiryDate"];
  [coderCopy encodeObject:self->_expectedCreditReleaseDate forKey:@"expectedCreditReleaseDate"];
}

- (PKAccountPayment)initWithRecord:(id)record
{
  recordCopy = record;
  v37.receiver = self;
  v37.super_class = PKAccountPayment;
  v5 = [(PKAccountPayment *)&v37 init];
  if (v5)
  {
    v6 = [recordCopy pk_encryptedStringForKey:@"paymentIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [recordCopy pk_encryptedStringForKey:@"paymentReferenceIdentifier"];
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

    v19 = [recordCopy pk_encryptedDateForKey:@"paymentScheduledDate"];
    paymentDate = v5->_paymentDate;
    v5->_paymentDate = v19;

    v21 = [recordCopy pk_encryptedDateForKey:@"paymentStatusDate"];
    paymentStatusDate = v5->_paymentStatusDate;
    v5->_paymentStatusDate = v21;

    v23 = [PKAccountPaymentFundingSource alloc];
    v24 = [recordCopy pk_encryptedDictionaryForKey:@"fundingSource"];
    v25 = [(PKAccountPaymentFundingSource *)v23 initWithDictionary:v24];
    fundingSource = v5->_fundingSource;
    v5->_fundingSource = v25;

    v27 = [PKAccountPaymentScheduleDetails alloc];
    v28 = [recordCopy pk_encryptedDictionaryForKey:@"scheduleDetails"];
    v29 = [(PKAccountPaymentScheduleDetails *)v27 initWithDictionary:v28];
    scheduleDetails = v5->_scheduleDetails;
    v5->_scheduleDetails = v29;

    v31 = [recordCopy pk_encryptedStringForKey:@"state"];
    v5->_state = PKAccountPaymentStateFromString(v31);

    v5->_statusCode = [recordCopy pk_encryptedIntegerForKey:@"statusCode"];
    v5->_cancellable = [recordCopy pk_BOOLForKey:@"cancellable"];
    v32 = [recordCopy pk_encryptedDateForKey:@"cancellationExpiryDate"];
    cancellationExpiryDate = v5->_cancellationExpiryDate;
    v5->_cancellationExpiryDate = v32;

    v34 = [recordCopy pk_encryptedDateForKey:@"expectedCreditReleaseDate"];
    expectedCreditReleaseDate = v5->_expectedCreditReleaseDate;
    v5->_expectedCreditReleaseDate = v34;
  }

  return v5;
}

- (void)encodeWithRecord:(id)record
{
  recordCopy = record;
  encryptedValues = [recordCopy encryptedValues];
  valuesByKey = [recordCopy valuesByKey];

  [encryptedValues setObject:self->_identifier forKey:@"paymentIdentifier"];
  [encryptedValues setObject:self->_referenceIdentifier forKey:@"paymentReferenceIdentifier"];
  [encryptedValues setObject:self->_clientReferenceIdentifier forKey:@"clientReferenceIdentifier"];
  jsonString = [(PKAccountPaymentFundingSource *)self->_fundingSource jsonString];
  [encryptedValues setObject:jsonString forKey:@"fundingSource"];

  jsonString2 = [(PKAccountPaymentScheduleDetails *)self->_scheduleDetails jsonString];
  [encryptedValues setObject:jsonString2 forKey:@"scheduleDetails"];

  currency = [(PKCurrencyAmount *)self->_currencyAmount currency];
  [encryptedValues setObject:currency forKey:@"currencyCode"];

  amount = [(PKCurrencyAmount *)self->_currencyAmount amount];
  stringValue = [amount stringValue];
  [encryptedValues setObject:stringValue forKey:@"amount"];

  [encryptedValues setObject:self->_paymentDate forKey:@"paymentScheduledDate"];
  [encryptedValues setObject:self->_paymentStatusDate forKey:@"paymentStatusDate"];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:self->_statusCode];
  [encryptedValues setObject:v11 forKey:@"statusCode"];

  v12 = PKAccountPaymentStateStringForState(self->_state);
  [encryptedValues setObject:v12 forKey:@"state"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:self->_cancellable];
  [valuesByKey setObject:v13 forKey:@"cancellable"];

  [encryptedValues setObject:self->_cancellationExpiryDate forKey:@"cancellationExpiryDate"];
  [encryptedValues setObject:self->_expectedCreditReleaseDate forKey:@"expectedCreditReleaseDate"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_52;
  }

  identifier = self->_identifier;
  v6 = equalCopy[2];
  if (identifier && v6)
  {
    if (([(NSString *)identifier isEqual:?]& 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else if (identifier != v6)
  {
    goto LABEL_52;
  }

  referenceIdentifier = self->_referenceIdentifier;
  v8 = equalCopy[3];
  if (referenceIdentifier && v8)
  {
    if (([(NSString *)referenceIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else if (referenceIdentifier != v8)
  {
    goto LABEL_52;
  }

  clientReferenceIdentifier = self->_clientReferenceIdentifier;
  v10 = equalCopy[4];
  if (clientReferenceIdentifier && v10)
  {
    if (([(NSString *)clientReferenceIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else if (clientReferenceIdentifier != v10)
  {
    goto LABEL_52;
  }

  currencyAmount = self->_currencyAmount;
  v12 = equalCopy[5];
  if (currencyAmount && v12)
  {
    if (![(PKCurrencyAmount *)currencyAmount isEqual:?])
    {
      goto LABEL_52;
    }
  }

  else if (currencyAmount != v12)
  {
    goto LABEL_52;
  }

  fundingSource = self->_fundingSource;
  v14 = equalCopy[12];
  if (fundingSource && v14)
  {
    if (![(PKAccountPaymentFundingSource *)fundingSource isEqual:?])
    {
      goto LABEL_52;
    }
  }

  else if (fundingSource != v14)
  {
    goto LABEL_52;
  }

  scheduleDetails = self->_scheduleDetails;
  v16 = equalCopy[13];
  if (scheduleDetails && v16)
  {
    if (![(PKAccountPaymentScheduleDetails *)scheduleDetails isEqual:?])
    {
      goto LABEL_52;
    }
  }

  else if (scheduleDetails != v16)
  {
    goto LABEL_52;
  }

  paymentDate = self->_paymentDate;
  v18 = equalCopy[6];
  if (paymentDate && v18)
  {
    if (([(NSDate *)paymentDate isEqual:?]& 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else if (paymentDate != v18)
  {
    goto LABEL_52;
  }

  paymentStatusDate = self->_paymentStatusDate;
  v20 = equalCopy[7];
  if (paymentStatusDate && v20)
  {
    if (([(NSDate *)paymentStatusDate isEqual:?]& 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else if (paymentStatusDate != v20)
  {
    goto LABEL_52;
  }

  if (self->_state != equalCopy[10] || self->_statusCode != equalCopy[11] || self->_cancellable != *(equalCopy + 8))
  {
    goto LABEL_52;
  }

  cancellationExpiryDate = self->_cancellationExpiryDate;
  v22 = equalCopy[9];
  if (!cancellationExpiryDate || !v22)
  {
    if (cancellationExpiryDate == v22)
    {
      goto LABEL_48;
    }

LABEL_52:
    v25 = 0;
    goto LABEL_53;
  }

  if (([(NSDate *)cancellationExpiryDate isEqual:?]& 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_48:
  expectedCreditReleaseDate = self->_expectedCreditReleaseDate;
  v24 = equalCopy[8];
  if (expectedCreditReleaseDate && v24)
  {
    v25 = [(NSDate *)expectedCreditReleaseDate isEqual:?];
  }

  else
  {
    v25 = expectedCreditReleaseDate == v24;
  }

LABEL_53:

  return v25;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_referenceIdentifier];
  [array safelyAddObject:self->_clientReferenceIdentifier];
  [array safelyAddObject:self->_currencyAmount];
  [array safelyAddObject:self->_fundingSource];
  [array safelyAddObject:self->_scheduleDetails];
  [array safelyAddObject:self->_paymentDate];
  [array safelyAddObject:self->_paymentStatusDate];
  [array safelyAddObject:self->_cancellationExpiryDate];
  [array safelyAddObject:self->_expectedCreditReleaseDate];
  v4 = PKCombinedHash(17, array);
  v5 = self->_state - v4 + 32 * v4;
  v6 = self->_statusCode - v5 + 32 * v5;
  v7 = self->_cancellable - v6 + 32 * v6;

  return v7;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v3 appendFormat:@"referenceIdentifier: '%@'; ", self->_referenceIdentifier];
  [v3 appendFormat:@"clientReferenceIdentifier: '%@'; ", self->_clientReferenceIdentifier];
  [v3 appendFormat:@"currencyAmount: '%@'; ", self->_currencyAmount];
  [v3 appendFormat:@"fundingSource: %@", self->_fundingSource];
  [v3 appendFormat:@"scheduleDetails: %@", self->_scheduleDetails];
  v4 = [(NSDate *)self->_paymentDate description];
  [v3 appendFormat:@"paymentDate: '%@'; ", v4];

  v5 = [(NSDate *)self->_paymentStatusDate description];
  [v3 appendFormat:@"paymentStatusDate: '%@'; ", v5];

  v6 = PKAccountPaymentStateStringForState(self->_state);
  [v3 appendFormat:@"state: '%@'; ", v6];

  [v3 appendFormat:@"statusCode: '%ld'; ", self->_statusCode];
  [v3 appendFormat:@"cancellable: '%d'; ", self->_cancellable];
  v7 = [(NSDate *)self->_cancellationExpiryDate description];
  [v3 appendFormat:@"cancellationExpiryDate: '%@'; ", v7];

  v8 = [(NSDate *)self->_expectedCreditReleaseDate description];
  [v3 appendFormat:@"expectedCreditReleaseDate: '%@'; ", v8];

  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isRecurring
{
  scheduleDetails = [(PKAccountPayment *)self scheduleDetails];
  frequency = [scheduleDetails frequency];

  return (frequency - 3) < 5;
}

- (BOOL)isOnHoldForAccount:(id)account
{
  accountCopy = account;
  if ([(PKAccountPayment *)self isRecurring])
  {
    scheduleDetails = [(PKAccountPayment *)self scheduleDetails];
    preset = [scheduleDetails preset];

    creditDetails = [accountCopy creditDetails];
    accountSummary = [creditDetails accountSummary];

    switch(preset)
    {
      case 1:
        adjustedBalance = [accountSummary adjustedBalance];
        break;
      case 3:
        adjustedBalance = [accountSummary remainingStatementBalance];
        break;
      case 2:
        adjustedBalance = [accountSummary remainingMinimumPayment];
        break;
      default:
        goto LABEL_11;
    }

    v11 = adjustedBalance;
    if (adjustedBalance)
    {
      zero = [MEMORY[0x1E696AB90] zero];
      v10 = [zero compare:v11] != -1;

LABEL_12:
      goto LABEL_13;
    }

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (BOOL)isCurrentlyCancellable
{
  if (!self->_cancellable)
  {
    return 0;
  }

  fundingSource = self->_fundingSource;
  if (!fundingSource || [(PKAccountPaymentFundingSource *)fundingSource type]!= 1 || (self->_state - 1) > 1 || !self->_cancellationExpiryDate)
  {
    return 0;
  }

  date = [MEMORY[0x1E695DF00] date];
  v5 = [date compare:self->_cancellationExpiryDate] == -1;

  return v5;
}

- (BOOL)isBeforeNextCycleForAccount:(id)account
{
  creditDetails = [account creditDetails];
  accountSummary = [creditDetails accountSummary];

  balanceSummary = [accountSummary balanceSummary];
  closingDate = [balanceSummary closingDate];

  if (closingDate)
  {
    paymentDate = [(PKAccountPayment *)self paymentDate];
    v9 = [paymentDate compare:closingDate] != 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)willSkipFirstPaymentForAccount:(id)account
{
  accountCopy = account;
  scheduleDetails = [(PKAccountPayment *)self scheduleDetails];
  preset = [scheduleDetails preset];

  if ([(PKAccountPayment *)self isRecurring])
  {
    v7 = 0;
    if ([(PKAccountPayment *)self isOnHoldForAccount:accountCopy]&& (preset & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v7 = [(PKAccountPayment *)self isBeforeNextCycleForAccount:accountCopy];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end