@interface PKCreditAccountSummary
- (BOOL)isEqual:(id)a3;
- (NSDate)paymentDueDate;
- (NSDecimalNumber)adjustedBalance;
- (PKCreditAccountSummary)initWithCoder:(id)a3;
- (PKCreditAccountSummary)initWithDictionary:(id)a3;
- (id)accountUserActivityForAccountUserAltDSID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)redeemableRewardsBalanceForUser:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)ingestExtendedAccountDetails:(id)a3;
@end

@implementation PKCreditAccountSummary

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_creditLimit];
  [v3 safelyAddObject:self->_availableCredit];
  [v3 safelyAddObject:self->_currentBalance];
  [v3 safelyAddObject:self->_adjustedBalance];
  [v3 safelyAddObject:self->_remainingMinimumPayment];
  [v3 safelyAddObject:self->_remainingStatementBalance];
  [v3 safelyAddObject:self->_remainingStatementBalanceForInterestCalculation];
  [v3 safelyAddObject:self->_lastPaymentDate];
  [v3 safelyAddObject:self->_balanceSummary];
  [v3 safelyAddObject:self->_accountUserActivity];
  [v3 safelyAddObject:self->_mergeSummary];
  [v3 safelyAddObject:self->_currentStatement];
  [v3 safelyAddObject:self->_unpostedInterest];
  [v3 safelyAddObject:self->_unpostedInterestTimestamp];
  [v3 safelyAddObject:self->_chargeOffPreventionAmount];
  [v3 safelyAddObject:self->_pastDueAmount];
  [v3 safelyAddObject:self->_paymentDueDate];
  [v3 safelyAddObject:self->_remainingMinimumPaymentExcludedFromInterestCalculation];
  [v3 safelyAddObject:self->_installmentBalance];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_autoPayEnabled - v4 + 32 * v4;
  v6 = self->_requiresDebtCollectionNotices - v5 + 32 * v5;
  v7 = self->_balanceStatus - v6 + 32 * v6;
  v8 = self->_cyclesPastDue - v7 + 32 * v7;
  v9 = self->_inGrace - v8 + 32 * v8;
  v10 = self->_recoveryPaymentPlansSupported - v9 + 32 * v9;

  return v10;
}

- (PKCreditAccountSummary)initWithDictionary:(id)a3
{
  v4 = a3;
  v61.receiver = self;
  v61.super_class = PKCreditAccountSummary;
  v5 = [(PKCreditAccountSummary *)&v61 init];
  if (v5)
  {
    v6 = [v4 PKDecimalNumberFromStringForKey:@"creditLimit"];
    creditLimit = v5->_creditLimit;
    v5->_creditLimit = v6;

    v8 = [v4 PKDecimalNumberFromStringForKey:@"availableCredit"];
    availableCredit = v5->_availableCredit;
    v5->_availableCredit = v8;

    v10 = [v4 PKDecimalNumberFromStringForKey:@"currentBalance"];
    currentBalance = v5->_currentBalance;
    v5->_currentBalance = v10;

    v12 = [v4 PKDecimalNumberFromStringForKey:@"adjustedBalance"];
    adjustedBalance = v5->_adjustedBalance;
    v5->_adjustedBalance = v12;

    v14 = [v4 PKDecimalNumberFromStringForKey:@"rewardsBalance"];
    rewardsBalance = v5->_rewardsBalance;
    v5->_rewardsBalance = v14;

    v16 = [v4 PKDecimalNumberFromStringForKey:@"remainingMinimumPayment"];
    remainingMinimumPayment = v5->_remainingMinimumPayment;
    v5->_remainingMinimumPayment = v16;

    v18 = [v4 PKDecimalNumberFromStringForKey:@"remainingStatementBalance"];
    remainingStatementBalance = v5->_remainingStatementBalance;
    v5->_remainingStatementBalance = v18;

    v20 = [v4 PKDecimalNumberFromStringForKey:@"remainingStatementBalanceForInterestCalculation"];
    remainingStatementBalanceForInterestCalculation = v5->_remainingStatementBalanceForInterestCalculation;
    v5->_remainingStatementBalanceForInterestCalculation = v20;

    v5->_autoPayEnabled = [v4 PKBoolForKey:@"autopayStatus"];
    v5->_requiresDebtCollectionNotices = [v4 PKBoolForKey:@"requiresDebtCollectionNotices"];
    v22 = [v4 PKStringForKey:@"balanceStatus"];
    v23 = [v22 lowercaseString];
    if ([v23 isEqualToString:@"current"])
    {
      v24 = 1;
    }

    else if ([v23 isEqualToString:@"pastdue"])
    {
      v24 = 2;
    }

    else
    {
      v24 = 0;
    }

    v5->_balanceStatus = v24;
    v5->_cyclesPastDue = [v4 PKIntegerForKey:@"cyclesPastDue"];
    v25 = [v4 PKDecimalNumberFromStringForKey:@"pastDueAmount"];
    pastDueAmount = v5->_pastDueAmount;
    v5->_pastDueAmount = v25;

    v27 = [v4 PKDateForKey:@"lastPaymentDate"];
    lastPaymentDate = v5->_lastPaymentDate;
    v5->_lastPaymentDate = v27;

    v29 = [v4 PKDateForKey:@"paymentDueDate"];
    paymentDueDate = v5->_paymentDueDate;
    v5->_paymentDueDate = v29;

    v31 = [v4 PKDecimalNumberFromStringForKey:@"unpostedInterest"];
    unpostedInterest = v5->_unpostedInterest;
    v5->_unpostedInterest = v31;

    v33 = [v4 PKDateForKey:@"unpostedInterestTimestamp"];
    unpostedInterestTimestamp = v5->_unpostedInterestTimestamp;
    v5->_unpostedInterestTimestamp = v33;

    v5->_inGrace = [v4 PKBoolForKey:@"inGrace"];
    v35 = [v4 PKDecimalNumberFromStringForKey:@"remainingMinimumPaymentExcludedFromInterestCalculation"];
    remainingMinimumPaymentExcludedFromInterestCalculation = v5->_remainingMinimumPaymentExcludedFromInterestCalculation;
    v5->_remainingMinimumPaymentExcludedFromInterestCalculation = v35;

    v37 = [v4 PKDecimalNumberFromStringForKey:@"installmentBalance"];
    installmentBalance = v5->_installmentBalance;
    v5->_installmentBalance = v37;

    v5->_recoveryPaymentPlansSupported = [v4 PKBoolForKey:@"recoveryPaymentPlansSupported"];
    v39 = [v4 objectForKey:@"inGrace"];

    if (v39)
    {
      v5->_inGrace = [v4 PKBoolForKey:@"inGrace"];
    }

    else
    {
      v40 = v5->_unpostedInterest;
      if (v40)
      {
        v41 = [MEMORY[0x1E696AB90] zero];
        v5->_inGrace = [(NSDecimalNumber *)v40 compare:v41]!= NSOrderedDescending;
      }

      else
      {
        v5->_inGrace = 1;
      }
    }

    v42 = [v4 PKDecimalNumberFromStringForKey:@"chargeOffPreventionAmount"];
    chargeOffPreventionAmount = v5->_chargeOffPreventionAmount;
    v5->_chargeOffPreventionAmount = v42;

    v44 = [v4 PKDecimalNumberFromStringForKey:@"pastDueAmount"];
    v45 = v5->_pastDueAmount;
    v5->_pastDueAmount = v44;

    v46 = [PKCreditAccountBalanceSummary alloc];
    v47 = [v4 PKDictionaryForKey:@"balanceSummary"];
    v48 = [(PKCreditAccountBalanceSummary *)v46 initWithDictionary:v47];
    balanceSummary = v5->_balanceSummary;
    v5->_balanceSummary = v48;

    v50 = [PKCreditAccountStatement alloc];
    v51 = [v4 PKDictionaryForKey:@"currentStatement"];
    v52 = [(PKCreditAccountStatement *)v50 initWithDictionary:v51];
    currentStatement = v5->_currentStatement;
    v5->_currentStatement = v52;

    v54 = [v4 PKSetContaining:objc_opt_class() forKey:@"accountUserActivity"];
    v55 = [v54 pk_setByApplyingBlock:&__block_literal_global_15];
    accountUserActivity = v5->_accountUserActivity;
    v5->_accountUserActivity = v55;

    v57 = [v4 PKDictionaryForKey:@"mergeSummary"];
    if (v57)
    {
      v58 = [[PKCreditAccountMergeSummary alloc] initWithDictionary:v57];
      mergeSummary = v5->_mergeSummary;
      v5->_mergeSummary = v58;
    }
  }

  return v5;
}

PKCreditAccountUserActivity *__45__PKCreditAccountSummary_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKCreditAccountUserActivity alloc] initWithDictionary:v2];

  return v3;
}

- (NSDate)paymentDueDate
{
  v3 = PKForceAccountDueDateNumberDaysFromNow();
  v4 = v3;
  if (!v3 || (v5 = [v3 integerValue], v6 = objc_alloc_init(MEMORY[0x1E695DF10]), objc_msgSend(v6, "setDay:", v5), objc_msgSend(MEMORY[0x1E695DEE8], "autoupdatingCurrentCalendar"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E695DF00], "date"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "dateByAddingComponents:toDate:options:", v6, v8, 0), v9 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, !v9))
  {
    v9 = self->_paymentDueDate;
  }

  return v9;
}

- (void)ingestExtendedAccountDetails:(id)a3
{
  v4 = a3;
  self->_autoPayEnabled = [v4 PKBoolForKey:@"autopayStatus"];
  v5 = [PKCreditAccountStatement alloc];
  v8 = [v4 PKDictionaryForKey:@"currentStatement"];

  v6 = [(PKCreditAccountStatement *)v5 initWithDictionary:v8];
  currentStatement = self->_currentStatement;
  self->_currentStatement = v6;
}

- (NSDecimalNumber)adjustedBalance
{
  adjustedBalance = self->_adjustedBalance;
  if (!adjustedBalance)
  {
    adjustedBalance = self->_currentBalance;
  }

  return adjustedBalance;
}

- (id)accountUserActivityForAccountUserAltDSID:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_accountUserActivity;
    v6 = [(NSSet *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [v10 accountUserAltDSID];
          v12 = v4;
          v13 = v12;
          if (v11 == v12)
          {

LABEL_17:
            v15 = v10;
            goto LABEL_19;
          }

          if (v11)
          {
            v14 = [v11 isEqualToString:v12];

            if (v14)
            {
              goto LABEL_17;
            }
          }

          else
          {
          }
        }

        v7 = [(NSSet *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        v15 = 0;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v15 = 0;
    }

LABEL_19:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)redeemableRewardsBalanceForUser:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || ([v4 altDSID], v6 = objc_claimAutoreleasedReturnValue(), -[PKCreditAccountSummary accountUserActivityForAccountUserAltDSID:](self, "accountUserActivityForAccountUserAltDSID:", v6), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "rewardsBalance"), v8 = objc_claimAutoreleasedReturnValue(), v7, v6, !v8))
  {
    v8 = self->_rewardsBalance;
  }

  return v8;
}

- (PKCreditAccountSummary)initWithCoder:(id)a3
{
  v4 = a3;
  v52.receiver = self;
  v52.super_class = PKCreditAccountSummary;
  v5 = [(PKCreditAccountSummary *)&v52 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creditLimit"];
    creditLimit = v5->_creditLimit;
    v5->_creditLimit = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"availableCredit"];
    availableCredit = v5->_availableCredit;
    v5->_availableCredit = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentBalance"];
    currentBalance = v5->_currentBalance;
    v5->_currentBalance = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"adjustedBalance"];
    adjustedBalance = v5->_adjustedBalance;
    v5->_adjustedBalance = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rewardsBalance"];
    rewardsBalance = v5->_rewardsBalance;
    v5->_rewardsBalance = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remainingMinimumPayment"];
    remainingMinimumPayment = v5->_remainingMinimumPayment;
    v5->_remainingMinimumPayment = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remainingStatementBalance"];
    remainingStatementBalance = v5->_remainingStatementBalance;
    v5->_remainingStatementBalance = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remainingStatementBalanceForInterestCalculation"];
    remainingStatementBalanceForInterestCalculation = v5->_remainingStatementBalanceForInterestCalculation;
    v5->_remainingStatementBalanceForInterestCalculation = v20;

    v5->_autoPayEnabled = [v4 decodeBoolForKey:@"autopayStatus"];
    v5->_requiresDebtCollectionNotices = [v4 decodeBoolForKey:@"requiresDebtCollectionNotices"];
    v5->_balanceStatus = [v4 decodeIntegerForKey:@"balanceStatus"];
    v5->_cyclesPastDue = [v4 decodeIntegerForKey:@"cyclesPastDue"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pastDueAmount"];
    pastDueAmount = v5->_pastDueAmount;
    v5->_pastDueAmount = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastPaymentDate"];
    lastPaymentDate = v5->_lastPaymentDate;
    v5->_lastPaymentDate = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentDueDate"];
    paymentDueDate = v5->_paymentDueDate;
    v5->_paymentDueDate = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"balanceSummary"];
    balanceSummary = v5->_balanceSummary;
    v5->_balanceSummary = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentStatement"];
    currentStatement = v5->_currentStatement;
    v5->_currentStatement = v30;

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"accountUserActivity"];
    accountUserActivity = v5->_accountUserActivity;
    v5->_accountUserActivity = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mergeSummary"];
    mergeSummary = v5->_mergeSummary;
    v5->_mergeSummary = v37;

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unpostedInterest"];
    unpostedInterest = v5->_unpostedInterest;
    v5->_unpostedInterest = v39;

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unpostedInterestTimestamp"];
    unpostedInterestTimestamp = v5->_unpostedInterestTimestamp;
    v5->_unpostedInterestTimestamp = v41;

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"chargeOffPreventionAmount"];
    chargeOffPreventionAmount = v5->_chargeOffPreventionAmount;
    v5->_chargeOffPreventionAmount = v43;

    v45 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pastDueAmount"];
    v46 = v5->_pastDueAmount;
    v5->_pastDueAmount = v45;

    v5->_inGrace = [v4 decodeBoolForKey:@"inGrace"];
    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"remainingMinimumPaymentExcludedFromInterestCalculation"];
    remainingMinimumPaymentExcludedFromInterestCalculation = v5->_remainingMinimumPaymentExcludedFromInterestCalculation;
    v5->_remainingMinimumPaymentExcludedFromInterestCalculation = v47;

    v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installmentBalance"];
    installmentBalance = v5->_installmentBalance;
    v5->_installmentBalance = v49;

    v5->_recoveryPaymentPlansSupported = [v4 decodeBoolForKey:@"recoveryPaymentPlansSupported"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  creditLimit = self->_creditLimit;
  v5 = a3;
  [v5 encodeObject:creditLimit forKey:@"creditLimit"];
  [v5 encodeObject:self->_availableCredit forKey:@"availableCredit"];
  [v5 encodeObject:self->_currentBalance forKey:@"currentBalance"];
  [v5 encodeObject:self->_adjustedBalance forKey:@"adjustedBalance"];
  [v5 encodeObject:self->_rewardsBalance forKey:@"rewardsBalance"];
  [v5 encodeObject:self->_remainingMinimumPayment forKey:@"remainingMinimumPayment"];
  [v5 encodeObject:self->_remainingStatementBalance forKey:@"remainingStatementBalance"];
  [v5 encodeObject:self->_remainingStatementBalanceForInterestCalculation forKey:@"remainingStatementBalanceForInterestCalculation"];
  [v5 encodeBool:self->_autoPayEnabled forKey:@"autopayStatus"];
  [v5 encodeBool:self->_requiresDebtCollectionNotices forKey:@"requiresDebtCollectionNotices"];
  [v5 encodeInteger:self->_balanceStatus forKey:@"balanceStatus"];
  [v5 encodeInteger:self->_cyclesPastDue forKey:@"cyclesPastDue"];
  [v5 encodeObject:self->_pastDueAmount forKey:@"pastDueAmount"];
  [v5 encodeObject:self->_lastPaymentDate forKey:@"lastPaymentDate"];
  [v5 encodeObject:self->_paymentDueDate forKey:@"paymentDueDate"];
  [v5 encodeObject:self->_balanceSummary forKey:@"balanceSummary"];
  [v5 encodeObject:self->_accountUserActivity forKey:@"accountUserActivity"];
  [v5 encodeObject:self->_mergeSummary forKey:@"mergeSummary"];
  [v5 encodeObject:self->_currentStatement forKey:@"currentStatement"];
  [v5 encodeObject:self->_unpostedInterest forKey:@"unpostedInterest"];
  [v5 encodeObject:self->_unpostedInterestTimestamp forKey:@"unpostedInterestTimestamp"];
  [v5 encodeObject:self->_chargeOffPreventionAmount forKey:@"chargeOffPreventionAmount"];
  [v5 encodeObject:self->_pastDueAmount forKey:@"pastDueAmount"];
  [v5 encodeBool:self->_inGrace forKey:@"inGrace"];
  [v5 encodeObject:self->_remainingMinimumPaymentExcludedFromInterestCalculation forKey:@"remainingMinimumPaymentExcludedFromInterestCalculation"];
  [v5 encodeObject:self->_installmentBalance forKey:@"installmentBalance"];
  [v5 encodeBool:self->_recoveryPaymentPlansSupported forKey:@"recoveryPaymentPlansSupported"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_107;
  }

  creditLimit = self->_creditLimit;
  v6 = v4[2];
  if (creditLimit && v6)
  {
    if (([(NSDecimalNumber *)creditLimit isEqual:?]& 1) == 0)
    {
      goto LABEL_107;
    }
  }

  else if (creditLimit != v6)
  {
    goto LABEL_107;
  }

  availableCredit = self->_availableCredit;
  v8 = v4[3];
  if (availableCredit && v8)
  {
    if (([(NSDecimalNumber *)availableCredit isEqual:?]& 1) == 0)
    {
      goto LABEL_107;
    }
  }

  else if (availableCredit != v8)
  {
    goto LABEL_107;
  }

  currentBalance = self->_currentBalance;
  v10 = v4[4];
  if (currentBalance && v10)
  {
    if (([(NSDecimalNumber *)currentBalance isEqual:?]& 1) == 0)
    {
      goto LABEL_107;
    }
  }

  else if (currentBalance != v10)
  {
    goto LABEL_107;
  }

  adjustedBalance = self->_adjustedBalance;
  v12 = v4[5];
  if (adjustedBalance && v12)
  {
    if (([(NSDecimalNumber *)adjustedBalance isEqual:?]& 1) == 0)
    {
      goto LABEL_107;
    }
  }

  else if (adjustedBalance != v12)
  {
    goto LABEL_107;
  }

  remainingMinimumPayment = self->_remainingMinimumPayment;
  v14 = v4[9];
  if (remainingMinimumPayment && v14)
  {
    if (([(NSDecimalNumber *)remainingMinimumPayment isEqual:?]& 1) == 0)
    {
      goto LABEL_107;
    }
  }

  else if (remainingMinimumPayment != v14)
  {
    goto LABEL_107;
  }

  remainingStatementBalance = self->_remainingStatementBalance;
  v16 = v4[7];
  if (remainingStatementBalance && v16)
  {
    if (([(NSDecimalNumber *)remainingStatementBalance isEqual:?]& 1) == 0)
    {
      goto LABEL_107;
    }
  }

  else if (remainingStatementBalance != v16)
  {
    goto LABEL_107;
  }

  remainingStatementBalanceForInterestCalculation = self->_remainingStatementBalanceForInterestCalculation;
  v18 = v4[8];
  if (remainingStatementBalanceForInterestCalculation && v18)
  {
    if (([(NSDecimalNumber *)remainingStatementBalanceForInterestCalculation isEqual:?]& 1) == 0)
    {
      goto LABEL_107;
    }
  }

  else if (remainingStatementBalanceForInterestCalculation != v18)
  {
    goto LABEL_107;
  }

  pastDueAmount = self->_pastDueAmount;
  v20 = v4[22];
  if (pastDueAmount && v20)
  {
    if (([(NSDecimalNumber *)pastDueAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_107;
    }
  }

  else if (pastDueAmount != v20)
  {
    goto LABEL_107;
  }

  if (self->_autoPayEnabled != *(v4 + 10) || self->_requiresDebtCollectionNotices != *(v4 + 8) || self->_balanceStatus != v4[15] || self->_cyclesPastDue != v4[14] || self->_inGrace != *(v4 + 9))
  {
    goto LABEL_107;
  }

  lastPaymentDate = self->_lastPaymentDate;
  v22 = v4[13];
  if (lastPaymentDate && v22)
  {
    if (([(NSDate *)lastPaymentDate isEqual:?]& 1) == 0)
    {
      goto LABEL_107;
    }
  }

  else if (lastPaymentDate != v22)
  {
    goto LABEL_107;
  }

  balanceSummary = self->_balanceSummary;
  v24 = v4[16];
  if (balanceSummary && v24)
  {
    if (![(PKCreditAccountBalanceSummary *)balanceSummary isEqual:?])
    {
      goto LABEL_107;
    }
  }

  else if (balanceSummary != v24)
  {
    goto LABEL_107;
  }

  accountUserActivity = self->_accountUserActivity;
  v26 = v4[17];
  if (accountUserActivity && v26)
  {
    if (([(NSSet *)accountUserActivity isEqual:?]& 1) == 0)
    {
      goto LABEL_107;
    }
  }

  else if (accountUserActivity != v26)
  {
    goto LABEL_107;
  }

  mergeSummary = self->_mergeSummary;
  v28 = v4[18];
  if (mergeSummary && v28)
  {
    if (![(PKCreditAccountMergeSummary *)mergeSummary isEqual:?])
    {
      goto LABEL_107;
    }
  }

  else if (mergeSummary != v28)
  {
    goto LABEL_107;
  }

  currentStatement = self->_currentStatement;
  v30 = v4[23];
  if (currentStatement && v30)
  {
    if (![(PKCreditAccountStatement *)currentStatement isEqual:?])
    {
      goto LABEL_107;
    }
  }

  else if (currentStatement != v30)
  {
    goto LABEL_107;
  }

  unpostedInterest = self->_unpostedInterest;
  v32 = v4[19];
  if (unpostedInterest && v32)
  {
    if (([(NSDecimalNumber *)unpostedInterest isEqual:?]& 1) == 0)
    {
      goto LABEL_107;
    }
  }

  else if (unpostedInterest != v32)
  {
    goto LABEL_107;
  }

  unpostedInterestTimestamp = self->_unpostedInterestTimestamp;
  v34 = v4[20];
  if (unpostedInterestTimestamp && v34)
  {
    if (([(NSDate *)unpostedInterestTimestamp isEqual:?]& 1) == 0)
    {
      goto LABEL_107;
    }
  }

  else if (unpostedInterestTimestamp != v34)
  {
    goto LABEL_107;
  }

  chargeOffPreventionAmount = self->_chargeOffPreventionAmount;
  v36 = v4[21];
  if (chargeOffPreventionAmount && v36)
  {
    if (([(NSDecimalNumber *)chargeOffPreventionAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_107;
    }
  }

  else if (chargeOffPreventionAmount != v36)
  {
    goto LABEL_107;
  }

  v37 = self->_pastDueAmount;
  v38 = v4[22];
  if (v37 && v38)
  {
    if (([(NSDecimalNumber *)v37 isEqual:?]& 1) == 0)
    {
      goto LABEL_107;
    }
  }

  else if (v37 != v38)
  {
    goto LABEL_107;
  }

  remainingMinimumPaymentExcludedFromInterestCalculation = self->_remainingMinimumPaymentExcludedFromInterestCalculation;
  v40 = v4[10];
  if (remainingMinimumPaymentExcludedFromInterestCalculation && v40)
  {
    if (([(NSDecimalNumber *)remainingMinimumPaymentExcludedFromInterestCalculation isEqual:?]& 1) == 0)
    {
      goto LABEL_107;
    }
  }

  else if (remainingMinimumPaymentExcludedFromInterestCalculation != v40)
  {
    goto LABEL_107;
  }

  installmentBalance = self->_installmentBalance;
  v42 = v4[11];
  if (installmentBalance && v42)
  {
    if (([(NSDecimalNumber *)installmentBalance isEqual:?]& 1) == 0)
    {
      goto LABEL_107;
    }
  }

  else if (installmentBalance != v42)
  {
    goto LABEL_107;
  }

  paymentDueDate = self->_paymentDueDate;
  v44 = v4[12];
  if (!paymentDueDate || !v44)
  {
    if (paymentDueDate == v44)
    {
      goto LABEL_105;
    }

LABEL_107:
    v45 = 0;
    goto LABEL_108;
  }

  if (([(NSDate *)paymentDueDate isEqual:?]& 1) == 0)
  {
    goto LABEL_107;
  }

LABEL_105:
  v45 = self->_recoveryPaymentPlansSupported == *(v4 + 11);
LABEL_108:

  return v45;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(NSDecimalNumber *)self->_creditLimit stringValue];
  [v3 appendFormat:@"creditLimit: '%@'; ", v4];

  v5 = [(NSDecimalNumber *)self->_availableCredit stringValue];
  [v3 appendFormat:@"availableCredit: '%@'; ", v5];

  v6 = [(NSDecimalNumber *)self->_currentBalance stringValue];
  [v3 appendFormat:@"currentBalance: '%@'; ", v6];

  v7 = [(NSDecimalNumber *)self->_rewardsBalance stringValue];
  [v3 appendFormat:@"rewardsBalance: '%@'; ", v7];

  v8 = [(NSDecimalNumber *)self->_remainingMinimumPayment stringValue];
  [v3 appendFormat:@"remainingMinimumPayment: '%@'; ", v8];

  v9 = [(NSDecimalNumber *)self->_remainingStatementBalance stringValue];
  [v3 appendFormat:@"remainingStatementBalance: '%@'; ", v9];

  v10 = [(NSDecimalNumber *)self->_remainingStatementBalanceForInterestCalculation stringValue];
  [v3 appendFormat:@"remainingStatementBalanceForInterestCalculation: '%@'; ", v10];

  v11 = [(NSDecimalNumber *)self->_pastDueAmount stringValue];
  [v3 appendFormat:@"pastDueAmount: '%@'; ", v11];

  if (self->_autoPayEnabled)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [v3 appendFormat:@"autoPayEnabled: '%@'; ", v12];
  if (self->_requiresDebtCollectionNotices)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  [v3 appendFormat:@"requiresDebtCollectionNotices: '%@'; ", v13];
  balanceStatus = self->_balanceStatus;
  if (balanceStatus > 2)
  {
    v15 = @"unknown";
  }

  else
  {
    v15 = off_1E79C8D88[balanceStatus];
  }

  [v3 appendFormat:@"balanceStatus: '%@'; ", v15];
  [v3 appendFormat:@"cyclesPastDue: '%ld'; ", self->_cyclesPastDue];
  v16 = [(NSDate *)self->_lastPaymentDate description];
  [v3 appendFormat:@"lastPaymentDate: '%@'; ", v16];

  v17 = [(NSDate *)self->_paymentDueDate description];
  [v3 appendFormat:@"paymentDueDate: '%@'; ", v17];

  v18 = [(NSDecimalNumber *)self->_unpostedInterest stringValue];
  [v3 appendFormat:@"unpostedInterest: '%@'; ", v18];

  v19 = [(NSDate *)self->_unpostedInterestTimestamp description];
  [v3 appendFormat:@"unpostedInterestTimestamp: '%@'; ", v19];

  v20 = [(NSDecimalNumber *)self->_chargeOffPreventionAmount stringValue];
  [v3 appendFormat:@"chargeOffPreventionAmount: '%@'; ", v20];

  v21 = [(NSDecimalNumber *)self->_pastDueAmount stringValue];
  [v3 appendFormat:@"pastDueAmount: '%@'; ", v21];

  if (self->_inGrace)
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  [v3 appendFormat:@"inGrace: '%@'; ", v22];
  v23 = [(PKCreditAccountBalanceSummary *)self->_balanceSummary description];
  [v3 appendFormat:@"balanceSummary: '%@'; ", v23];

  v24 = [(NSSet *)self->_accountUserActivity description];
  [v3 appendFormat:@"accountUserActivity: '%@'; ", v24];

  v25 = [(PKCreditAccountMergeSummary *)self->_mergeSummary description];
  [v3 appendFormat:@"mergeSummary: '%@'; ", v25];

  v26 = [(PKCreditAccountStatement *)self->_currentStatement description];
  [v3 appendFormat:@"currentStatement: '%@'; ", v26];

  v27 = [(NSDecimalNumber *)self->_installmentBalance description];
  [v3 appendFormat:@"installmentBalance: '%@'; ", v27];

  v28 = [(PKCreditAccountSummary *)self adjustedBalance];
  [v3 appendFormat:@"adjustedBalance: '%@'; ", v28];

  if (self->_recoveryPaymentPlansSupported)
  {
    v29 = @"YES";
  }

  else
  {
    v29 = @"NO";
  }

  [v3 appendFormat:@"recoveryPaymentPlansSupported: '%@'; ", v29];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKCreditAccountSummary allocWithZone:](PKCreditAccountSummary init];
  v6 = [(NSDecimalNumber *)self->_creditLimit copyWithZone:a3];
  creditLimit = v5->_creditLimit;
  v5->_creditLimit = v6;

  v8 = [(NSDecimalNumber *)self->_availableCredit copyWithZone:a3];
  availableCredit = v5->_availableCredit;
  v5->_availableCredit = v8;

  v10 = [(NSDecimalNumber *)self->_currentBalance copyWithZone:a3];
  currentBalance = v5->_currentBalance;
  v5->_currentBalance = v10;

  v12 = [(NSDecimalNumber *)self->_adjustedBalance copyWithZone:a3];
  adjustedBalance = v5->_adjustedBalance;
  v5->_adjustedBalance = v12;

  v14 = [(NSDecimalNumber *)self->_rewardsBalance copyWithZone:a3];
  rewardsBalance = v5->_rewardsBalance;
  v5->_rewardsBalance = v14;

  v16 = [(NSDecimalNumber *)self->_remainingMinimumPayment copyWithZone:a3];
  remainingMinimumPayment = v5->_remainingMinimumPayment;
  v5->_remainingMinimumPayment = v16;

  v18 = [(NSDecimalNumber *)self->_remainingStatementBalance copyWithZone:a3];
  remainingStatementBalance = v5->_remainingStatementBalance;
  v5->_remainingStatementBalance = v18;

  v20 = [(NSDecimalNumber *)self->_remainingStatementBalanceForInterestCalculation copyWithZone:a3];
  remainingStatementBalanceForInterestCalculation = v5->_remainingStatementBalanceForInterestCalculation;
  v5->_remainingStatementBalanceForInterestCalculation = v20;

  v5->_autoPayEnabled = self->_autoPayEnabled;
  v5->_requiresDebtCollectionNotices = self->_requiresDebtCollectionNotices;
  v5->_balanceStatus = self->_balanceStatus;
  v5->_cyclesPastDue = self->_cyclesPastDue;
  objc_storeStrong(&v5->_pastDueAmount, self->_pastDueAmount);
  v22 = [(NSDate *)self->_lastPaymentDate copyWithZone:a3];
  lastPaymentDate = v5->_lastPaymentDate;
  v5->_lastPaymentDate = v22;

  v24 = [(NSDate *)self->_paymentDueDate copyWithZone:a3];
  paymentDueDate = v5->_paymentDueDate;
  v5->_paymentDueDate = v24;

  v26 = [(PKCreditAccountBalanceSummary *)self->_balanceSummary copyWithZone:a3];
  balanceSummary = v5->_balanceSummary;
  v5->_balanceSummary = v26;

  v28 = [(NSSet *)self->_accountUserActivity copyWithZone:a3];
  accountUserActivity = v5->_accountUserActivity;
  v5->_accountUserActivity = v28;

  v30 = [(PKCreditAccountMergeSummary *)self->_mergeSummary copyWithZone:a3];
  mergeSummary = v5->_mergeSummary;
  v5->_mergeSummary = v30;

  v32 = [(PKCreditAccountStatement *)self->_currentStatement copyWithZone:a3];
  currentStatement = v5->_currentStatement;
  v5->_currentStatement = v32;

  v34 = [(NSDecimalNumber *)self->_unpostedInterest copyWithZone:a3];
  unpostedInterest = v5->_unpostedInterest;
  v5->_unpostedInterest = v34;

  v36 = [(NSDate *)self->_unpostedInterestTimestamp copyWithZone:a3];
  unpostedInterestTimestamp = v5->_unpostedInterestTimestamp;
  v5->_unpostedInterestTimestamp = v36;

  v38 = [(NSDecimalNumber *)self->_chargeOffPreventionAmount copyWithZone:a3];
  chargeOffPreventionAmount = v5->_chargeOffPreventionAmount;
  v5->_chargeOffPreventionAmount = v38;

  v40 = [(NSDecimalNumber *)self->_pastDueAmount copyWithZone:a3];
  pastDueAmount = v5->_pastDueAmount;
  v5->_pastDueAmount = v40;

  v5->_inGrace = self->_inGrace;
  v42 = [(NSDecimalNumber *)self->_remainingMinimumPaymentExcludedFromInterestCalculation copyWithZone:a3];
  remainingMinimumPaymentExcludedFromInterestCalculation = v5->_remainingMinimumPaymentExcludedFromInterestCalculation;
  v5->_remainingMinimumPaymentExcludedFromInterestCalculation = v42;

  v44 = [(NSDecimalNumber *)self->_installmentBalance copyWithZone:a3];
  installmentBalance = v5->_installmentBalance;
  v5->_installmentBalance = v44;

  v5->_recoveryPaymentPlansSupported = self->_recoveryPaymentPlansSupported;
  return v5;
}

@end