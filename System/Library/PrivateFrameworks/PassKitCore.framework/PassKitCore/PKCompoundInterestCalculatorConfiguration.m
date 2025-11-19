@interface PKCompoundInterestCalculatorConfiguration
+ (id)configurationWithCreditAccount:(id)a3;
- (PKCompoundInterestCalculatorConfiguration)init;
- (id)description;
- (int64_t)_daysInYearForDate:(id)a3 withTimeZone:(id)a4;
- (void)updateWithCreditAccount:(id)a3;
@end

@implementation PKCompoundInterestCalculatorConfiguration

+ (id)configurationWithCreditAccount:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKCompoundInterestCalculatorConfiguration);
  [(PKCompoundInterestCalculatorConfiguration *)v4 updateWithCreditAccount:v3];

  return v4;
}

- (PKCompoundInterestCalculatorConfiguration)init
{
  v9.receiver = self;
  v9.super_class = PKCompoundInterestCalculatorConfiguration;
  v2 = [(PKCompoundInterestCalculatorConfiguration *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_calculationMethod = 0;
    v2->_compoundingPeriods = 365;
    v4 = [MEMORY[0x1E696AB90] zero];
    apr = v3->_apr;
    v3->_apr = v4;

    *&v3->_inGrace = 1;
    v6 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    calendar = v3->_calendar;
    v3->_calendar = v6;
  }

  return v3;
}

- (void)updateWithCreditAccount:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v38 = v4;
    v5 = [v4 type] == 1;
    v4 = v38;
    if (v5)
    {
      v6 = [v38 creditDetails];
      v7 = [v6 accountSummary];
      v8 = [v6 accountSummary];
      v9 = [v8 currentStatement];

      v10 = [v7 balanceSummary];
      v11 = [v6 rates];
      v12 = [v11 aprForPurchases];
      apr = self->_apr;
      self->_apr = v12;

      v14 = [v10 openingDate];
      periodStartDate = self->_periodStartDate;
      self->_periodStartDate = v14;

      v16 = [v10 closingDate];
      periodEndDate = self->_periodEndDate;
      self->_periodEndDate = v16;

      v18 = [v9 statementBalance];
      periodStartingBalance = self->_periodStartingBalance;
      self->_periodStartingBalance = v18;

      v20 = [v7 remainingStatementBalanceForInterestCalculation];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = [v7 remainingStatementBalance];
      }

      remainingPeriodStartingBalance = self->_remainingPeriodStartingBalance;
      self->_remainingPeriodStartingBalance = v22;

      v24 = [v7 remainingStatementBalance];
      remainingPeriodStartingBalanceForGracePurposes = self->_remainingPeriodStartingBalanceForGracePurposes;
      self->_remainingPeriodStartingBalanceForGracePurposes = v24;

      v26 = [v7 remainingMinimumPayment];
      remainingPeriodMinimumPayment = self->_remainingPeriodMinimumPayment;
      self->_remainingPeriodMinimumPayment = v26;

      v28 = [v7 remainingMinimumPaymentExcludedFromInterestCalculation];
      remainingPeriodMinimumPaymentExcludedFromInterestCalculation = self->_remainingPeriodMinimumPaymentExcludedFromInterestCalculation;
      self->_remainingPeriodMinimumPaymentExcludedFromInterestCalculation = v28;

      v30 = [v7 adjustedBalance];
      currentBalance = self->_currentBalance;
      self->_currentBalance = v30;

      self->_inGrace = [v7 inGrace];
      self->_isInDisasterRecovery = [v38 stateReason] == 2;
      v32 = [v7 unpostedInterest];
      unpostedInterest = self->_unpostedInterest;
      self->_unpostedInterest = v32;

      v34 = [v7 unpostedInterestTimestamp];
      unpostedInterestTimestamp = self->_unpostedInterestTimestamp;
      self->_unpostedInterestTimestamp = v34;

      v36 = [v6 productTimeZone];
      productTimeZone = self->_productTimeZone;
      self->_productTimeZone = v36;

      self->_compoundingPeriods = [(PKCompoundInterestCalculatorConfiguration *)self _daysInYearForDate:self->_periodStartDate withTimeZone:self->_productTimeZone];
      v4 = v38;
    }
  }
}

- (int64_t)_daysInYearForDate:(id)a3 withTimeZone:(id)a4
{
  calendar = self->_calendar;
  v6 = a4;
  v7 = a3;
  v8 = [(NSCalendar *)calendar copy];
  [v8 setTimeZone:v6];

  v9 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v10 = [v8 component:4 fromDate:v7];

  [v9 setYear:v10];
  [v9 setMonth:{objc_msgSend(v8, "minimumRangeOfUnit:", 8)}];
  [v9 setDay:{objc_msgSend(v8, "minimumRangeOfUnit:", 16)}];
  v11 = [v8 dateFromComponents:v9];
  [v9 setYear:{objc_msgSend(v9, "year") + 1}];
  v12 = [v8 dateFromComponents:v9];
  v13 = [v8 components:16 fromDate:v11 toDate:v12 options:0];
  v14 = [v13 day];

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_calculationMethod];
  [v6 appendFormat:@"calculationMethod: '%@'; ", v7];

  [v6 appendFormat:@"apr: '%@'; ", self->_apr];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_compoundingPeriods];
  [v6 appendFormat:@"compoundingPeriods: '%@'; ", v8];

  [v6 appendFormat:@"periodStartDate: '%@'; ", self->_periodStartDate];
  [v6 appendFormat:@"periodEndDate: '%@'; ", self->_periodEndDate];
  [v6 appendFormat:@"periodStartingBalance: '%@'; ", self->_periodStartingBalance];
  [v6 appendFormat:@"remainingPeriodStartingBalance: '%@'; ", self->_remainingPeriodStartingBalance];
  [v6 appendFormat:@"remainingPeriodStartingBalanceForGracePurposes: '%@'; ", self->_remainingPeriodStartingBalanceForGracePurposes];
  [v6 appendFormat:@"remainingPeriodMinimumPayment: '%@'; ", self->_remainingPeriodMinimumPayment];
  [v6 appendFormat:@"remainingPeriodMinimumPaymentExcludedFromInterestCalculation: '%@'; ", self->_remainingPeriodMinimumPaymentExcludedFromInterestCalculation];
  [v6 appendFormat:@"currentBalance: '%@'; ", self->_currentBalance];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_inGrace];
  [v6 appendFormat:@"inGrace: '%@'; ", v9];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInDisasterRecovery];
  [v6 appendFormat:@"isInDisasterRecovery: '%@'; ", v10];

  [v6 appendFormat:@"unpostedInterest: '%@'; ", self->_unpostedInterest];
  [v6 appendFormat:@"unpostedInterestTimestamp: '%@'; ", self->_unpostedInterestTimestamp];
  [v6 appendFormat:@"productTimeZone: '%@'; ", self->_productTimeZone];
  [v6 appendFormat:@"periodTransactions: '%@'; ", self->_periodTransactions];
  [v6 appendFormat:@"futurePayments: '%@'; ", self->_futurePayments];
  [v6 appendFormat:@">"];
  v11 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v11;
}

@end