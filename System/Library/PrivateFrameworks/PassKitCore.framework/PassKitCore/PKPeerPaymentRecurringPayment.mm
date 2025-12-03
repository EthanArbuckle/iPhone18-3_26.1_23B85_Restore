@interface PKPeerPaymentRecurringPayment
+ (id)recordNameForRecurringPaymentIdentifier:(id)identifier;
+ (id)recurringPaymentIdentifierFromRecordName:(id)name;
- (BOOL)isEqual:(id)equal;
- (PKCurrencyAmount)currencyAmount;
- (PKCurrencyAmount)currencyThreshold;
- (PKPeerPaymentRecurringPayment)initWithCloudStoreCoder:(id)coder;
- (PKPeerPaymentRecurringPayment)initWithCoder:(id)coder;
- (PKPeerPaymentRecurringPayment)initWithDictionary:(id)dictionary productTimeZone:(id)zone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)recordTypesAndNamesForCodingType:(unint64_t)type;
- (unint64_t)_actionsForStrings:(id)strings;
- (unint64_t)hash;
- (void)applyPropertiesFromCloudStoreRecord:(id)record;
- (void)encodeWithCloudStoreCoder:(id)coder codingType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentRecurringPayment

- (PKPeerPaymentRecurringPayment)initWithDictionary:(id)dictionary productTimeZone:(id)zone
{
  v58 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  zoneCopy = zone;
  v56.receiver = self;
  v56.super_class = PKPeerPaymentRecurringPayment;
  v8 = [(PKPeerPaymentRecurringPayment *)&v56 init];
  if (v8)
  {
    v9 = [dictionaryCopy PKStringForKey:@"identifier"];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [dictionaryCopy PKStringForKey:@"type"];
    v8->_type = PKPeerPaymentRecurringPaymentTypeFromString(v11);

    v12 = [dictionaryCopy PKStringForKey:@"senderAddress"];
    senderAddress = v8->_senderAddress;
    v8->_senderAddress = v12;

    v14 = [dictionaryCopy PKStringForKey:@"recipientAddress"];
    recipientAddress = v8->_recipientAddress;
    v8->_recipientAddress = v14;

    v16 = [dictionaryCopy PKStringForKey:@"recipientAltDSID"];
    recipientAltDSID = v8->_recipientAltDSID;
    v8->_recipientAltDSID = v16;

    v8->_sentByMe = [dictionaryCopy PKBoolForKey:@"sentByMe"];
    v18 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"amount"];
    amount = v8->_amount;
    v8->_amount = v18;

    v20 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"threshold"];
    threshold = v8->_threshold;
    v8->_threshold = v20;

    v22 = [dictionaryCopy PKStringForKey:@"currency"];
    currency = v8->_currency;
    v8->_currency = v22;

    v24 = [dictionaryCopy PKStringForKey:@"frequency"];
    v8->_frequency = PKPeerPaymentRecurringPaymentFrequencyFromString(v24);

    v25 = [dictionaryCopy PKDictionaryForKey:@"fundingSource"];
    v26 = [PKPeerPaymentRecurringPaymentFundingSource fundingSourceWithDictionary:v25];
    fundingSource = v8->_fundingSource;
    v8->_fundingSource = v26;

    v28 = [dictionaryCopy PKStringForKey:@"status"];
    v8->_status = PKPeerPaymentRecurringPaymentStatusFromString(v28);

    v29 = [dictionaryCopy PKArrayForKey:@"actions"];
    v8->_actions = [(PKPeerPaymentRecurringPayment *)v8 _actionsForStrings:v29];

    v8->_usesAppleCashBalance = [dictionaryCopy PKBoolForKey:@"usesAppleCashBalance"];
    v30 = [dictionaryCopy PKStringForKey:@"createdDate"];
    v31 = PKISO8601DateFromDateStringContainingFractionalSeconds(v30);
    createdDate = v8->_createdDate;
    v8->_createdDate = v31;

    if (!zoneCopy)
    {
      v33 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v33, OS_LOG_TYPE_DEFAULT, "nil productTimeZone, using default time zone.", buf, 2u);
      }

      zoneCopy = [MEMORY[0x1E695DFE8] timeZoneWithName:@"America/Los_Angeles"];
    }

    v34 = [dictionaryCopy PKStringForKey:@"startDate"];
    v35 = PKPaymentDateFromDateStringWithTimeZone(v34, zoneCopy);
    startDate = v8->_startDate;
    v8->_startDate = v35;

    v37 = [dictionaryCopy PKArrayForKey:@"upcomingPaymentDates"];
    v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v39 = v37;
    v40 = [v39 countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v52;
      do
      {
        v43 = 0;
        do
        {
          if (*v52 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = PKPaymentDateFromDateStringWithTimeZone(*(*(&v51 + 1) + 8 * v43), zoneCopy);
          [v38 safelyAddObject:{v44, v51}];

          ++v43;
        }

        while (v41 != v43);
        v41 = [v39 countByEnumeratingWithState:&v51 objects:v57 count:16];
      }

      while (v41);
    }

    v45 = [v38 copy];
    upcomingPaymentDates = v8->_upcomingPaymentDates;
    v8->_upcomingPaymentDates = v45;

    v47 = [dictionaryCopy PKDictionaryForKey:@"lastExecutedTransaction"];
    if (v47)
    {
      v48 = [PKPeerPaymentRecurringPaymentTransaction transactionWithDictionary:v47];
      lastExecutedTransaction = v8->_lastExecutedTransaction;
      v8->_lastExecutedTransaction = v48;
    }
  }

  return v8;
}

- (PKCurrencyAmount)currencyAmount
{
  if (self->_amount)
  {
    v4 = [(NSString *)self->_currency length];
    if (v4)
    {
      amount = self->_amount;
      notANumber = [MEMORY[0x1E696AB90] notANumber];
      LOBYTE(amount) = [(NSDecimalNumber *)amount isEqualToNumber:notANumber];

      if (amount)
      {
        v4 = 0;
      }

      else
      {
        v4 = [[PKCurrencyAmount alloc] initWithAmount:self->_amount currency:self->_currency exponent:0];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PKCurrencyAmount)currencyThreshold
{
  if (self->_threshold)
  {
    v4 = [(NSString *)self->_currency length];
    if (v4)
    {
      threshold = self->_threshold;
      notANumber = [MEMORY[0x1E696AB90] notANumber];
      LOBYTE(threshold) = [(NSDecimalNumber *)threshold isEqualToNumber:notANumber];

      if (threshold)
      {
        v4 = 0;
      }

      else
      {
        v4 = [[PKCurrencyAmount alloc] initWithAmount:self->_threshold currency:self->_currency exponent:0];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PKPeerPaymentRecurringPayment)initWithCoder:(id)coder
{
  v40[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v39.receiver = self;
  v39.super_class = PKPeerPaymentRecurringPayment;
  v5 = [(PKPeerPaymentRecurringPayment *)&v39 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = PKPeerPaymentRecurringPaymentTypeFromString(v8);

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderAddress"];
    senderAddress = v5->_senderAddress;
    v5->_senderAddress = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipientAddress"];
    recipientAddress = v5->_recipientAddress;
    v5->_recipientAddress = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipientAltDSID"];
    recipientAltDSID = v5->_recipientAltDSID;
    v5->_recipientAltDSID = v13;

    v5->_sentByMe = [coderCopy decodeBoolForKey:@"sentByMe"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"threshold"];
    threshold = v5->_threshold;
    v5->_threshold = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currency"];
    currency = v5->_currency;
    v5->_currency = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fundingSource"];
    fundingSource = v5->_fundingSource;
    v5->_fundingSource = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"frequency"];
    v5->_frequency = PKPeerPaymentRecurringPaymentFrequencyFromString(v23);

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"createdDate"];
    createdDate = v5->_createdDate;
    v5->_createdDate = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    v5->_status = PKPeerPaymentRecurringPaymentStatusFromString(v28);

    v5->_actions = [coderCopy decodeIntegerForKey:@"actions"];
    v29 = objc_alloc(MEMORY[0x1E695DFD8]);
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    v31 = [v29 initWithArray:v30];
    v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"upcomingPaymentDates"];
    upcomingPaymentDates = v5->_upcomingPaymentDates;
    v5->_upcomingPaymentDates = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"memo"];
    memo = v5->_memo;
    v5->_memo = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastExecutedTransaction"];
    lastExecutedTransaction = v5->_lastExecutedTransaction;
    v5->_lastExecutedTransaction = v36;

    v5->_usesAppleCashBalance = [coderCopy decodeBoolForKey:@"usesAppleCashBalance"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  v5 = self->_type - 1;
  if (v5 > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79D0A88[v5];
  }

  [coderCopy encodeObject:v6 forKey:@"type"];
  [coderCopy encodeObject:self->_senderAddress forKey:@"senderAddress"];
  [coderCopy encodeObject:self->_recipientAddress forKey:@"recipientAddress"];
  [coderCopy encodeObject:self->_recipientAltDSID forKey:@"recipientAltDSID"];
  [coderCopy encodeBool:self->_sentByMe forKey:@"sentByMe"];
  [coderCopy encodeObject:self->_amount forKey:@"amount"];
  [coderCopy encodeObject:self->_threshold forKey:@"threshold"];
  [coderCopy encodeObject:self->_currency forKey:@"currency"];
  [coderCopy encodeObject:self->_fundingSource forKey:@"fundingSource"];
  v7 = PKPeerPaymentRecurringPaymentFrequencyToString(self->_frequency);
  [coderCopy encodeObject:v7 forKey:@"frequency"];

  [coderCopy encodeObject:self->_createdDate forKey:@"createdDate"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  v8 = PKPeerPaymentRecurringPaymentStatusToString(self->_status);
  [coderCopy encodeObject:v8 forKey:@"status"];

  [coderCopy encodeInteger:self->_actions forKey:@"actions"];
  [coderCopy encodeObject:self->_upcomingPaymentDates forKey:@"upcomingPaymentDates"];
  [coderCopy encodeObject:self->_memo forKey:@"memo"];
  [coderCopy encodeObject:self->_lastExecutedTransaction forKey:@"lastExecutedTransaction"];
  [coderCopy encodeBool:self->_usesAppleCashBalance forKey:@"usesAppleCashBalance"];
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_senderAddress];
  [array safelyAddObject:self->_recipientAddress];
  [array safelyAddObject:self->_recipientAltDSID];
  [array safelyAddObject:self->_amount];
  [array safelyAddObject:self->_threshold];
  [array safelyAddObject:self->_currency];
  [array safelyAddObject:self->_fundingSource];
  [array safelyAddObject:self->_createdDate];
  [array safelyAddObject:self->_startDate];
  [array safelyAddObject:self->_upcomingPaymentDates];
  [array safelyAddObject:self->_memo];
  [array safelyAddObject:self->_lastExecutedTransaction];
  v4 = PKCombinedHash(17, array);
  v5 = self->_sentByMe - v4 + 32 * v4;
  v6 = self->_type - v5 + 32 * v5;
  v7 = self->_frequency - v6 + 32 * v6;
  v8 = self->_status - v7 + 32 * v7;
  v9 = self->_actions - v8 + 32 * v8;
  v10 = self->_usesAppleCashBalance - v9 + 32 * v9;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_73;
  }

  identifier = self->_identifier;
  v6 = equalCopy[2];
  if (identifier && v6)
  {
    if (([(NSString *)identifier isEqual:?]& 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if (identifier != v6)
  {
    goto LABEL_73;
  }

  senderAddress = self->_senderAddress;
  v8 = equalCopy[4];
  if (senderAddress && v8)
  {
    if (([(NSString *)senderAddress isEqual:?]& 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if (senderAddress != v8)
  {
    goto LABEL_73;
  }

  recipientAddress = self->_recipientAddress;
  v10 = equalCopy[5];
  if (recipientAddress && v10)
  {
    if (([(NSString *)recipientAddress isEqual:?]& 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if (recipientAddress != v10)
  {
    goto LABEL_73;
  }

  recipientAltDSID = self->_recipientAltDSID;
  v12 = equalCopy[6];
  if (recipientAltDSID && v12)
  {
    if (([(NSString *)recipientAltDSID isEqual:?]& 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if (recipientAltDSID != v12)
  {
    goto LABEL_73;
  }

  amount = self->_amount;
  v14 = equalCopy[7];
  if (amount && v14)
  {
    if (([(NSDecimalNumber *)amount isEqual:?]& 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if (amount != v14)
  {
    goto LABEL_73;
  }

  threshold = self->_threshold;
  v16 = equalCopy[8];
  if (threshold && v16)
  {
    if (([(NSDecimalNumber *)threshold isEqual:?]& 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if (threshold != v16)
  {
    goto LABEL_73;
  }

  currency = self->_currency;
  v18 = equalCopy[9];
  if (currency && v18)
  {
    if (([(NSString *)currency isEqual:?]& 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if (currency != v18)
  {
    goto LABEL_73;
  }

  fundingSource = self->_fundingSource;
  v20 = equalCopy[10];
  if (fundingSource && v20)
  {
    if (![(PKPeerPaymentRecurringPaymentFundingSource *)fundingSource isEqual:?])
    {
      goto LABEL_73;
    }
  }

  else if (fundingSource != v20)
  {
    goto LABEL_73;
  }

  createdDate = self->_createdDate;
  v22 = equalCopy[12];
  if (createdDate && v22)
  {
    if (([(NSDate *)createdDate isEqual:?]& 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if (createdDate != v22)
  {
    goto LABEL_73;
  }

  startDate = self->_startDate;
  v24 = equalCopy[13];
  if (startDate && v24)
  {
    if (([(NSDate *)startDate isEqual:?]& 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if (startDate != v24)
  {
    goto LABEL_73;
  }

  upcomingPaymentDates = self->_upcomingPaymentDates;
  v26 = equalCopy[16];
  if (upcomingPaymentDates && v26)
  {
    if (([(NSArray *)upcomingPaymentDates isEqual:?]& 1) == 0)
    {
      goto LABEL_73;
    }
  }

  else if (upcomingPaymentDates != v26)
  {
    goto LABEL_73;
  }

  memo = self->_memo;
  v28 = equalCopy[17];
  if (memo && v28)
  {
    if (![(PKPeerPaymentRecurringPaymentMemo *)memo isEqual:?])
    {
      goto LABEL_73;
    }
  }

  else if (memo != v28)
  {
    goto LABEL_73;
  }

  lastExecutedTransaction = self->_lastExecutedTransaction;
  v30 = equalCopy[18];
  if (!lastExecutedTransaction || !v30)
  {
    if (lastExecutedTransaction == v30)
    {
      goto LABEL_67;
    }

LABEL_73:
    v31 = 0;
    goto LABEL_74;
  }

  if (![(PKPeerPaymentRecurringPaymentTransaction *)lastExecutedTransaction isEqual:?])
  {
    goto LABEL_73;
  }

LABEL_67:
  if (self->_sentByMe != *(equalCopy + 8) || self->_type != equalCopy[3] || self->_frequency != equalCopy[11] || self->_status != equalCopy[14] || self->_actions != equalCopy[15])
  {
    goto LABEL_73;
  }

  v31 = self->_usesAppleCashBalance == *(equalCopy + 9);
LABEL_74:

  return v31;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  if (self->_sentByMe)
  {
    v4 = @"true";
  }

  else
  {
    v4 = @"false";
  }

  [v3 appendFormat:@"sentByMe: '%@'; ", v4];
  v5 = self->_type - 1;
  if (v5 > 2)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79D0A88[v5];
  }

  [v3 appendFormat:@"type: '%@'; ", v6];
  [v3 appendFormat:@"amount: '%@'; ", self->_amount];
  [v3 appendFormat:@"threshold: '%@'; ", self->_threshold];
  [v3 appendFormat:@"currency: '%@'; ", self->_currency];
  [v3 appendFormat:@"fundingSource: '%@'; ", self->_fundingSource];
  v7 = PKPeerPaymentRecurringPaymentFrequencyToString(self->_frequency);
  [v3 appendFormat:@"frequency: '%@'; ", v7];

  [v3 appendFormat:@"createdDate: '%@'; ", self->_createdDate];
  [v3 appendFormat:@"startDate: '%@'; ", self->_startDate];
  v8 = PKPeerPaymentRecurringPaymentStatusToString(self->_status);
  [v3 appendFormat:@"status: '%@'; ", v8];

  [v3 appendFormat:@"actions: '%ld'; ", self->_actions];
  [v3 appendFormat:@"upcomingPaymentDates: '%@'; ", self->_upcomingPaymentDates];
  [v3 appendFormat:@"memo: '%@'; ", self->_memo];
  [v3 appendFormat:@"lastExecutedTransaction: '%@'; ", self->_lastExecutedTransaction];
  if (self->_usesAppleCashBalance)
  {
    v9 = @"true";
  }

  else
  {
    v9 = @"false";
  }

  [v3 appendFormat:@"usesAppleCashBalance: '%@'; ", v9];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKPeerPaymentRecurringPayment)initWithCloudStoreCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PKPeerPaymentRecurringPayment;
  v5 = [(PKPeerPaymentRecurringPayment *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PKPeerPaymentRecurringPayment *)v5 applyPropertiesFromCloudStoreRecord:coderCopy];
  }

  return v6;
}

- (void)applyPropertiesFromCloudStoreRecord:(id)record
{
  v4 = [record recordsWithRecordType:@"RecurringPaymentMemo"];
  firstObject = [v4 firstObject];

  v6 = [firstObject pk_encryptedStringForKey:@"text"];
  v7 = [firstObject pk_encryptedStringForKey:@"emoji"];
  v8 = [firstObject pk_encryptedStringForKey:@"color"];
  if (![(NSString *)self->_identifier length])
  {
    v9 = [firstObject pk_encryptedStringForKey:@"identifier"];
    identifier = self->_identifier;
    self->_identifier = v9;
  }

  memo = self->_memo;
  if (!memo)
  {
    v12 = objc_alloc_init(PKPeerPaymentRecurringPaymentMemo);
    v13 = self->_memo;
    self->_memo = v12;

    memo = self->_memo;
  }

  [(PKPeerPaymentRecurringPaymentMemo *)memo setText:v6];
  [(PKPeerPaymentRecurringPaymentMemo *)self->_memo setEmoji:v7];
  v14 = 0;
  PKSemanticColorFromString(v8, &v14);
  [(PKPeerPaymentRecurringPaymentMemo *)self->_memo setColor:v14];
}

- (void)encodeWithCloudStoreCoder:(id)coder codingType:(unint64_t)type
{
  v5 = [coder recordsWithRecordType:{@"RecurringPaymentMemo", type}];
  firstObject = [v5 firstObject];

  encryptedValues = [firstObject encryptedValues];
  [encryptedValues setObject:self->_identifier forKey:@"identifier"];
  text = [(PKPeerPaymentRecurringPaymentMemo *)self->_memo text];
  [encryptedValues setObject:text forKey:@"text"];

  emoji = [(PKPeerPaymentRecurringPaymentMemo *)self->_memo emoji];
  [encryptedValues setObject:emoji forKey:@"emoji"];

  v9 = PKSemanticColorToString([(PKPeerPaymentRecurringPaymentMemo *)self->_memo color]);
  [encryptedValues setObject:v9 forKey:@"color"];
}

- (id)recordTypesAndNamesForCodingType:(unint64_t)type
{
  v9[1] = *MEMORY[0x1E69E9840];
  v7 = @"RecurringPaymentMemo";
  v3 = [objc_opt_class() recordNameForRecurringPaymentIdentifier:{self->_identifier, @"RecurringPaymentMemo"}];
  v8 = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  return v5;
}

+ (id)recordNameForRecurringPaymentIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E696AEC0];
  identifierCopy = identifier;
  v6 = [v4 alloc];
  recordNamePrefix = [self recordNamePrefix];
  identifierCopy = [v6 initWithFormat:@"%@%@", recordNamePrefix, identifierCopy];

  return identifierCopy;
}

+ (id)recurringPaymentIdentifierFromRecordName:(id)name
{
  nameCopy = name;
  recordNamePrefix = [self recordNamePrefix];
  v6 = [nameCopy hasPrefix:recordNamePrefix];

  if (v6)
  {
    recordNamePrefix2 = [self recordNamePrefix];
    v8 = [nameCopy substringFromIndex:{objc_msgSend(recordNamePrefix2, "length")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPeerPaymentRecurringPayment allocWithZone:](PKPeerPaymentRecurringPayment init];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v5->_type = self->_type;
  v8 = [(NSString *)self->_senderAddress copyWithZone:zone];
  senderAddress = v5->_senderAddress;
  v5->_senderAddress = v8;

  v10 = [(NSString *)self->_recipientAddress copyWithZone:zone];
  recipientAddress = v5->_recipientAddress;
  v5->_recipientAddress = v10;

  v12 = [(NSString *)self->_senderAddress copyWithZone:zone];
  recipientAltDSID = v5->_recipientAltDSID;
  v5->_recipientAltDSID = v12;

  v5->_sentByMe = self->_sentByMe;
  v14 = [(NSDecimalNumber *)self->_amount copyWithZone:zone];
  amount = v5->_amount;
  v5->_amount = v14;

  v16 = [(NSDecimalNumber *)self->_threshold copyWithZone:zone];
  threshold = v5->_threshold;
  v5->_threshold = v16;

  v18 = [(NSString *)self->_currency copyWithZone:zone];
  currency = v5->_currency;
  v5->_currency = v18;

  v20 = [(PKPeerPaymentRecurringPaymentFundingSource *)self->_fundingSource copyWithZone:zone];
  fundingSource = v5->_fundingSource;
  v5->_fundingSource = v20;

  v5->_frequency = self->_frequency;
  v22 = [(NSDate *)self->_createdDate copyWithZone:zone];
  createdDate = v5->_createdDate;
  v5->_createdDate = v22;

  v24 = [(NSDate *)self->_startDate copyWithZone:zone];
  startDate = v5->_startDate;
  v5->_startDate = v24;

  v5->_status = self->_status;
  v5->_actions = self->_actions;
  v26 = [(NSArray *)self->_upcomingPaymentDates copyWithZone:zone];
  upcomingPaymentDates = v5->_upcomingPaymentDates;
  v5->_upcomingPaymentDates = v26;

  v28 = [(PKPeerPaymentRecurringPaymentMemo *)self->_memo copyWithZone:zone];
  memo = v5->_memo;
  v5->_memo = v28;

  v30 = [(PKPeerPaymentRecurringPaymentTransaction *)self->_lastExecutedTransaction copyWithZone:zone];
  lastExecutedTransaction = v5->_lastExecutedTransaction;
  v5->_lastExecutedTransaction = v30;

  v5->_usesAppleCashBalance = self->_usesAppleCashBalance;
  return v5;
}

- (unint64_t)_actionsForStrings:(id)strings
{
  stringsCopy = strings;
  v4 = [stringsCopy containsObject:@"pause"];
  v5 = [stringsCopy containsObject:@"cancel"];

  if (v5)
  {
    return v4 | 2;
  }

  else
  {
    return v4;
  }
}

@end