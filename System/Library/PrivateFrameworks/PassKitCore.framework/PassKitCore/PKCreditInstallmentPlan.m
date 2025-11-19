@interface PKCreditInstallmentPlan
- (BOOL)isComplete;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToInstallmentPlan:(id)a3;
- (NSDecimalNumber)remainingAmount;
- (NSDecimalNumber)totalBilled;
- (PKCreditInstallmentPlan)initWithCoder:(id)a3;
- (PKCreditInstallmentPlan)initWithDictionary:(id)a3;
- (PKCreditInstallmentPlanPayment)nextPaymentDue;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCreditInstallmentPlan

- (PKCreditInstallmentPlan)initWithDictionary:(id)a3
{
  v4 = a3;
  v52.receiver = self;
  v52.super_class = PKCreditInstallmentPlan;
  v5 = [(PKCreditInstallmentPlan *)&v52 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 PKStringForKey:@"state"];
    v5->_state = PKInstallmentPlanStateFromString(v8);

    v9 = [v4 PKDateForKey:@"lastUpdated"];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v9;

    v11 = [v4 PKDecimalNumberFromStringForKey:@"apr"];
    apr = v5->_apr;
    v5->_apr = v11;

    v5->_duration = [v4 PKIntegerForKey:@"duration"];
    v13 = [v4 PKStringForKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v13;

    v15 = [v4 PKDecimalNumberFromStringForKey:@"totalAmount"];
    totalAmount = v5->_totalAmount;
    v5->_totalAmount = v15;

    v17 = [v4 PKDecimalNumberFromStringForKey:@"totalProduct"];
    totalProductAmount = v5->_totalProductAmount;
    v5->_totalProductAmount = v17;

    v19 = [v4 PKDecimalNumberFromStringForKey:@"totalInterest"];
    totalInterestAmount = v5->_totalInterestAmount;
    v5->_totalInterestAmount = v19;

    v21 = [v4 PKStringForKey:@"periodType"];
    v22 = v21;
    v24 = 1;
    if (v21 != @"monthly")
    {
      if (!v21 || (v23 = [(__CFString *)v21 isEqualToString:@"monthly"], v22, !v23))
      {
        v24 = 0;
      }
    }

    v5->_periodType = v24;
    v25 = [v4 PKStringForKey:@"transactionReferenceIdentifier"];
    transactionReferenceIdentifier = v5->_transactionReferenceIdentifier;
    v5->_transactionReferenceIdentifier = v25;

    v27 = [v4 PKStringForKey:@"accountUserAltDSID"];
    accountUserAltDSID = v5->_accountUserAltDSID;
    v5->_accountUserAltDSID = v27;

    v29 = [v4 PKDictionaryForKey:@"summary"];
    if (v29)
    {
      v30 = [[PKInstallmentPlanSummary alloc] initWithDictionary:v29];
      summary = v5->_summary;
      v5->_summary = v30;
    }

    v32 = [v4 PKArrayContaining:objc_opt_class() forKey:@"lineItems"];
    v33 = v32;
    if (v32)
    {
      v34 = [v32 pk_arrayByApplyingBlock:&__block_literal_global_179];
      lineItems = v5->_lineItems;
      v5->_lineItems = v34;
    }

    v36 = [v4 PKDictionaryForKey:@"product"];
    if (v36)
    {
      v37 = [[PKCreditInstallmentPlanProduct alloc] initWithDictionary:v36];
      product = v5->_product;
      v5->_product = v37;
    }

    v39 = [v4 PKArrayContaining:objc_opt_class() forKey:@"payments"];
    v40 = v39;
    if (v39)
    {
      v41 = [v39 pk_arrayByApplyingBlock:&__block_literal_global_88];
      payments = v5->_payments;
      v5->_payments = v41;
    }

    v43 = [v4 PKDictionaryForKey:@"merchant"];
    if (v43)
    {
      v44 = [[PKInstallmentPlanMerchant alloc] initWithDictionary:v43];
      merchant = v5->_merchant;
      v5->_merchant = v44;
    }

    v46 = [v4 PKArrayContaining:objc_opt_class() forKey:@"rewards"];
    v47 = v46;
    if (v46)
    {
      v48 = [v46 pk_arrayByApplyingBlock:&__block_literal_global_93];
      v49 = [[PKPaymentTransactionRewards alloc] initWithRewardsItems:v48];
      rewards = v5->_rewards;
      v5->_rewards = v49;
    }

    v5->_userViewedIntroduction = [v4 PKBoolForKey:@"userViewedIntroduction"];
  }

  return v5;
}

PKCreditInstallmentPlanLineItem *__46__PKCreditInstallmentPlan_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKCreditInstallmentPlanLineItem alloc] initWithDictionary:v2];

  return v3;
}

PKCreditInstallmentPlanPayment *__46__PKCreditInstallmentPlan_initWithDictionary___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKCreditInstallmentPlanPayment alloc] initWithDictionary:v2];

  return v3;
}

PKPaymentTransactionRewardsItem *__46__PKCreditInstallmentPlan_initWithDictionary___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKPaymentTransactionRewardsItem alloc] initWithDictionary:v2];

  return v3;
}

- (NSDecimalNumber)remainingAmount
{
  v3 = self->_totalAmount;
  v4 = [(PKInstallmentPlanSummary *)self->_summary paymentsToDateAmount];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = [(NSDecimalNumber *)v3 decimalNumberBySubtracting:v4];

    v3 = v7;
  }

  return v3;
}

- (NSDecimalNumber)totalBilled
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AB90] zero];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_payments;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 originalAmountDue];
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = [v9 amountDue];
          if (!v11)
          {
            goto LABEL_11;
          }
        }

        v12 = [v9 statementIdentifier];

        if (v12)
        {
          v13 = [v3 decimalNumberByAdding:v11];

          v3 = v13;
        }

LABEL_11:
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v3;
}

- (PKCreditInstallmentPlanPayment)nextPaymentDue
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(NSArray *)self->_payments reverseObjectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v13;
    while (2)
    {
      v7 = 0;
      v8 = v5;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v12 + 1) + 8 * v7);
        v10 = [v9 statementIdentifier];

        if (v10)
        {
          v5 = v8;
          goto LABEL_12;
        }

        v5 = v9;

        ++v7;
        v8 = v5;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_12:

  return v5;
}

- (BOOL)isComplete
{
  state = self->_state;
  v3 = state >= 3;
  v4 = state - 3;
  if (v3)
  {
    return v4 < 2;
  }

  v6 = [(PKInstallmentPlanSummary *)self->_summary paymentsToDateAmount];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E696AB90] zero];
  }

  v10 = v8;

  v9 = [(NSDecimalNumber *)self->_totalAmount compare:v10]!= NSOrderedDescending;
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKCreditInstallmentPlan *)self isEqualToInstallmentPlan:v5];
  }

  return v6;
}

- (BOOL)isEqualToInstallmentPlan:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_84;
  }

  v6 = *(v4 + 2);
  v7 = self->_identifier;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v7 || !v8)
    {
      goto LABEL_83;
    }

    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_84;
    }
  }

  if (self->_state != *(v5 + 3))
  {
    goto LABEL_84;
  }

  lastUpdated = self->_lastUpdated;
  v12 = *(v5 + 4);
  if (lastUpdated && v12)
  {
    if (([(NSDate *)lastUpdated isEqual:?]& 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (lastUpdated != v12)
  {
    goto LABEL_84;
  }

  apr = self->_apr;
  v14 = *(v5 + 5);
  if (apr && v14)
  {
    if (([(NSDecimalNumber *)apr isEqual:?]& 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (apr != v14)
  {
    goto LABEL_84;
  }

  if (self->_duration != *(v5 + 6))
  {
    goto LABEL_84;
  }

  v15 = *(v5 + 7);
  v7 = self->_currencyCode;
  v16 = v15;
  v9 = v16;
  if (v7 == v16)
  {
  }

  else
  {
    if (!v7 || !v16)
    {
      goto LABEL_83;
    }

    v17 = [(NSString *)v7 isEqualToString:v16];

    if (!v17)
    {
      goto LABEL_84;
    }
  }

  totalAmount = self->_totalAmount;
  v19 = *(v5 + 8);
  if (totalAmount && v19)
  {
    if (([(NSDecimalNumber *)totalAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (totalAmount != v19)
  {
    goto LABEL_84;
  }

  totalProductAmount = self->_totalProductAmount;
  v21 = *(v5 + 9);
  if (totalProductAmount && v21)
  {
    if (([(NSDecimalNumber *)totalProductAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (totalProductAmount != v21)
  {
    goto LABEL_84;
  }

  totalInterestAmount = self->_totalInterestAmount;
  v23 = *(v5 + 10);
  if (totalInterestAmount && v23)
  {
    if (([(NSDecimalNumber *)totalInterestAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (totalInterestAmount != v23)
  {
    goto LABEL_84;
  }

  if (self->_periodType != *(v5 + 11))
  {
    goto LABEL_84;
  }

  summary = self->_summary;
  v25 = *(v5 + 14);
  if (summary && v25)
  {
    if (![(PKInstallmentPlanSummary *)summary isEqual:?])
    {
      goto LABEL_84;
    }
  }

  else if (summary != v25)
  {
    goto LABEL_84;
  }

  lineItems = self->_lineItems;
  v27 = *(v5 + 17);
  if (lineItems && v27)
  {
    if (([(NSArray *)lineItems isEqual:?]& 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (lineItems != v27)
  {
    goto LABEL_84;
  }

  product = self->_product;
  v29 = *(v5 + 16);
  if (product && v29)
  {
    if (![(PKCreditInstallmentPlanProduct *)product isEqual:?])
    {
      goto LABEL_84;
    }
  }

  else if (product != v29)
  {
    goto LABEL_84;
  }

  payments = self->_payments;
  v31 = *(v5 + 18);
  if (payments && v31)
  {
    if (([(NSArray *)payments isEqual:?]& 1) == 0)
    {
      goto LABEL_84;
    }
  }

  else if (payments != v31)
  {
    goto LABEL_84;
  }

  merchant = self->_merchant;
  v33 = *(v5 + 15);
  if (merchant && v33)
  {
    if (![(PKInstallmentPlanMerchant *)merchant isEqual:?])
    {
      goto LABEL_84;
    }
  }

  else if (merchant != v33)
  {
    goto LABEL_84;
  }

  rewards = self->_rewards;
  v35 = *(v5 + 19);
  if (rewards && v35)
  {
    if (![(PKPaymentTransactionRewards *)rewards isEqual:?])
    {
      goto LABEL_84;
    }
  }

  else if (rewards != v35)
  {
    goto LABEL_84;
  }

  v36 = *(v5 + 12);
  v7 = self->_transactionReferenceIdentifier;
  v37 = v36;
  v9 = v37;
  if (v7 == v37)
  {

    goto LABEL_78;
  }

  if (!v7 || !v37)
  {
LABEL_83:

    goto LABEL_84;
  }

  v38 = [(NSString *)v7 isEqualToString:v37];

  if (!v38)
  {
    goto LABEL_84;
  }

LABEL_78:
  v39 = *(v5 + 13);
  v7 = self->_accountUserAltDSID;
  v40 = v39;
  v9 = v40;
  if (v7 == v40)
  {

LABEL_87:
    v42 = self->_userViewedIntroduction == v5[8];
    goto LABEL_85;
  }

  if (!v7 || !v40)
  {
    goto LABEL_83;
  }

  v41 = [(NSString *)v7 isEqualToString:v40];

  if (v41)
  {
    goto LABEL_87;
  }

LABEL_84:
  v42 = 0;
LABEL_85:

  return v42;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_lastUpdated];
  [v3 safelyAddObject:self->_apr];
  [v3 safelyAddObject:self->_currencyCode];
  [v3 safelyAddObject:self->_totalAmount];
  [v3 safelyAddObject:self->_totalProductAmount];
  [v3 safelyAddObject:self->_totalInterestAmount];
  [v3 safelyAddObject:self->_summary];
  [v3 safelyAddObject:self->_lineItems];
  [v3 safelyAddObject:self->_product];
  [v3 safelyAddObject:self->_payments];
  [v3 safelyAddObject:self->_merchant];
  [v3 safelyAddObject:self->_rewards];
  [v3 safelyAddObject:self->_transactionReferenceIdentifier];
  [v3 safelyAddObject:self->_accountUserAltDSID];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_state - v4 + 32 * v4;
  v6 = self->_duration - v5 + 32 * v5;
  v7 = self->_periodType - v6 + 32 * v6;
  v8 = self->_userViewedIntroduction - v7 + 32 * v7;

  return v8;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v3 appendFormat:@"state: '%ld'; ", self->_state];
  [v3 appendFormat:@"lastUpdated: '%@'; ", self->_lastUpdated];
  [v3 appendFormat:@"apr: '%@'; ", self->_apr];
  [v3 appendFormat:@"duration: '%lu'; ", self->_duration];
  [v3 appendFormat:@"currencyCode: '%@'; ", self->_currencyCode];
  [v3 appendFormat:@"totalAmount: '%@'; ", self->_totalAmount];
  [v3 appendFormat:@"totalProductAmount: '%@'; ", self->_totalProductAmount];
  [v3 appendFormat:@"totalInterestAmount: '%@'; ", self->_totalInterestAmount];
  [v3 appendFormat:@"periodType: '%ld'; ", self->_periodType];
  v4 = [(PKInstallmentPlanSummary *)self->_summary description];
  [v3 appendFormat:@"summary: '%@'; ", v4];

  [v3 appendFormat:@"lineItems: '%@'; ", self->_lineItems];
  v5 = [(PKCreditInstallmentPlanProduct *)self->_product description];
  [v3 appendFormat:@"product: '%@'; ", v5];

  [v3 appendFormat:@"payments: '%@'; ", self->_payments];
  v6 = [(PKInstallmentPlanMerchant *)self->_merchant description];
  [v3 appendFormat:@"merchant: '%@'; ", v6];

  v7 = [(PKPaymentTransactionRewards *)self->_rewards description];
  [v3 appendFormat:@"rewards: '%@'; ", v7];

  [v3 appendFormat:@"transactionReferenceIdentifier: '%@'; ", self->_transactionReferenceIdentifier];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKCreditInstallmentPlan)initWithCoder:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = PKCreditInstallmentPlan;
  v5 = [(PKCreditInstallmentPlan *)&v43 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_state = [v4 decodeIntegerForKey:@"state"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdated"];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"apr"];
    apr = v5->_apr;
    v5->_apr = v10;

    v5->_duration = [v4 decodeIntegerForKey:@"duration"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalAmount"];
    totalAmount = v5->_totalAmount;
    v5->_totalAmount = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalProduct"];
    totalProductAmount = v5->_totalProductAmount;
    v5->_totalProductAmount = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalInterest"];
    totalInterestAmount = v5->_totalInterestAmount;
    v5->_totalInterestAmount = v18;

    v5->_periodType = [v4 decodeIntegerForKey:@"periodType"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"summary"];
    summary = v5->_summary;
    v5->_summary = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [v4 decodeObjectOfClasses:v24 forKey:@"lineItems"];
    lineItems = v5->_lineItems;
    v5->_lineItems = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"product"];
    product = v5->_product;
    v5->_product = v27;

    v29 = MEMORY[0x1E695DFD8];
    v30 = objc_opt_class();
    v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"payments"];
    payments = v5->_payments;
    v5->_payments = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchant"];
    merchant = v5->_merchant;
    v5->_merchant = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rewards"];
    rewards = v5->_rewards;
    v5->_rewards = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionReferenceIdentifier"];
    transactionReferenceIdentifier = v5->_transactionReferenceIdentifier;
    v5->_transactionReferenceIdentifier = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountUserAltDSID"];
    accountUserAltDSID = v5->_accountUserAltDSID;
    v5->_accountUserAltDSID = v40;

    v5->_userViewedIntroduction = [v4 decodeBoolForKey:@"userViewedIntroduction"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeInteger:self->_state forKey:@"state"];
  [v5 encodeObject:self->_lastUpdated forKey:@"lastUpdated"];
  [v5 encodeObject:self->_apr forKey:@"apr"];
  [v5 encodeInteger:self->_duration forKey:@"duration"];
  [v5 encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [v5 encodeObject:self->_totalAmount forKey:@"totalAmount"];
  [v5 encodeObject:self->_totalProductAmount forKey:@"totalProduct"];
  [v5 encodeObject:self->_totalInterestAmount forKey:@"totalInterest"];
  [v5 encodeInteger:self->_periodType forKey:@"periodType"];
  [v5 encodeObject:self->_summary forKey:@"summary"];
  [v5 encodeObject:self->_lineItems forKey:@"lineItems"];
  [v5 encodeObject:self->_product forKey:@"product"];
  [v5 encodeObject:self->_payments forKey:@"payments"];
  [v5 encodeObject:self->_merchant forKey:@"merchant"];
  [v5 encodeObject:self->_rewards forKey:@"rewards"];
  [v5 encodeObject:self->_transactionReferenceIdentifier forKey:@"transactionReferenceIdentifier"];
  [v5 encodeObject:self->_accountUserAltDSID forKey:@"accountUserAltDSID"];
  [v5 encodeBool:self->_userViewedIntroduction forKey:@"userViewedIntroduction"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 24) = self->_state;
  v8 = [(NSDate *)self->_lastUpdated copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSDecimalNumber *)self->_apr copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  *(v5 + 48) = self->_duration;
  v12 = [(NSString *)self->_currencyCode copyWithZone:a3];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  v14 = [(NSDecimalNumber *)self->_totalAmount copyWithZone:a3];
  v15 = *(v5 + 64);
  *(v5 + 64) = v14;

  v16 = [(NSDecimalNumber *)self->_totalProductAmount copyWithZone:a3];
  v17 = *(v5 + 72);
  *(v5 + 72) = v16;

  v18 = [(NSDecimalNumber *)self->_totalInterestAmount copyWithZone:a3];
  v19 = *(v5 + 80);
  *(v5 + 80) = v18;

  *(v5 + 88) = self->_periodType;
  v20 = [(PKInstallmentPlanSummary *)self->_summary copyWithZone:a3];
  v21 = *(v5 + 112);
  *(v5 + 112) = v20;

  v22 = [(PKPaymentTransactionRewards *)self->_rewards copyWithZone:a3];
  v23 = *(v5 + 152);
  *(v5 + 152) = v22;

  v24 = [(NSString *)self->_transactionReferenceIdentifier copyWithZone:a3];
  v25 = *(v5 + 96);
  *(v5 + 96) = v24;

  v26 = [(NSString *)self->_accountUserAltDSID copyWithZone:a3];
  v27 = *(v5 + 104);
  *(v5 + 104) = v26;

  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v29 = self->_lineItems;
  v30 = [(NSArray *)v29 countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v56;
    do
    {
      v33 = 0;
      do
      {
        if (*v56 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = [*(*(&v55 + 1) + 8 * v33) copyWithZone:a3];
        [v28 addObject:v34];

        ++v33;
      }

      while (v31 != v33);
      v31 = [(NSArray *)v29 countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v31);
  }

  if ([v28 count])
  {
    v35 = [v28 copy];
    v36 = *(v5 + 136);
    *(v5 + 136) = v35;
  }

  v37 = [(PKCreditInstallmentPlanProduct *)self->_product copyWithZone:a3];
  v38 = *(v5 + 128);
  *(v5 + 128) = v37;

  v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v40 = self->_payments;
  v41 = [(NSArray *)v40 countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v52;
    do
    {
      v44 = 0;
      do
      {
        if (*v52 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = [*(*(&v51 + 1) + 8 * v44) copyWithZone:{a3, v51}];
        [v39 addObject:v45];

        ++v44;
      }

      while (v42 != v44);
      v42 = [(NSArray *)v40 countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v42);
  }

  if ([v39 count])
  {
    v46 = [v39 copy];
    v47 = *(v5 + 144);
    *(v5 + 144) = v46;
  }

  v48 = [(PKInstallmentPlanMerchant *)self->_merchant copyWithZone:a3, v51];
  v49 = *(v5 + 120);
  *(v5 + 120) = v48;

  *(v5 + 8) = self->_userViewedIntroduction;
  return v5;
}

@end