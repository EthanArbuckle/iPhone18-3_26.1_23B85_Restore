@interface PKSavingsAccountFeatureDescriptor
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSavingsAccountFeatureDescriptor:(id)descriptor;
- (PKSavingsAccountFeatureDescriptor)initWithCoder:(id)coder;
- (PKSavingsAccountFeatureDescriptor)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSavingsAccountFeatureDescriptor

- (PKSavingsAccountFeatureDescriptor)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = PKSavingsAccountFeatureDescriptor;
  v5 = [(PKAccountFeatureDescriptor *)&v17 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"fundingSourceTypes"];
    v5->_fundingSourceTypes = PKAccountFundingSourceTypeFromStrings(v6);

    v7 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"transferFrequencies"];
    v5->_transferFrequencies = PKAccountTransferFrequencyFromStrings(v7);

    v8 = [dictionaryCopy PKStringForKey:@"transferTermsIdentifier"];
    transferTermsIdentifier = v5->_transferTermsIdentifier;
    v5->_transferTermsIdentifier = v8;

    v10 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"supportedFileFormatsForTransactionData"];
    supportedFileFormatsForTransactionData = v5->_supportedFileFormatsForTransactionData;
    v5->_supportedFileFormatsForTransactionData = v10;

    v12 = [dictionaryCopy PKStringForKey:@"contactMethod"];
    v5->_contactMethod = PKAccountAddBeneficiariesContactMethodFromString(v12);

    v5->_showCreditRewardsHubBalance = [dictionaryCopy PKBoolForKey:@"showCreditRewardsHubBalance"];
    v5->_showCreditDashboardBalance = [dictionaryCopy PKBoolForKey:@"showCreditDashboardBalance"];
    v5->_showSettingsBalance = [dictionaryCopy PKBoolForKey:@"showSettingsBalance"];
    v5->_hideCreditRewardsHubSignage = [dictionaryCopy PKBoolForKey:@"hideCreditRewardsHubSignage"];
    v5->_hideAuthenticationInterstitial = [dictionaryCopy PKBoolForKey:@"hideAuthenticationInterstitial"];
    v13 = [dictionaryCopy PKArrayForKey:@"accountLocations"];
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

- (PKSavingsAccountFeatureDescriptor)initWithCoder:(id)coder
{
  v21[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PKSavingsAccountFeatureDescriptor;
  v5 = [(PKAccountFeatureDescriptor *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_fundingSourceTypes = [coderCopy decodeIntegerForKey:@"fundingSourceTypes"];
    v5->_transferFrequencies = [coderCopy decodeIntegerForKey:@"transferFrequencies"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferTermsIdentifier"];
    transferTermsIdentifier = v5->_transferTermsIdentifier;
    v5->_transferTermsIdentifier = v6;

    v8 = MEMORY[0x1E695DFD8];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"supportedFileFormatsForTransactionData"];
    supportedFileFormatsForTransactionData = v5->_supportedFileFormatsForTransactionData;
    v5->_supportedFileFormatsForTransactionData = v11;

    v5->_contactMethod = [coderCopy decodeIntegerForKey:@"contactMethod"];
    v5->_showCreditRewardsHubBalance = [coderCopy decodeBoolForKey:@"showCreditRewardsHubBalance"];
    v5->_showCreditDashboardBalance = [coderCopy decodeBoolForKey:@"showCreditDashboardBalance"];
    v5->_showSettingsBalance = [coderCopy decodeBoolForKey:@"showSettingsBalance"];
    v5->_hideCreditRewardsHubSignage = [coderCopy decodeBoolForKey:@"hideCreditRewardsHubSignage"];
    v5->_hideAuthenticationInterstitial = [coderCopy decodeBoolForKey:@"hideAuthenticationInterstitial"];
    v13 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v15 = [v13 setWithArray:v14];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"accountLocations"];
    accountLocations = v5->_accountLocations;
    v5->_accountLocations = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKSavingsAccountFeatureDescriptor;
  coderCopy = coder;
  [(PKAccountFeatureDescriptor *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_fundingSourceTypes forKey:{@"fundingSourceTypes", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_transferFrequencies forKey:@"transferFrequencies"];
  [coderCopy encodeObject:self->_transferTermsIdentifier forKey:@"transferTermsIdentifier"];
  [coderCopy encodeObject:self->_supportedFileFormatsForTransactionData forKey:@"supportedFileFormatsForTransactionData"];
  [coderCopy encodeInteger:self->_contactMethod forKey:@"contactMethod"];
  [coderCopy encodeBool:self->_showCreditRewardsHubBalance forKey:@"showCreditRewardsHubBalance"];
  [coderCopy encodeBool:self->_showCreditDashboardBalance forKey:@"showCreditDashboardBalance"];
  [coderCopy encodeBool:self->_showSettingsBalance forKey:@"showSettingsBalance"];
  [coderCopy encodeBool:self->_hideCreditRewardsHubSignage forKey:@"hideCreditRewardsHubSignage"];
  [coderCopy encodeBool:self->_hideAuthenticationInterstitial forKey:@"hideAuthenticationInterstitial"];
  [coderCopy encodeObject:self->_accountLocations forKey:@"accountLocations"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  identifier = [(PKAccountFeatureDescriptor *)self identifier];
  [v3 appendFormat:@"identifier: '%@'; ", identifier];
  if (([identifier isEqualToString:@"scheduleOneTimeDeposit"] & 1) != 0 || objc_msgSend(identifier, "isEqualToString:", @"scheduleOneTimeWithdrawal"))
  {
    minimumAmount = [(PKAccountFeatureDescriptor *)self minimumAmount];
    [v3 appendFormat:@"minimumAmount: '%@'; ", minimumAmount];

    maximumAmount = [(PKAccountFeatureDescriptor *)self maximumAmount];
    [v3 appendFormat:@"maximumAmount: '%@'; ", maximumAmount];

    merchantIdentifier = [(PKAccountFeatureDescriptor *)self merchantIdentifier];
    [v3 appendFormat:@"merchantIdentifier: '%@'; ", merchantIdentifier];

    supportedNetworks = [(PKAccountFeatureDescriptor *)self supportedNetworks];
    [v3 appendFormat:@"supportedNetworks: '%@'; ", supportedNetworks];

    v9 = PKAccountFundingSourceTypeToStrings(self->_fundingSourceTypes);
    [v3 appendFormat:@"fundingSourceTypes: '%@'; ", v9];

    v10 = PKAccountTransferFrequencyToStrings(self->_transferFrequencies);
    [v3 appendFormat:@"transferFrequencies: '%@'; ", v10];

    [v3 appendFormat:@"transferTermsIdentifier: '%@'; ", self->_transferTermsIdentifier];
    goto LABEL_4;
  }

  if ([identifier isEqualToString:@"addFundingSource"])
  {
    fundingSourceTermsIdentifier = [(PKAccountFeatureDescriptor *)self fundingSourceTermsIdentifier];
    [v3 appendFormat:@"fundingSourceTermsIdentifier: '%@'; ", fundingSourceTermsIdentifier];
LABEL_9:

    goto LABEL_4;
  }

  if ([identifier isEqualToString:@"exportTransactionData"])
  {
    [v3 appendFormat:@"supportedFileFormatsForTransactionData: '%@'; ", self->_supportedFileFormatsForTransactionData];
  }

  else
  {
    if ([identifier isEqualToString:@"addBeneficiaries"])
    {
      fundingSourceTermsIdentifier = PKAccountAddBeneficiariesContactMethodToString(self->_contactMethod);
      [v3 appendFormat:@"contactMethod: '%@'", fundingSourceTermsIdentifier];
      goto LABEL_9;
    }

    if ([identifier isEqualToString:@"FDICBehaviors"])
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

    if ([identifier isEqualToString:@"accountBalanceEventReporting"])
    {
      fundingSourceTermsIdentifier = [(PKSavingsAccountFeatureDescriptor *)self accountLocations];
      [v3 appendFormat:@"accountLocations: '%@'", fundingSourceTermsIdentifier];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKSavingsAccountFeatureDescriptor *)self isEqualToSavingsAccountFeatureDescriptor:v5];
  }

  return v6;
}

- (BOOL)isEqualToSavingsAccountFeatureDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if (![(PKAccountFeatureDescriptor *)self isEqualToAccountFeatureDescriptor:descriptorCopy]|| self->_fundingSourceTypes != descriptorCopy[10] || self->_transferFrequencies != descriptorCopy[11])
  {
    goto LABEL_29;
  }

  transferTermsIdentifier = self->_transferTermsIdentifier;
  v6 = descriptorCopy[12];
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
  v9 = descriptorCopy[13];
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
  if (self->_contactMethod != descriptorCopy[14] || self->_showCreditRewardsHubBalance != *(descriptorCopy + 72) || self->_showCreditDashboardBalance != *(descriptorCopy + 73) || self->_showSettingsBalance != *(descriptorCopy + 74) || self->_hideCreditRewardsHubSignage != *(descriptorCopy + 75) || self->_hideAuthenticationInterstitial != *(descriptorCopy + 76))
  {
    goto LABEL_29;
  }

  accountLocations = self->_accountLocations;
  v12 = descriptorCopy[15];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v13.receiver = self;
  v13.super_class = PKSavingsAccountFeatureDescriptor;
  v5 = [(PKAccountFeatureDescriptor *)&v13 copyWithZone:?];
  v5[10] = self->_fundingSourceTypes;
  v5[11] = self->_transferFrequencies;
  v6 = [(NSString *)self->_transferTermsIdentifier copyWithZone:zone];
  v7 = v5[12];
  v5[12] = v6;

  v8 = [(NSArray *)self->_supportedFileFormatsForTransactionData copyWithZone:zone];
  v9 = v5[13];
  v5[13] = v8;

  v5[14] = self->_contactMethod;
  *(v5 + 72) = self->_showCreditRewardsHubBalance;
  *(v5 + 73) = self->_showCreditDashboardBalance;
  *(v5 + 74) = self->_showSettingsBalance;
  *(v5 + 75) = self->_hideCreditRewardsHubSignage;
  *(v5 + 76) = self->_hideAuthenticationInterstitial;
  v10 = [(NSSet *)self->_accountLocations copyWithZone:zone];
  v11 = v5[15];
  v5[15] = v10;

  return v5;
}

@end