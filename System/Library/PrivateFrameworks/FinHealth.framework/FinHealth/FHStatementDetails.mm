@interface FHStatementDetails
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation FHStatementDetails

- (unint64_t)hash
{
  v3 = [(FHStatementDetails *)self statementIdentifier];
  v4 = [v3 hash];

  v5 = [(FHStatementDetails *)self openingDate];
  v6 = 17 * (17 * v4 + [v5 hash]);

  v7 = [(FHStatementDetails *)self closingDate];
  v8 = 17 * (v6 + [v7 hash]);

  v9 = [(FHStatementDetails *)self remainingStatementBalance];
  v10 = 17 * (v8 + [v9 hash]);

  v11 = [(FHStatementDetails *)self remainingMinimumPayment];
  v12 = 17 * (v10 + [v11 hash]);

  v13 = [(FHStatementDetails *)self minimumDue];
  v14 = 17 * (v12 + [v13 hash]);

  v15 = [(FHStatementDetails *)self creditLimit];
  v16 = 17 * (v14 + [v15 hash]);

  v17 = [(FHStatementDetails *)self statementBalance];
  v18 = 17 * (v16 + [v17 hash]);

  v19 = [(FHStatementDetails *)self currentBalance];
  v20 = 17 * (v18 + [v19 hash]);

  v21 = [(FHStatementDetails *)self currentBalanceForMonthZero];
  v22 = 17 * (v20 + [v21 hash]);

  v23 = [(FHStatementDetails *)self currentStatementIdentifier];
  v24 = 17 * (v22 + [v23 hash]);

  v25 = 17 * (v24 + [(FHStatementDetails *)self isMonthZero]);
  v26 = 17 * (v25 + [(FHStatementDetails *)self isMonthOne]);
  return v26 + [(FHStatementDetails *)self isMonthOfMerge]+ 0x25632BDBC201BE1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(v23) = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(FHStatementDetails *)self statementIdentifier];
    v7 = [(FHStatementDetails *)v5 statementIdentifier];
    if ([v6 isEqual:v7])
    {
      v8 = [(FHStatementDetails *)self openingDate];
      v9 = [(FHStatementDetails *)v5 openingDate];
      if ([v8 isEqual:v9])
      {
        v10 = [(FHStatementDetails *)self closingDate];
        v11 = [(FHStatementDetails *)v5 closingDate];
        if ([v10 isEqual:v11])
        {
          v12 = [(FHStatementDetails *)self remainingStatementBalance];
          v13 = [(FHStatementDetails *)v5 remainingStatementBalance];
          if ([v12 isEqual:v13])
          {
            v39 = v12;
            v14 = [(FHStatementDetails *)self remainingMinimumPayment];
            [(FHStatementDetails *)v5 remainingMinimumPayment];
            v38 = v40 = v14;
            if ([v14 isEqual:?])
            {
              v15 = [(FHStatementDetails *)self minimumDue];
              v36 = [(FHStatementDetails *)v5 minimumDue];
              v37 = v15;
              if ([v15 isEqual:?])
              {
                v16 = [(FHStatementDetails *)self creditLimit];
                v34 = [(FHStatementDetails *)v5 creditLimit];
                v35 = v16;
                if ([v16 isEqual:?])
                {
                  v17 = [(FHStatementDetails *)self statementBalance];
                  v32 = [(FHStatementDetails *)v5 statementBalance];
                  v33 = v17;
                  if ([v17 isEqual:?])
                  {
                    v18 = [(FHStatementDetails *)self currentBalance];
                    v30 = [(FHStatementDetails *)v5 currentBalance];
                    v31 = v18;
                    if ([v18 isEqual:?])
                    {
                      v19 = [(FHStatementDetails *)self currentBalanceForMonthZero];
                      v28 = [(FHStatementDetails *)v5 currentBalanceForMonthZero];
                      v29 = v19;
                      if ([v19 isEqual:?])
                      {
                        v20 = [(FHStatementDetails *)self currentStatementIdentifier];
                        v26 = [(FHStatementDetails *)v5 currentStatementIdentifier];
                        v27 = v20;
                        if ([v20 isEqual:?] && (v21 = -[FHStatementDetails isMonthZero](self, "isMonthZero"), v21 == -[FHStatementDetails isMonthZero](v5, "isMonthZero")) && (v22 = -[FHStatementDetails isMonthOne](self, "isMonthOne"), v22 == -[FHStatementDetails isMonthOne](v5, "isMonthOne")))
                        {
                          v25 = [(FHStatementDetails *)self isMonthOfMerge];
                          v23 = v25 ^ [(FHStatementDetails *)v5 isMonthOfMerge]^ 1;
                        }

                        else
                        {
                          LOBYTE(v23) = 0;
                        }

                        v12 = v39;
                      }

                      else
                      {
                        LOBYTE(v23) = 0;
                        v12 = v39;
                      }
                    }

                    else
                    {
                      LOBYTE(v23) = 0;
                      v12 = v39;
                    }
                  }

                  else
                  {
                    LOBYTE(v23) = 0;
                    v12 = v39;
                  }
                }

                else
                {
                  LOBYTE(v23) = 0;
                  v12 = v39;
                }
              }

              else
              {
                LOBYTE(v23) = 0;
                v12 = v39;
              }
            }

            else
            {
              LOBYTE(v23) = 0;
              v12 = v39;
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