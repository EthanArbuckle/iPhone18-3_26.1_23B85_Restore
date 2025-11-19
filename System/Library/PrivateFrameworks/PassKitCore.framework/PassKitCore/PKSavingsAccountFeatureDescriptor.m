@interface PKSavingsAccountFeatureDescriptor
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSavingsAccountFeatureDescriptor:(id)a3;
- (PKSavingsAccountFeatureDescriptor)initWithCoder:(id)a3;
- (PKSavingsAccountFeatureDescriptor)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKSavingsAccountFeatureDescriptor

- (PKSavingsAccountFeatureDescriptor)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PKSavingsAccountFeatureDescriptor;
  v5 = [(PKAccountFeatureDescriptor *)&v17 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 PKArrayContaining:objc_opt_class() forKey:@"fundingSourceTypes"];
    v5->_fundingSourceTypes = PKAccountFundingSourceTypeFromStrings(v6);

    v7 = [v4 PKArrayContaining:objc_opt_class() forKey:@"transferFrequencies"];
    v5->_transferFrequencies = PKAccountTransferFrequencyFromStrings(v7);

    v8 = [v4 PKStringForKey:@"transferTermsIdentifier"];
    transferTermsIdentifier = v5->_transferTermsIdentifier;
    v5->_transferTermsIdentifier = v8;

    v10 = [v4 PKArrayContaining:objc_opt_class() forKey:@"supportedFileFormatsForTransactionData"];
    supportedFileFormatsForTransactionData = v5->_supportedFileFormatsForTransactionData;
    v5->_supportedFileFormatsForTransactionData = v10;

    v12 = [v4 PKStringForKey:@"contactMethod"];
    v5->_contactMethod = PKAccountAddBeneficiariesContactMethodFromString(v12);

    v5->_showCreditRewardsHubBalance = [v4 PKBoolForKey:@"showCreditRewardsHubBalance"];
    v5->_showCreditDashboardBalance = [v4 PKBoolForKey:@"showCreditDashboardBalance"];
    v5->_showSettingsBalance = [v4 PKBoolForKey:@"showSettingsBalance"];
    v5->_hideCreditRewardsHubSignage = [v4 PKBoolForKey:@"hideCreditRewardsHubSignage"];
    v5->_hideAuthenticationInterstitial = [v4 PKBoolForKey:@"hideAuthenticationInterstitial"];
    v13 = [v4 PKArrayForKey:@"accountLocations"];
    v14 = [v13 pk_createSetByApplyingBlock:&__block_literal_global_43];
    accountLocations = v5->_accountLocations;
    v5->_accountLocations = v14;
  }

  return v5;
}

PKAccountLocation *__56__PKSavingsAccountFeatureDescriptor_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKAccountLocation alloc] initWithDictionary:v2];

  return v3;
}

- (PKSavingsAccountFeatureDescriptor)initWithCoder:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKSavingsAccountFeatureDescriptor;
  v5 = [(PKAccountFeatureDescriptor *)&v19 initWithCoder:v4];
  if (v5)
  {
    v5->_fundingSourceTypes = [v4 decodeIntegerForKey:@"fundingSourceTypes"];
    v5->_transferFrequencies = [v4 decodeIntegerForKey:@"transferFrequencies"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferTermsIdentifier"];
    transferTermsIdentifier = v5->_transferTermsIdentifier;
    v5->_transferTermsIdentifier = v6;

    v8 = MEMORY[0x1E695DFD8];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"supportedFileFormatsForTransactionData"];
    supportedFileFormatsForTransactionData = v5->_supportedFileFormatsForTransactionData;
    v5->_supportedFileFormatsForTransactionData = v11;

    v5->_contactMethod = [v4 decodeIntegerForKey:@"contactMethod"];
    v5->_showCreditRewardsHubBalance = [v4 decodeBoolForKey:@"showCreditRewardsHubBalance"];
    v5->_showCreditDashboardBalance = [v4 decodeBoolForKey:@"showCreditDashboardBalance"];
    v5->_showSettingsBalance = [v4 decodeBoolForKey:@"showSettingsBalance"];
    v5->_hideCreditRewardsHubSignage = [v4 decodeBoolForKey:@"hideCreditRewardsHubSignage"];
    v5->_hideAuthenticationInterstitial = [v4 decodeBoolForKey:@"hideAuthenticationInterstitial"];
    v13 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v15 = [v13 setWithArray:v14];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"accountLocations"];
    accountLocations = v5->_accountLocations;
    v5->_accountLocations = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKSavingsAccountFeatureDescriptor;
  v4 = a3;
  [(PKAccountFeatureDescriptor *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_fundingSourceTypes forKey:{@"fundingSourceTypes", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_transferFrequencies forKey:@"transferFrequencies"];
  [v4 encodeObject:self->_transferTermsIdentifier forKey:@"transferTermsIdentifier"];
  [v4 encodeObject:self->_supportedFileFormatsForTransactionData forKey:@"supportedFileFormatsForTransactionData"];
  [v4 encodeInteger:self->_contactMethod forKey:@"contactMethod"];
  [v4 encodeBool:self->_showCreditRewardsHubBalance forKey:@"showCreditRewardsHubBalance"];
  [v4 encodeBool:self->_showCreditDashboardBalance forKey:@"showCreditDashboardBalance"];
  [v4 encodeBool:self->_showSettingsBalance forKey:@"showSettingsBalance"];
  [v4 encodeBool:self->_hideCreditRewardsHubSignage forKey:@"hideCreditRewardsHubSignage"];
  [v4 encodeBool:self->_hideAuthenticationInterstitial forKey:@"hideAuthenticationInterstitial"];
  [v4 encodeObject:self->_accountLocations forKey:@"accountLocations"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(PKAccountFeatureDescriptor *)self identifier];
  [v3 appendFormat:@"identifier: '%@'; ", v4];
  if (([v4 isEqualToString:@"scheduleOneTimeDeposit"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"scheduleOneTimeWithdrawal"))
  {
    v5 = [(PKAccountFeatureDescriptor *)self minimumAmount];
    [v3 appendFormat:@"minimumAmount: '%@'; ", v5];

    v6 = [(PKAccountFeatureDescriptor *)self maximumAmount];
    [v3 appendFormat:@"maximumAmount: '%@'; ", v6];

    v7 = [(PKAccountFeatureDescriptor *)self merchantIdentifier];
    [v3 appendFormat:@"merchantIdentifier: '%@'; ", v7];

    v8 = [(PKAccountFeatureDescriptor *)self supportedNetworks];
    [v3 appendFormat:@"supportedNetworks: '%@'; ", v8];

    v9 = PKAccountFundingSourceTypeToStrings(self->_fundingSourceTypes);
    [v3 appendFormat:@"fundingSourceTypes: '%@'; ", v9];

    v10 = PKAccountTransferFrequencyToStrings(self->_transferFrequencies);
    [v3 appendFormat:@"transferFrequencies: '%@'; ", v10];

    [v3 appendFormat:@"transferTermsIdentifier: '%@'; ", self->_transferTermsIdentifier];
    goto LABEL_4;
  }

  if ([v4 isEqualToString:@"addFundingSource"])
  {
    v12 = [(PKAccountFeatureDescriptor *)self fundingSourceTermsIdentifier];
    [v3 appendFormat:@"fundingSourceTermsIdentifier: '%@'; ", v12];
LABEL_9:

    goto LABEL_4;
  }

  if ([v4 isEqualToString:@"exportTransactionData"])
  {
    [v3 appendFormat:@"supportedFileFormatsForTransactionData: '%@'; ", self->_supportedFileFormatsForTransactionData];
  }

  else
  {
    if ([v4 isEqualToString:@"addBeneficiaries"])
    {
      v12 = PKAccountAddBeneficiariesContactMethodToString(self->_contactMethod);
      [v3 appendFormat:@"contactMethod: '%@'", v12];
      goto LABEL_9;
    }

    if ([v4 isEqualToString:@"FDICBehaviors"])
    {
      if (self->_showCreditRewardsHubBalance)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      [v3 appendFormat:@"showCreditRewardsHubBalance: '%@'", v13];
      if (self->_showCreditDashboardBalance)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      [v3 appendFormat:@"showCreditDashboardBalance: '%@'", v14];
      if (self->_showSettingsBalance)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      [v3 appendFormat:@"showSettingsBalance: '%@'", v15];
      if (self->_hideCreditRewardsHubSignage)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      [v3 appendFormat:@"hideCreditRewardsHubSignage: '%@'", v16];
      if (self->_hideAuthenticationInterstitial)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      [v3 appendFormat:@"hideAuthenticationInterstitial: '%@'", v17];
      goto LABEL_4;
    }

    if ([v4 isEqualToString:@"accountBalanceEventReporting"])
    {
      v12 = [(PKSavingsAccountFeatureDescriptor *)self accountLocations];
      [v3 appendFormat:@"accountLocations: '%@'", v12];
      goto LABEL_9;
    }
  }

LABEL_4:
  [v3 appendFormat:@">"];

  return v3;
}

- (unint64_t)hash
{
  v15.receiver = self;
  v15.super_class = PKSavingsAccountFeatureDescriptor;
  v3 = [(PKAccountFeatureDescriptor *)&v15 hash];
  v4 = self->_fundingSourceTypes - v3 + 32 * v3;
  v5 = self->_transferFrequencies - v4 + 32 * v4;
  v6 = self->_contactMethod - v5 + 32 * v5;
  v7 = self->_showCreditRewardsHubBalance - v6 + 32 * v6;
  v8 = self->_showCreditDashboardBalance - v7 + 32 * v7;
  v9 = self->_showSettingsBalance - v8 + 32 * v8;
  v10 = self->_hideCreditRewardsHubSignage - v9 + 32 * v9;
  v11 = self->_hideAuthenticationInterstitial - v10 + 32 * v10;
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v12 safelyAddObject:self->_transferTermsIdentifier];
  [v12 safelyAddObject:self->_supportedFileFormatsForTransactionData];
  [v12 safelyAddObject:self->_accountLocations];
  v13 = PKCombinedHash(v11, v12);

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKSavingsAccountFeatureDescriptor *)self isEqualToSavingsAccountFeatureDescriptor:v5];
  }

  return v6;
}

- (BOOL)isEqualToSavingsAccountFeatureDescriptor:(id)a3
{
  v4 = a3;
  if (![(PKAccountFeatureDescriptor *)self isEqualToAccountFeatureDescriptor:v4]|| self->_fundingSourceTypes != v4[10] || self->_transferFrequencies != v4[11])
  {
    goto LABEL_29;
  }

  transferTermsIdentifier = self->_transferTermsIdentifier;
  v6 = v4[12];
  if (transferTermsIdentifier)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (transferTermsIdentifier != v6)
    {
      goto LABEL_29;
    }
  }

  else if (([(NSString *)transferTermsIdentifier isEqual:?]& 1) == 0)
  {
    goto LABEL_29;
  }

  supportedFileFormatsForTransactionData = self->_supportedFileFormatsForTransactionData;
  v9 = v4[13];
  if (supportedFileFormatsForTransactionData)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (supportedFileFormatsForTransactionData == v9)
    {
      goto LABEL_20;
    }

LABEL_29:
    v13 = 0;
    goto LABEL_30;
  }

  if (([(NSArray *)supportedFileFormatsForTransactionData isEqual:?]& 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_20:
  if (self->_contactMethod != v4[14] || self->_showCreditRewardsHubBalance != *(v4 + 72) || self->_showCreditDashboardBalance != *(v4 + 73) || self->_showSettingsBalance != *(v4 + 74) || self->_hideCreditRewardsHubSignage != *(v4 + 75) || self->_hideAuthenticationInterstitial != *(v4 + 76))
  {
    goto LABEL_29;
  }

  accountLocations = self->_accountLocations;
  v12 = v4[15];
  if (accountLocations && v12)
  {
    v13 = [(NSSet *)accountLocations isEqual:?];
  }

  else
  {
    v13 = accountLocations == v12;
  }

LABEL_30:

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v13.receiver = self;
  v13.super_class = PKSavingsAccountFeatureDescriptor;
  v5 = [(PKAccountFeatureDescriptor *)&v13 copyWithZone:?];
  v5[10] = self->_fundingSourceTypes;
  v5[11] = self->_transferFrequencies;
  v6 = [(NSString *)self->_transferTermsIdentifier copyWithZone:a3];
  v7 = v5[12];
  v5[12] = v6;

  v8 = [(NSArray *)self->_supportedFileFormatsForTransactionData copyWithZone:a3];
  v9 = v5[13];
  v5[13] = v8;

  v5[14] = self->_contactMethod;
  *(v5 + 72) = self->_showCreditRewardsHubBalance;
  *(v5 + 73) = self->_showCreditDashboardBalance;
  *(v5 + 74) = self->_showSettingsBalance;
  *(v5 + 75) = self->_hideCreditRewardsHubSignage;
  *(v5 + 76) = self->_hideAuthenticationInterstitial;
  v10 = [(NSSet *)self->_accountLocations copyWithZone:a3];
  v11 = v5[15];
  v5[15] = v10;

  return v5;
}

@end