@interface PKCreditAccountSummary
- (BOOL)isEqual:(id)equal;
- (NSDate)paymentDueDate;
- (NSDecimalNumber)adjustedBalance;
- (PKCreditAccountSummary)initWithCoder:(id)coder;
- (PKCreditAccountSummary)initWithDictionary:(id)dictionary;
- (id)accountUserActivityForAccountUserAltDSID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)redeemableRewardsBalanceForUser:(id)user;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)ingestExtendedAccountDetails:(id)details;
@end

@implementation PKCreditAccountSummary

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_creditLimit];
  [array safelyAddObject:self->_availableCredit];
  [array safelyAddObject:self->_currentBalance];
  [array safelyAddObject:self->_adjustedBalance];
  [array safelyAddObject:self->_remainingMinimumPayment];
  [array safelyAddObject:self->_remainingStatementBalance];
  [array safelyAddObject:self->_remainingStatementBalanceForInterestCalculation];
  [array safelyAddObject:self->_lastPaymentDate];
  [array safelyAddObject:self->_balanceSummary];
  [array safelyAddObject:self->_accountUserActivity];
  [array safelyAddObject:self->_mergeSummary];
  [array safelyAddObject:self->_currentStatement];
  [array safelyAddObject:self->_unpostedInterest];
  [array safelyAddObject:self->_unpostedInterestTimestamp];
  [array safelyAddObject:self->_chargeOffPreventionAmount];
  [array safelyAddObject:self->_pastDueAmount];
  [array safelyAddObject:self->_paymentDueDate];
  [array safelyAddObject:self->_remainingMinimumPaymentExcludedFromInterestCalculation];
  [array safelyAddObject:self->_installmentBalance];
  v4 = PKCombinedHash(17, array);
  v5 = self->_autoPayEnabled - v4 + 32 * v4;
  v6 = self->_requiresDebtCollectionNotices - v5 + 32 * v5;
  v7 = self->_balanceStatus - v6 + 32 * v6;
  v8 = self->_cyclesPastDue - v7 + 32 * v7;
  v9 = self->_inGrace - v8 + 32 * v8;
  v10 = self->_recoveryPaymentPlansSupported - v9 + 32 * v9;

  return v10;
}

- (PKCreditAccountSummary)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v61.receiver = self;
  v61.super_class = PKCreditAccountSummary;
  v5 = [(PKCreditAccountSummary *)&v61 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"creditLimit"];
    creditLimit = v5->_creditLimit;
    v5->_creditLimit = v6;

    v8 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"availableCredit"];
    availableCredit = v5->_availableCredit;
    v5->_availableCredit = v8;

    v10 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"currentBalance"];
    currentBalance = v5->_currentBalance;
    v5->_currentBalance = v10;

    v12 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"adjustedBalance"];
    adjustedBalance = v5->_adjustedBalance;
    v5->_adjustedBalance = v12;

    v14 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"rewardsBalance"];
    rewardsBalance = v5->_rewardsBalance;
    v5->_rewardsBalance = v14;

    v16 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"remainingMinimumPayment"];
    remainingMinimumPayment = v5->_remainingMinimumPayment;
    v5->_remainingMinimumPayment = v16;

    v18 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"remainingStatementBalance"];
    remainingStatementBalance = v5->_remainingStatementBalance;
    v5->_remainingStatementBalance = v18;

    v20 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"remainingStatementBalanceForInterestCalculation"];
    remainingStatementBalanceForInterestCalculation = v5->_remainingStatementBalanceForInterestCalculation;
    v5->_remainingStatementBalanceForInterestCalculation = v20;

    v5->_autoPayEnabled = [dictionaryCopy PKBoolForKey:@"autopayStatus"];
    v5->_requiresDebtCollectionNotices = [dictionaryCopy PKBoolForKey:@"requiresDebtCollectionNotices"];
    v22 = [dictionaryCopy PKStringForKey:@"balanceStatus"];
    lowercaseString = [v22 lowercaseString];
    if ([lowercaseString isEqualToString:@"current"])
    {
      v24 = 1;
    }

    else if ([lowercaseString isEqualToString:@"pastdue"])
    {
      v24 = 2;
    }

    else
    {
      v24 = 0;
    }

    v5->_balanceStatus = v24;
    v5->_cyclesPastDue = [dictionaryCopy PKIntegerForKey:@"cyclesPastDue"];
    v25 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"pastDueAmount"];
    pastDueAmount = v5->_pastDueAmount;
    v5->_pastDueAmount = v25;

    v27 = [dictionaryCopy PKDateForKey:@"lastPaymentDate"];
    lastPaymentDate = v5->_lastPaymentDate;
    v5->_lastPaymentDate = v27;

    v29 = [dictionaryCopy PKDateForKey:@"paymentDueDate"];
    paymentDueDate = v5->_paymentDueDate;
    v5->_paymentDueDate = v29;

    v31 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"unpostedInterest"];
    unpostedInterest = v5->_unpostedInterest;
    v5->_unpostedInterest = v31;

    v33 = [dictionaryCopy PKDateForKey:@"unpostedInterestTimestamp"];
    unpostedInterestTimestamp = v5->_unpostedInterestTimestamp;
    v5->_unpostedInterestTimestamp = v33;

    v5->_inGrace = [dictionaryCopy PKBoolForKey:@"inGrace"];
    v35 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"remainingMinimumPaymentExcludedFromInterestCalculation"];
    remainingMinimumPaymentExcludedFromInterestCalculation = v5->_remainingMinimumPaymentExcludedFromInterestCalculation;
    v5->_remainingMinimumPaymentExcludedFromInterestCalculation = v35;

    v37 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"installmentBalance"];
    installmentBalance = v5->_installmentBalance;
    v5->_installmentBalance = v37;

    v5->_recoveryPaymentPlansSupported = [dictionaryCopy PKBoolForKey:@"recoveryPaymentPlansSupported"];
    v39 = [dictionaryCopy objectForKey:@"inGrace"];

    if (v39)
    {
      v5->_inGrace = [dictionaryCopy PKBoolForKey:@"inGrace"];
    }

    else
    {
      v40 = v5->_unpostedInterest;
      if (v40)
      {
        zero = [MEMORY[0x1E696AB90] zero];
        v5->_inGrace = [(NSDecimalNumber *)v40 compare:zero]!= NSOrderedDescending;
      }

      else
      {
        v5->_inGrace = 1;
      }
    }

    v42 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"chargeOffPreventionAmount"];
    chargeOffPreventionAmount = v5->_chargeOffPreventionAmount;
    v5->_chargeOffPreventionAmount = v42;

    v44 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"pastDueAmount"];
    v45 = v5->_pastDueAmount;
    v5->_pastDueAmount = v44;

    v46 = [PKCreditAccountBalanceSummary alloc];
    v47 = [dictionaryCopy PKDictionaryForKey:@"balanceSummary"];
    v48 = [(PKCreditAccountBalanceSummary *)v46 initWithDictionary:v47];
    balanceSummary = v5->_balanceSummary;
    v5->_balanceSummary = v48;

    v50 = [PKCreditAccountStatement alloc];
    v51 = [dictionaryCopy PKDictionaryForKey:@"currentStatement"];
    v52 = [(PKCreditAccountStatement *)v50 initWithDictionary:v51];
    currentStatement = v5->_currentStatement;
    v5->_currentStatement = v52;

    v54 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"accountUserActivity"];
    v55 = [v54 pk_setByApplyingBlock:&__block_literal_global_15];
    accountUserActivity = v5->_accountUserActivity;
    v5->_accountUserActivity = v55;

    v57 = [dictionaryCopy PKDictionaryForKey:@"mergeSummary"];
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

- (void)ingestExtendedAccountDetails:(id)details
{
  detailsCopy = details;
  self->_autoPayEnabled = [detailsCopy PKBoolForKey:@"autopayStatus"];
  v5 = [PKCreditAccountStatement alloc];
  v8 = [detailsCopy PKDictionaryForKey:@"currentStatement"];

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

- (id)accountUserActivityForAccountUserAltDSID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
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
          accountUserAltDSID = [v10 accountUserAltDSID];
          v12 = dCopy;
          v13 = v12;
          if (accountUserAltDSID == v12)
          {

LABEL_17:
            v15 = v10;
            goto LABEL_19;
          }

          if (accountUserAltDSID)
          {
            v14 = [accountUserAltDSID isEqualToString:v12];

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

- (id)redeemableRewardsBalanceForUser:(id)user
{
  userCopy = user;
  v5 = userCopy;
  if (!userCopy || ([userCopy altDSID], v6 = objc_claimAutoreleasedReturnValue(), -[PKCreditAccountSummary accountUserActivityForAccountUserAltDSID:](self, "accountUserActivityForAccountUserAltDSID:", v6), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "rewardsBalance"), v8 = objc_claimAutoreleasedReturnValue(), v7, v6, !v8))
  {
    v8 = self->_rewardsBalance;
  }

  return v8;
}

- (PKCreditAccountSummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v52.receiver = self;
  v52.super_class = PKCreditAccountSummary;
  v5 = [(PKCreditAccountSummary *)&v52 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creditLimit"];
    creditLimit = v5->_creditLimit;
    v5->_creditLimit = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"availableCredit"];
    availableCredit = v5->_availableCredit;
    v5->_availableCredit = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentBalance"];
    currentBalance = v5->_currentBalance;
    v5->_currentBalance = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"adjustedBalance"];
    adjustedBalance = v5->_adjustedBalance;
    v5->_adjustedBalance = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rewardsBalance"];
    rewardsBalance = v5->_rewardsBalance;
    v5->_rewardsBalance = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remainingMinimumPayment"];
    remainingMinimumPayment = v5->_remainingMinimumPayment;
    v5->_remainingMinimumPayment = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remainingStatementBalance"];
    remainingStatementBalance = v5->_remainingStatementBalance;
    v5->_remainingStatementBalance = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remainingStatementBalanceForInterestCalculation"];
    remainingStatementBalanceForInterestCalculation = v5->_remainingStatementBalanceForInterestCalculation;
    v5->_remainingStatementBalanceForInterestCalculation = v20;

    v5->_autoPayEnabled = [coderCopy decodeBoolForKey:@"autopayStatus"];
    v5->_requiresDebtCollectionNotices = [coderCopy decodeBoolForKey:@"requiresDebtCollectionNotices"];
    v5->_balanceStatus = [coderCopy decodeIntegerForKey:@"balanceStatus"];
    v5->_cyclesPastDue = [coderCopy decodeIntegerForKey:@"cyclesPastDue"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pastDueAmount"];
    pastDueAmount = v5->_pastDueAmount;
    v5->_pastDueAmount = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastPaymentDate"];
    lastPaymentDate = v5->_lastPaymentDate;
    v5->_lastPaymentDate = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentDueDate"];
    paymentDueDate = v5->_paymentDueDate;
    v5->_paymentDueDate = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"balanceSummary"];
    balanceSummary = v5->_balanceSummary;
    v5->_balanceSummary = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentStatement"];
    currentStatement = v5->_currentStatement;
    v5->_currentStatement = v30;

    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"accountUserActivity"];
    accountUserActivity = v5->_accountUserActivity;
    v5->_accountUserActivity = v35;

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mergeSummary"];
    mergeSummary = v5->_mergeSummary;
    v5->_mergeSummary = v37;

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unpostedInterest"];
    unpostedInterest = v5->_unpostedInterest;
    v5->_unpostedInterest = v39;

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unpostedInterestTimestamp"];
    unpostedInterestTimestamp = v5->_unpostedInterestTimestamp;
    v5->_unpostedInterestTimestamp = v41;

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"chargeOffPreventionAmount"];
    chargeOffPreventionAmount = v5->_chargeOffPreventionAmount;
    v5->_chargeOffPreventionAmount = v43;

    v45 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pastDueAmount"];
    v46 = v5->_pastDueAmount;
    v5->_pastDueAmount = v45;

    v5->_inGrace = [coderCopy decodeBoolForKey:@"inGrace"];
    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"remainingMinimumPaymentExcludedFromInterestCalculation"];
    remainingMinimumPaymentExcludedFromInterestCalculation = v5->_remainingMinimumPaymentExcludedFromInterestCalculation;
    v5->_remainingMinimumPaymentExcludedFromInterestCalculation = v47;

    v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installmentBalance"];
    installmentBalance = v5->_installmentBalance;
    v5->_installmentBalance = v49;

    v5->_recoveryPaymentPlansSupported = [coderCopy decodeBoolForKey:@"recoveryPaymentPlansSupported"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  creditLimit = self->_creditLimit;
  coderCopy = coder;
  [coderCopy encodeObject:creditLimit forKey:@"creditLimit"];
  [coderCopy encodeObject:self->_availableCredit forKey:@"availableCredit"];
  [coderCopy encodeObject:self->_currentBalance forKey:@"currentBalance"];
  [coderCopy encodeObject:self->_adjustedBalance forKey:@"adjustedBalance"];
  [coderCopy encodeObject:self->_rewardsBalance forKey:@"rewardsBalance"];
  [coderCopy encodeObject:self->_remainingMinimumPayment forKey:@"remainingMinimumPayment"];
  [coderCopy encodeObject:self->_remainingStatementBalance forKey:@"remainingStatementBalance"];
  [coderCopy encodeObject:self->_remainingStatementBalanceForInterestCalculation forKey:@"remainingStatementBalanceForInterestCalculation"];
  [coderCopy encodeBool:self->_autoPayEnabled forKey:@"autopayStatus"];
  [coderCopy encodeBool:self->_requiresDebtCollectionNotices forKey:@"requiresDebtCollectionNotices"];
  [coderCopy encodeInteger:self->_balanceStatus forKey:@"balanceStatus"];
  [coderCopy encodeInteger:self->_cyclesPastDue forKey:@"cyclesPastDue"];
  [coderCopy encodeObject:self->_pastDueAmount forKey:@"pastDueAmount"];
  [coderCopy encodeObject:self->_lastPaymentDate forKey:@"lastPaymentDate"];
  [coderCopy encodeObject:self->_paymentDueDate forKey:@"paymentDueDate"];
  [coderCopy encodeObject:self->_balanceSummary forKey:@"balanceSummary"];
  [coderCopy encodeObject:self->_accountUserActivity forKey:@"accountUserActivity"];
  [coderCopy encodeObject:self->_mergeSummary forKey:@"mergeSummary"];
  [coderCopy encodeObject:self->_currentStatement forKey:@"currentStatement"];
  [coderCopy encodeObject:self->_unpostedInterest forKey:@"unpostedInterest"];
  [coderCopy encodeObject:self->_unpostedInterestTimestamp forKey:@"unpostedInterestTimestamp"];
  [coderCopy encodeObject:self->_chargeOffPreventionAmount forKey:@"chargeOffPreventionAmount"];
  [coderCopy encodeObject:self->_pastDueAmount forKey:@"pastDueAmount"];
  [coderCopy encodeBool:self->_inGrace forKey:@"inGrace"];
  [coderCopy encodeObject:self->_remainingMinimumPaymentExcludedFromInterestCalculation forKey:@"remainingMinimumPaymentExcludedFromInterestCalculation"];
  [coderCopy encodeObject:self->_installmentBalance forKey:@"installmentBalance"];
  [coderCopy encodeBool:self->_recoveryPaymentPlansSupported forKey:@"recoveryPaymentPlansSupported"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_107;
  }

  creditLimit = self->_creditLimit;
  v6 = equalCopy[2];
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
  v8 = equalCopy[3];
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
  v10 = equalCopy[4];
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
  v12 = equalCopy[5];
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
  v14 = equalCopy[9];
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
  v16 = equalCopy[7];
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
  v18 = equalCopy[8];
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
  v20 = equalCopy[22];
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

  if (self->_autoPayEnabled != *(equalCopy + 10) || self->_requiresDebtCollectionNotices != *(equalCopy + 8) || self->_balanceStatus != equalCopy[15] || self->_cyclesPastDue != equalCopy[14] || self->_inGrace != *(equalCopy + 9))
  {
    goto LABEL_107;
  }

  lastPaymentDate = self->_lastPaymentDate;
  v22 = equalCopy[13];
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
  v24 = equalCopy[16];
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
  v26 = equalCopy[17];
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
  v28 = equalCopy[18];
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
  v30 = equalCopy[23];
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
  v32 = equalCopy[19];
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
  v34 = equalCopy[20];
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
  v36 = equalCopy[21];
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
  v38 = equalCopy[22];
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
  v40 = equalCopy[10];
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
  v42 = equalCopy[11];
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
  v44 = equalCopy[12];
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
  v45 = self->_recoveryPaymentPlansSupported == *(equalCopy + 11);
LABEL_108:

  return v45;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  stringValue = [(NSDecimalNumber *)self->_creditLimit stringValue];
  [v3 appendFormat:@"creditLimit: '%@'; ", stringValue];

  stringValue2 = [(NSDecimalNumber *)self->_availableCredit stringValue];
  [v3 appendFormat:@"availableCredit: '%@'; ", stringValue2];

  stringValue3 = [(NSDecimalNumber *)self->_currentBalance stringValue];
  [v3 appendFormat:@"currentBalance: '%@'; ", stringValue3];

  stringValue4 = [(NSDecimalNumber *)self->_rewardsBalance stringValue];
  [v3 appendFormat:@"rewardsBalance: '%@'; ", stringValue4];

  stringValue5 = [(NSDecimalNumber *)self->_remainingMinimumPayment stringValue];
  [v3 appendFormat:@"remainingMinimumPayment: '%@'; ", stringValue5];

  stringValue6 = [(NSDecimalNumber *)self->_remainingStatementBalance stringValue];
  [v3 appendFormat:@"remainingStatementBalance: '%@'; ", stringValue6];

  stringValue7 = [(NSDecimalNumber *)self->_remainingStatementBalanceForInterestCalculation stringValue];
  [v3 appendFormat:@"remainingStatementBalanceForInterestCalculation: '%@'; ", stringValue7];

  stringValue8 = [(NSDecimalNumber *)self->_pastDueAmount stringValue];
  [v3 appendFormat:@"pastDueAmount: '%@'; ", stringValue8];

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

  stringValue9 = [(NSDecimalNumber *)self->_unpostedInterest stringValue];
  [v3 appendFormat:@"unpostedInterest: '%@'; ", stringValue9];

  v19 = [(NSDate *)self->_unpostedInterestTimestamp description];
  [v3 appendFormat:@"unpostedInterestTimestamp: '%@'; ", v19];

  stringValue10 = [(NSDecimalNumber *)self->_chargeOffPreventionAmount stringValue];
  [v3 appendFormat:@"chargeOffPreventionAmount: '%@'; ", stringValue10];

  stringValue11 = [(NSDecimalNumber *)self->_pastDueAmount stringValue];
  [v3 appendFormat:@"pastDueAmount: '%@'; ", stringValue11];

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

  adjustedBalance = [(PKCreditAccountSummary *)self adjustedBalance];
  [v3 appendFormat:@"adjustedBalance: '%@'; ", adjustedBalance];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKCreditAccountSummary allocWithZone:](PKCreditAccountSummary init];
  v6 = [(NSDecimalNumber *)self->_creditLimit copyWithZone:zone];
  creditLimit = v5->_creditLimit;
  v5->_creditLimit = v6;

  v8 = [(NSDecimalNumber *)self->_availableCredit copyWithZone:zone];
  availableCredit = v5->_availableCredit;
  v5->_availableCredit = v8;

  v10 = [(NSDecimalNumber *)self->_currentBalance copyWithZone:zone];
  currentBalance = v5->_currentBalance;
  v5->_currentBalance = v10;

  v12 = [(NSDecimalNumber *)self->_adjustedBalance copyWithZone:zone];
  adjustedBalance = v5->_adjustedBalance;
  v5->_adjustedBalance = v12;

  v14 = [(NSDecimalNumber *)self->_rewardsBalance copyWithZone:zone];
  rewardsBalance = v5->_rewardsBalance;
  v5->_rewardsBalance = v14;

  v16 = [(NSDecimalNumber *)self->_remainingMinimumPayment copyWithZone:zone];
  remainingMinimumPayment = v5->_remainingMinimumPayment;
  v5->_remainingMinimumPayment = v16;

  v18 = [(NSDecimalNumber *)self->_remainingStatementBalance copyWithZone:zone];
  remainingStatementBalance = v5->_remainingStatementBalance;
  v5->_remainingStatementBalance = v18;

  v20 = [(NSDecimalNumber *)self->_remainingStatementBalanceForInterestCalculation copyWithZone:zone];
  remainingStatementBalanceForInterestCalculation = v5->_remainingStatementBalanceForInterestCalculation;
  v5->_remainingStatementBalanceForInterestCalculation = v20;

  v5->_autoPayEnabled = self->_autoPayEnabled;
  v5->_requiresDebtCollectionNotices = self->_requiresDebtCollectionNotices;
  v5->_balanceStatus = self->_balanceStatus;
  v5->_cyclesPastDue = self->_cyclesPastDue;
  objc_storeStrong(&v5->_pastDueAmount, self->_pastDueAmount);
  v22 = [(NSDate *)self->_lastPaymentDate copyWithZone:zone];
  lastPaymentDate = v5->_lastPaymentDate;
  v5->_lastPaymentDate = v22;

  v24 = [(NSDate *)self->_paymentDueDate copyWithZone:zone];
  paymentDueDate = v5->_paymentDueDate;
  v5->_paymentDueDate = v24;

  v26 = [(PKCreditAccountBalanceSummary *)self->_balanceSummary copyWithZone:zone];
  balanceSummary = v5->_balanceSummary;
  v5->_balanceSummary = v26;

  v28 = [(NSSet *)self->_accountUserActivity copyWithZone:zone];
  accountUserActivity = v5->_accountUserActivity;
  v5->_accountUserActivity = v28;

  v30 = [(PKCreditAccountMergeSummary *)self->_mergeSummary copyWithZone:zone];
  mergeSummary = v5->_mergeSummary;
  v5->_mergeSummary = v30;

  v32 = [(PKCreditAccountStatement *)self->_currentStatement copyWithZone:zone];
  currentStatement = v5->_currentStatement;
  v5->_currentStatement = v32;

  v34 = [(NSDecimalNumber *)self->_unpostedInterest copyWithZone:zone];
  unpostedInterest = v5->_unpostedInterest;
  v5->_unpostedInterest = v34;

  v36 = [(NSDate *)self->_unpostedInterestTimestamp copyWithZone:zone];
  unpostedInterestTimestamp = v5->_unpostedInterestTimestamp;
  v5->_unpostedInterestTimestamp = v36;

  v38 = [(NSDecimalNumber *)self->_chargeOffPreventionAmount copyWithZone:zone];
  chargeOffPreventionAmount = v5->_chargeOffPreventionAmount;
  v5->_chargeOffPreventionAmount = v38;

  v40 = [(NSDecimalNumber *)self->_pastDueAmount copyWithZone:zone];
  pastDueAmount = v5->_pastDueAmount;
  v5->_pastDueAmount = v40;

  v5->_inGrace = self->_inGrace;
  v42 = [(NSDecimalNumber *)self->_remainingMinimumPaymentExcludedFromInterestCalculation copyWithZone:zone];
  remainingMinimumPaymentExcludedFromInterestCalculation = v5->_remainingMinimumPaymentExcludedFromInterestCalculation;
  v5->_remainingMinimumPaymentExcludedFromInterestCalculation = v42;

  v44 = [(NSDecimalNumber *)self->_installmentBalance copyWithZone:zone];
  installmentBalance = v5->_installmentBalance;
  v5->_installmentBalance = v44;

  v5->_recoveryPaymentPlansSupported = self->_recoveryPaymentPlansSupported;
  return v5;
}

@end