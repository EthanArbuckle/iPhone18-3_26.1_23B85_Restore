@interface PKCreditAccountUserActivity
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCreditAccountUserActivity:(id)activity;
- (NSDecimalNumber)totalSpending;
- (PKCreditAccountUserActivity)initWithCoder:(id)coder;
- (PKCreditAccountUserActivity)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)remainingMonthlySpendWithLimit:(id)limit;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCreditAccountUserActivity

- (PKCreditAccountUserActivity)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = PKCreditAccountUserActivity;
  v5 = [(PKCreditAccountUserActivity *)&v21 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"accountUserAltDSID"];
    accountUserAltDSID = v5->_accountUserAltDSID;
    v5->_accountUserAltDSID = v6;

    v8 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"purchases"];
    purchases = v5->_purchases;
    v5->_purchases = v8;

    v10 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"adjustedPurchases"];
    adjustedPurchases = v5->_adjustedPurchases;
    v5->_adjustedPurchases = v10;

    v12 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"pendingPurchases"];
    pendingPurchases = v5->_pendingPurchases;
    v5->_pendingPurchases = v12;

    v14 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"rewardsBalance"];
    rewardsBalance = v5->_rewardsBalance;
    v5->_rewardsBalance = v14;

    v16 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"rewardsEarned"];
    rewardsEarned = v5->_rewardsEarned;
    v5->_rewardsEarned = v16;

    v18 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"rewardsRedeemed"];
    rewardsRedeemed = v5->_rewardsRedeemed;
    v5->_rewardsRedeemed = v18;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKCreditAccountUserActivity *)self isEqualToCreditAccountUserActivity:v5];
  }

  return v6;
}

- (BOOL)isEqualToCreditAccountUserActivity:(id)activity
{
  activityCopy = activity;
  v5 = activityCopy;
  if (!activityCopy)
  {
    goto LABEL_36;
  }

  v6 = activityCopy[1];
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
  stringValue = [(NSDecimalNumber *)self->_purchases stringValue];
  [v3 appendFormat:@"purchases: '%@'; ", stringValue];

  stringValue2 = [(NSDecimalNumber *)self->_adjustedPurchases stringValue];
  [v3 appendFormat:@"adjustedPurchases: '%@'; ", stringValue2];

  stringValue3 = [(NSDecimalNumber *)self->_pendingPurchases stringValue];
  [v3 appendFormat:@"pendingPurchases: '%@'; ", stringValue3];

  stringValue4 = [(NSDecimalNumber *)self->_rewardsBalance stringValue];
  [v3 appendFormat:@"rewardsBalance: '%@'; ", stringValue4];

  stringValue5 = [(NSDecimalNumber *)self->_rewardsEarned stringValue];
  [v3 appendFormat:@"rewardsEarned: '%@'; ", stringValue5];

  stringValue6 = [(NSDecimalNumber *)self->_rewardsRedeemed stringValue];
  [v3 appendFormat:@"rewardsRedeemed: '%@'; ", stringValue6];

  [v3 appendFormat:@">"];

  return v3;
}

- (PKCreditAccountUserActivity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = PKCreditAccountUserActivity;
  v5 = [(PKCreditAccountUserActivity *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountUserAltDSID"];
    accountUserAltDSID = v5->_accountUserAltDSID;
    v5->_accountUserAltDSID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"purchases"];
    purchases = v5->_purchases;
    v5->_purchases = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"adjustedPurchases"];
    adjustedPurchases = v5->_adjustedPurchases;
    v5->_adjustedPurchases = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pendingPurchases"];
    pendingPurchases = v5->_pendingPurchases;
    v5->_pendingPurchases = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rewardsBalance"];
    rewardsBalance = v5->_rewardsBalance;
    v5->_rewardsBalance = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rewardsEarned"];
    rewardsEarned = v5->_rewardsEarned;
    v5->_rewardsEarned = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rewardsRedeemed"];
    rewardsRedeemed = v5->_rewardsRedeemed;
    v5->_rewardsRedeemed = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  accountUserAltDSID = self->_accountUserAltDSID;
  coderCopy = coder;
  [coderCopy encodeObject:accountUserAltDSID forKey:@"accountUserAltDSID"];
  [coderCopy encodeObject:self->_purchases forKey:@"purchases"];
  [coderCopy encodeObject:self->_adjustedPurchases forKey:@"adjustedPurchases"];
  [coderCopy encodeObject:self->_pendingPurchases forKey:@"pendingPurchases"];
  [coderCopy encodeObject:self->_rewardsBalance forKey:@"rewardsBalance"];
  [coderCopy encodeObject:self->_rewardsEarned forKey:@"rewardsEarned"];
  [coderCopy encodeObject:self->_rewardsRedeemed forKey:@"rewardsRedeemed"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKCreditAccountUserActivity allocWithZone:](PKCreditAccountUserActivity init];
  v6 = [(NSString *)self->_accountUserAltDSID copyWithZone:zone];
  accountUserAltDSID = v5->_accountUserAltDSID;
  v5->_accountUserAltDSID = v6;

  v8 = [(NSDecimalNumber *)self->_purchases copyWithZone:zone];
  purchases = v5->_purchases;
  v5->_purchases = v8;

  v10 = [(NSDecimalNumber *)self->_adjustedPurchases copyWithZone:zone];
  adjustedPurchases = v5->_adjustedPurchases;
  v5->_adjustedPurchases = v10;

  v12 = [(NSDecimalNumber *)self->_pendingPurchases copyWithZone:zone];
  pendingPurchases = v5->_pendingPurchases;
  v5->_pendingPurchases = v12;

  v14 = [(NSDecimalNumber *)self->_rewardsBalance copyWithZone:zone];
  rewardsBalance = v5->_rewardsBalance;
  v5->_rewardsBalance = v14;

  v16 = [(NSDecimalNumber *)self->_rewardsEarned copyWithZone:zone];
  rewardsEarned = v5->_rewardsEarned;
  v5->_rewardsEarned = v16;

  v18 = [(NSDecimalNumber *)self->_rewardsRedeemed copyWithZone:zone];
  rewardsRedeemed = v5->_rewardsRedeemed;
  v5->_rewardsRedeemed = v18;

  return v5;
}

- (NSDecimalNumber)totalSpending
{
  zero = [MEMORY[0x1E696AB90] zero];
  p_adjustedPurchases = &self->_adjustedPurchases;
  adjustedPurchases = self->_adjustedPurchases;
  if (adjustedPurchases && ([MEMORY[0x1E696AB90] notANumber], v6 = objc_claimAutoreleasedReturnValue(), v7 = -[NSDecimalNumber isEqualToNumber:](adjustedPurchases, "isEqualToNumber:", v6), v6, !v7) || (p_adjustedPurchases = &self->_purchases, (purchases = self->_purchases) != 0) && (objc_msgSend(MEMORY[0x1E696AB90], "notANumber"), v9 = objc_claimAutoreleasedReturnValue(), v10 = -[NSDecimalNumber isEqualToNumber:](purchases, "isEqualToNumber:", v9), v9, (v10 & 1) == 0))
  {
    v11 = [zero decimalNumberByAdding:*p_adjustedPurchases];

    zero = v11;
  }

  pendingPurchases = self->_pendingPurchases;
  if (pendingPurchases)
  {
    notANumber = [MEMORY[0x1E696AB90] notANumber];
    v14 = [(NSDecimalNumber *)pendingPurchases isEqualToNumber:notANumber];

    if ((v14 & 1) == 0)
    {
      v15 = [zero decimalNumberByAdding:self->_pendingPurchases];

      zero = v15;
    }
  }

  return zero;
}

- (id)remainingMonthlySpendWithLimit:(id)limit
{
  limitCopy = limit;
  if (limitCopy)
  {
    zero = [MEMORY[0x1E696AB90] zero];
    totalSpending = [(PKCreditAccountUserActivity *)self totalSpending];
    if ([limitCopy compare:totalSpending] != -1)
    {
      v7 = [limitCopy decimalNumberBySubtracting:totalSpending];

      zero = v7;
    }
  }

  else
  {
    zero = 0;
  }

  return zero;
}

@end