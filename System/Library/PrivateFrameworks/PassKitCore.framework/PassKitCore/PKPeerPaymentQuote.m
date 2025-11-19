@interface PKPeerPaymentQuote
- (BOOL)hasExpired;
- (BOOL)hasRecipient;
- (BOOL)isEqual:(id)a3;
- (BOOL)preservesCurrentBalance;
- (PKCurrencyAmount)calculatedTotalAmount;
- (PKPeerPaymentQuote)initWithCoder:(id)a3;
- (PKPeerPaymentQuote)initWithDictionary:(id)a3 productTimeZone:(id)a4;
- (id)description;
- (id)firstQuoteItemOfType:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentQuote

- (PKPeerPaymentQuote)initWithDictionary:(id)a3 productTimeZone:(id)a4
{
  v84 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v82.receiver = self;
  v82.super_class = PKPeerPaymentQuote;
  v8 = [(PKPeerPaymentQuote *)&v82 init];
  if (v8)
  {
    v9 = [v6 PKStringForKey:@"quoteIdentifier"];
    v10 = [v9 copy];
    identifier = v8->_identifier;
    v8->_identifier = v10;

    v12 = [v6 PKArrayForKey:@"quoteItems"];
    v13 = [MEMORY[0x1E695DF70] array];
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v78 objects:v83 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v79;
      do
      {
        v18 = 0;
        do
        {
          if (*v79 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [PKPeerPaymentQuoteItem quoteItemWithDictionary:*(*(&v78 + 1) + 8 * v18)];
          [v13 safelyAddObject:v19];

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v78 objects:v83 count:16];
      }

      while (v16);
    }

    v20 = [v13 copy];
    items = v8->_items;
    v8->_items = v20;

    v22 = [v6 PKStringForKey:@"disclosureText"];
    v23 = [v22 copy];
    disclosureText = v8->_disclosureText;
    v8->_disclosureText = v23;

    v25 = [v6 PKURLForKey:@"disclosureURL"];
    v26 = [v25 copy];
    disclosureURL = v8->_disclosureURL;
    v8->_disclosureURL = v26;

    v28 = [v6 PKDecimalNumberFromStringForKey:@"currentBalance"];
    currentBalance = v8->_currentBalance;
    v8->_currentBalance = v28;

    v30 = [v6 PKStringForKey:@"currentBalanceCurrency"];
    v31 = [v30 copy];
    currentBalanceCurrency = v8->_currentBalanceCurrency;
    v8->_currentBalanceCurrency = v31;

    v33 = [v6 PKDecimalNumberFromStringForKey:@"totalFees"];
    totalFees = v8->_totalFees;
    v8->_totalFees = v33;

    v35 = [v6 PKStringForKey:@"totalFeesCurrency"];
    v36 = [v35 copy];
    totalFeesCurrency = v8->_totalFeesCurrency;
    v8->_totalFeesCurrency = v36;

    v38 = [v6 PKDecimalNumberFromStringForKey:@"totalReceiveAmount"];
    totalReceiveAmount = v8->_totalReceiveAmount;
    v8->_totalReceiveAmount = v38;

    v40 = [v6 PKStringForKey:@"totalReceiveAmountCurrency"];
    v41 = [v40 copy];
    totalReceiveAmountCurrency = v8->_totalReceiveAmountCurrency;
    v8->_totalReceiveAmountCurrency = v41;

    v43 = [v6 PKStringForKey:@"appleHash"];
    v44 = [v43 pk_decodeHexadecimal];
    appleHash = v8->_appleHash;
    v8->_appleHash = v44;

    v46 = [v6 PKStringForKey:@"externalHash"];
    v47 = [v46 pk_decodeHexadecimal];
    externalHash = v8->_externalHash;
    v8->_externalHash = v47;

    v49 = [v6 PKDateForKey:@"validUntil"];
    validUntil = v8->_validUntil;
    v8->_validUntil = v49;

    v51 = [v6 PKStringForKey:@"riskLevel"];
    v8->_riskLevel = PKPeerPaymentQuoteRiskLevelFromString(v51);

    v52 = [PKPeerPaymentDynamicFraudContent alloc];
    v53 = [v6 PKDictionaryForKey:@"dynamicFraudContent"];
    v54 = [(PKPeerPaymentDynamicFraudContent *)v52 initWithDictionary:v53];
    dynamicFraudContent = v8->_dynamicFraudContent;
    v8->_dynamicFraudContent = v54;

    v56 = [v6 PKStringForKey:@"recurringPaymentIdentifier"];
    v57 = [v56 copy];
    recurringPaymentIdentifier = v8->_recurringPaymentIdentifier;
    v8->_recurringPaymentIdentifier = v57;

    v59 = [v6 PKStringForKey:@"frequency"];
    v8->_frequency = PKPeerPaymentRecurringPaymentFrequencyFromString(v59);

    v60 = [v6 PKDecimalNumberFromStringForKey:@"threshold"];
    threshold = v8->_threshold;
    v8->_threshold = v60;

    v8->_isNewRecurringPayment = [v6 PKBoolForKey:@"isNewRecurringPayment"];
    if (!v7)
    {
      v62 = PKLogFacilityTypeGetObject(0xCuLL);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *v77 = 0;
        _os_log_impl(&dword_1AD337000, v62, OS_LOG_TYPE_DEFAULT, "nil productTimeZone, using default time zone.", v77, 2u);
      }

      v7 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"America/Los_Angeles"];
    }

    v63 = [v6 PKStringForKey:@"startDate"];
    v64 = PKPaymentDateFromDateStringWithTimeZone(v63, v7);
    startDate = v8->_startDate;
    v8->_startDate = v64;

    v66 = [v6 PKStringForKey:@"nextPaymentDate"];
    v67 = PKPaymentDateFromDateStringWithTimeZone(v66, v7);
    nextPaymentDate = v8->_nextPaymentDate;
    v8->_nextPaymentDate = v67;

    v69 = [v6 PKStringForKey:@"transactionIdentifier"];
    v70 = [v69 copy];
    transactionIdentifier = v8->_transactionIdentifier;
    v8->_transactionIdentifier = v70;

    if (!v8->_validUntil)
    {
      v72 = MEMORY[0x1E695DF00];
      v73 = [v6 PKNumberForKey:@"validityDuration"];
      [v73 doubleValue];
      v74 = [v72 dateWithTimeIntervalSinceNow:?];
      v75 = v8->_validUntil;
      v8->_validUntil = v74;
    }
  }

  return v8;
}

- (PKPeerPaymentQuote)initWithCoder:(id)a3
{
  v4 = a3;
  v61.receiver = self;
  v61.super_class = PKPeerPaymentQuote;
  v5 = [(PKPeerPaymentQuote *)&v61 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"quoteIdentifier"];
    v7 = [v6 copy];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"quoteItems"];
    items = v5->_items;
    v5->_items = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"disclosureText"];
    v15 = [v14 copy];
    disclosureText = v5->_disclosureText;
    v5->_disclosureText = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"disclosureURL"];
    v18 = [v17 copy];
    disclosureURL = v5->_disclosureURL;
    v5->_disclosureURL = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentBalance"];
    currentBalance = v5->_currentBalance;
    v5->_currentBalance = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentBalanceCurrency"];
    currentBalanceCurrency = v5->_currentBalanceCurrency;
    v5->_currentBalanceCurrency = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalFees"];
    totalFees = v5->_totalFees;
    v5->_totalFees = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalFeesCurrency"];
    totalFeesCurrency = v5->_totalFeesCurrency;
    v5->_totalFeesCurrency = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalReceiveAmount"];
    totalReceiveAmount = v5->_totalReceiveAmount;
    v5->_totalReceiveAmount = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalReceiveAmountCurrency"];
    totalReceiveAmountCurrency = v5->_totalReceiveAmountCurrency;
    v5->_totalReceiveAmountCurrency = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appleHash"];
    appleHash = v5->_appleHash;
    v5->_appleHash = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalHash"];
    externalHash = v5->_externalHash;
    v5->_externalHash = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"validUntil"];
    validUntil = v5->_validUntil;
    v5->_validUntil = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recipient"];
    recipient = v5->_recipient;
    v5->_recipient = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bankName"];
    bankName = v5->_bankName;
    v5->_bankName = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountNumber"];
    accountNumber = v5->_accountNumber;
    v5->_accountNumber = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"routingNumber"];
    routingNumber = v5->_routingNumber;
    v5->_routingNumber = v44;

    v5->_riskLevel = [v4 decodeIntegerForKey:@"riskLevel"];
    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dynamicFraudContent"];
    dynamicFraudContent = v5->_dynamicFraudContent;
    v5->_dynamicFraudContent = v46;

    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recurringPaymentIdentifier"];
    v49 = [v48 copy];
    recurringPaymentIdentifier = v5->_recurringPaymentIdentifier;
    v5->_recurringPaymentIdentifier = v49;

    v5->_frequency = [v4 decodeIntegerForKey:@"frequency"];
    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v51;

    v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nextPaymentDate"];
    nextPaymentDate = v5->_nextPaymentDate;
    v5->_nextPaymentDate = v53;

    v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"threshold"];
    threshold = v5->_threshold;
    v5->_threshold = v55;

    v5->_isNewRecurringPayment = [v4 decodeBoolForKey:@"isNewRecurringPayment"];
    v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionIdentifier"];
    v58 = [v57 copy];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v58;

    v5->_destinationType = [v4 decodeIntegerForKey:@"destinationType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"quoteIdentifier"];
  [v5 encodeObject:self->_items forKey:@"quoteItems"];
  [v5 encodeObject:self->_disclosureText forKey:@"disclosureText"];
  [v5 encodeObject:self->_disclosureURL forKey:@"disclosureURL"];
  [v5 encodeObject:self->_currentBalance forKey:@"currentBalance"];
  [v5 encodeObject:self->_currentBalanceCurrency forKey:@"currentBalanceCurrency"];
  [v5 encodeObject:self->_totalFees forKey:@"totalFees"];
  [v5 encodeObject:self->_totalFeesCurrency forKey:@"totalFeesCurrency"];
  [v5 encodeObject:self->_totalReceiveAmount forKey:@"totalReceiveAmount"];
  [v5 encodeObject:self->_totalReceiveAmountCurrency forKey:@"totalReceiveAmountCurrency"];
  [v5 encodeObject:self->_appleHash forKey:@"appleHash"];
  [v5 encodeObject:self->_externalHash forKey:@"externalHash"];
  [v5 encodeObject:self->_validUntil forKey:@"validUntil"];
  [v5 encodeObject:self->_recipient forKey:@"recipient"];
  [v5 encodeObject:self->_bankName forKey:@"bankName"];
  [v5 encodeObject:self->_accountNumber forKey:@"accountNumber"];
  [v5 encodeObject:self->_routingNumber forKey:@"routingNumber"];
  [v5 encodeInteger:self->_riskLevel forKey:@"riskLevel"];
  [v5 encodeObject:self->_dynamicFraudContent forKey:@"dynamicFraudContent"];
  [v5 encodeObject:self->_recurringPaymentIdentifier forKey:@"recurringPaymentIdentifier"];
  [v5 encodeInteger:self->_frequency forKey:@"frequency"];
  [v5 encodeObject:self->_startDate forKey:@"startDate"];
  [v5 encodeObject:self->_nextPaymentDate forKey:@"nextPaymentDate"];
  [v5 encodeObject:self->_threshold forKey:@"threshold"];
  [v5 encodeBool:self->_isNewRecurringPayment forKey:@"isNewRecurringPayment"];
  [v5 encodeObject:self->_transactionIdentifier forKey:@"transactionIdentifier"];
  [v5 encodeInteger:self->_destinationType forKey:@"destinationType"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_120;
  }

  identifier = self->_identifier;
  v6 = v4[2];
  if (identifier && v6)
  {
    if (([(NSString *)identifier isEqual:?]& 1) == 0)
    {
      goto LABEL_120;
    }
  }

  else if (identifier != v6)
  {
    goto LABEL_120;
  }

  items = self->_items;
  v8 = v4[3];
  if (items && v8)
  {
    if (([(NSArray *)items isEqual:?]& 1) == 0)
    {
      goto LABEL_120;
    }
  }

  else if (items != v8)
  {
    goto LABEL_120;
  }

  disclosureText = self->_disclosureText;
  v10 = v4[4];
  if (disclosureText && v10)
  {
    if (([(NSString *)disclosureText isEqual:?]& 1) == 0)
    {
      goto LABEL_120;
    }
  }

  else if (disclosureText != v10)
  {
    goto LABEL_120;
  }

  disclosureURL = self->_disclosureURL;
  v12 = v4[5];
  if (disclosureURL && v12)
  {
    if (([(NSURL *)disclosureURL isEqual:?]& 1) == 0)
    {
      goto LABEL_120;
    }
  }

  else if (disclosureURL != v12)
  {
    goto LABEL_120;
  }

  currentBalance = self->_currentBalance;
  v14 = v4[6];
  if (currentBalance && v14)
  {
    if (([(NSDecimalNumber *)currentBalance isEqual:?]& 1) == 0)
    {
      goto LABEL_120;
    }
  }

  else if (currentBalance != v14)
  {
    goto LABEL_120;
  }

  currentBalanceCurrency = self->_currentBalanceCurrency;
  v16 = v4[7];
  if (currentBalanceCurrency && v16)
  {
    if (([(NSString *)currentBalanceCurrency isEqual:?]& 1) == 0)
    {
      goto LABEL_120;
    }
  }

  else if (currentBalanceCurrency != v16)
  {
    goto LABEL_120;
  }

  totalFees = self->_totalFees;
  v18 = v4[12];
  if (totalFees && v18)
  {
    if (([(NSDecimalNumber *)totalFees isEqual:?]& 1) == 0)
    {
      goto LABEL_120;
    }
  }

  else if (totalFees != v18)
  {
    goto LABEL_120;
  }

  totalFeesCurrency = self->_totalFeesCurrency;
  v20 = v4[13];
  if (totalFeesCurrency && v20)
  {
    if (([(NSString *)totalFeesCurrency isEqual:?]& 1) == 0)
    {
      goto LABEL_120;
    }
  }

  else if (totalFeesCurrency != v20)
  {
    goto LABEL_120;
  }

  totalReceiveAmount = self->_totalReceiveAmount;
  v22 = v4[10];
  if (totalReceiveAmount && v22)
  {
    if (([(NSDecimalNumber *)totalReceiveAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_120;
    }
  }

  else if (totalReceiveAmount != v22)
  {
    goto LABEL_120;
  }

  totalReceiveAmountCurrency = self->_totalReceiveAmountCurrency;
  v24 = v4[11];
  if (totalReceiveAmountCurrency && v24)
  {
    if (([(NSString *)totalReceiveAmountCurrency isEqual:?]& 1) == 0)
    {
      goto LABEL_120;
    }
  }

  else if (totalReceiveAmountCurrency != v24)
  {
    goto LABEL_120;
  }

  appleHash = self->_appleHash;
  v26 = v4[8];
  if (appleHash && v26)
  {
    if (([(NSData *)appleHash isEqual:?]& 1) == 0)
    {
      goto LABEL_120;
    }
  }

  else if (appleHash != v26)
  {
    goto LABEL_120;
  }

  externalHash = self->_externalHash;
  v28 = v4[9];
  if (externalHash && v28)
  {
    if (([(NSData *)externalHash isEqual:?]& 1) == 0)
    {
      goto LABEL_120;
    }
  }

  else if (externalHash != v28)
  {
    goto LABEL_120;
  }

  validUntil = self->_validUntil;
  v30 = v4[14];
  if (validUntil && v30)
  {
    if (([(NSDate *)validUntil isEqual:?]& 1) == 0)
    {
      goto LABEL_120;
    }
  }

  else if (validUntil != v30)
  {
    goto LABEL_120;
  }

  recipient = self->_recipient;
  v32 = v4[23];
  if (recipient && v32)
  {
    if (![(PKPeerPaymentRecipient *)recipient isEqual:?])
    {
      goto LABEL_120;
    }
  }

  else if (recipient != v32)
  {
    goto LABEL_120;
  }

  bankName = self->_bankName;
  v34 = v4[25];
  if (bankName && v34)
  {
    if (([(NSString *)bankName isEqual:?]& 1) == 0)
    {
      goto LABEL_120;
    }
  }

  else if (bankName != v34)
  {
    goto LABEL_120;
  }

  accountNumber = self->_accountNumber;
  v36 = v4[27];
  if (accountNumber && v36)
  {
    if (([(NSString *)accountNumber isEqual:?]& 1) == 0)
    {
      goto LABEL_120;
    }
  }

  else if (accountNumber != v36)
  {
    goto LABEL_120;
  }

  routingNumber = self->_routingNumber;
  v38 = v4[26];
  if (routingNumber && v38)
  {
    if (([(NSString *)routingNumber isEqual:?]& 1) == 0)
    {
      goto LABEL_120;
    }
  }

  else if (routingNumber != v38)
  {
    goto LABEL_120;
  }

  if (self->_riskLevel != v4[15])
  {
    goto LABEL_120;
  }

  dynamicFraudContent = self->_dynamicFraudContent;
  v40 = v4[16];
  if (dynamicFraudContent && v40)
  {
    if (![(PKPeerPaymentDynamicFraudContent *)dynamicFraudContent isEqual:?])
    {
      goto LABEL_120;
    }
  }

  else if (dynamicFraudContent != v40)
  {
    goto LABEL_120;
  }

  recurringPaymentIdentifier = self->_recurringPaymentIdentifier;
  v42 = v4[17];
  if (recurringPaymentIdentifier && v42)
  {
    if (([(NSString *)recurringPaymentIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_120;
    }
  }

  else if (recurringPaymentIdentifier != v42)
  {
    goto LABEL_120;
  }

  if (self->_frequency != v4[20])
  {
    goto LABEL_120;
  }

  threshold = self->_threshold;
  v44 = v4[21];
  if (threshold && v44)
  {
    if (([(NSDecimalNumber *)threshold isEqual:?]& 1) == 0)
    {
      goto LABEL_120;
    }
  }

  else if (threshold != v44)
  {
    goto LABEL_120;
  }

  startDate = self->_startDate;
  v46 = v4[18];
  if (startDate && v46)
  {
    if (([(NSDate *)startDate isEqual:?]& 1) == 0)
    {
      goto LABEL_120;
    }
  }

  else if (startDate != v46)
  {
    goto LABEL_120;
  }

  nextPaymentDate = self->_nextPaymentDate;
  v48 = v4[19];
  if (nextPaymentDate && v48)
  {
    if (([(NSDate *)nextPaymentDate isEqual:?]& 1) == 0)
    {
      goto LABEL_120;
    }
  }

  else if (nextPaymentDate != v48)
  {
    goto LABEL_120;
  }

  if (self->_isNewRecurringPayment != *(v4 + 8))
  {
    goto LABEL_120;
  }

  transactionIdentifier = self->_transactionIdentifier;
  v50 = v4[22];
  if (!transactionIdentifier || !v50)
  {
    if (transactionIdentifier == v50)
    {
      goto LABEL_118;
    }

LABEL_120:
    v51 = 0;
    goto LABEL_121;
  }

  if (([(NSString *)transactionIdentifier isEqual:?]& 1) == 0)
  {
    goto LABEL_120;
  }

LABEL_118:
  v51 = self->_destinationType == v4[24];
LABEL_121:

  return v51;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_items];
  [v3 safelyAddObject:self->_disclosureText];
  [v3 safelyAddObject:self->_disclosureURL];
  [v3 safelyAddObject:self->_currentBalance];
  [v3 safelyAddObject:self->_currentBalanceCurrency];
  [v3 safelyAddObject:self->_totalFees];
  [v3 safelyAddObject:self->_totalFeesCurrency];
  [v3 safelyAddObject:self->_totalReceiveAmount];
  [v3 safelyAddObject:self->_totalReceiveAmountCurrency];
  [v3 safelyAddObject:self->_appleHash];
  [v3 safelyAddObject:self->_externalHash];
  [v3 safelyAddObject:self->_validUntil];
  [v3 safelyAddObject:self->_recipient];
  [v3 safelyAddObject:self->_bankName];
  [v3 safelyAddObject:self->_accountNumber];
  [v3 safelyAddObject:self->_routingNumber];
  [v3 safelyAddObject:self->_dynamicFraudContent];
  [v3 safelyAddObject:self->_recurringPaymentIdentifier];
  [v3 safelyAddObject:self->_startDate];
  [v3 safelyAddObject:self->_nextPaymentDate];
  [v3 safelyAddObject:self->_threshold];
  [v3 safelyAddObject:self->_transactionIdentifier];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_riskLevel - v4 + 32 * v4;
  v6 = self->_frequency - v5 + 32 * v5;
  v7 = self->_isNewRecurringPayment - v6 + 32 * v6;
  v8 = self->_destinationType - v7 + 32 * v7;

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v3 appendFormat:@"items: '%@'; ", self->_items];
  [v3 appendFormat:@"disclosureText: '%@'; ", self->_disclosureText];
  v4 = [(NSURL *)self->_disclosureURL absoluteString];
  [v3 appendFormat:@"disclosureURL: '%@'; ", v4];

  [v3 appendFormat:@"currentBalance: '%@'; ", self->_currentBalance];
  [v3 appendFormat:@"currentBalanceCurrency: '%@'; ", self->_currentBalanceCurrency];
  [v3 appendFormat:@"totalFees: '%@'; ", self->_totalFees];
  [v3 appendFormat:@"totalFeesCurrency: '%@'; ", self->_totalFeesCurrency];
  [v3 appendFormat:@"totalReceiveAmount: '%@'; ", self->_totalReceiveAmount];
  [v3 appendFormat:@"totalReceiveAmountCurrency: '%@'; ", self->_totalReceiveAmountCurrency];
  [v3 appendFormat:@"appleHash: '%@'; ", self->_appleHash];
  [v3 appendFormat:@"externalHash: '%@'; ", self->_externalHash];
  [v3 appendFormat:@"validUntil: '%@'; ", self->_validUntil];
  [v3 appendFormat:@"recipient: '%@'; ", self->_recipient];
  [v3 appendFormat:@"hasBankName: %d; ", -[NSString length](self->_bankName, "length") != 0];
  [v3 appendFormat:@"hasRoutingNumber: %d; ", -[NSString length](self->_routingNumber, "length") != 0];
  [v3 appendFormat:@"hasAccountNumber: %d; ", -[NSString length](self->_accountNumber, "length") != 0];
  v5 = self->_riskLevel - 1;
  if (v5 > 2)
  {
    v6 = @"none";
  }

  else
  {
    v6 = off_1E79DAA10[v5];
  }

  [v3 appendFormat:@"riskLevel: %@; ", v6];
  [v3 appendFormat:@"preservesCurrentBalance: %d; ", -[PKPeerPaymentQuote preservesCurrentBalance](self, "preservesCurrentBalance")];
  v7 = [(PKPeerPaymentDynamicFraudContent *)self->_dynamicFraudContent description];
  [v3 appendFormat:@"dynamicFraudContent: %@; ", v7];

  [v3 appendFormat:@"isRecurringPayment: %d; ", -[PKPeerPaymentQuote isRecurringPayment](self, "isRecurringPayment")];
  [v3 appendFormat:@"recurringPaymentIdentifier: %@; ", self->_recurringPaymentIdentifier];
  v8 = PKPeerPaymentRecurringPaymentFrequencyToString(self->_frequency);
  [v3 appendFormat:@"frequency: %@; ", v8];

  [v3 appendFormat:@"startDate: %@; ", self->_startDate];
  [v3 appendFormat:@"nextPaymentDate: %@; ", self->_nextPaymentDate];
  [v3 appendFormat:@"threshold: %@; ", self->_threshold];
  [v3 appendFormat:@"isNewRecurringPayment: %d; ", self->_isNewRecurringPayment];
  [v3 appendFormat:@"transactionIdentifier: %@; ", self->_transactionIdentifier];
  v9 = PKPeerPaymentQuoteRequestDestinationTypeToString(self->_destinationType);
  [v3 appendFormat:@"destinationType: %@; ", v9];

  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)hasExpired
{
  validUntil = self->_validUntil;
  v3 = [MEMORY[0x1E695DF00] date];
  LOBYTE(validUntil) = [(NSDate *)validUntil compare:v3]== NSOrderedAscending;

  return validUntil;
}

- (id)firstQuoteItemOfType:(unint64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(PKPeerPaymentQuote *)self items];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 type] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)preservesCurrentBalance
{
  if (!self->_recipient && self->_destinationType != 5)
  {
    return 0;
  }

  v6 = [(PKPeerPaymentQuote *)self firstQuoteItemOfType:1, v3, v2, v4, v5];
  v7 = [v6 preservesCurrentBalance];

  return v7;
}

- (BOOL)hasRecipient
{
  destinationType = self->_destinationType;
  if (destinationType - 2 < 3 || destinationType == 0)
  {
    return 0;
  }

  if (destinationType == 1)
  {
    return self->_recipient != 0;
  }

  return 1;
}

- (PKCurrencyAmount)calculatedTotalAmount
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AB90] zero];
  v4 = [(NSArray *)self->_items firstObject];
  v5 = [v4 totalAmountCurrency];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_items;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v17 + 1) + 8 * i) totalAmount];
        if (v11)
        {
          v12 = [MEMORY[0x1E696AB90] zero];
          v13 = [v11 isEqualToNumber:v12];

          if ((v13 & 1) == 0)
          {
            v14 = [v3 decimalNumberByAdding:v11];

            v3 = v14;
          }
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [[PKCurrencyAmount alloc] initWithAmount:v3 currency:v5 exponent:0];

  return v15;
}

@end