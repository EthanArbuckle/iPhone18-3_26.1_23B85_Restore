@interface PKPaymentTransactionGroup
+ (id)transactionGroupFromFKTransactionGroup:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CNContact)userContact;
- (NSString)identifier;
- (NSString)userDisplayName;
- (PKPaymentTransactionGroup)initWithCoder:(id)a3;
- (id)description;
- (id)transactionForCashbackGroupWithSourceIdentifier:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentTransactionGroup

- (PKPaymentTransactionGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v52.receiver = self;
  v52.super_class = PKPaymentTransactionGroup;
  v5 = [(PKPaymentTransactionGroup *)&v52 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v5->_secondaryType = [v4 decodeIntegerForKey:@"secondaryType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v8;

    v5->_merchantCategory = [v4 decodeIntegerForKey:@"merchantCategory"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchant"];
    merchant = v5->_merchant;
    v5->_merchant = v10;

    v5->_transactionCount = [v4 decodeIntegerForKey:@"transactionCount"];
    v5->_secondaryGroupCount = [v4 decodeIntegerForKey:@"secondaryGroupCount"];
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"handles"];
    handles = v5->_handles;
    v5->_handles = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountUser"];
    accountUser = v5->_accountUser;
    v5->_accountUser = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"familyMember"];
    familyMember = v5->_familyMember;
    v5->_familyMember = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"regions"];
    regions = v5->_regions;
    v5->_regions = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    totalAmount = v5->_totalAmount;
    v5->_totalAmount = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rewardsAmount"];
    totalRewardsAmount = v5->_totalRewardsAmount;
    v5->_totalRewardsAmount = v28;

    v30 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"transactions"];
    transactions = v5->_transactions;
    v5->_transactions = v33;

    v35 = MEMORY[0x1E695DFD8];
    v36 = objc_opt_class();
    v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
    v38 = [v4 decodeObjectOfClasses:v37 forKey:@"groups"];
    groups = v5->_groups;
    v5->_groups = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchQuery"];
    searchQuery = v5->_searchQuery;
    v5->_searchQuery = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tag"];
    tag = v5->_tag;
    v5->_tag = v42;

    v44 = MEMORY[0x1E695DFD8];
    v45 = objc_opt_class();
    v46 = [v44 setWithObjects:{v45, objc_opt_class(), 0}];
    v47 = [v4 decodeObjectOfClasses:v46 forKey:@"transactionTypes"];
    transactionTypes = v5->_transactionTypes;
    v5->_transactionTypes = v47;

    v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bankConnectSectionIdentifier"];
    bankConnectSectionIdentifier = v5->_bankConnectSectionIdentifier;
    v5->_bankConnectSectionIdentifier = v49;

    v5->_trend = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trend"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v5 = a3;
  [v5 encodeInteger:type forKey:@"type"];
  [v5 encodeInteger:self->_secondaryType forKey:@"secondaryType"];
  [v5 encodeInteger:self->_secondaryGroupCount forKey:@"secondaryGroupCount"];
  [v5 encodeObject:self->_startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
  [v5 encodeInteger:self->_merchantCategory forKey:@"merchantCategory"];
  [v5 encodeObject:self->_merchant forKey:@"merchant"];
  [v5 encodeInteger:self->_transactionCount forKey:@"transactionCount"];
  [v5 encodeObject:self->_totalAmount forKey:@"amount"];
  [v5 encodeObject:self->_totalRewardsAmount forKey:@"rewardsAmount"];
  [v5 encodeObject:self->_transactions forKey:@"transactions"];
  [v5 encodeObject:self->_groups forKey:@"groups"];
  [v5 encodeObject:self->_handles forKey:@"handles"];
  [v5 encodeObject:self->_accountUser forKey:@"accountUser"];
  [v5 encodeObject:self->_familyMember forKey:@"familyMember"];
  [v5 encodeObject:self->_regions forKey:@"regions"];
  [v5 encodeObject:self->_searchQuery forKey:@"searchQuery"];
  [v5 encodeObject:self->_tag forKey:@"tag"];
  [v5 encodeObject:self->_transactionTypes forKey:@"transactionTypes"];
  [v5 encodeObject:self->_bankConnectSectionIdentifier forKey:@"bankConnectSectionIdentifier"];
  [v5 encodeObject:self->_trend forKey:@"trend"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_79;
  }

  startDate = self->_startDate;
  v6 = v4[2];
  if (startDate && v6)
  {
    if (([(NSDate *)startDate isEqual:?]& 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if (startDate != v6)
  {
    goto LABEL_79;
  }

  endDate = self->_endDate;
  v8 = v4[3];
  if (endDate && v8)
  {
    if (([(NSDate *)endDate isEqual:?]& 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if (endDate != v8)
  {
    goto LABEL_79;
  }

  totalAmount = self->_totalAmount;
  v10 = v4[14];
  if (totalAmount && v10)
  {
    if (![(PKCurrencyAmount *)totalAmount isEqual:?])
    {
      goto LABEL_79;
    }
  }

  else if (totalAmount != v10)
  {
    goto LABEL_79;
  }

  totalRewardsAmount = self->_totalRewardsAmount;
  v12 = v4[15];
  if (totalRewardsAmount && v12)
  {
    if (![(PKCurrencyAmount *)totalRewardsAmount isEqual:?])
    {
      goto LABEL_79;
    }
  }

  else if (totalRewardsAmount != v12)
  {
    goto LABEL_79;
  }

  merchant = self->_merchant;
  v14 = v4[7];
  if (merchant && v14)
  {
    if (![(PKMerchant *)merchant isEqual:?])
    {
      goto LABEL_79;
    }
  }

  else if (merchant != v14)
  {
    goto LABEL_79;
  }

  handles = self->_handles;
  v16 = v4[8];
  if (handles && v16)
  {
    if (([(NSSet *)handles isEqual:?]& 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if (handles != v16)
  {
    goto LABEL_79;
  }

  accountUser = self->_accountUser;
  v18 = v4[11];
  if (accountUser && v18)
  {
    if (![(PKAccountUser *)accountUser isEqual:?])
    {
      goto LABEL_79;
    }
  }

  else if (accountUser != v18)
  {
    goto LABEL_79;
  }

  familyMember = self->_familyMember;
  v20 = v4[12];
  if (familyMember && v20)
  {
    if (![(PKFamilyMember *)familyMember isEqual:?])
    {
      goto LABEL_79;
    }
  }

  else if (familyMember != v20)
  {
    goto LABEL_79;
  }

  regions = self->_regions;
  v22 = v4[9];
  if (regions && v22)
  {
    if (([(NSArray *)regions isEqual:?]& 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if (regions != v22)
  {
    goto LABEL_79;
  }

  searchQuery = self->_searchQuery;
  v24 = v4[10];
  if (searchQuery && v24)
  {
    if (![(PKSearchQuery *)searchQuery isEqual:?])
    {
      goto LABEL_79;
    }
  }

  else if (searchQuery != v24)
  {
    goto LABEL_79;
  }

  if (self->_merchantCategory != v4[4] || self->_type != v4[1] || self->_secondaryType != v4[20] || self->_transactionCount != v4[13] || self->_secondaryGroupCount != v4[21])
  {
    goto LABEL_79;
  }

  groups = self->_groups;
  v26 = v4[18];
  if (groups && v26)
  {
    if (([(NSArray *)groups isEqual:?]& 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if (groups != v26)
  {
    goto LABEL_79;
  }

  tag = self->_tag;
  v28 = v4[6];
  if (tag && v28)
  {
    if (![(PKPaymentTransactionTag *)tag isEqual:?])
    {
      goto LABEL_79;
    }
  }

  else if (tag != v28)
  {
    goto LABEL_79;
  }

  bankConnectSectionIdentifier = self->_bankConnectSectionIdentifier;
  v30 = v4[22];
  if (bankConnectSectionIdentifier && v30)
  {
    if (([(NSString *)bankConnectSectionIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_79;
    }
  }

  else if (bankConnectSectionIdentifier != v30)
  {
    goto LABEL_79;
  }

  transactionTypes = self->_transactionTypes;
  v32 = v4[19];
  if (!transactionTypes || !v32)
  {
    if (transactionTypes == v32)
    {
      goto LABEL_75;
    }

LABEL_79:
    v35 = 0;
    goto LABEL_80;
  }

  if (([(NSArray *)transactionTypes isEqual:?]& 1) == 0)
  {
    goto LABEL_79;
  }

LABEL_75:
  trend = self->_trend;
  v34 = v4[5];
  if (trend && v34)
  {
    v35 = [(PKSpendingInsightTrend *)trend isEqual:?];
  }

  else
  {
    v35 = trend == v34;
  }

LABEL_80:

  return v35;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_startDate];
  [v3 safelyAddObject:self->_endDate];
  [v3 safelyAddObject:self->_totalAmount];
  [v3 safelyAddObject:self->_merchant];
  [v3 safelyAddObject:self->_handles];
  [v3 safelyAddObject:self->_accountUser];
  [v3 safelyAddObject:self->_familyMember];
  [v3 safelyAddObject:self->_regions];
  [v3 safelyAddObject:self->_searchQuery];
  [v3 safelyAddObject:self->_tag];
  [v3 safelyAddObject:self->_groups];
  [v3 safelyAddObject:self->_transactionTypes];
  [v3 safelyAddObject:self->_bankConnectSectionIdentifier];
  [v3 safelyAddObject:self->_trend];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_merchantCategory - v4 + 32 * v4;
  v6 = self->_type - v5 + 32 * v5;
  v7 = self->_secondaryType - v6 + 32 * v6;
  v8 = self->_transactionCount - v7 + 32 * v7;
  v9 = self->_secondaryGroupCount - v8 + 32 * v8;

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"type: %ld; ", self->_type];
  [v3 appendFormat:@"secondaryType: %ld; ", self->_secondaryType];
  [v3 appendFormat:@"secondaryCount: '%ld'; ", self->_secondaryGroupCount];
  v4 = [(NSDate *)self->_startDate description];
  [v3 appendFormat:@"startDate: '%@'; ", v4];

  v5 = [(NSDate *)self->_endDate description];
  [v3 appendFormat:@"endDate: '%@'; ", v5];

  v6 = [(PKCurrencyAmount *)self->_totalAmount description];
  [v3 appendFormat:@"totalAmount: '%@'; ", v6];

  v7 = [(PKCurrencyAmount *)self->_totalRewardsAmount description];
  [v3 appendFormat:@"totalRewardsAmount: '%@'; ", v7];

  [v3 appendFormat:@"count: '%ld'; ", self->_transactionCount];
  [v3 appendFormat:@"transactions: '%@'; ", self->_transactions];
  [v3 appendFormat:@"groups: '%@'; ", self->_groups];
  [v3 appendFormat:@"handles: '%@'; ", self->_handles];
  [v3 appendFormat:@"regions: '%@'; ", self->_regions];
  [v3 appendFormat:@"tag: '%@'; ", self->_tag];
  [v3 appendFormat:@"transactionTypes: %@; ", self->_transactionTypes];
  [v3 appendFormat:@"bankConnectSectionIdentifier: %@; ", self->_bankConnectSectionIdentifier];
  v8 = PKMerchantCategoryToString(self->_merchantCategory);
  [v3 appendFormat:@"merchantCategory: %@;", v8];

  [v3 appendFormat:@"trend: %@;", self->_trend];
  [v3 appendFormat:@">"];

  return v3;
}

- (CNContact)userContact
{
  familyMember = self->_familyMember;
  v3 = [(PKAccountUser *)self->_accountUser nameComponents];
  v4 = [PKContactResolver contactForFamilyMember:familyMember nameComponents:v3 imageData:0];

  return v4;
}

- (NSString)userDisplayName
{
  v2 = MEMORY[0x1E695CD80];
  v3 = [(PKPaymentTransactionGroup *)self userContact];
  v4 = [v2 stringFromContact:v3 style:0];

  return v4;
}

- (NSString)identifier
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_startDate];
  [v3 safelyAddObject:self->_endDate];
  [v3 safelyAddObject:self->_merchant];
  [v3 safelyAddObject:self->_handles];
  [v3 safelyAddObject:self->_accountUser];
  [v3 safelyAddObject:self->_familyMember];
  [v3 safelyAddObject:self->_regions];
  [v3 safelyAddObject:self->_searchQuery];
  [v3 safelyAddObject:self->_tag];
  [v3 safelyAddObject:self->_transactionTypes];
  [v3 safelyAddObject:self->_bankConnectSectionIdentifier];
  [v3 safelyAddObject:self->_trend];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_merchantCategory - v4 + 32 * v4;
  v6 = self->_type - v5 + 32 * v5;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", self->_secondaryType - v6 + 32 * v6];

  return v7;
}

- (id)transactionForCashbackGroupWithSourceIdentifier:(id)a3
{
  if (self->_type == 5)
  {
    v4 = a3;
    v5 = objc_alloc_init(PKPaymentTransaction);
    [(PKPaymentTransaction *)v5 setTransactionType:9];
    v6 = self->_totalAmount;
    v7 = [(PKCurrencyAmount *)v6 amount];
    [(PKPaymentTransaction *)v5 setAmount:v7];

    v8 = [(PKCurrencyAmount *)v6 currency];
    [(PKPaymentTransaction *)v5 setCurrencyCode:v8];

    [(PKPaymentTransaction *)v5 setTransactionDate:self->_endDate];
    [(PKPaymentTransaction *)v5 setTransactionStatus:1];
    [(PKPaymentTransaction *)v5 setTransactionSourceIdentifier:v4];

    v9 = [(NSArray *)self->_transactions firstObject];

    v10 = [v9 redemptionType];
    v11 = v10;
    if (v10 != 3 && v10 != 1)
    {
      if (v10)
      {
LABEL_7:

        goto LABEL_9;
      }

      v11 = [v9 accountType];
    }

    [(PKPaymentTransaction *)v5 setAccountType:v11];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

+ (id)transactionGroupFromFKTransactionGroup:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKPaymentTransactionGroup);
  v5 = [v3 startDate];
  [(PKPaymentTransactionGroup *)v4 setStartDate:v5];

  v6 = [v3 endDate];
  [(PKPaymentTransactionGroup *)v4 setEndDate:v6];

  -[PKPaymentTransactionGroup setTransactionCount:](v4, "setTransactionCount:", [v3 transactionCount]);
  v7 = [v3 bankConnectSectionIdentifier];
  [(PKPaymentTransactionGroup *)v4 setBankConnectSectionIdentifier:v7];

  v8 = [v3 type];
  if (v8)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  [(PKPaymentTransactionGroup *)v4 setType:v9];

  return v4;
}

@end