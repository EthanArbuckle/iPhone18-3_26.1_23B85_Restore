@interface PKSpendingSummary
- (BOOL)isCurrentPeriod;
- (BOOL)isEqual:(id)a3;
- (PKSpendingSummary)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKSpendingSummary

- (PKSpendingSummary)initWithCoder:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = PKSpendingSummary;
  v5 = [(PKSpendingSummary *)&v41 init];
  if (v5)
  {
    v5->_summaryType = [v4 decodeIntegerForKey:@"summaryType"];
    v5->_summaryUnit = [v4 decodeIntegerForKey:@"summaryUnit"];
    v5->_isLoading = [v4 decodeBoolForKey:@"isLoading"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalSpending"];
    totalSpending = v5->_totalSpending;
    v5->_totalSpending = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"previousTotalSpending"];
    previousTotalSpending = v5->_previousTotalSpending;
    v5->_previousTotalSpending = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"previousMaxAmount"];
    previousMaxAmount = v5->_previousMaxAmount;
    v5->_previousMaxAmount = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"orderedSpendingCategories"];
    orderedSpendingCategories = v5->_orderedSpendingCategories;
    v5->_orderedSpendingCategories = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"orderedSpendingPerMerchants"];
    orderedSpendingPerMerchants = v5->_orderedSpendingPerMerchants;
    v5->_orderedSpendingPerMerchants = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"insights"];
    insights = v5->_insights;
    v5->_insights = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rewards"];
    rewards = v5->_rewards;
    v5->_rewards = v31;

    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];
    v36 = [v4 decodeObjectOfClasses:v35 forKey:@"spendingsPerCalendarUnit"];
    spendingsPerCalendarUnit = v5->_spendingsPerCalendarUnit;
    v5->_spendingsPerCalendarUnit = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interestCharged"];
    interest = v5->_interest;
    v5->_interest = v38;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  summaryType = self->_summaryType;
  v5 = a3;
  [v5 encodeInteger:summaryType forKey:@"summaryType"];
  [v5 encodeInteger:self->_summaryUnit forKey:@"summaryUnit"];
  [v5 encodeBool:self->_isLoading forKey:@"isLoading"];
  [v5 encodeObject:self->_startDate forKey:@"startDate"];
  [v5 encodeObject:self->_endDate forKey:@"endDate"];
  [v5 encodeObject:self->_totalSpending forKey:@"totalSpending"];
  [v5 encodeObject:self->_previousTotalSpending forKey:@"previousTotalSpending"];
  [v5 encodeObject:self->_previousMaxAmount forKey:@"previousMaxAmount"];
  [v5 encodeObject:self->_orderedSpendingCategories forKey:@"orderedSpendingCategories"];
  [v5 encodeObject:self->_orderedSpendingPerMerchants forKey:@"orderedSpendingPerMerchants"];
  [v5 encodeObject:self->_insights forKey:@"insights"];
  [v5 encodeObject:self->_rewards forKey:@"rewards"];
  [v5 encodeObject:self->_spendingsPerCalendarUnit forKey:@"spendingsPerCalendarUnit"];
  [v5 encodeObject:self->_interest forKey:@"interestCharged"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_57;
  }

  startDate = self->_startDate;
  v6 = v4[4];
  if (startDate && v6)
  {
    if (([(NSDate *)startDate isEqual:?]& 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (startDate != v6)
  {
    goto LABEL_57;
  }

  endDate = self->_endDate;
  v8 = v4[5];
  if (endDate && v8)
  {
    if (([(NSDate *)endDate isEqual:?]& 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (endDate != v8)
  {
    goto LABEL_57;
  }

  totalSpending = self->_totalSpending;
  v10 = v4[6];
  if (!totalSpending || !v10)
  {
    if (totalSpending == v10)
    {
      goto LABEL_17;
    }

LABEL_57:
    v33 = 0;
    goto LABEL_58;
  }

  if (![(PKCurrencyAmount *)totalSpending isEqual:?])
  {
    goto LABEL_57;
  }

LABEL_17:
  v11 = v4[7];
  v12 = self->_orderedSpendingCategories;
  v13 = v11;
  v14 = v13;
  if (v12 != v13)
  {
    if (!v12 || !v13 || (v15 = [(NSArray *)v12 count], v15 != [(NSArray *)v14 count]))
    {
LABEL_33:

      goto LABEL_57;
    }

    v35 = [(NSArray *)v12 count];
    if (v35)
    {
      v16 = 0;
      do
      {
        v17 = [(NSArray *)v12 objectAtIndexedSubscript:v16];
        v18 = [(NSArray *)v14 objectAtIndexedSubscript:v16];
        v19 = [v17 totalAmount];
        v20 = [v18 totalAmount];
        v21 = v20;
        if (v19 && v20)
        {
          v22 = [v19 isEqual:v20];
        }

        else
        {
          v22 = v19 == v20;
        }

        if ((v22 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      while (v35 != ++v16);
    }
  }

  rewards = self->_rewards;
  v24 = v4[12];
  if (rewards && v24)
  {
    if (![(PKPaymentTransactionGroup *)rewards isEqual:?])
    {
      goto LABEL_57;
    }
  }

  else if (rewards != v24)
  {
    goto LABEL_57;
  }

  v25 = self->_totalSpending;
  v26 = v4[6];
  if (v25 && v26)
  {
    if (![(PKCurrencyAmount *)v25 isEqual:?])
    {
      goto LABEL_57;
    }
  }

  else if (v25 != v26)
  {
    goto LABEL_57;
  }

  previousMaxAmount = self->_previousMaxAmount;
  v28 = v4[11];
  if (previousMaxAmount && v28)
  {
    if (![(PKCurrencyAmount *)previousMaxAmount isEqual:?])
    {
      goto LABEL_57;
    }
  }

  else if (previousMaxAmount != v28)
  {
    goto LABEL_57;
  }

  interest = self->_interest;
  v30 = v4[13];
  if (interest && v30)
  {
    if (![(PKPaymentTransactionGroup *)interest isEqual:?])
    {
      goto LABEL_57;
    }
  }

  else if (interest != v30)
  {
    goto LABEL_57;
  }

  insights = self->_insights;
  v32 = v4[9];
  if (insights && v32)
  {
    if (![(PKSpendingInsightTrendCollection *)insights isEqual:?])
    {
      goto LABEL_57;
    }
  }

  else if (insights != v32)
  {
    goto LABEL_57;
  }

  if (self->_isLoading != *(v4 + 9))
  {
    goto LABEL_57;
  }

  v33 = self->_summaryType == v4[2];
LABEL_58:

  return v33;
}

- (unint64_t)hash
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_startDate];
  [v3 safelyAddObject:self->_endDate];
  [v3 safelyAddObject:self->_totalSpending];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_orderedSpendingCategories;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * v8) totalAmount];
        [v3 safelyAddObject:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [v3 safelyAddObject:self->_rewards];
  [v3 safelyAddObject:self->_previousTotalSpending];
  [v3 safelyAddObject:self->_previousMaxAmount];
  [v3 safelyAddObject:self->_interest];
  [v3 safelyAddObject:self->_insights];
  v10 = PKCombinedHash(17, v3);
  isLoading = self->_isLoading;
  summaryType = self->_summaryType;

  return summaryType - (isLoading - v10 + 32 * v10) + 32 * (isLoading - v10 + 32 * v10);
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(NSDate *)self->_startDate description];
  [v3 appendFormat:@"startDate: '%@'; ", v4];

  v5 = [(NSDate *)self->_endDate description];
  [v3 appendFormat:@"endDate: '%@'; ", v5];

  [v3 appendFormat:@"totalSpending: '%@'; ", self->_totalSpending];
  [v3 appendFormat:@"previousTotalSpending: '%@'; ", self->_previousTotalSpending];
  [v3 appendFormat:@"previousMaxAmount: '%@'; ", self->_previousMaxAmount];
  [v3 appendFormat:@"type: '%lu'; ", self->_summaryType];
  [v3 appendFormat:@"unit: '%lu'; ", self->_summaryUnit];
  [v3 appendFormat:@"categories: '%@'; ", self->_orderedSpendingCategories];
  [v3 appendFormat:@"merchants: '%@'; ", self->_orderedSpendingPerMerchants];
  [v3 appendFormat:@"insights: '%@'; ", self->_insights];
  [v3 appendFormat:@">"];
  v6 = [v3 copy];

  return v6;
}

- (BOOL)isCurrentPeriod
{
  endDate = self->_endDate;
  v3 = [MEMORY[0x1E695DF00] date];
  LOBYTE(endDate) = [(NSDate *)endDate compare:v3]== NSOrderedDescending;

  return endDate;
}

@end