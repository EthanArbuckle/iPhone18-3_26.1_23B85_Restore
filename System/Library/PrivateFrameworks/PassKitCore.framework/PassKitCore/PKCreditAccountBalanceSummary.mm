@interface PKCreditAccountBalanceSummary
- (BOOL)isEqual:(id)equal;
- (PKCreditAccountBalanceSummary)initWithCoder:(id)coder;
- (PKCreditAccountBalanceSummary)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCreditAccountBalanceSummary

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_openingDate];
  [array safelyAddObject:self->_closingDate];
  [array safelyAddObject:self->_purchases];
  [array safelyAddObject:self->_pendingPurchases];
  [array safelyAddObject:self->_balanceTransfers];
  [array safelyAddObject:self->_interestCharged];
  [array safelyAddObject:self->_feesCharged];
  [array safelyAddObject:self->_paymentsAndCredits];
  [array safelyAddObject:self->_payments];
  [array safelyAddObject:self->_credits];
  [array safelyAddObject:self->_rewardsEarned];
  [array safelyAddObject:self->_rewardsRedeemed];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (PKCreditAccountBalanceSummary)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v31.receiver = self;
  v31.super_class = PKCreditAccountBalanceSummary;
  v5 = [(PKCreditAccountBalanceSummary *)&v31 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKDateForKey:@"openingDate"];
    openingDate = v5->_openingDate;
    v5->_openingDate = v6;

    v8 = [dictionaryCopy PKDateForKey:@"closingDate"];
    closingDate = v5->_closingDate;
    v5->_closingDate = v8;

    v10 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"purchases"];
    purchases = v5->_purchases;
    v5->_purchases = v10;

    v12 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"pendingPurchases"];
    pendingPurchases = v5->_pendingPurchases;
    v5->_pendingPurchases = v12;

    v14 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"balanceTransfers"];
    balanceTransfers = v5->_balanceTransfers;
    v5->_balanceTransfers = v14;

    v16 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"interestCharged"];
    interestCharged = v5->_interestCharged;
    v5->_interestCharged = v16;

    v18 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"feesCharged"];
    feesCharged = v5->_feesCharged;
    v5->_feesCharged = v18;

    v20 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"paymentsAndCredits"];
    paymentsAndCredits = v5->_paymentsAndCredits;
    v5->_paymentsAndCredits = v20;

    v22 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"payments"];
    payments = v5->_payments;
    v5->_payments = v22;

    v24 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"credits"];
    credits = v5->_credits;
    v5->_credits = v24;

    v26 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"rewardsEarned"];
    rewardsEarned = v5->_rewardsEarned;
    v5->_rewardsEarned = v26;

    v28 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"rewardsRedeemed"];
    rewardsRedeemed = v5->_rewardsRedeemed;
    v5->_rewardsRedeemed = v28;
  }

  return v5;
}

- (PKCreditAccountBalanceSummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = PKCreditAccountBalanceSummary;
  v5 = [(PKCreditAccountBalanceSummary *)&v31 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"openingDate"];
    openingDate = v5->_openingDate;
    v5->_openingDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"closingDate"];
    closingDate = v5->_closingDate;
    v5->_closingDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"purchases"];
    purchases = v5->_purchases;
    v5->_purchases = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pendingPurchases"];
    pendingPurchases = v5->_pendingPurchases;
    v5->_pendingPurchases = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"balanceTransfers"];
    balanceTransfers = v5->_balanceTransfers;
    v5->_balanceTransfers = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interestCharged"];
    interestCharged = v5->_interestCharged;
    v5->_interestCharged = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"feesCharged"];
    feesCharged = v5->_feesCharged;
    v5->_feesCharged = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentsAndCredits"];
    paymentsAndCredits = v5->_paymentsAndCredits;
    v5->_paymentsAndCredits = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"payments"];
    payments = v5->_payments;
    v5->_payments = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credits"];
    credits = v5->_credits;
    v5->_credits = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rewardsEarned"];
    rewardsEarned = v5->_rewardsEarned;
    v5->_rewardsEarned = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rewardsRedeemed"];
    rewardsRedeemed = v5->_rewardsRedeemed;
    v5->_rewardsRedeemed = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  openingDate = self->_openingDate;
  coderCopy = coder;
  [coderCopy encodeObject:openingDate forKey:@"openingDate"];
  [coderCopy encodeObject:self->_closingDate forKey:@"closingDate"];
  [coderCopy encodeObject:self->_purchases forKey:@"purchases"];
  [coderCopy encodeObject:self->_pendingPurchases forKey:@"pendingPurchases"];
  [coderCopy encodeObject:self->_balanceTransfers forKey:@"balanceTransfers"];
  [coderCopy encodeObject:self->_interestCharged forKey:@"interestCharged"];
  [coderCopy encodeObject:self->_feesCharged forKey:@"feesCharged"];
  [coderCopy encodeObject:self->_paymentsAndCredits forKey:@"paymentsAndCredits"];
  [coderCopy encodeObject:self->_payments forKey:@"payments"];
  [coderCopy encodeObject:self->_credits forKey:@"credits"];
  [coderCopy encodeObject:self->_rewardsEarned forKey:@"rewardsEarned"];
  [coderCopy encodeObject:self->_rewardsRedeemed forKey:@"rewardsRedeemed"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_59;
  }

  openingDate = self->_openingDate;
  v6 = equalCopy[1];
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
  v8 = equalCopy[2];
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
  v10 = equalCopy[3];
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
  v12 = equalCopy[4];
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
  v14 = equalCopy[5];
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
  v16 = equalCopy[6];
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
  v18 = equalCopy[7];
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
  v20 = equalCopy[8];
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
  v22 = equalCopy[9];
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
  v24 = equalCopy[10];
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
  v26 = equalCopy[11];
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
  v28 = equalCopy[12];
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

  stringValue = [(NSDecimalNumber *)self->_purchases stringValue];
  [v3 appendFormat:@"purchases: '%@'; ", stringValue];

  stringValue2 = [(NSDecimalNumber *)self->_pendingPurchases stringValue];
  [v3 appendFormat:@"pendingPurchases: '%@'; ", stringValue2];

  stringValue3 = [(NSDecimalNumber *)self->_balanceTransfers stringValue];
  [v3 appendFormat:@"balanceTransfers: '%@'; ", stringValue3];

  stringValue4 = [(NSDecimalNumber *)self->_interestCharged stringValue];
  [v3 appendFormat:@"interestCharged: '%@'; ", stringValue4];

  stringValue5 = [(NSDecimalNumber *)self->_feesCharged stringValue];
  [v3 appendFormat:@"feesCharges: '%@'; ", stringValue5];

  stringValue6 = [(NSDecimalNumber *)self->_paymentsAndCredits stringValue];
  [v3 appendFormat:@"paymentsAndCredits: '%@'; ", stringValue6];

  stringValue7 = [(NSDecimalNumber *)self->_payments stringValue];
  [v3 appendFormat:@"payments: '%@'; ", stringValue7];

  stringValue8 = [(NSDecimalNumber *)self->_credits stringValue];
  [v3 appendFormat:@"credits: '%@'; ", stringValue8];

  stringValue9 = [(NSDecimalNumber *)self->_rewardsEarned stringValue];
  [v3 appendFormat:@"rewardsEarned: '%@'; ", stringValue9];

  stringValue10 = [(NSDecimalNumber *)self->_rewardsRedeemed stringValue];
  [v3 appendFormat:@"rewardsRedeemed: '%@'; ", stringValue10];

  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKCreditAccountBalanceSummary allocWithZone:](PKCreditAccountBalanceSummary init];
  v6 = [(NSDate *)self->_openingDate copyWithZone:zone];
  openingDate = v5->_openingDate;
  v5->_openingDate = v6;

  v8 = [(NSDate *)self->_closingDate copyWithZone:zone];
  closingDate = v5->_closingDate;
  v5->_closingDate = v8;

  v10 = [(NSDecimalNumber *)self->_purchases copyWithZone:zone];
  purchases = v5->_purchases;
  v5->_purchases = v10;

  v12 = [(NSDecimalNumber *)self->_pendingPurchases copyWithZone:zone];
  pendingPurchases = v5->_pendingPurchases;
  v5->_pendingPurchases = v12;

  v14 = [(NSDecimalNumber *)self->_balanceTransfers copyWithZone:zone];
  balanceTransfers = v5->_balanceTransfers;
  v5->_balanceTransfers = v14;

  v16 = [(NSDecimalNumber *)self->_interestCharged copyWithZone:zone];
  interestCharged = v5->_interestCharged;
  v5->_interestCharged = v16;

  v18 = [(NSDecimalNumber *)self->_feesCharged copyWithZone:zone];
  feesCharged = v5->_feesCharged;
  v5->_feesCharged = v18;

  v20 = [(NSDecimalNumber *)self->_paymentsAndCredits copyWithZone:zone];
  paymentsAndCredits = v5->_paymentsAndCredits;
  v5->_paymentsAndCredits = v20;

  v22 = [(NSDecimalNumber *)self->_payments copyWithZone:zone];
  payments = v5->_payments;
  v5->_payments = v22;

  v24 = [(NSDecimalNumber *)self->_credits copyWithZone:zone];
  credits = v5->_credits;
  v5->_credits = v24;

  v26 = [(NSDecimalNumber *)self->_rewardsEarned copyWithZone:zone];
  rewardsEarned = v5->_rewardsEarned;
  v5->_rewardsEarned = v26;

  v28 = [(NSDecimalNumber *)self->_rewardsRedeemed copyWithZone:zone];
  rewardsRedeemed = v5->_rewardsRedeemed;
  v5->_rewardsRedeemed = v28;

  return v5;
}

@end