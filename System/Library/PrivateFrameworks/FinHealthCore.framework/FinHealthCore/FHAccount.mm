@interface FHAccount
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation FHAccount

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v27 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(FHAccount *)self accountID];
    v7 = [(FHAccount *)v5 accountID];
    if (FHEqualStrings(v6, v7) && (v8 = [(FHAccount *)self sourceType], v8 == [(FHAccount *)v5 sourceType]) && (v9 = [(FHAccount *)self accountCategory], v9 == [(FHAccount *)v5 accountCategory]) && (v10 = [(FHAccount *)self accountType], v10 == [(FHAccount *)v5 accountType]))
    {
      v11 = [(FHAccount *)self accountDescription];
      v12 = [(FHAccount *)v5 accountDescription];
      if (FHEqualStrings(v11, v12) && (v13 = [(FHAccount *)self accountStatus], v13 == [(FHAccount *)v5 accountStatus]))
      {
        v14 = [(FHAccount *)self currency];
        v15 = [(FHAccount *)v5 currency];
        if (FHEqualStrings(v14, v15))
        {
          v16 = [(FHAccount *)self creditLimit];
          v17 = [(FHAccount *)v5 creditLimit];
          if (FHEqualObjects(v16, v17))
          {
            v45 = v16;
            v18 = [(FHAccount *)self nextPaymentDate];
            [(FHAccount *)v5 nextPaymentDate];
            v44 = v46 = v18;
            if (FHEqualObjects(v18, v44))
            {
              v19 = [(FHAccount *)self minimumPaymentAmount];
              v42 = [(FHAccount *)v5 minimumPaymentAmount];
              v43 = v19;
              if (FHEqualObjects(v19, v42))
              {
                v20 = [(FHAccount *)self overduePaymentAmount];
                v40 = [(FHAccount *)v5 overduePaymentAmount];
                v41 = v20;
                if (FHEqualObjects(v20, v40))
                {
                  v21 = [(FHAccount *)self accountBalance];
                  [(FHAccount *)v5 accountBalance];
                  v39 = v38 = v21;
                  if (FHEqualObjects(v21, v39))
                  {
                    v22 = [(FHAccount *)self institutionName];
                    v36 = [(FHAccount *)v5 institutionName];
                    v37 = v22;
                    if (FHEqualStrings(v22, v36))
                    {
                      v23 = [(FHAccount *)self institutionID];
                      v34 = [(FHAccount *)v5 institutionID];
                      v35 = v23;
                      if (FHEqualStrings(v23, v34))
                      {
                        v24 = [(FHAccount *)self uniqueAccountID];
                        v32 = [(FHAccount *)v5 uniqueAccountID];
                        v33 = v24;
                        if (FHEqualStrings(v24, v32))
                        {
                          v25 = [(FHAccount *)self externalAccountID];
                          v30 = [(FHAccount *)v5 externalAccountID];
                          v31 = v25;
                          if (FHEqualStrings(v25, v30))
                          {
                            v29 = [(FHAccount *)self fpanSuffix];
                            v26 = [(FHAccount *)v5 fpanSuffix];
                            v27 = FHEqualStrings(v29, v26);
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

                v16 = v45;
              }

              else
              {
                v27 = 0;
                v16 = v45;
              }
            }

            else
            {
              v27 = 0;
              v16 = v45;
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