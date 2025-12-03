@interface PKCompoundInterestCalculatorConfiguration
+ (id)configurationWithCreditAccount:(id)account;
- (PKCompoundInterestCalculatorConfiguration)init;
- (id)description;
- (int64_t)_daysInYearForDate:(id)date withTimeZone:(id)zone;
- (void)updateWithCreditAccount:(id)account;
@end

@implementation PKCompoundInterestCalculatorConfiguration

+ (id)configurationWithCreditAccount:(id)account
{
  accountCopy = account;
  v4 = objc_alloc_init(PKCompoundInterestCalculatorConfiguration);
  [(PKCompoundInterestCalculatorConfiguration *)v4 updateWithCreditAccount:accountCopy];

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
    zero = [MEMORY[0x1E696AB90] zero];
    apr = v3->_apr;
    v3->_apr = zero;

    *&v3->_inGrace = 1;
    v6 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    calendar = v3->_calendar;
    v3->_calendar = v6;
  }

  return v3;
}

- (void)updateWithCreditAccount:(id)account
{
  accountCopy = account;
  if (accountCopy)
  {
    v38 = accountCopy;
    v5 = [accountCopy type] == 1;
    accountCopy = v38;
    if (v5)
    {
      creditDetails = [v38 creditDetails];
      accountSummary = [creditDetails accountSummary];
      accountSummary2 = [creditDetails accountSummary];
      currentStatement = [accountSummary2 currentStatement];

      balanceSummary = [accountSummary balanceSummary];
      rates = [creditDetails rates];
      aprForPurchases = [rates aprForPurchases];
      apr = self->_apr;
      self->_apr = aprForPurchases;

      openingDate = [balanceSummary openingDate];
      periodStartDate = self->_periodStartDate;
      self->_periodStartDate = openingDate;

      closingDate = [balanceSummary closingDate];
      periodEndDate = self->_periodEndDate;
      self->_periodEndDate = closingDate;

      statementBalance = [currentStatement statementBalance];
      periodStartingBalance = self->_periodStartingBalance;
      self->_periodStartingBalance = statementBalance;

      remainingStatementBalanceForInterestCalculation = [accountSummary remainingStatementBalanceForInterestCalculation];
      v21 = remainingStatementBalanceForInterestCalculation;
      if (remainingStatementBalanceForInterestCalculation)
      {
        remainingStatementBalance = remainingStatementBalanceForInterestCalculation;
      }

      else
      {
        remainingStatementBalance = [accountSummary remainingStatementBalance];
      }

      remainingPeriodStartingBalance = self->_remainingPeriodStartingBalance;
      self->_remainingPeriodStartingBalance = remainingStatementBalance;

      remainingStatementBalance2 = [accountSummary remainingStatementBalance];
      remainingPeriodStartingBalanceForGracePurposes = self->_remainingPeriodStartingBalanceForGracePurposes;
      self->_remainingPeriodStartingBalanceForGracePurposes = remainingStatementBalance2;

      remainingMinimumPayment = [accountSummary remainingMinimumPayment];
      remainingPeriodMinimumPayment = self->_remainingPeriodMinimumPayment;
      self->_remainingPeriodMinimumPayment = remainingMinimumPayment;

      remainingMinimumPaymentExcludedFromInterestCalculation = [accountSummary remainingMinimumPaymentExcludedFromInterestCalculation];
      remainingPeriodMinimumPaymentExcludedFromInterestCalculation = self->_remainingPeriodMinimumPaymentExcludedFromInterestCalculation;
      self->_remainingPeriodMinimumPaymentExcludedFromInterestCalculation = remainingMinimumPaymentExcludedFromInterestCalculation;

      adjustedBalance = [accountSummary adjustedBalance];
      currentBalance = self->_currentBalance;
      self->_currentBalance = adjustedBalance;

      self->_inGrace = [accountSummary inGrace];
      self->_isInDisasterRecovery = [v38 stateReason] == 2;
      unpostedInterest = [accountSummary unpostedInterest];
      unpostedInterest = self->_unpostedInterest;
      self->_unpostedInterest = unpostedInterest;

      unpostedInterestTimestamp = [accountSummary unpostedInterestTimestamp];
      unpostedInterestTimestamp = self->_unpostedInterestTimestamp;
      self->_unpostedInterestTimestamp = unpostedInterestTimestamp;

      productTimeZone = [creditDetails productTimeZone];
      productTimeZone = self->_productTimeZone;
      self->_productTimeZone = productTimeZone;

      self->_compoundingPeriods = [(PKCompoundInterestCalculatorConfiguration *)self _daysInYearForDate:self->_periodStartDate withTimeZone:self->_productTimeZone];
      accountCopy = v38;
    }
  }
}

- (int64_t)_daysInYearForDate:(id)date withTimeZone:(id)zone
{
  calendar = self->_calendar;
  zoneCopy = zone;
  dateCopy = date;
  v8 = [(NSCalendar *)calendar copy];
  [v8 setTimeZone:zoneCopy];

  v9 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v10 = [v8 component:4 fromDate:dateCopy];

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