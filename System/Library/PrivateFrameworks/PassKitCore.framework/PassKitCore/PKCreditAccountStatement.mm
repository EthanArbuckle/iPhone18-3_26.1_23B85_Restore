@interface PKCreditAccountStatement
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PKCreditAccountStatement)initWithCoder:(id)a3;
- (PKCreditAccountStatement)initWithDictionary:(id)a3;
- (PKCreditAccountStatement)initWithRecord:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (unint64_t)monthNumber;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithRecord:(id)a3;
@end

@implementation PKCreditAccountStatement

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_openingDate];
  [v3 safelyAddObject:self->_closingDate];
  [v3 safelyAddObject:self->_paymentDueDate];
  [v3 safelyAddObject:self->_currencyCode];
  [v3 safelyAddObject:self->_statementBalance];
  [v3 safelyAddObject:self->_totalBalance];
  [v3 safelyAddObject:self->_minimumDue];
  [v3 safelyAddObject:self->_purchases];
  [v3 safelyAddObject:self->_feesCharged];
  [v3 safelyAddObject:self->_interestCharged];
  [v3 safelyAddObject:self->_balanceTransfers];
  [v3 safelyAddObject:self->_paymentsAndCredits];
  [v3 safelyAddObject:self->_payments];
  [v3 safelyAddObject:self->_credits];
  [v3 safelyAddObject:self->_rewardsBalance];
  [v3 safelyAddObject:self->_rewardsEarned];
  [v3 safelyAddObject:self->_rewardsRedeemed];
  [v3 safelyAddObject:self->_rewardsYTD];
  [v3 safelyAddObject:self->_rewardsLifetime];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (PKCreditAccountStatement)initWithDictionary:(id)a3
{
  v4 = a3;
  v47.receiver = self;
  v47.super_class = PKCreditAccountStatement;
  v5 = [(PKCreditAccountStatement *)&v47 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 PKDateForKey:@"openingDate"];
    openingDate = v5->_openingDate;
    v5->_openingDate = v8;

    v10 = [v4 PKDateForKey:@"closingDate"];
    closingDate = v5->_closingDate;
    v5->_closingDate = v10;

    v12 = [v4 PKDateForKey:@"paymentDueDate"];
    paymentDueDate = v5->_paymentDueDate;
    v5->_paymentDueDate = v12;

    v14 = [v4 PKStringForKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v14;

    v16 = [v4 PKDecimalNumberFromStringForKey:@"statementBalance"];
    statementBalance = v5->_statementBalance;
    v5->_statementBalance = v16;

    v18 = [v4 PKDecimalNumberFromStringForKey:@"totalBalance"];
    totalBalance = v5->_totalBalance;
    v5->_totalBalance = v18;

    v20 = [v4 PKDecimalNumberFromStringForKey:@"minimumDue"];
    minimumDue = v5->_minimumDue;
    v5->_minimumDue = v20;

    v22 = [v4 PKDecimalNumberFromStringForKey:@"purchases"];
    purchases = v5->_purchases;
    v5->_purchases = v22;

    v24 = [v4 PKDecimalNumberFromStringForKey:@"feesCharged"];
    feesCharged = v5->_feesCharged;
    v5->_feesCharged = v24;

    v26 = [v4 PKDecimalNumberFromStringForKey:@"interestCharged"];
    interestCharged = v5->_interestCharged;
    v5->_interestCharged = v26;

    v28 = [v4 PKDecimalNumberFromStringForKey:@"balanceTransfers"];
    balanceTransfers = v5->_balanceTransfers;
    v5->_balanceTransfers = v28;

    v30 = [v4 PKDecimalNumberFromStringForKey:@"paymentsAndCredits"];
    paymentsAndCredits = v5->_paymentsAndCredits;
    v5->_paymentsAndCredits = v30;

    v32 = [v4 PKDecimalNumberFromStringForKey:@"payments"];
    payments = v5->_payments;
    v5->_payments = v32;

    v34 = [v4 PKDecimalNumberFromStringForKey:@"credits"];
    credits = v5->_credits;
    v5->_credits = v34;

    v36 = [v4 PKDecimalNumberFromStringForKey:@"rewardsBalance"];
    rewardsBalance = v5->_rewardsBalance;
    v5->_rewardsBalance = v36;

    v38 = [v4 PKDecimalNumberFromStringForKey:@"rewardsEarned"];
    rewardsEarned = v5->_rewardsEarned;
    v5->_rewardsEarned = v38;

    v40 = [v4 PKDecimalNumberFromStringForKey:@"rewardsRedeemed"];
    rewardsRedeemed = v5->_rewardsRedeemed;
    v5->_rewardsRedeemed = v40;

    v42 = [v4 PKDecimalNumberFromStringForKey:@"rewardsYTD"];
    rewardsYTD = v5->_rewardsYTD;
    v5->_rewardsYTD = v42;

    v44 = [v4 PKDecimalNumberFromStringForKey:@"rewardsLifetime"];
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
  v9 = [v8 month];

  return v9;
}

- (PKCreditAccountStatement)initWithCoder:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = PKCreditAccountStatement;
  v5 = [(PKCreditAccountStatement *)&v49 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"openingDate"];
    openingDate = v5->_openingDate;
    v5->_openingDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"closingDate"];
    closingDate = v5->_closingDate;
    v5->_closingDate = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentDueDate"];
    paymentDueDate = v5->_paymentDueDate;
    v5->_paymentDueDate = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statementBalance"];
    statementBalance = v5->_statementBalance;
    v5->_statementBalance = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalBalance"];
    totalBalance = v5->_totalBalance;
    v5->_totalBalance = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minimumDue"];
    minimumDue = v5->_minimumDue;
    v5->_minimumDue = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"purchases"];
    purchases = v5->_purchases;
    v5->_purchases = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"feesCharged"];
    feesCharged = v5->_feesCharged;
    v5->_feesCharged = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interestCharged"];
    interestCharged = v5->_interestCharged;
    v5->_interestCharged = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"balanceTransfers"];
    balanceTransfers = v5->_balanceTransfers;
    v5->_balanceTransfers = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentsAndCredits"];
    paymentsAndCredits = v5->_paymentsAndCredits;
    v5->_paymentsAndCredits = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payments"];
    payments = v5->_payments;
    v5->_payments = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credits"];
    credits = v5->_credits;
    v5->_credits = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rewardsBalance"];
    rewardsBalance = v5->_rewardsBalance;
    v5->_rewardsBalance = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rewardsEarned"];
    rewardsEarned = v5->_rewardsEarned;
    v5->_rewardsEarned = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rewardsRedeemed"];
    rewardsRedeemed = v5->_rewardsRedeemed;
    v5->_rewardsRedeemed = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rewardsYTD"];
    rewardsYTD = v5->_rewardsYTD;
    v5->_rewardsYTD = v44;

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rewardsLifetime"];
    rewardsLifetime = v5->_rewardsLifetime;
    v5->_rewardsLifetime = v46;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  [v5 encodeObject:self->_openingDate forKey:@"openingDate"];
  [v5 encodeObject:self->_closingDate forKey:@"closingDate"];
  [v5 encodeObject:self->_paymentDueDate forKey:@"paymentDueDate"];
  [v5 encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [v5 encodeObject:self->_statementBalance forKey:@"statementBalance"];
  [v5 encodeObject:self->_totalBalance forKey:@"totalBalance"];
  [v5 encodeObject:self->_minimumDue forKey:@"minimumDue"];
  [v5 encodeObject:self->_purchases forKey:@"purchases"];
  [v5 encodeObject:self->_feesCharged forKey:@"feesCharged"];
  [v5 encodeObject:self->_interestCharged forKey:@"interestCharged"];
  [v5 encodeObject:self->_balanceTransfers forKey:@"balanceTransfers"];
  [v5 encodeObject:self->_paymentsAndCredits forKey:@"paymentsAndCredits"];
  [v5 encodeObject:self->_payments forKey:@"payments"];
  [v5 encodeObject:self->_credits forKey:@"credits"];
  [v5 encodeObject:self->_rewardsBalance forKey:@"rewardsBalance"];
  [v5 encodeObject:self->_rewardsEarned forKey:@"rewardsEarned"];
  [v5 encodeObject:self->_rewardsRedeemed forKey:@"rewardsRedeemed"];
  [v5 encodeObject:self->_rewardsYTD forKey:@"rewardsYTD"];
  [v5 encodeObject:self->_rewardsLifetime forKey:@"rewardsLifetime"];
}

- (PKCreditAccountStatement)initWithRecord:(id)a3
{
  v4 = a3;
  v47.receiver = self;
  v47.super_class = PKCreditAccountStatement;
  v5 = [(PKCreditAccountStatement *)&v47 init];
  if (v5)
  {
    v6 = [v4 pk_encryptedStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 pk_encryptedDateForKey:@"openingDate"];
    openingDate = v5->_openingDate;
    v5->_openingDate = v8;

    v10 = [v4 pk_encryptedDateForKey:@"closingDate"];
    closingDate = v5->_closingDate;
    v5->_closingDate = v10;

    v12 = [v4 pk_encryptedDateForKey:@"paymentDueDate"];
    paymentDueDate = v5->_paymentDueDate;
    v5->_paymentDueDate = v12;

    v14 = [v4 pk_encryptedStringForKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v14;

    v16 = [v4 pk_encryptedDecimalNumberForKey:@"statementBalance"];
    statementBalance = v5->_statementBalance;
    v5->_statementBalance = v16;

    v18 = [v4 pk_encryptedDecimalNumberForKey:@"totalBalance"];
    totalBalance = v5->_totalBalance;
    v5->_totalBalance = v18;

    v20 = [v4 pk_encryptedDecimalNumberForKey:@"minimumDue"];
    minimumDue = v5->_minimumDue;
    v5->_minimumDue = v20;

    v22 = [v4 pk_encryptedDecimalNumberForKey:@"rewardsBalance"];
    rewardsBalance = v5->_rewardsBalance;
    v5->_rewardsBalance = v22;

    v24 = [v4 pk_encryptedDecimalNumberForKey:@"rewardsEarned"];
    rewardsEarned = v5->_rewardsEarned;
    v5->_rewardsEarned = v24;

    v26 = [v4 pk_encryptedDecimalNumberForKey:@"rewardsRedeemed"];
    rewardsRedeemed = v5->_rewardsRedeemed;
    v5->_rewardsRedeemed = v26;

    v28 = [v4 pk_encryptedDecimalNumberForKey:@"rewardsYTD"];
    rewardsYTD = v5->_rewardsYTD;
    v5->_rewardsYTD = v28;

    v30 = [v4 pk_encryptedDecimalNumberForKey:@"rewardsLifetime"];
    rewardsLifetime = v5->_rewardsLifetime;
    v5->_rewardsLifetime = v30;

    v32 = [v4 pk_encryptedDecimalNumberForKey:@"purchases"];
    purchases = v5->_purchases;
    v5->_purchases = v32;

    v34 = [v4 pk_encryptedDecimalNumberForKey:@"feesCharged"];
    feesCharged = v5->_feesCharged;
    v5->_feesCharged = v34;

    v36 = [v4 pk_encryptedDecimalNumberForKey:@"interestCharged"];
    interestCharged = v5->_interestCharged;
    v5->_interestCharged = v36;

    v38 = [v4 pk_encryptedDecimalNumberForKey:@"balanceTransfers"];
    balanceTransfers = v5->_balanceTransfers;
    v5->_balanceTransfers = v38;

    v40 = [v4 pk_encryptedDecimalNumberForKey:@"paymentsAndCredits"];
    paymentsAndCredits = v5->_paymentsAndCredits;
    v5->_paymentsAndCredits = v40;

    v42 = [v4 pk_encryptedDecimalNumberForKey:@"payments"];
    payments = v5->_payments;
    v5->_payments = v42;

    v44 = [v4 pk_encryptedDecimalNumberForKey:@"credits"];
    credits = v5->_credits;
    v5->_credits = v44;
  }

  return v5;
}

- (void)encodeWithRecord:(id)a3
{
  v19 = [a3 encryptedValues];
  [v19 setObject:self->_identifier forKey:@"identifier"];
  [v19 setObject:self->_openingDate forKey:@"openingDate"];
  [v19 setObject:self->_closingDate forKey:@"closingDate"];
  [v19 setObject:self->_paymentDueDate forKey:@"paymentDueDate"];
  [v19 setObject:self->_currencyCode forKey:@"currencyCode"];
  v4 = [(NSDecimalNumber *)self->_statementBalance stringValue];
  [v19 setObject:v4 forKey:@"statementBalance"];

  v5 = [(NSDecimalNumber *)self->_totalBalance stringValue];
  [v19 setObject:v5 forKey:@"totalBalance"];

  v6 = [(NSDecimalNumber *)self->_minimumDue stringValue];
  [v19 setObject:v6 forKey:@"minimumDue"];

  v7 = [(NSDecimalNumber *)self->_rewardsBalance stringValue];
  [v19 setObject:v7 forKey:@"rewardsBalance"];

  v8 = [(NSDecimalNumber *)self->_rewardsEarned stringValue];
  [v19 setObject:v8 forKey:@"rewardsEarned"];

  v9 = [(NSDecimalNumber *)self->_rewardsRedeemed stringValue];
  [v19 setObject:v9 forKey:@"rewardsRedeemed"];

  v10 = [(NSDecimalNumber *)self->_rewardsYTD stringValue];
  [v19 setObject:v10 forKey:@"rewardsYTD"];

  v11 = [(NSDecimalNumber *)self->_rewardsLifetime stringValue];
  [v19 setObject:v11 forKey:@"rewardsLifetime"];

  v12 = [(NSDecimalNumber *)self->_purchases stringValue];
  [v19 setObject:v12 forKey:@"purchases"];

  v13 = [(NSDecimalNumber *)self->_feesCharged stringValue];
  [v19 setObject:v13 forKey:@"feesCharged"];

  v14 = [(NSDecimalNumber *)self->_interestCharged stringValue];
  [v19 setObject:v14 forKey:@"interestCharged"];

  v15 = [(NSDecimalNumber *)self->_balanceTransfers stringValue];
  [v19 setObject:v15 forKey:@"balanceTransfers"];

  v16 = [(NSDecimalNumber *)self->_paymentsAndCredits stringValue];
  [v19 setObject:v16 forKey:@"paymentsAndCredits"];

  v17 = [(NSDecimalNumber *)self->_payments stringValue];
  [v19 setObject:v17 forKey:@"payments"];

  v18 = [(NSDecimalNumber *)self->_credits stringValue];
  [v19 setObject:v18 forKey:@"credits"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_99;
  }

  identifier = self->_identifier;
  v6 = v4[1];
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
  v8 = v4[3];
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
  v10 = v4[4];
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
  v12 = v4[5];
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
  v14 = v4[6];
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
  v16 = v4[7];
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
  v18 = v4[8];
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
  v20 = v4[9];
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
  v22 = v4[10];
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
  v24 = v4[11];
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
  v26 = v4[12];
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
  v28 = v4[13];
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
  v30 = v4[14];
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
  v32 = v4[15];
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
  v34 = v4[16];
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
  v36 = v4[17];
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
  v38 = v4[18];
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
  v40 = v4[19];
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
  v42 = v4[20];
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
  v44 = v4[21];
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
  v7 = [(NSDecimalNumber *)self->_statementBalance stringValue];
  [v3 appendFormat:@"statementBalance: '%@'; ", v7];

  v8 = [(NSDecimalNumber *)self->_totalBalance stringValue];
  [v3 appendFormat:@"totalBalance: '%@'; ", v8];

  v9 = [(NSDecimalNumber *)self->_minimumDue stringValue];
  [v3 appendFormat:@"minimumDue: '%@'; ", v9];

  v10 = [(NSDecimalNumber *)self->_purchases stringValue];
  [v3 appendFormat:@"purchases: '%@'; ", v10];

  v11 = [(NSDecimalNumber *)self->_feesCharged stringValue];
  [v3 appendFormat:@"feesCharged: '%@'; ", v11];

  v12 = [(NSDecimalNumber *)self->_interestCharged stringValue];
  [v3 appendFormat:@"interestCharged: '%@'; ", v12];

  v13 = [(NSDecimalNumber *)self->_balanceTransfers stringValue];
  [v3 appendFormat:@"balanceTransfers: '%@'; ", v13];

  v14 = [(NSDecimalNumber *)self->_paymentsAndCredits stringValue];
  [v3 appendFormat:@"paymentsAndCredits: '%@'; ", v14];

  v15 = [(NSDecimalNumber *)self->_payments stringValue];
  [v3 appendFormat:@"payments: '%@'; ", v15];

  v16 = [(NSDecimalNumber *)self->_credits stringValue];
  [v3 appendFormat:@"credits: '%@'; ", v16];

  v17 = [(NSDecimalNumber *)self->_rewardsBalance stringValue];
  [v3 appendFormat:@"rewardsBalance: '%@'; ", v17];

  v18 = [(NSDecimalNumber *)self->_rewardsEarned stringValue];
  [v3 appendFormat:@"rewardsEarned: '%@'; ", v18];

  v19 = [(NSDecimalNumber *)self->_rewardsRedeemed stringValue];
  [v3 appendFormat:@"rewardsRedeemed: '%@'; ", v19];

  v20 = [(NSDecimalNumber *)self->_rewardsYTD stringValue];
  [v3 appendFormat:@"rewardsYTD: '%@'; ", v20];

  v21 = [(NSDecimalNumber *)self->_rewardsLifetime stringValue];
  [v3 appendFormat:@"rewardsLifetime: '%@'; ", v21];

  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKCreditAccountStatement allocWithZone:](PKCreditAccountStatement init];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [(NSString *)self->_accountIdentifier copyWithZone:a3];
  accountIdentifier = v5->_accountIdentifier;
  v5->_accountIdentifier = v8;

  v10 = [(NSDate *)self->_openingDate copyWithZone:a3];
  openingDate = v5->_openingDate;
  v5->_openingDate = v10;

  v12 = [(NSDate *)self->_closingDate copyWithZone:a3];
  closingDate = v5->_closingDate;
  v5->_closingDate = v12;

  v14 = [(NSDate *)self->_paymentDueDate copyWithZone:a3];
  paymentDueDate = v5->_paymentDueDate;
  v5->_paymentDueDate = v14;

  v16 = [(NSString *)self->_currencyCode copyWithZone:a3];
  currencyCode = v5->_currencyCode;
  v5->_currencyCode = v16;

  v18 = [(NSDecimalNumber *)self->_statementBalance copyWithZone:a3];
  statementBalance = v5->_statementBalance;
  v5->_statementBalance = v18;

  v20 = [(NSDecimalNumber *)self->_totalBalance copyWithZone:a3];
  totalBalance = v5->_totalBalance;
  v5->_totalBalance = v20;

  v22 = [(NSDecimalNumber *)self->_minimumDue copyWithZone:a3];
  minimumDue = v5->_minimumDue;
  v5->_minimumDue = v22;

  v24 = [(NSDecimalNumber *)self->_purchases copyWithZone:a3];
  purchases = v5->_purchases;
  v5->_purchases = v24;

  v26 = [(NSDecimalNumber *)self->_feesCharged copyWithZone:a3];
  feesCharged = v5->_feesCharged;
  v5->_feesCharged = v26;

  v28 = [(NSDecimalNumber *)self->_interestCharged copyWithZone:a3];
  interestCharged = v5->_interestCharged;
  v5->_interestCharged = v28;

  v30 = [(NSDecimalNumber *)self->_balanceTransfers copyWithZone:a3];
  balanceTransfers = v5->_balanceTransfers;
  v5->_balanceTransfers = v30;

  v32 = [(NSDecimalNumber *)self->_paymentsAndCredits copyWithZone:a3];
  paymentsAndCredits = v5->_paymentsAndCredits;
  v5->_paymentsAndCredits = v32;

  v34 = [(NSDecimalNumber *)self->_payments copyWithZone:a3];
  payments = v5->_payments;
  v5->_payments = v34;

  v36 = [(NSDecimalNumber *)self->_credits copyWithZone:a3];
  credits = v5->_credits;
  v5->_credits = v36;

  v38 = [(NSDecimalNumber *)self->_rewardsBalance copyWithZone:a3];
  rewardsBalance = v5->_rewardsBalance;
  v5->_rewardsBalance = v38;

  v40 = [(NSDecimalNumber *)self->_rewardsEarned copyWithZone:a3];
  rewardsEarned = v5->_rewardsEarned;
  v5->_rewardsEarned = v40;

  v42 = [(NSDecimalNumber *)self->_rewardsRedeemed copyWithZone:a3];
  rewardsRedeemed = v5->_rewardsRedeemed;
  v5->_rewardsRedeemed = v42;

  v44 = [(NSDecimalNumber *)self->_rewardsYTD copyWithZone:a3];
  rewardsYTD = v5->_rewardsYTD;
  v5->_rewardsYTD = v44;

  v46 = [(NSDecimalNumber *)self->_rewardsLifetime copyWithZone:a3];
  rewardsLifetime = v5->_rewardsLifetime;
  v5->_rewardsLifetime = v46;

  return v5;
}

@end