@interface PKCreditAccountUserActivity
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCreditAccountUserActivity:(id)a3;
- (NSDecimalNumber)totalSpending;
- (PKCreditAccountUserActivity)initWithCoder:(id)a3;
- (PKCreditAccountUserActivity)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)remainingMonthlySpendWithLimit:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCreditAccountUserActivity

- (PKCreditAccountUserActivity)initWithDictionary:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKCreditAccountUserActivity;
  v5 = [(PKCreditAccountUserActivity *)&v21 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"accountUserAltDSID"];
    accountUserAltDSID = v5->_accountUserAltDSID;
    v5->_accountUserAltDSID = v6;

    v8 = [v4 PKDecimalNumberFromStringForKey:@"purchases"];
    purchases = v5->_purchases;
    v5->_purchases = v8;

    v10 = [v4 PKDecimalNumberFromStringForKey:@"adjustedPurchases"];
    adjustedPurchases = v5->_adjustedPurchases;
    v5->_adjustedPurchases = v10;

    v12 = [v4 PKDecimalNumberFromStringForKey:@"pendingPurchases"];
    pendingPurchases = v5->_pendingPurchases;
    v5->_pendingPurchases = v12;

    v14 = [v4 PKDecimalNumberFromStringForKey:@"rewardsBalance"];
    rewardsBalance = v5->_rewardsBalance;
    v5->_rewardsBalance = v14;

    v16 = [v4 PKDecimalNumberFromStringForKey:@"rewardsEarned"];
    rewardsEarned = v5->_rewardsEarned;
    v5->_rewardsEarned = v16;

    v18 = [v4 PKDecimalNumberFromStringForKey:@"rewardsRedeemed"];
    rewardsRedeemed = v5->_rewardsRedeemed;
    v5->_rewardsRedeemed = v18;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKCreditAccountUserActivity *)self isEqualToCreditAccountUserActivity:v5];
  }

  return v6;
}

- (BOOL)isEqualToCreditAccountUserActivity:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_36;
  }

  v6 = v4[1];
  v7 = self->_accountUserAltDSID;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v7 || !v8)
    {

      goto LABEL_36;
    }

    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_36;
    }
  }

  purchases = self->_purchases;
  v12 = v5[2];
  if (purchases && v12)
  {
    if (([(NSDecimalNumber *)purchases isEqual:?]& 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (purchases != v12)
  {
    goto LABEL_36;
  }

  adjustedPurchases = self->_adjustedPurchases;
  v14 = v5[3];
  if (adjustedPurchases && v14)
  {
    if (([(NSDecimalNumber *)adjustedPurchases isEqual:?]& 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (adjustedPurchases != v14)
  {
    goto LABEL_36;
  }

  pendingPurchases = self->_pendingPurchases;
  v16 = v5[4];
  if (pendingPurchases && v16)
  {
    if (([(NSDecimalNumber *)pendingPurchases isEqual:?]& 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (pendingPurchases != v16)
  {
    goto LABEL_36;
  }

  rewardsBalance = self->_rewardsBalance;
  v18 = v5[5];
  if (rewardsBalance && v18)
  {
    if (([(NSDecimalNumber *)rewardsBalance isEqual:?]& 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (rewardsBalance != v18)
  {
    goto LABEL_36;
  }

  rewardsEarned = self->_rewardsEarned;
  v20 = v5[6];
  if (!rewardsEarned || !v20)
  {
    if (rewardsEarned == v20)
    {
      goto LABEL_32;
    }

LABEL_36:
    v23 = 0;
    goto LABEL_37;
  }

  if (([(NSDecimalNumber *)rewardsEarned isEqual:?]& 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_32:
  rewardsRedeemed = self->_rewardsRedeemed;
  v22 = v5[7];
  if (rewardsRedeemed && v22)
  {
    v23 = [(NSDecimalNumber *)rewardsRedeemed isEqual:?];
  }

  else
  {
    v23 = rewardsRedeemed == v22;
  }

LABEL_37:

  return v23;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_accountUserAltDSID];
  [v3 safelyAddObject:self->_purchases];
  [v3 safelyAddObject:self->_adjustedPurchases];
  [v3 safelyAddObject:self->_pendingPurchases];
  [v3 safelyAddObject:self->_rewardsBalance];
  [v3 safelyAddObject:self->_rewardsEarned];
  [v3 safelyAddObject:self->_rewardsRedeemed];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"accountUserAltDSID: '%@'; ", self->_accountUserAltDSID];
  v4 = [(NSDecimalNumber *)self->_purchases stringValue];
  [v3 appendFormat:@"purchases: '%@'; ", v4];

  v5 = [(NSDecimalNumber *)self->_adjustedPurchases stringValue];
  [v3 appendFormat:@"adjustedPurchases: '%@'; ", v5];

  v6 = [(NSDecimalNumber *)self->_pendingPurchases stringValue];
  [v3 appendFormat:@"pendingPurchases: '%@'; ", v6];

  v7 = [(NSDecimalNumber *)self->_rewardsBalance stringValue];
  [v3 appendFormat:@"rewardsBalance: '%@'; ", v7];

  v8 = [(NSDecimalNumber *)self->_rewardsEarned stringValue];
  [v3 appendFormat:@"rewardsEarned: '%@'; ", v8];

  v9 = [(NSDecimalNumber *)self->_rewardsRedeemed stringValue];
  [v3 appendFormat:@"rewardsRedeemed: '%@'; ", v9];

  [v3 appendFormat:@">"];

  return v3;
}

- (PKCreditAccountUserActivity)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKCreditAccountUserActivity;
  v5 = [(PKCreditAccountUserActivity *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountUserAltDSID"];
    accountUserAltDSID = v5->_accountUserAltDSID;
    v5->_accountUserAltDSID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"purchases"];
    purchases = v5->_purchases;
    v5->_purchases = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"adjustedPurchases"];
    adjustedPurchases = v5->_adjustedPurchases;
    v5->_adjustedPurchases = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pendingPurchases"];
    pendingPurchases = v5->_pendingPurchases;
    v5->_pendingPurchases = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rewardsBalance"];
    rewardsBalance = v5->_rewardsBalance;
    v5->_rewardsBalance = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rewardsEarned"];
    rewardsEarned = v5->_rewardsEarned;
    v5->_rewardsEarned = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rewardsRedeemed"];
    rewardsRedeemed = v5->_rewardsRedeemed;
    v5->_rewardsRedeemed = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  accountUserAltDSID = self->_accountUserAltDSID;
  v5 = a3;
  [v5 encodeObject:accountUserAltDSID forKey:@"accountUserAltDSID"];
  [v5 encodeObject:self->_purchases forKey:@"purchases"];
  [v5 encodeObject:self->_adjustedPurchases forKey:@"adjustedPurchases"];
  [v5 encodeObject:self->_pendingPurchases forKey:@"pendingPurchases"];
  [v5 encodeObject:self->_rewardsBalance forKey:@"rewardsBalance"];
  [v5 encodeObject:self->_rewardsEarned forKey:@"rewardsEarned"];
  [v5 encodeObject:self->_rewardsRedeemed forKey:@"rewardsRedeemed"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKCreditAccountUserActivity allocWithZone:](PKCreditAccountUserActivity init];
  v6 = [(NSString *)self->_accountUserAltDSID copyWithZone:a3];
  accountUserAltDSID = v5->_accountUserAltDSID;
  v5->_accountUserAltDSID = v6;

  v8 = [(NSDecimalNumber *)self->_purchases copyWithZone:a3];
  purchases = v5->_purchases;
  v5->_purchases = v8;

  v10 = [(NSDecimalNumber *)self->_adjustedPurchases copyWithZone:a3];
  adjustedPurchases = v5->_adjustedPurchases;
  v5->_adjustedPurchases = v10;

  v12 = [(NSDecimalNumber *)self->_pendingPurchases copyWithZone:a3];
  pendingPurchases = v5->_pendingPurchases;
  v5->_pendingPurchases = v12;

  v14 = [(NSDecimalNumber *)self->_rewardsBalance copyWithZone:a3];
  rewardsBalance = v5->_rewardsBalance;
  v5->_rewardsBalance = v14;

  v16 = [(NSDecimalNumber *)self->_rewardsEarned copyWithZone:a3];
  rewardsEarned = v5->_rewardsEarned;
  v5->_rewardsEarned = v16;

  v18 = [(NSDecimalNumber *)self->_rewardsRedeemed copyWithZone:a3];
  rewardsRedeemed = v5->_rewardsRedeemed;
  v5->_rewardsRedeemed = v18;

  return v5;
}

- (NSDecimalNumber)totalSpending
{
  v3 = [MEMORY[0x1E696AB90] zero];
  p_adjustedPurchases = &self->_adjustedPurchases;
  adjustedPurchases = self->_adjustedPurchases;
  if (adjustedPurchases && ([MEMORY[0x1E696AB90] notANumber], v6 = objc_claimAutoreleasedReturnValue(), v7 = -[NSDecimalNumber isEqualToNumber:](adjustedPurchases, "isEqualToNumber:", v6), v6, !v7) || (p_adjustedPurchases = &self->_purchases, (purchases = self->_purchases) != 0) && (objc_msgSend(MEMORY[0x1E696AB90], "notANumber"), v9 = objc_claimAutoreleasedReturnValue(), v10 = -[NSDecimalNumber isEqualToNumber:](purchases, "isEqualToNumber:", v9), v9, (v10 & 1) == 0))
  {
    v11 = [v3 decimalNumberByAdding:*p_adjustedPurchases];

    v3 = v11;
  }

  pendingPurchases = self->_pendingPurchases;
  if (pendingPurchases)
  {
    v13 = [MEMORY[0x1E696AB90] notANumber];
    v14 = [(NSDecimalNumber *)pendingPurchases isEqualToNumber:v13];

    if ((v14 & 1) == 0)
    {
      v15 = [v3 decimalNumberByAdding:self->_pendingPurchases];

      v3 = v15;
    }
  }

  return v3;
}

- (id)remainingMonthlySpendWithLimit:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AB90] zero];
    v6 = [(PKCreditAccountUserActivity *)self totalSpending];
    if ([v4 compare:v6] != -1)
    {
      v7 = [v4 decimalNumberBySubtracting:v6];

      v5 = v7;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end