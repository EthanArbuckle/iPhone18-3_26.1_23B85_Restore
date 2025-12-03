@interface PKSpendingInsightTrend
- (BOOL)isEqual:(id)equal;
- (PKSpendingInsightTrend)initWithCoder:(id)coder;
- (PKSpendingInsightTrend)initWithFHFeatureInsight:(id)insight;
- (PKSpendingInsightTrend)initWithType:(unint64_t)type direction:(unint64_t)direction percentageChange:(double)change amountChange:(id)amountChange merchantCategory:(int64_t)category totalSpending:(id)spending previousTotalSpending:(id)totalSpending;
- (id)description;
- (id)formattedPercentage;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSpendingInsightTrend

- (PKSpendingInsightTrend)initWithType:(unint64_t)type direction:(unint64_t)direction percentageChange:(double)change amountChange:(id)amountChange merchantCategory:(int64_t)category totalSpending:(id)spending previousTotalSpending:(id)totalSpending
{
  amountChangeCopy = amountChange;
  spendingCopy = spending;
  totalSpendingCopy = totalSpending;
  v23.receiver = self;
  v23.super_class = PKSpendingInsightTrend;
  v20 = [(PKSpendingInsightTrend *)&v23 init];
  v21 = v20;
  if (v20)
  {
    v20->_type = type;
    v20->_direction = direction;
    v20->_percentageChange = change;
    objc_storeStrong(&v20->_amountChange, amountChange);
    v21->_category = category;
    objc_storeStrong(&v21->_totalSpending, spending);
    objc_storeStrong(&v21->_previousTotalSpending, totalSpending);
  }

  return v21;
}

- (PKSpendingInsightTrend)initWithFHFeatureInsight:(id)insight
{
  insightCopy = insight;
  v52.receiver = self;
  v52.super_class = PKSpendingInsightTrend;
  v6 = [(PKSpendingInsightTrend *)&v52 init];
  if (!v6)
  {
LABEL_41:
    v16 = v6;
    goto LABEL_42;
  }

  if (!insightCopy)
  {
    goto LABEL_11;
  }

  type = [insightCopy type];
  v8 = _MergedGlobals_170();
  v9 = type;
  v10 = v8;
  v11 = v10;
  if (v9 == v10)
  {
  }

  else
  {
    if (!v9 || !v10)
    {

      averageAmount = v9;
      goto LABEL_13;
    }

    v12 = [v9 isEqualToString:v10];

    if (!v12)
    {
      goto LABEL_14;
    }
  }

  averageAmount = [insightCopy averageAmount];
  if (![averageAmount pk_isZeroNumber])
  {
LABEL_13:

LABEL_14:
LABEL_15:
    type2 = [insightCopy type];
    v18 = _MergedGlobals_170();
    v19 = type2;
    v20 = v18;
    v21 = v20;
    if (v20 == v19)
    {
    }

    else
    {
      if (!v19 || !v20)
      {

        goto LABEL_23;
      }

      v22 = [v19 isEqualToString:v20];

      if ((v22 & 1) == 0)
      {
LABEL_23:
        v24 = off_1ED6D1090();
        v25 = v19;
        v26 = v24;
        v27 = v26;
        if (v26 == v25)
        {
        }

        else
        {
          if (!v19 || !v26)
          {

LABEL_31:
            v23 = 0;
LABEL_32:

            v6->_type = v23;
            spendingInsightPercentageValue = [insightCopy spendingInsightPercentageValue];
            [spendingInsightPercentageValue doubleValue];
            v6->_percentageChange = v30;

            spendAmount = [insightCopy spendAmount];
            v32 = PKCurrencyAmountCreate(spendAmount, &cfstr_Usd.isa, 0);
            totalSpending = v6->_totalSpending;
            v6->_totalSpending = v32;

            averageAmount2 = [insightCopy averageAmount];
            v35 = PKCurrencyAmountCreate(averageAmount2, &cfstr_Usd.isa, 0);
            previousTotalSpending = v6->_previousTotalSpending;
            v6->_previousTotalSpending = v35;

            spendAmount2 = [insightCopy spendAmount];
            pk_isZeroNumber = [spendAmount2 pk_isZeroNumber];

            v39 = 0;
            if ((pk_isZeroNumber & 1) == 0)
            {
              direction = [insightCopy direction];
              if (direction)
              {
                if (direction == 2)
                {
                  percentageChange = v6->_percentageChange;
                  if (percentageChange <= 0.0 || (+[PKSpendingInsightTrend percentageChangeSteadyThreshold], percentageChange >= v51))
                  {
                    v39 = 5;
                  }

                  else
                  {
                    v39 = 3;
                  }
                }

                else
                {
                  if (direction != 1)
                  {
LABEL_34:
                    spendingInsightAmount = [insightCopy spendingInsightAmount];
                    pk_absoluteValue = [spendingInsightAmount pk_absoluteValue];

                    v42 = PKCurrencyAmountCreate(pk_absoluteValue, &cfstr_Usd.isa, 0);
                    amountChange = v6->_amountChange;
                    v6->_amountChange = v42;

                    if (v6->_type == 2 && (off_1ED6D1088(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      merchantCategory = [insightCopy merchantCategory];
                      if ((merchantCategory - 1) >= 7)
                      {
                        v45 = 0;
                      }

                      else
                      {
                        v45 = merchantCategory;
                      }
                    }

                    else
                    {
                      v45 = 0;
                    }

                    v6->_category = v45;
                    objc_storeStrong(&v6->_fhInsight, insight);

                    goto LABEL_41;
                  }

                  v48 = v6->_percentageChange;
                  if (v48 <= 0.0 || (+[PKSpendingInsightTrend percentageChangeSteadyThreshold], v48 >= v49))
                  {
                    v39 = 4;
                  }

                  else
                  {
                    v39 = 2;
                  }
                }
              }

              else
              {
                v39 = 1;
              }
            }

            v6->_direction = v39;
            goto LABEL_34;
          }

          v28 = [v25 isEqualToString:v26];

          if (!v28)
          {
            goto LABEL_31;
          }
        }

        v23 = 2;
        goto LABEL_32;
      }
    }

    v23 = 1;
    goto LABEL_32;
  }

  spendAmount3 = [insightCopy spendAmount];
  pk_isZeroNumber2 = [spendAmount3 pk_isZeroNumber];

  if (pk_isZeroNumber2)
  {
    goto LABEL_15;
  }

LABEL_11:
  v16 = 0;
LABEL_42:

  return v16;
}

- (PKSpendingInsightTrend)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PKSpendingInsightTrend;
  v5 = [(PKSpendingInsightTrend *)&v10 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v5->_direction = [coderCopy decodeIntegerForKey:@"direction"];
    [coderCopy decodeDoubleForKey:@"percentageChange"];
    v5->_percentageChange = v6;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"amountChange"];
    amountChange = v5->_amountChange;
    v5->_amountChange = v7;

    v5->_category = [coderCopy decodeIntegerForKey:@"category"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeInteger:self->_direction forKey:@"direction"];
  [coderCopy encodeDouble:@"percentageChange" forKey:self->_percentageChange];
  [coderCopy encodeObject:self->_amountChange forKey:@"amountChange"];
  [coderCopy encodeInteger:self->_category forKey:@"category"];
}

- (id)formattedPercentage
{
  percentageChange = self->_percentageChange;
  if (percentageChange <= 1000.0)
  {
    if (percentageChange < 1.0 && percentageChange > 0.0)
    {
      percentageChange = 1.0;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0f%%", *&percentageChange];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%.0f%%+", 0x408F400000000000];
  }
  v4 = ;

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"type: '%lu'; ", self->_type];
  [v3 appendFormat:@"direction: '%lu'; ", self->_direction];
  [v3 appendFormat:@"percentageChange: '%f'; ", *&self->_percentageChange];
  [v3 appendFormat:@"amountChange: '%@'; ", self->_amountChange];
  v4 = PKMerchantCategoryToString(self->_category);
  [v3 appendFormat:@"category: '%@'; ", v4];

  [v3 appendFormat:@"totalSpending: '%@'; ", self->_totalSpending];
  [v3 appendFormat:@"previousTotalSpending: '%@'; ", self->_previousTotalSpending];
  [v3 appendFormat:@"fhInsight: '%@'; ", self->_fhInsight];
  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_percentageChange != equalCopy[4])
  {
    goto LABEL_18;
  }

  amountChange = self->_amountChange;
  v6 = *(equalCopy + 5);
  if (amountChange && v6)
  {
    if (![(PKCurrencyAmount *)amountChange isEqual:?])
    {
      goto LABEL_18;
    }
  }

  else if (amountChange != v6)
  {
    goto LABEL_18;
  }

  if (self->_type != *(equalCopy + 2) || self->_direction != *(equalCopy + 3) || self->_category != *(equalCopy + 6))
  {
    goto LABEL_18;
  }

  totalSpending = self->_totalSpending;
  v8 = *(equalCopy + 7);
  if (!totalSpending || !v8)
  {
    if (totalSpending == v8)
    {
      goto LABEL_14;
    }

LABEL_18:
    v11 = 0;
    goto LABEL_19;
  }

  if (![(PKCurrencyAmount *)totalSpending isEqual:?])
  {
    goto LABEL_18;
  }

LABEL_14:
  previousTotalSpending = self->_previousTotalSpending;
  v10 = *(equalCopy + 8);
  if (previousTotalSpending && v10)
  {
    v11 = [(PKCurrencyAmount *)previousTotalSpending isEqual:?];
  }

  else
  {
    v11 = previousTotalSpending == v10;
  }

LABEL_19:

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_percentageChange];
  [v3 safelyAddObject:v4];

  [v3 safelyAddObject:self->_amountChange];
  [v3 safelyAddObject:self->_totalSpending];
  [v3 safelyAddObject:self->_previousTotalSpending];
  v5 = PKCombinedHash(17, v3);
  v6 = self->_type - v5 + 32 * v5;
  v7 = self->_direction - v6 + 32 * v6;
  v8 = self->_category - v7 + 32 * v7;

  return v8;
}

@end