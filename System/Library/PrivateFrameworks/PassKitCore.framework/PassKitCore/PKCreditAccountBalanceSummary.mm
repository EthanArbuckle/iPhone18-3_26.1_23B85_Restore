@interface PKCreditAccountBalanceSummary
- (BOOL)isEqual:(id)a3;
- (PKCreditAccountBalanceSummary)initWithCoder:(id)a3;
- (PKCreditAccountBalanceSummary)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCreditAccountBalanceSummary

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_openingDate];
  [v3 safelyAddObject:self->_closingDate];
  [v3 safelyAddObject:self->_purchases];
  [v3 safelyAddObject:self->_pendingPurchases];
  [v3 safelyAddObject:self->_balanceTransfers];
  [v3 safelyAddObject:self->_interestCharged];
  [v3 safelyAddObject:self->_feesCharged];
  [v3 safelyAddObject:self->_paymentsAndCredits];
  [v3 safelyAddObject:self->_payments];
  [v3 safelyAddObject:self->_credits];
  [v3 safelyAddObject:self->_rewardsEarned];
  [v3 safelyAddObject:self->_rewardsRedeemed];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (PKCreditAccountBalanceSummary)initWithDictionary:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = PKCreditAccountBalanceSummary;
  v5 = [(PKCreditAccountBalanceSummary *)&v31 init];
  if (v5)
  {
    v6 = [v4 PKDateForKey:@"openingDate"];
    openingDate = v5->_openingDate;
    v5->_openingDate = v6;

    v8 = [v4 PKDateForKey:@"closingDate"];
    closingDate = v5->_closingDate;
    v5->_closingDate = v8;

    v10 = [v4 PKDecimalNumberFromStringForKey:@"purchases"];
    purchases = v5->_purchases;
    v5->_purchases = v10;

    v12 = [v4 PKDecimalNumberFromStringForKey:@"pendingPurchases"];
    pendingPurchases = v5->_pendingPurchases;
    v5->_pendingPurchases = v12;

    v14 = [v4 PKDecimalNumberFromStringForKey:@"balanceTransfers"];
    balanceTransfers = v5->_balanceTransfers;
    v5->_balanceTransfers = v14;

    v16 = [v4 PKDecimalNumberFromStringForKey:@"interestCharged"];
    interestCharged = v5->_interestCharged;
    v5->_interestCharged = v16;

    v18 = [v4 PKDecimalNumberFromStringForKey:@"feesCharged"];
    feesCharged = v5->_feesCharged;
    v5->_feesCharged = v18;

    v20 = [v4 PKDecimalNumberFromStringForKey:@"paymentsAndCredits"];
    paymentsAndCredits = v5->_paymentsAndCredits;
    v5->_paymentsAndCredits = v20;

    v22 = [v4 PKDecimalNumberFromStringForKey:@"payments"];
    payments = v5->_payments;
    v5->_payments = v22;

    v24 = [v4 PKDecimalNumberFromStringForKey:@"credits"];
    credits = v5->_credits;
    v5->_credits = v24;

    v26 = [v4 PKDecimalNumberFromStringForKey:@"rewardsEarned"];
    rewardsEarned = v5->_rewardsEarned;
    v5->_rewardsEarned = v26;

    v28 = [v4 PKDecimalNumberFromStringForKey:@"rewardsRedeemed"];
    rewardsRedeemed = v5->_rewardsRedeemed;
    v5->_rewardsRedeemed = v28;
  }

  return v5;
}

- (PKCreditAccountBalanceSummary)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = PKCreditAccountBalanceSummary;
  v5 = [(PKCreditAccountBalanceSummary *)&v31 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"openingDate"];
    openingDate = v5->_openingDate;
    v5->_openingDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"closingDate"];
    closingDate = v5->_closingDate;
    v5->_closingDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"purchases"];
    purchases = v5->_purchases;
    v5->_purchases = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pendingPurchases"];
    pendingPurchases = v5->_pendingPurchases;
    v5->_pendingPurchases = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"balanceTransfers"];
    balanceTransfers = v5->_balanceTransfers;
    v5->_balanceTransfers = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interestCharged"];
    interestCharged = v5->_interestCharged;
    v5->_interestCharged = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"feesCharged"];
    feesCharged = v5->_feesCharged;
    v5->_feesCharged = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentsAndCredits"];
    paymentsAndCredits = v5->_paymentsAndCredits;
    v5->_paymentsAndCredits = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"payments"];
    payments = v5->_payments;
    v5->_payments = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credits"];
    credits = v5->_credits;
    v5->_credits = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rewardsEarned"];
    rewardsEarned = v5->_rewardsEarned;
    v5->_rewardsEarned = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rewardsRedeemed"];
    rewardsRedeemed = v5->_rewardsRedeemed;
    v5->_rewardsRedeemed = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  openingDate = self->_openingDate;
  v5 = a3;
  [v5 encodeObject:openingDate forKey:@"openingDate"];
  [v5 encodeObject:self->_closingDate forKey:@"closingDate"];
  [v5 encodeObject:self->_purchases forKey:@"purchases"];
  [v5 encodeObject:self->_pendingPurchases forKey:@"pendingPurchases"];
  [v5 encodeObject:self->_balanceTransfers forKey:@"balanceTransfers"];
  [v5 encodeObject:self->_interestCharged forKey:@"interestCharged"];
  [v5 encodeObject:self->_feesCharged forKey:@"feesCharged"];
  [v5 encodeObject:self->_paymentsAndCredits forKey:@"paymentsAndCredits"];
  [v5 encodeObject:self->_payments forKey:@"payments"];
  [v5 encodeObject:self->_credits forKey:@"credits"];
  [v5 encodeObject:self->_rewardsEarned forKey:@"rewardsEarned"];
  [v5 encodeObject:self->_rewardsRedeemed forKey:@"rewardsRedeemed"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_59;
  }

  openingDate = self->_openingDate;
  v6 = v4[1];
  if (openingDate && v6)
  {
    if (([(NSDate *)openingDate isEqual:?]& 1) == 0)
    {
      goto LABEL_59;
    }
  }

  else if (openingDate != v6)
  {
    goto LABEL_59;
  }

  closingDate = self->_closingDate;
  v8 = v4[2];
  if (closingDate && v8)
  {
    if (([(NSDate *)closingDate isEqual:?]& 1) == 0)
    {
      goto LABEL_59;
    }
  }

  else if (closingDate != v8)
  {
    goto LABEL_59;
  }

  purchases = self->_purchases;
  v10 = v4[3];
  if (purchases && v10)
  {
    if (([(NSDecimalNumber *)purchases isEqual:?]& 1) == 0)
    {
      goto LABEL_59;
    }
  }

  else if (purchases != v10)
  {
    goto LABEL_59;
  }

  pendingPurchases = self->_pendingPurchases;
  v12 = v4[4];
  if (pendingPurchases && v12)
  {
    if (([(NSDecimalNumber *)pendingPurchases isEqual:?]& 1) == 0)
    {
      goto LABEL_59;
    }
  }

  else if (pendingPurchases != v12)
  {
    goto LABEL_59;
  }

  balanceTransfers = self->_balanceTransfers;
  v14 = v4[5];
  if (balanceTransfers && v14)
  {
    if (([(NSDecimalNumber *)balanceTransfers isEqual:?]& 1) == 0)
    {
      goto LABEL_59;
    }
  }

  else if (balanceTransfers != v14)
  {
    goto LABEL_59;
  }

  interestCharged = self->_interestCharged;
  v16 = v4[6];
  if (interestCharged && v16)
  {
    if (([(NSDecimalNumber *)interestCharged isEqual:?]& 1) == 0)
    {
      goto LABEL_59;
    }
  }

  else if (interestCharged != v16)
  {
    goto LABEL_59;
  }

  feesCharged = self->_feesCharged;
  v18 = v4[7];
  if (feesCharged && v18)
  {
    if (([(NSDecimalNumber *)feesCharged isEqual:?]& 1) == 0)
    {
      goto LABEL_59;
    }
  }

  else if (feesCharged != v18)
  {
    goto LABEL_59;
  }

  paymentsAndCredits = self->_paymentsAndCredits;
  v20 = v4[8];
  if (paymentsAndCredits && v20)
  {
    if (([(NSDecimalNumber *)paymentsAndCredits isEqual:?]& 1) == 0)
    {
      goto LABEL_59;
    }
  }

  else if (paymentsAndCredits != v20)
  {
    goto LABEL_59;
  }

  payments = self->_payments;
  v22 = v4[9];
  if (payments && v22)
  {
    if (([(NSDecimalNumber *)payments isEqual:?]& 1) == 0)
    {
      goto LABEL_59;
    }
  }

  else if (payments != v22)
  {
    goto LABEL_59;
  }

  credits = self->_credits;
  v24 = v4[10];
  if (credits && v24)
  {
    if (([(NSDecimalNumber *)credits isEqual:?]& 1) == 0)
    {
      goto LABEL_59;
    }
  }

  else if (credits != v24)
  {
    goto LABEL_59;
  }

  rewardsEarned = self->_rewardsEarned;
  v26 = v4[11];
  if (!rewardsEarned || !v26)
  {
    if (rewardsEarned == v26)
    {
      goto LABEL_55;
    }

LABEL_59:
    v29 = 0;
    goto LABEL_60;
  }

  if (([(NSDecimalNumber *)rewardsEarned isEqual:?]& 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_55:
  rewardsRedeemed = self->_rewardsRedeemed;
  v28 = v4[12];
  if (rewardsRedeemed && v28)
  {
    v29 = [(NSDecimalNumber *)rewardsRedeemed isEqual:?];
  }

  else
  {
    v29 = rewardsRedeemed == v28;
  }

LABEL_60:

  return v29;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(NSDate *)self->_openingDate description];
  [v3 appendFormat:@"openingDate: '%@'; ", v4];

  v5 = [(NSDate *)self->_closingDate description];
  [v3 appendFormat:@"closingDate: '%@'; ", v5];

  v6 = [(NSDecimalNumber *)self->_purchases stringValue];
  [v3 appendFormat:@"purchases: '%@'; ", v6];

  v7 = [(NSDecimalNumber *)self->_pendingPurchases stringValue];
  [v3 appendFormat:@"pendingPurchases: '%@'; ", v7];

  v8 = [(NSDecimalNumber *)self->_balanceTransfers stringValue];
  [v3 appendFormat:@"balanceTransfers: '%@'; ", v8];

  v9 = [(NSDecimalNumber *)self->_interestCharged stringValue];
  [v3 appendFormat:@"interestCharged: '%@'; ", v9];

  v10 = [(NSDecimalNumber *)self->_feesCharged stringValue];
  [v3 appendFormat:@"feesCharges: '%@'; ", v10];

  v11 = [(NSDecimalNumber *)self->_paymentsAndCredits stringValue];
  [v3 appendFormat:@"paymentsAndCredits: '%@'; ", v11];

  v12 = [(NSDecimalNumber *)self->_payments stringValue];
  [v3 appendFormat:@"payments: '%@'; ", v12];

  v13 = [(NSDecimalNumber *)self->_credits stringValue];
  [v3 appendFormat:@"credits: '%@'; ", v13];

  v14 = [(NSDecimalNumber *)self->_rewardsEarned stringValue];
  [v3 appendFormat:@"rewardsEarned: '%@'; ", v14];

  v15 = [(NSDecimalNumber *)self->_rewardsRedeemed stringValue];
  [v3 appendFormat:@"rewardsRedeemed: '%@'; ", v15];

  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKCreditAccountBalanceSummary allocWithZone:](PKCreditAccountBalanceSummary init];
  v6 = [(NSDate *)self->_openingDate copyWithZone:a3];
  openingDate = v5->_openingDate;
  v5->_openingDate = v6;

  v8 = [(NSDate *)self->_closingDate copyWithZone:a3];
  closingDate = v5->_closingDate;
  v5->_closingDate = v8;

  v10 = [(NSDecimalNumber *)self->_purchases copyWithZone:a3];
  purchases = v5->_purchases;
  v5->_purchases = v10;

  v12 = [(NSDecimalNumber *)self->_pendingPurchases copyWithZone:a3];
  pendingPurchases = v5->_pendingPurchases;
  v5->_pendingPurchases = v12;

  v14 = [(NSDecimalNumber *)self->_balanceTransfers copyWithZone:a3];
  balanceTransfers = v5->_balanceTransfers;
  v5->_balanceTransfers = v14;

  v16 = [(NSDecimalNumber *)self->_interestCharged copyWithZone:a3];
  interestCharged = v5->_interestCharged;
  v5->_interestCharged = v16;

  v18 = [(NSDecimalNumber *)self->_feesCharged copyWithZone:a3];
  feesCharged = v5->_feesCharged;
  v5->_feesCharged = v18;

  v20 = [(NSDecimalNumber *)self->_paymentsAndCredits copyWithZone:a3];
  paymentsAndCredits = v5->_paymentsAndCredits;
  v5->_paymentsAndCredits = v20;

  v22 = [(NSDecimalNumber *)self->_payments copyWithZone:a3];
  payments = v5->_payments;
  v5->_payments = v22;

  v24 = [(NSDecimalNumber *)self->_credits copyWithZone:a3];
  credits = v5->_credits;
  v5->_credits = v24;

  v26 = [(NSDecimalNumber *)self->_rewardsEarned copyWithZone:a3];
  rewardsEarned = v5->_rewardsEarned;
  v5->_rewardsEarned = v26;

  v28 = [(NSDecimalNumber *)self->_rewardsRedeemed copyWithZone:a3];
  rewardsRedeemed = v5->_rewardsRedeemed;
  v5->_rewardsRedeemed = v28;

  return v5;
}

@end