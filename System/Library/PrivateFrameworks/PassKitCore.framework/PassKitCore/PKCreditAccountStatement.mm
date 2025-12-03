@interface PKCreditAccountStatement
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PKCreditAccountStatement)initWithCoder:(id)coder;
- (PKCreditAccountStatement)initWithDictionary:(id)dictionary;
- (PKCreditAccountStatement)initWithRecord:(id)record;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (unint64_t)monthNumber;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithRecord:(id)record;
@end

@implementation PKCreditAccountStatement

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_openingDate];
  [array safelyAddObject:self->_closingDate];
  [array safelyAddObject:self->_paymentDueDate];
  [array safelyAddObject:self->_currencyCode];
  [array safelyAddObject:self->_statementBalance];
  [array safelyAddObject:self->_totalBalance];
  [array safelyAddObject:self->_minimumDue];
  [array safelyAddObject:self->_purchases];
  [array safelyAddObject:self->_feesCharged];
  [array safelyAddObject:self->_interestCharged];
  [array safelyAddObject:self->_balanceTransfers];
  [array safelyAddObject:self->_paymentsAndCredits];
  [array safelyAddObject:self->_payments];
  [array safelyAddObject:self->_credits];
  [array safelyAddObject:self->_rewardsBalance];
  [array safelyAddObject:self->_rewardsEarned];
  [array safelyAddObject:self->_rewardsRedeemed];
  [array safelyAddObject:self->_rewardsYTD];
  [array safelyAddObject:self->_rewardsLifetime];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (PKCreditAccountStatement)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v47.receiver = self;
  v47.super_class = PKCreditAccountStatement;
  v5 = [(PKCreditAccountStatement *)&v47 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [dictionaryCopy PKDateForKey:@"openingDate"];
    openingDate = v5->_openingDate;
    v5->_openingDate = v8;

    v10 = [dictionaryCopy PKDateForKey:@"closingDate"];
    closingDate = v5->_closingDate;
    v5->_closingDate = v10;

    v12 = [dictionaryCopy PKDateForKey:@"paymentDueDate"];
    paymentDueDate = v5->_paymentDueDate;
    v5->_paymentDueDate = v12;

    v14 = [dictionaryCopy PKStringForKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v14;

    v16 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"statementBalance"];
    statementBalance = v5->_statementBalance;
    v5->_statementBalance = v16;

    v18 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"totalBalance"];
    totalBalance = v5->_totalBalance;
    v5->_totalBalance = v18;

    v20 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"minimumDue"];
    minimumDue = v5->_minimumDue;
    v5->_minimumDue = v20;

    v22 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"purchases"];
    purchases = v5->_purchases;
    v5->_purchases = v22;

    v24 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"feesCharged"];
    feesCharged = v5->_feesCharged;
    v5->_feesCharged = v24;

    v26 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"interestCharged"];
    interestCharged = v5->_interestCharged;
    v5->_interestCharged = v26;

    v28 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"balanceTransfers"];
    balanceTransfers = v5->_balanceTransfers;
    v5->_balanceTransfers = v28;

    v30 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"paymentsAndCredits"];
    paymentsAndCredits = v5->_paymentsAndCredits;
    v5->_paymentsAndCredits = v30;

    v32 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"payments"];
    payments = v5->_payments;
    v5->_payments = v32;

    v34 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"credits"];
    credits = v5->_credits;
    v5->_credits = v34;

    v36 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"rewardsBalance"];
    rewardsBalance = v5->_rewardsBalance;
    v5->_rewardsBalance = v36;

    v38 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"rewardsEarned"];
    rewardsEarned = v5->_rewardsEarned;
    v5->_rewardsEarned = v38;

    v40 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"rewardsRedeemed"];
    rewardsRedeemed = v5->_rewardsRedeemed;
    v5->_rewardsRedeemed = v40;

    v42 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"rewardsYTD"];
    rewardsYTD = v5->_rewardsYTD;
    v5->_rewardsYTD = v42;

    v44 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"rewardsLifetime"];
    rewardsLifetime = v5->_rewardsLifetime;
    v5->_rewardsLifetime = v44;
  }

  return v5;
}

- (unint64_t)monthNumber
{
  [(NSDate *)self->_closingDate timeIntervalSinceDate:self->_openingDate];
  v4 = [MEMORY[0x1E695DF00] dateWithTimeInterval:self->_openingDate sinceDate:v3 * 0.5];
  v5 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v6 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v7 = [v6 dateByAddingComponents:v5 toDate:v4 options:0];
  v8 = [v6 components:8 fromDate:v7];
  month = [v8 month];

  return month;
}

- (PKCreditAccountStatement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v49.receiver = self;
  v49.super_class = PKCreditAccountStatement;
  v5 = [(PKCreditAccountStatement *)&v49 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"openingDate"];
    openingDate = v5->_openingDate;
    v5->_openingDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"closingDate"];
    closingDate = v5->_closingDate;
    v5->_closingDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentDueDate"];
    paymentDueDate = v5->_paymentDueDate;
    v5->_paymentDueDate = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statementBalance"];
    statementBalance = v5->_statementBalance;
    v5->_statementBalance = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalBalance"];
    totalBalance = v5->_totalBalance;
    v5->_totalBalance = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minimumDue"];
    minimumDue = v5->_minimumDue;
    v5->_minimumDue = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"purchases"];
    purchases = v5->_purchases;
    v5->_purchases = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"feesCharged"];
    feesCharged = v5->_feesCharged;
    v5->_feesCharged = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interestCharged"];
    interestCharged = v5->_interestCharged;
    v5->_interestCharged = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"balanceTransfers"];
    balanceTransfers = v5->_balanceTransfers;
    v5->_balanceTransfers = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentsAndCredits"];
    paymentsAndCredits = v5->_paymentsAndCredits;
    v5->_paymentsAndCredits = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payments"];
    payments = v5->_payments;
    v5->_payments = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credits"];
    credits = v5->_credits;
    v5->_credits = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rewardsBalance"];
    rewardsBalance = v5->_rewardsBalance;
    v5->_rewardsBalance = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rewardsEarned"];
    rewardsEarned = v5->_rewardsEarned;
    v5->_rewardsEarned = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rewardsRedeemed"];
    rewardsRedeemed = v5->_rewardsRedeemed;
    v5->_rewardsRedeemed = v42;

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rewardsYTD"];
    rewardsYTD = v5->_rewardsYTD;
    v5->_rewardsYTD = v44;

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rewardsLifetime"];
    rewardsLifetime = v5->_rewardsLifetime;
    v5->_rewardsLifetime = v46;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  [coderCopy encodeObject:self->_openingDate forKey:@"openingDate"];
  [coderCopy encodeObject:self->_closingDate forKey:@"closingDate"];
  [coderCopy encodeObject:self->_paymentDueDate forKey:@"paymentDueDate"];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [coderCopy encodeObject:self->_statementBalance forKey:@"statementBalance"];
  [coderCopy encodeObject:self->_totalBalance forKey:@"totalBalance"];
  [coderCopy encodeObject:self->_minimumDue forKey:@"minimumDue"];
  [coderCopy encodeObject:self->_purchases forKey:@"purchases"];
  [coderCopy encodeObject:self->_feesCharged forKey:@"feesCharged"];
  [coderCopy encodeObject:self->_interestCharged forKey:@"interestCharged"];
  [coderCopy encodeObject:self->_balanceTransfers forKey:@"balanceTransfers"];
  [coderCopy encodeObject:self->_paymentsAndCredits forKey:@"paymentsAndCredits"];
  [coderCopy encodeObject:self->_payments forKey:@"payments"];
  [coderCopy encodeObject:self->_credits forKey:@"credits"];
  [coderCopy encodeObject:self->_rewardsBalance forKey:@"rewardsBalance"];
  [coderCopy encodeObject:self->_rewardsEarned forKey:@"rewardsEarned"];
  [coderCopy encodeObject:self->_rewardsRedeemed forKey:@"rewardsRedeemed"];
  [coderCopy encodeObject:self->_rewardsYTD forKey:@"rewardsYTD"];
  [coderCopy encodeObject:self->_rewardsLifetime forKey:@"rewardsLifetime"];
}

- (PKCreditAccountStatement)initWithRecord:(id)record
{
  recordCopy = record;
  v47.receiver = self;
  v47.super_class = PKCreditAccountStatement;
  v5 = [(PKCreditAccountStatement *)&v47 init];
  if (v5)
  {
    v6 = [recordCopy pk_encryptedStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [recordCopy pk_encryptedDateForKey:@"openingDate"];
    openingDate = v5->_openingDate;
    v5->_openingDate = v8;

    v10 = [recordCopy pk_encryptedDateForKey:@"closingDate"];
    closingDate = v5->_closingDate;
    v5->_closingDate = v10;

    v12 = [recordCopy pk_encryptedDateForKey:@"paymentDueDate"];
    paymentDueDate = v5->_paymentDueDate;
    v5->_paymentDueDate = v12;

    v14 = [recordCopy pk_encryptedStringForKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v14;

    v16 = [recordCopy pk_encryptedDecimalNumberForKey:@"statementBalance"];
    statementBalance = v5->_statementBalance;
    v5->_statementBalance = v16;

    v18 = [recordCopy pk_encryptedDecimalNumberForKey:@"totalBalance"];
    totalBalance = v5->_totalBalance;
    v5->_totalBalance = v18;

    v20 = [recordCopy pk_encryptedDecimalNumberForKey:@"minimumDue"];
    minimumDue = v5->_minimumDue;
    v5->_minimumDue = v20;

    v22 = [recordCopy pk_encryptedDecimalNumberForKey:@"rewardsBalance"];
    rewardsBalance = v5->_rewardsBalance;
    v5->_rewardsBalance = v22;

    v24 = [recordCopy pk_encryptedDecimalNumberForKey:@"rewardsEarned"];
    rewardsEarned = v5->_rewardsEarned;
    v5->_rewardsEarned = v24;

    v26 = [recordCopy pk_encryptedDecimalNumberForKey:@"rewardsRedeemed"];
    rewardsRedeemed = v5->_rewardsRedeemed;
    v5->_rewardsRedeemed = v26;

    v28 = [recordCopy pk_encryptedDecimalNumberForKey:@"rewardsYTD"];
    rewardsYTD = v5->_rewardsYTD;
    v5->_rewardsYTD = v28;

    v30 = [recordCopy pk_encryptedDecimalNumberForKey:@"rewardsLifetime"];
    rewardsLifetime = v5->_rewardsLifetime;
    v5->_rewardsLifetime = v30;

    v32 = [recordCopy pk_encryptedDecimalNumberForKey:@"purchases"];
    purchases = v5->_purchases;
    v5->_purchases = v32;

    v34 = [recordCopy pk_encryptedDecimalNumberForKey:@"feesCharged"];
    feesCharged = v5->_feesCharged;
    v5->_feesCharged = v34;

    v36 = [recordCopy pk_encryptedDecimalNumberForKey:@"interestCharged"];
    interestCharged = v5->_interestCharged;
    v5->_interestCharged = v36;

    v38 = [recordCopy pk_encryptedDecimalNumberForKey:@"balanceTransfers"];
    balanceTransfers = v5->_balanceTransfers;
    v5->_balanceTransfers = v38;

    v40 = [recordCopy pk_encryptedDecimalNumberForKey:@"paymentsAndCredits"];
    paymentsAndCredits = v5->_paymentsAndCredits;
    v5->_paymentsAndCredits = v40;

    v42 = [recordCopy pk_encryptedDecimalNumberForKey:@"payments"];
    payments = v5->_payments;
    v5->_payments = v42;

    v44 = [recordCopy pk_encryptedDecimalNumberForKey:@"credits"];
    credits = v5->_credits;
    v5->_credits = v44;
  }

  return v5;
}

- (void)encodeWithRecord:(id)record
{
  encryptedValues = [record encryptedValues];
  [encryptedValues setObject:self->_identifier forKey:@"identifier"];
  [encryptedValues setObject:self->_openingDate forKey:@"openingDate"];
  [encryptedValues setObject:self->_closingDate forKey:@"closingDate"];
  [encryptedValues setObject:self->_paymentDueDate forKey:@"paymentDueDate"];
  [encryptedValues setObject:self->_currencyCode forKey:@"currencyCode"];
  stringValue = [(NSDecimalNumber *)self->_statementBalance stringValue];
  [encryptedValues setObject:stringValue forKey:@"statementBalance"];

  stringValue2 = [(NSDecimalNumber *)self->_totalBalance stringValue];
  [encryptedValues setObject:stringValue2 forKey:@"totalBalance"];

  stringValue3 = [(NSDecimalNumber *)self->_minimumDue stringValue];
  [encryptedValues setObject:stringValue3 forKey:@"minimumDue"];

  stringValue4 = [(NSDecimalNumber *)self->_rewardsBalance stringValue];
  [encryptedValues setObject:stringValue4 forKey:@"rewardsBalance"];

  stringValue5 = [(NSDecimalNumber *)self->_rewardsEarned stringValue];
  [encryptedValues setObject:stringValue5 forKey:@"rewardsEarned"];

  stringValue6 = [(NSDecimalNumber *)self->_rewardsRedeemed stringValue];
  [encryptedValues setObject:stringValue6 forKey:@"rewardsRedeemed"];

  stringValue7 = [(NSDecimalNumber *)self->_rewardsYTD stringValue];
  [encryptedValues setObject:stringValue7 forKey:@"rewardsYTD"];

  stringValue8 = [(NSDecimalNumber *)self->_rewardsLifetime stringValue];
  [encryptedValues setObject:stringValue8 forKey:@"rewardsLifetime"];

  stringValue9 = [(NSDecimalNumber *)self->_purchases stringValue];
  [encryptedValues setObject:stringValue9 forKey:@"purchases"];

  stringValue10 = [(NSDecimalNumber *)self->_feesCharged stringValue];
  [encryptedValues setObject:stringValue10 forKey:@"feesCharged"];

  stringValue11 = [(NSDecimalNumber *)self->_interestCharged stringValue];
  [encryptedValues setObject:stringValue11 forKey:@"interestCharged"];

  stringValue12 = [(NSDecimalNumber *)self->_balanceTransfers stringValue];
  [encryptedValues setObject:stringValue12 forKey:@"balanceTransfers"];

  stringValue13 = [(NSDecimalNumber *)self->_paymentsAndCredits stringValue];
  [encryptedValues setObject:stringValue13 forKey:@"paymentsAndCredits"];

  stringValue14 = [(NSDecimalNumber *)self->_payments stringValue];
  [encryptedValues setObject:stringValue14 forKey:@"payments"];

  stringValue15 = [(NSDecimalNumber *)self->_credits stringValue];
  [encryptedValues setObject:stringValue15 forKey:@"credits"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_99;
  }

  identifier = self->_identifier;
  v6 = equalCopy[1];
  if (identifier && v6)
  {
    if (([(NSString *)identifier isEqual:?]& 1) == 0)
    {
      goto LABEL_99;
    }
  }

  else if (identifier != v6)
  {
    goto LABEL_99;
  }

  openingDate = self->_openingDate;
  v8 = equalCopy[3];
  if (openingDate && v8)
  {
    if (([(NSDate *)openingDate isEqual:?]& 1) == 0)
    {
      goto LABEL_99;
    }
  }

  else if (openingDate != v8)
  {
    goto LABEL_99;
  }

  closingDate = self->_closingDate;
  v10 = equalCopy[4];
  if (closingDate && v10)
  {
    if (([(NSDate *)closingDate isEqual:?]& 1) == 0)
    {
      goto LABEL_99;
    }
  }

  else if (closingDate != v10)
  {
    goto LABEL_99;
  }

  paymentDueDate = self->_paymentDueDate;
  v12 = equalCopy[5];
  if (paymentDueDate && v12)
  {
    if (([(NSDate *)paymentDueDate isEqual:?]& 1) == 0)
    {
      goto LABEL_99;
    }
  }

  else if (paymentDueDate != v12)
  {
    goto LABEL_99;
  }

  currencyCode = self->_currencyCode;
  v14 = equalCopy[6];
  if (currencyCode && v14)
  {
    if (([(NSString *)currencyCode isEqual:?]& 1) == 0)
    {
      goto LABEL_99;
    }
  }

  else if (currencyCode != v14)
  {
    goto LABEL_99;
  }

  statementBalance = self->_statementBalance;
  v16 = equalCopy[7];
  if (statementBalance && v16)
  {
    if (([(NSDecimalNumber *)statementBalance isEqual:?]& 1) == 0)
    {
      goto LABEL_99;
    }
  }

  else if (statementBalance != v16)
  {
    goto LABEL_99;
  }

  totalBalance = self->_totalBalance;
  v18 = equalCopy[8];
  if (totalBalance && v18)
  {
    if (([(NSDecimalNumber *)totalBalance isEqual:?]& 1) == 0)
    {
      goto LABEL_99;
    }
  }

  else if (totalBalance != v18)
  {
    goto LABEL_99;
  }

  minimumDue = self->_minimumDue;
  v20 = equalCopy[9];
  if (minimumDue && v20)
  {
    if (([(NSDecimalNumber *)minimumDue isEqual:?]& 1) == 0)
    {
      goto LABEL_99;
    }
  }

  else if (minimumDue != v20)
  {
    goto LABEL_99;
  }

  purchases = self->_purchases;
  v22 = equalCopy[10];
  if (purchases && v22)
  {
    if (([(NSDecimalNumber *)purchases isEqual:?]& 1) == 0)
    {
      goto LABEL_99;
    }
  }

  else if (purchases != v22)
  {
    goto LABEL_99;
  }

  feesCharged = self->_feesCharged;
  v24 = equalCopy[11];
  if (feesCharged && v24)
  {
    if (([(NSDecimalNumber *)feesCharged isEqual:?]& 1) == 0)
    {
      goto LABEL_99;
    }
  }

  else if (feesCharged != v24)
  {
    goto LABEL_99;
  }

  interestCharged = self->_interestCharged;
  v26 = equalCopy[12];
  if (interestCharged && v26)
  {
    if (([(NSDecimalNumber *)interestCharged isEqual:?]& 1) == 0)
    {
      goto LABEL_99;
    }
  }

  else if (interestCharged != v26)
  {
    goto LABEL_99;
  }

  balanceTransfers = self->_balanceTransfers;
  v28 = equalCopy[13];
  if (balanceTransfers && v28)
  {
    if (([(NSDecimalNumber *)balanceTransfers isEqual:?]& 1) == 0)
    {
      goto LABEL_99;
    }
  }

  else if (balanceTransfers != v28)
  {
    goto LABEL_99;
  }

  paymentsAndCredits = self->_paymentsAndCredits;
  v30 = equalCopy[14];
  if (paymentsAndCredits && v30)
  {
    if (([(NSDecimalNumber *)paymentsAndCredits isEqual:?]& 1) == 0)
    {
      goto LABEL_99;
    }
  }

  else if (paymentsAndCredits != v30)
  {
    goto LABEL_99;
  }

  payments = self->_payments;
  v32 = equalCopy[15];
  if (payments && v32)
  {
    if (([(NSDecimalNumber *)payments isEqual:?]& 1) == 0)
    {
      goto LABEL_99;
    }
  }

  else if (payments != v32)
  {
    goto LABEL_99;
  }

  credits = self->_credits;
  v34 = equalCopy[16];
  if (credits && v34)
  {
    if (([(NSDecimalNumber *)credits isEqual:?]& 1) == 0)
    {
      goto LABEL_99;
    }
  }

  else if (credits != v34)
  {
    goto LABEL_99;
  }

  rewardsBalance = self->_rewardsBalance;
  v36 = equalCopy[17];
  if (rewardsBalance && v36)
  {
    if (([(NSDecimalNumber *)rewardsBalance isEqual:?]& 1) == 0)
    {
      goto LABEL_99;
    }
  }

  else if (rewardsBalance != v36)
  {
    goto LABEL_99;
  }

  rewardsEarned = self->_rewardsEarned;
  v38 = equalCopy[18];
  if (rewardsEarned && v38)
  {
    if (([(NSDecimalNumber *)rewardsEarned isEqual:?]& 1) == 0)
    {
      goto LABEL_99;
    }
  }

  else if (rewardsEarned != v38)
  {
    goto LABEL_99;
  }

  rewardsRedeemed = self->_rewardsRedeemed;
  v40 = equalCopy[19];
  if (rewardsRedeemed && v40)
  {
    if (([(NSDecimalNumber *)rewardsRedeemed isEqual:?]& 1) == 0)
    {
      goto LABEL_99;
    }
  }

  else if (rewardsRedeemed != v40)
  {
    goto LABEL_99;
  }

  rewardsYTD = self->_rewardsYTD;
  v42 = equalCopy[20];
  if (!rewardsYTD || !v42)
  {
    if (rewardsYTD == v42)
    {
      goto LABEL_95;
    }

LABEL_99:
    v45 = 0;
    goto LABEL_100;
  }

  if (([(NSDecimalNumber *)rewardsYTD isEqual:?]& 1) == 0)
  {
    goto LABEL_99;
  }

LABEL_95:
  rewardsLifetime = self->_rewardsLifetime;
  v44 = equalCopy[21];
  if (rewardsLifetime && v44)
  {
    v45 = [(NSDecimalNumber *)rewardsLifetime isEqual:?];
  }

  else
  {
    v45 = rewardsLifetime == v44;
  }

LABEL_100:

  return v45;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  v4 = [(NSDate *)self->_openingDate description];
  [v3 appendFormat:@"openingDate: '%@'; ", v4];

  v5 = [(NSDate *)self->_closingDate description];
  [v3 appendFormat:@"closingDate: '%@'; ", v5];

  v6 = [(NSDate *)self->_paymentDueDate description];
  [v3 appendFormat:@"paymentDueDate: '%@'; ", v6];

  [v3 appendFormat:@"currencyCode: '%@'; ", self->_currencyCode];
  stringValue = [(NSDecimalNumber *)self->_statementBalance stringValue];
  [v3 appendFormat:@"statementBalance: '%@'; ", stringValue];

  stringValue2 = [(NSDecimalNumber *)self->_totalBalance stringValue];
  [v3 appendFormat:@"totalBalance: '%@'; ", stringValue2];

  stringValue3 = [(NSDecimalNumber *)self->_minimumDue stringValue];
  [v3 appendFormat:@"minimumDue: '%@'; ", stringValue3];

  stringValue4 = [(NSDecimalNumber *)self->_purchases stringValue];
  [v3 appendFormat:@"purchases: '%@'; ", stringValue4];

  stringValue5 = [(NSDecimalNumber *)self->_feesCharged stringValue];
  [v3 appendFormat:@"feesCharged: '%@'; ", stringValue5];

  stringValue6 = [(NSDecimalNumber *)self->_interestCharged stringValue];
  [v3 appendFormat:@"interestCharged: '%@'; ", stringValue6];

  stringValue7 = [(NSDecimalNumber *)self->_balanceTransfers stringValue];
  [v3 appendFormat:@"balanceTransfers: '%@'; ", stringValue7];

  stringValue8 = [(NSDecimalNumber *)self->_paymentsAndCredits stringValue];
  [v3 appendFormat:@"paymentsAndCredits: '%@'; ", stringValue8];

  stringValue9 = [(NSDecimalNumber *)self->_payments stringValue];
  [v3 appendFormat:@"payments: '%@'; ", stringValue9];

  stringValue10 = [(NSDecimalNumber *)self->_credits stringValue];
  [v3 appendFormat:@"credits: '%@'; ", stringValue10];

  stringValue11 = [(NSDecimalNumber *)self->_rewardsBalance stringValue];
  [v3 appendFormat:@"rewardsBalance: '%@'; ", stringValue11];

  stringValue12 = [(NSDecimalNumber *)self->_rewardsEarned stringValue];
  [v3 appendFormat:@"rewardsEarned: '%@'; ", stringValue12];

  stringValue13 = [(NSDecimalNumber *)self->_rewardsRedeemed stringValue];
  [v3 appendFormat:@"rewardsRedeemed: '%@'; ", stringValue13];

  stringValue14 = [(NSDecimalNumber *)self->_rewardsYTD stringValue];
  [v3 appendFormat:@"rewardsYTD: '%@'; ", stringValue14];

  stringValue15 = [(NSDecimalNumber *)self->_rewardsLifetime stringValue];
  [v3 appendFormat:@"rewardsLifetime: '%@'; ", stringValue15];

  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKCreditAccountStatement allocWithZone:](PKCreditAccountStatement init];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [(NSString *)self->_accountIdentifier copyWithZone:zone];
  accountIdentifier = v5->_accountIdentifier;
  v5->_accountIdentifier = v8;

  v10 = [(NSDate *)self->_openingDate copyWithZone:zone];
  openingDate = v5->_openingDate;
  v5->_openingDate = v10;

  v12 = [(NSDate *)self->_closingDate copyWithZone:zone];
  closingDate = v5->_closingDate;
  v5->_closingDate = v12;

  v14 = [(NSDate *)self->_paymentDueDate copyWithZone:zone];
  paymentDueDate = v5->_paymentDueDate;
  v5->_paymentDueDate = v14;

  v16 = [(NSString *)self->_currencyCode copyWithZone:zone];
  currencyCode = v5->_currencyCode;
  v5->_currencyCode = v16;

  v18 = [(NSDecimalNumber *)self->_statementBalance copyWithZone:zone];
  statementBalance = v5->_statementBalance;
  v5->_statementBalance = v18;

  v20 = [(NSDecimalNumber *)self->_totalBalance copyWithZone:zone];
  totalBalance = v5->_totalBalance;
  v5->_totalBalance = v20;

  v22 = [(NSDecimalNumber *)self->_minimumDue copyWithZone:zone];
  minimumDue = v5->_minimumDue;
  v5->_minimumDue = v22;

  v24 = [(NSDecimalNumber *)self->_purchases copyWithZone:zone];
  purchases = v5->_purchases;
  v5->_purchases = v24;

  v26 = [(NSDecimalNumber *)self->_feesCharged copyWithZone:zone];
  feesCharged = v5->_feesCharged;
  v5->_feesCharged = v26;

  v28 = [(NSDecimalNumber *)self->_interestCharged copyWithZone:zone];
  interestCharged = v5->_interestCharged;
  v5->_interestCharged = v28;

  v30 = [(NSDecimalNumber *)self->_balanceTransfers copyWithZone:zone];
  balanceTransfers = v5->_balanceTransfers;
  v5->_balanceTransfers = v30;

  v32 = [(NSDecimalNumber *)self->_paymentsAndCredits copyWithZone:zone];
  paymentsAndCredits = v5->_paymentsAndCredits;
  v5->_paymentsAndCredits = v32;

  v34 = [(NSDecimalNumber *)self->_payments copyWithZone:zone];
  payments = v5->_payments;
  v5->_payments = v34;

  v36 = [(NSDecimalNumber *)self->_credits copyWithZone:zone];
  credits = v5->_credits;
  v5->_credits = v36;

  v38 = [(NSDecimalNumber *)self->_rewardsBalance copyWithZone:zone];
  rewardsBalance = v5->_rewardsBalance;
  v5->_rewardsBalance = v38;

  v40 = [(NSDecimalNumber *)self->_rewardsEarned copyWithZone:zone];
  rewardsEarned = v5->_rewardsEarned;
  v5->_rewardsEarned = v40;

  v42 = [(NSDecimalNumber *)self->_rewardsRedeemed copyWithZone:zone];
  rewardsRedeemed = v5->_rewardsRedeemed;
  v5->_rewardsRedeemed = v42;

  v44 = [(NSDecimalNumber *)self->_rewardsYTD copyWithZone:zone];
  rewardsYTD = v5->_rewardsYTD;
  v5->_rewardsYTD = v44;

  v46 = [(NSDecimalNumber *)self->_rewardsLifetime copyWithZone:zone];
  rewardsLifetime = v5->_rewardsLifetime;
  v5->_rewardsLifetime = v46;

  return v5;
}

@end