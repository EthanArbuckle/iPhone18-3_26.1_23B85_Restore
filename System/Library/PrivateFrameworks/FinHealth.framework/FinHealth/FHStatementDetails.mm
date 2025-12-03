@interface FHStatementDetails
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation FHStatementDetails

- (unint64_t)hash
{
  statementIdentifier = [(FHStatementDetails *)self statementIdentifier];
  v4 = [statementIdentifier hash];

  openingDate = [(FHStatementDetails *)self openingDate];
  v6 = 17 * (17 * v4 + [openingDate hash]);

  closingDate = [(FHStatementDetails *)self closingDate];
  v8 = 17 * (v6 + [closingDate hash]);

  remainingStatementBalance = [(FHStatementDetails *)self remainingStatementBalance];
  v10 = 17 * (v8 + [remainingStatementBalance hash]);

  remainingMinimumPayment = [(FHStatementDetails *)self remainingMinimumPayment];
  v12 = 17 * (v10 + [remainingMinimumPayment hash]);

  minimumDue = [(FHStatementDetails *)self minimumDue];
  v14 = 17 * (v12 + [minimumDue hash]);

  creditLimit = [(FHStatementDetails *)self creditLimit];
  v16 = 17 * (v14 + [creditLimit hash]);

  statementBalance = [(FHStatementDetails *)self statementBalance];
  v18 = 17 * (v16 + [statementBalance hash]);

  currentBalance = [(FHStatementDetails *)self currentBalance];
  v20 = 17 * (v18 + [currentBalance hash]);

  currentBalanceForMonthZero = [(FHStatementDetails *)self currentBalanceForMonthZero];
  v22 = 17 * (v20 + [currentBalanceForMonthZero hash]);

  currentStatementIdentifier = [(FHStatementDetails *)self currentStatementIdentifier];
  v24 = 17 * (v22 + [currentStatementIdentifier hash]);

  v25 = 17 * (v24 + [(FHStatementDetails *)self isMonthZero]);
  v26 = 17 * (v25 + [(FHStatementDetails *)self isMonthOne]);
  return v26 + [(FHStatementDetails *)self isMonthOfMerge]+ 0x25632BDBC201BE1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(v23) = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    statementIdentifier = [(FHStatementDetails *)self statementIdentifier];
    statementIdentifier2 = [(FHStatementDetails *)v5 statementIdentifier];
    if ([statementIdentifier isEqual:statementIdentifier2])
    {
      openingDate = [(FHStatementDetails *)self openingDate];
      openingDate2 = [(FHStatementDetails *)v5 openingDate];
      if ([openingDate isEqual:openingDate2])
      {
        closingDate = [(FHStatementDetails *)self closingDate];
        closingDate2 = [(FHStatementDetails *)v5 closingDate];
        if ([closingDate isEqual:closingDate2])
        {
          remainingStatementBalance = [(FHStatementDetails *)self remainingStatementBalance];
          remainingStatementBalance2 = [(FHStatementDetails *)v5 remainingStatementBalance];
          if ([remainingStatementBalance isEqual:remainingStatementBalance2])
          {
            v39 = remainingStatementBalance;
            remainingMinimumPayment = [(FHStatementDetails *)self remainingMinimumPayment];
            [(FHStatementDetails *)v5 remainingMinimumPayment];
            v38 = v40 = remainingMinimumPayment;
            if ([remainingMinimumPayment isEqual:?])
            {
              minimumDue = [(FHStatementDetails *)self minimumDue];
              minimumDue2 = [(FHStatementDetails *)v5 minimumDue];
              v37 = minimumDue;
              if ([minimumDue isEqual:?])
              {
                creditLimit = [(FHStatementDetails *)self creditLimit];
                creditLimit2 = [(FHStatementDetails *)v5 creditLimit];
                v35 = creditLimit;
                if ([creditLimit isEqual:?])
                {
                  statementBalance = [(FHStatementDetails *)self statementBalance];
                  statementBalance2 = [(FHStatementDetails *)v5 statementBalance];
                  v33 = statementBalance;
                  if ([statementBalance isEqual:?])
                  {
                    currentBalance = [(FHStatementDetails *)self currentBalance];
                    currentBalance2 = [(FHStatementDetails *)v5 currentBalance];
                    v31 = currentBalance;
                    if ([currentBalance isEqual:?])
                    {
                      currentBalanceForMonthZero = [(FHStatementDetails *)self currentBalanceForMonthZero];
                      currentBalanceForMonthZero2 = [(FHStatementDetails *)v5 currentBalanceForMonthZero];
                      v29 = currentBalanceForMonthZero;
                      if ([currentBalanceForMonthZero isEqual:?])
                      {
                        currentStatementIdentifier = [(FHStatementDetails *)self currentStatementIdentifier];
                        currentStatementIdentifier2 = [(FHStatementDetails *)v5 currentStatementIdentifier];
                        v27 = currentStatementIdentifier;
                        if ([currentStatementIdentifier isEqual:?] && (v21 = -[FHStatementDetails isMonthZero](self, "isMonthZero"), v21 == -[FHStatementDetails isMonthZero](v5, "isMonthZero")) && (v22 = -[FHStatementDetails isMonthOne](self, "isMonthOne"), v22 == -[FHStatementDetails isMonthOne](v5, "isMonthOne")))
                        {
                          isMonthOfMerge = [(FHStatementDetails *)self isMonthOfMerge];
                          v23 = isMonthOfMerge ^ [(FHStatementDetails *)v5 isMonthOfMerge]^ 1;
                        }

                        else
                        {
                          LOBYTE(v23) = 0;
                        }

                        remainingStatementBalance = v39;
                      }

                      else
                      {
                        LOBYTE(v23) = 0;
                        remainingStatementBalance = v39;
                      }
                    }

                    else
                    {
                      LOBYTE(v23) = 0;
                      remainingStatementBalance = v39;
                    }
                  }

                  else
                  {
                    LOBYTE(v23) = 0;
                    remainingStatementBalance = v39;
                  }
                }

                else
                {
                  LOBYTE(v23) = 0;
                  remainingStatementBalance = v39;
                }
              }

              else
              {
                LOBYTE(v23) = 0;
                remainingStatementBalance = v39;
              }
            }

            else
            {
              LOBYTE(v23) = 0;
              remainingStatementBalance = v39;
            }
          }

          else
          {
            LOBYTE(v23) = 0;
          }
        }

        else
        {
          LOBYTE(v23) = 0;
        }
      }

      else
      {
        LOBYTE(v23) = 0;
      }
    }

    else
    {
      LOBYTE(v23) = 0;
    }
  }

  else
  {
    LOBYTE(v23) = 0;
  }

  return v23;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"statementIdentifier: '%@'; ", self->_statementIdentifier];
  [v3 appendFormat:@"OpeningDate: '%@'; ", self->_openingDate];
  [v3 appendFormat:@"ClosingDate: '%@'; ", self->_closingDate];
  [v3 appendFormat:@"remainingStatementBalance: '%@'; ", self->_remainingStatementBalance];
  [v3 appendFormat:@"remainingMinimumPayment: '%@'; ", self->_remainingMinimumPayment];
  [v3 appendFormat:@"minimumDue: '%@'; ", self->_minimumDue];
  [v3 appendFormat:@"creditLimit: '%@'; ", self->_creditLimit];
  [v3 appendFormat:@"statementBalance: '%@'; ", self->_statementBalance];
  [v3 appendFormat:@"currentBalance: '%@'; ", self->_currentBalance];
  [v3 appendFormat:@"currentBalanceForMonthZero: '%@'; ", self->_currentBalanceForMonthZero];
  [v3 appendFormat:@"currentStatementIdentifier: '%@'; ", self->_currentStatementIdentifier];
  [v3 appendFormat:@"isMonthZero: '%d'; ", self->_isMonthZero];
  [v3 appendFormat:@"isMonthOne: '%d'; ", self->_isMonthOne];
  [v3 appendFormat:@"isMonthOfMerge: '%d'; ", self->_isMonthOfMerge];
  [v3 appendFormat:@">"];

  return v3;
}

@end