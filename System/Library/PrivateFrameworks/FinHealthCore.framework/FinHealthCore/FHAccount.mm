@interface FHAccount
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation FHAccount

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v27 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    accountID = [(FHAccount *)self accountID];
    accountID2 = [(FHAccount *)v5 accountID];
    if (FHEqualStrings(accountID, accountID2) && (v8 = [(FHAccount *)self sourceType], v8 == [(FHAccount *)v5 sourceType]) && (v9 = [(FHAccount *)self accountCategory], v9 == [(FHAccount *)v5 accountCategory]) && (v10 = [(FHAccount *)self accountType], v10 == [(FHAccount *)v5 accountType]))
    {
      accountDescription = [(FHAccount *)self accountDescription];
      accountDescription2 = [(FHAccount *)v5 accountDescription];
      if (FHEqualStrings(accountDescription, accountDescription2) && (v13 = [(FHAccount *)self accountStatus], v13 == [(FHAccount *)v5 accountStatus]))
      {
        currency = [(FHAccount *)self currency];
        currency2 = [(FHAccount *)v5 currency];
        if (FHEqualStrings(currency, currency2))
        {
          creditLimit = [(FHAccount *)self creditLimit];
          creditLimit2 = [(FHAccount *)v5 creditLimit];
          if (FHEqualObjects(creditLimit, creditLimit2))
          {
            v45 = creditLimit;
            nextPaymentDate = [(FHAccount *)self nextPaymentDate];
            [(FHAccount *)v5 nextPaymentDate];
            v44 = v46 = nextPaymentDate;
            if (FHEqualObjects(nextPaymentDate, v44))
            {
              minimumPaymentAmount = [(FHAccount *)self minimumPaymentAmount];
              minimumPaymentAmount2 = [(FHAccount *)v5 minimumPaymentAmount];
              v43 = minimumPaymentAmount;
              if (FHEqualObjects(minimumPaymentAmount, minimumPaymentAmount2))
              {
                overduePaymentAmount = [(FHAccount *)self overduePaymentAmount];
                overduePaymentAmount2 = [(FHAccount *)v5 overduePaymentAmount];
                v41 = overduePaymentAmount;
                if (FHEqualObjects(overduePaymentAmount, overduePaymentAmount2))
                {
                  accountBalance = [(FHAccount *)self accountBalance];
                  [(FHAccount *)v5 accountBalance];
                  v39 = v38 = accountBalance;
                  if (FHEqualObjects(accountBalance, v39))
                  {
                    institutionName = [(FHAccount *)self institutionName];
                    institutionName2 = [(FHAccount *)v5 institutionName];
                    v37 = institutionName;
                    if (FHEqualStrings(institutionName, institutionName2))
                    {
                      institutionID = [(FHAccount *)self institutionID];
                      institutionID2 = [(FHAccount *)v5 institutionID];
                      v35 = institutionID;
                      if (FHEqualStrings(institutionID, institutionID2))
                      {
                        uniqueAccountID = [(FHAccount *)self uniqueAccountID];
                        uniqueAccountID2 = [(FHAccount *)v5 uniqueAccountID];
                        v33 = uniqueAccountID;
                        if (FHEqualStrings(uniqueAccountID, uniqueAccountID2))
                        {
                          externalAccountID = [(FHAccount *)self externalAccountID];
                          externalAccountID2 = [(FHAccount *)v5 externalAccountID];
                          v31 = externalAccountID;
                          if (FHEqualStrings(externalAccountID, externalAccountID2))
                          {
                            fpanSuffix = [(FHAccount *)self fpanSuffix];
                            fpanSuffix2 = [(FHAccount *)v5 fpanSuffix];
                            v27 = FHEqualStrings(fpanSuffix, fpanSuffix2);
                          }

                          else
                          {
                            v27 = 0;
                          }
                        }

                        else
                        {
                          v27 = 0;
                        }
                      }

                      else
                      {
                        v27 = 0;
                      }
                    }

                    else
                    {
                      v27 = 0;
                    }
                  }

                  else
                  {
                    v27 = 0;
                  }
                }

                else
                {
                  v27 = 0;
                }

                creditLimit = v45;
              }

              else
              {
                v27 = 0;
                creditLimit = v45;
              }
            }

            else
            {
              v27 = 0;
              creditLimit = v45;
            }
          }

          else
          {
            v27 = 0;
          }
        }

        else
        {
          v27 = 0;
        }
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"%@: '%@'; ", @"accountID", self->_accountID];
  [v3 appendFormat:@"%@: '%lu'; ", @"sourceType", self->_sourceType];
  [v3 appendFormat:@"%@: '%lu'; ", @"accountCategory", self->_accountCategory];
  [v3 appendFormat:@"%@: '%lu'; ", @"accountType", self->_accountType];
  [v3 appendFormat:@"%@: '%@'; ", @"accountDescription", self->_accountDescription];
  [v3 appendFormat:@"%@: '%lu'; ", @"accountStatus", self->_accountStatus];
  [v3 appendFormat:@"%@: '%@'; ", @"currency", self->_currency];
  [v3 appendFormat:@"%@: '%@'; ", @"creditLimit", self->_creditLimit];
  [v3 appendFormat:@"%@: '%@'; ", @"nextPaymentDate", self->_nextPaymentDate];
  [v3 appendFormat:@"%@: '%@'; ", @"minimumPaymentAmount", self->_minimumPaymentAmount];
  [v3 appendFormat:@"%@: '%@'; ", @"overduePaymentAmount", self->_overduePaymentAmount];
  [v3 appendFormat:@"%@: '%@'; ", @"accountBalance", self->_accountBalance];
  [v3 appendFormat:@"%@: '%@'; ", @"institutionName", self->_institutionName];
  [v3 appendFormat:@"%@: '%@'; ", @"institutionID", self->_institutionID];
  [v3 appendFormat:@"%@: '%@'; ", @"uniqueAccountID", self->_uniqueAccountID];
  [v3 appendFormat:@"%@: '%@'; ", @"externalAccountID", self->_externalAccountID];
  [v3 appendFormat:@"%@: '%@'; ", @"dpanSuffix", self->_dpanSuffix];
  [v3 appendFormat:@"%@: '%@'; ", @"fpanSuffix", self->_fpanSuffix];
  [v3 appendFormat:@"%@: '%@'; ", @"virtualCardSuffix", self->_virtualCardSuffix];

  return v3;
}

@end