@interface PKCreditAccountFeatureDescriptor
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCreditAccountFeatureDescriptor:(id)a3;
- (PKCreditAccountFeatureDescriptor)initWithCoder:(id)a3;
- (PKCreditAccountFeatureDescriptor)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)productForFeature:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCreditAccountFeatureDescriptor

- (unint64_t)hash
{
  v13.receiver = self;
  v13.super_class = PKCreditAccountFeatureDescriptor;
  v3 = [(PKAccountFeatureDescriptor *)&v13 hash];
  v4 = self->_paymentFundingSourceTypes - v3 + 32 * v3;
  v5 = self->_paymentPresets - v4 + 32 * v4;
  v6 = self->_paymentFrequencies - v5 + 32 * v5;
  v7 = self->_maximumAccountUsers - v6 + 32 * v6;
  v8 = self->_minimumOwnerAge - v7 + 32 * v7;
  v9 = self->_minimumParticipantAge - v8 + 32 * v8;
  v10 = [MEMORY[0x1E695DF70] array];
  [v10 safelyAddObject:self->_paymentTermsIdentifier];
  [v10 safelyAddObject:self->_supportedFileFormatsForTransactionData];
  [v10 safelyAddObject:self->_supportedDestinations];
  [v10 safelyAddObject:self->_savingsAPY];
  [v10 safelyAddObject:self->_savingsInterestRate];
  v11 = PKCombinedHash(v9, v10);

  return v11;
}

- (PKCreditAccountFeatureDescriptor)initWithDictionary:(id)a3
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v64.receiver = self;
  v64.super_class = PKCreditAccountFeatureDescriptor;
  v5 = [(PKAccountFeatureDescriptor *)&v64 initWithDictionary:v4];
  v6 = v5;
  if (v5)
  {
    v60 = v5;
    v61 = v4;
    v7 = [v4 PKArrayContaining:objc_opt_class() forKey:@"paymentPresets"];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v65 objects:v69 count:16];
    if (!v8)
    {
      v10 = 0;
      goto LABEL_22;
    }

    v9 = v8;
    v10 = 0;
    v11 = *v66;
    while (1)
    {
      v12 = 0;
      do
      {
        if (*v66 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v65 + 1) + 8 * v12);
        if (v13 == @"fixedAmount")
        {
          goto LABEL_10;
        }

        v14 = v13;
        if (!v13)
        {
          goto LABEL_11;
        }

        v15 = [@"fixedAmount" isEqualToString:v13];

        if (v15)
        {
LABEL_10:
          v10 |= 1uLL;
        }

        else
        {
          v16 = v14;
          if (v16 == @"minimumDue" || (v17 = v16, v18 = [@"minimumDue" isEqualToString:v16], v17, v18))
          {
            v10 |= 2uLL;
          }

          else
          {
            v19 = v17;
            if (v19 == @"statementBalance" || (v20 = v19, v21 = [@"statementBalance" isEqualToString:v19], v20, v21))
            {
              v10 |= 4uLL;
            }
          }
        }

LABEL_11:
        ++v12;
      }

      while (v9 != v12);
      v22 = [v7 countByEnumeratingWithState:&v65 objects:v69 count:16];
      v9 = v22;
      if (!v22)
      {
LABEL_22:
        v60->_paymentPresets = v10;

        v23 = [v61 PKArrayContaining:objc_opt_class() forKey:@"paymentFrequencies"];
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        obj = v23;
        v24 = [v23 countByEnumeratingWithState:&v65 objects:v69 count:16];
        if (!v24)
        {
          v26 = 0;
          goto LABEL_53;
        }

        v25 = v24;
        v26 = 0;
        v63 = *v66;
        v27 = @"once";
        v28 = @"weekly";
        while (1)
        {
          v29 = 0;
          do
          {
            v30 = v27;
            v31 = v28;
            if (*v66 != v63)
            {
              objc_enumerationMutation(obj);
            }

            v32 = *(*(&v65 + 1) + 8 * v29);
            if (v32 == @"now")
            {
              goto LABEL_30;
            }

            v33 = v32;
            if (!v32)
            {
              goto LABEL_31;
            }

            v34 = [@"now" isEqualToString:v32];

            if (v34)
            {
LABEL_30:
              v26 |= 1uLL;
              goto LABEL_31;
            }

            v35 = v33;
            v27 = v30;
            if (v35 != v30)
            {
              v36 = v35;
              v37 = [(__CFString *)v30 isEqualToString:v35];

              v27 = v30;
              if (!v37)
              {
                v38 = v36;
                v28 = v31;
                if (v38 == v31 || (v39 = v38, v40 = [(__CFString *)v31 isEqualToString:v38], v39, v28 = v31, v40))
                {
                  v26 |= 4uLL;
                }

                else
                {
                  v41 = v39;
                  if (v41 == @"biweekly" || (v42 = [@"biweekly" isEqualToString:v41], v41, v42))
                  {
                    v26 |= 8uLL;
                  }

                  else
                  {
                    v43 = v41;
                    if (v43 == @"monthly" || (v44 = [@"monthly" isEqualToString:v43], v43, v44))
                    {
                      v26 |= 0x10uLL;
                    }

                    else
                    {
                      v45 = v43;
                      if (v45 == @"paymentDueDate" || (v46 = [@"paymentDueDate" isEqualToString:v45], v45, v46))
                      {
                        v26 |= 0x20uLL;
                      }
                    }
                  }

LABEL_31:
                  v28 = v31;
                }

                v27 = v30;
                goto LABEL_33;
              }
            }

            v26 |= 2uLL;
            v28 = v31;
LABEL_33:
            ++v29;
          }

          while (v25 != v29);
          v47 = [obj countByEnumeratingWithState:&v65 objects:v69 count:16];
          v25 = v47;
          v27 = v30;
          v28 = v31;
          if (!v47)
          {
LABEL_53:
            v6 = v60;
            v60->_paymentFrequencies = v26;

            v4 = v61;
            v48 = [v61 PKArrayContaining:objc_opt_class() forKey:@"paymentFundingSourceTypes"];
            v60->_paymentFundingSourceTypes = PKAccountFundingSourceTypeFromStrings(v48);

            v49 = [v61 PKStringForKey:@"paymentTermsIdentifier"];
            paymentTermsIdentifier = v60->_paymentTermsIdentifier;
            v60->_paymentTermsIdentifier = v49;

            v51 = [v61 PKArrayContaining:objc_opt_class() forKey:@"supportedFileFormatsForTransactionData"];
            supportedFileFormatsForTransactionData = v60->_supportedFileFormatsForTransactionData;
            v60->_supportedFileFormatsForTransactionData = v51;

            v60->_maximumAccountUsers = [v61 PKIntegerForKey:@"maximumAccountUsers"];
            v60->_minimumOwnerAge = [v61 PKIntegerForKey:@"minimumOwnerAge"];
            v60->_minimumParticipantAge = [v61 PKIntegerForKey:@"minimumParticipantAge"];
            v53 = [v61 PKArrayContaining:objc_opt_class() forKey:@"supportedDestinations"];
            supportedDestinations = v60->_supportedDestinations;
            v60->_supportedDestinations = v53;

            v55 = [v61 PKDecimalNumberFromStringForKey:@"savingsApy"];
            savingsAPY = v60->_savingsAPY;
            v60->_savingsAPY = v55;

            v57 = [v61 PKDecimalNumberFromStringForKey:@"savingsInterestRate"];
            savingsInterestRate = v60->_savingsInterestRate;
            v60->_savingsInterestRate = v57;

            goto LABEL_54;
          }
        }
      }
    }
  }

LABEL_54:

  return v6;
}

- (PKCreditAccountFeatureDescriptor)initWithCoder:(id)a3
{
  v25[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PKCreditAccountFeatureDescriptor;
  v5 = [(PKAccountFeatureDescriptor *)&v23 initWithCoder:v4];
  if (v5)
  {
    v5->_paymentPresets = [v4 decodeIntegerForKey:@"paymentPresets"];
    v5->_paymentFrequencies = [v4 decodeIntegerForKey:@"paymentFrequencies"];
    v5->_paymentFundingSourceTypes = [v4 decodeIntegerForKey:@"paymentFundingSourceTypes"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentTermsIdentifier"];
    paymentTermsIdentifier = v5->_paymentTermsIdentifier;
    v5->_paymentTermsIdentifier = v6;

    v8 = MEMORY[0x1E695DFD8];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"supportedFileFormatsForTransactionData"];
    supportedFileFormatsForTransactionData = v5->_supportedFileFormatsForTransactionData;
    v5->_supportedFileFormatsForTransactionData = v11;

    v5->_maximumAccountUsers = [v4 decodeIntegerForKey:@"maximumAccountUsers"];
    v5->_minimumOwnerAge = [v4 decodeIntegerForKey:@"minimumOwnerAge"];
    v5->_minimumParticipantAge = [v4 decodeIntegerForKey:@"minimumParticipantAge"];
    v13 = MEMORY[0x1E695DFD8];
    v24[0] = objc_opt_class();
    v24[1] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v15 = [v13 setWithArray:v14];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"supportedDestinations"];
    supportedDestinations = v5->_supportedDestinations;
    v5->_supportedDestinations = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"savingsApy"];
    savingsAPY = v5->_savingsAPY;
    v5->_savingsAPY = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"savingsInterestRate"];
    savingsInterestRate = v5->_savingsInterestRate;
    v5->_savingsInterestRate = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKCreditAccountFeatureDescriptor;
  v4 = a3;
  [(PKAccountFeatureDescriptor *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_paymentPresets forKey:{@"paymentPresets", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_paymentFrequencies forKey:@"paymentFrequencies"];
  [v4 encodeInteger:self->_paymentFundingSourceTypes forKey:@"paymentFundingSourceTypes"];
  [v4 encodeObject:self->_paymentTermsIdentifier forKey:@"paymentTermsIdentifier"];
  [v4 encodeObject:self->_supportedFileFormatsForTransactionData forKey:@"supportedFileFormatsForTransactionData"];
  [v4 encodeInteger:self->_maximumAccountUsers forKey:@"maximumAccountUsers"];
  [v4 encodeInteger:self->_minimumOwnerAge forKey:@"minimumOwnerAge"];
  [v4 encodeInteger:self->_minimumParticipantAge forKey:@"minimumParticipantAge"];
  [v4 encodeObject:self->_supportedDestinations forKey:@"supportedDestinations"];
  [v4 encodeObject:self->_savingsAPY forKey:@"savingsApy"];
  [v4 encodeObject:self->_savingsInterestRate forKey:@"savingsInterestRate"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(PKAccountFeatureDescriptor *)self identifier];
  [v3 appendFormat:@"identifier: '%@'; ", v4];
  if (([v4 isEqualToString:@"schedulePayment"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"scheduleRecurringPayments"))
  {
    v5 = [(PKAccountFeatureDescriptor *)self minimumAmount];
    [v3 appendFormat:@"minimumAmount: '%@'; ", v5];

    v6 = [(PKAccountFeatureDescriptor *)self maximumAmount];
    [v3 appendFormat:@"maximumAmount: '%@'; ", v6];

    v7 = [(PKAccountFeatureDescriptor *)self merchantIdentifier];
    [v3 appendFormat:@"merchantIdentifier: '%@'; ", v7];

    v8 = [(PKAccountFeatureDescriptor *)self supportedNetworks];
    [v3 appendFormat:@"supportedNetworks: '%@'; ", v8];

    v9 = PKMerchantCapabilityToStrings([(PKAccountFeatureDescriptor *)self merchantCapabilities]);
    [v3 appendFormat:@"merchantCapabilities: '%@'; ", v9];

    v10 = PKAccountFundingSourceTypeToStrings(self->_paymentFundingSourceTypes);
    [v3 appendFormat:@"fundingSourceTypes: '%@'; ", v10];

    paymentPresets = self->_paymentPresets;
    v12 = [MEMORY[0x1E695DF70] array];
    v13 = v12;
    if (paymentPresets)
    {
      [v12 addObject:@"fixedAmount"];
      if ((paymentPresets & 2) == 0)
      {
LABEL_5:
        if ((paymentPresets & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }
    }

    else if ((paymentPresets & 2) == 0)
    {
      goto LABEL_5;
    }

    [v13 addObject:@"minimumDue"];
    if ((paymentPresets & 4) == 0)
    {
LABEL_7:
      v14 = [v13 copy];

      [v3 appendFormat:@"paymentPresets: '%@'; ", v14];
      paymentFrequencies = self->_paymentFrequencies;
      v16 = [MEMORY[0x1E695DF70] array];
      v17 = v16;
      if (paymentFrequencies)
      {
        [v16 addObject:@"now"];
        if ((paymentFrequencies & 2) == 0)
        {
LABEL_9:
          if ((paymentFrequencies & 4) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_23;
        }
      }

      else if ((paymentFrequencies & 2) == 0)
      {
        goto LABEL_9;
      }

      [v17 addObject:@"once"];
      if ((paymentFrequencies & 4) == 0)
      {
LABEL_10:
        if ((paymentFrequencies & 8) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_24;
      }

LABEL_23:
      [v17 addObject:@"weekly"];
      if ((paymentFrequencies & 8) == 0)
      {
LABEL_11:
        if ((paymentFrequencies & 0x10) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_25;
      }

LABEL_24:
      [v17 addObject:@"biweekly"];
      if ((paymentFrequencies & 0x10) == 0)
      {
LABEL_12:
        if ((paymentFrequencies & 0x20) == 0)
        {
LABEL_14:
          v18 = [v17 copy];

          [v3 appendFormat:@"paymentFrequencies: '%@'; ", v18];
          [v3 appendFormat:@"paymentTermsIdentifier: '%@'; ", self->_paymentTermsIdentifier];
          goto LABEL_15;
        }

LABEL_13:
        [v17 addObject:@"paymentDueDate"];
        goto LABEL_14;
      }

LABEL_25:
      [v17 addObject:@"monthly"];
      if ((paymentFrequencies & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

LABEL_6:
    [v13 addObject:@"statementBalance"];
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"addFundingSource"])
  {
    v20 = [(PKAccountFeatureDescriptor *)self fundingSourceTermsIdentifier];
    [v3 appendFormat:@"fundingSourceTermsIdentifier: '%@'; ", v20];
LABEL_29:

    goto LABEL_15;
  }

  if ([v4 isEqualToString:@"exportTransactionData"])
  {
    [v3 appendFormat:@"supportedFileFormatsForTransactionData: '%@'; ", self->_supportedFileFormatsForTransactionData];
  }

  else if ([v4 isEqualToString:@"accountUserInvitationAllowed"])
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_maximumAccountUsers];
    [v3 appendFormat:@"maximumAccountUsers: '%@'; ", v21];

    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_minimumOwnerAge];
    [v3 appendFormat:@"minimumOwnerAge: '%@'; ", v22];

    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_minimumParticipantAge];
    [v3 appendFormat:@"minimumParticipantAge: '%@'; ", v23];

    v24 = [(PKAccountFeatureDescriptor *)self osVersionRange];

    if (v24)
    {
      v20 = [(PKAccountFeatureDescriptor *)self osVersionRange];
      v25 = [v20 asDictionary];
      [v3 appendFormat:@"osVersionRange: '%@'; ", v25];

      goto LABEL_29;
    }
  }

  else
  {
    v26 = v4;
    if (v26 == @"redeemRewards" || (v27 = v26) != 0 && (v28 = [(__CFString *)v26 isEqualToString:@"redeemRewards"], v27, v28))
    {
      v29 = [(NSArray *)self->_supportedDestinations componentsJoinedByString:@", "];
      [v3 appendFormat:@"supportedDestinations: '%@'; ", v29];

      v30 = [(NSDecimalNumber *)self->_savingsAPY stringValue];
      [v3 appendFormat:@"savingsAPY: '%@'; ", v30];

      v20 = [(NSDecimalNumber *)self->_savingsInterestRate stringValue];
      [v3 appendFormat:@"savingsInterestRate: '%@'; ", v20];
      goto LABEL_29;
    }
  }

LABEL_15:
  [v3 appendFormat:@">"];

  return v3;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKCreditAccountFeatureDescriptor *)self isEqualToCreditAccountFeatureDescriptor:v5];
  }

  return v6;
}

- (BOOL)isEqualToCreditAccountFeatureDescriptor:(id)a3
{
  v4 = a3;
  if (![(PKAccountFeatureDescriptor *)self isEqualToAccountFeatureDescriptor:v4]|| self->_paymentFundingSourceTypes != v4[9] || self->_paymentPresets != v4[10] || self->_paymentFrequencies != v4[11])
  {
    goto LABEL_36;
  }

  paymentTermsIdentifier = self->_paymentTermsIdentifier;
  v6 = v4[13];
  if (paymentTermsIdentifier)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (paymentTermsIdentifier != v6)
    {
      goto LABEL_36;
    }
  }

  else if (([(NSString *)paymentTermsIdentifier isEqual:?]& 1) == 0)
  {
    goto LABEL_36;
  }

  supportedFileFormatsForTransactionData = self->_supportedFileFormatsForTransactionData;
  v9 = v4[12];
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
    if (supportedFileFormatsForTransactionData != v9)
    {
      goto LABEL_36;
    }
  }

  else if (([(NSArray *)supportedFileFormatsForTransactionData isEqual:?]& 1) == 0)
  {
    goto LABEL_36;
  }

  if (self->_maximumAccountUsers != v4[14] || self->_minimumOwnerAge != v4[15] || self->_minimumParticipantAge != v4[16])
  {
    goto LABEL_36;
  }

  supportedDestinations = self->_supportedDestinations;
  v12 = v4[17];
  if (supportedDestinations && v12)
  {
    if (([(NSArray *)supportedDestinations isEqual:?]& 1) == 0)
    {
      goto LABEL_36;
    }
  }

  else if (supportedDestinations != v12)
  {
    goto LABEL_36;
  }

  savingsAPY = self->_savingsAPY;
  v14 = v4[18];
  if (!savingsAPY || !v14)
  {
    if (savingsAPY == v14)
    {
      goto LABEL_32;
    }

LABEL_36:
    v17 = 0;
    goto LABEL_37;
  }

  if (([(NSDecimalNumber *)savingsAPY isEqual:?]& 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_32:
  savingsInterestRate = self->_savingsInterestRate;
  v16 = v4[19];
  if (savingsInterestRate && v16)
  {
    v17 = [(NSDecimalNumber *)savingsInterestRate isEqual:?];
  }

  else
  {
    v17 = savingsInterestRate == v16;
  }

LABEL_37:

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v17.receiver = self;
  v17.super_class = PKCreditAccountFeatureDescriptor;
  v5 = [(PKAccountFeatureDescriptor *)&v17 copyWithZone:?];
  v5[9] = self->_paymentFundingSourceTypes;
  v5[10] = self->_paymentPresets;
  v5[11] = self->_paymentFrequencies;
  v6 = [(NSString *)self->_paymentTermsIdentifier copyWithZone:a3];
  v7 = v5[13];
  v5[13] = v6;

  v8 = [(NSArray *)self->_supportedFileFormatsForTransactionData copyWithZone:a3];
  v9 = v5[12];
  v5[12] = v8;

  v5[14] = self->_maximumAccountUsers;
  v5[15] = self->_minimumOwnerAge;
  v5[16] = self->_minimumParticipantAge;
  v10 = [(NSArray *)self->_supportedDestinations copyWithZone:a3];
  v11 = v5[17];
  v5[17] = v10;

  v12 = [(NSDecimalNumber *)self->_savingsAPY copyWithZone:a3];
  v13 = v5[18];
  v5[18] = v12;

  v14 = [(NSDecimalNumber *)self->_savingsInterestRate copyWithZone:a3];
  v15 = v5[19];
  v5[19] = v14;

  return v5;
}

- (id)productForFeature:(unint64_t)a3
{
  v51[2] = *MEMORY[0x1E69E9840];
  if (a3 != 5 || !self->_savingsAPY)
  {
    v15 = 0;
    goto LABEL_18;
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = +[PKPaymentWebService sharedService];
  v6 = [v5 context];

  v7 = PKPassKitBundle();
  v8 = [v6 applyServicePreferredLanguageForFeatureIdentifier:5 mainLanguageBundle:v7];

  v9 = [MEMORY[0x1E695DF58] currentLocale];
  v10 = [(PKDynamicProvisioningPageContent *)v9 languageCode];
  v11 = v8;
  v12 = v11;
  if (v10 == v11)
  {

    v14 = 0;
LABEL_12:

    goto LABEL_13;
  }

  if (!v11 || !v10)
  {

    goto LABEL_11;
  }

  v13 = [v10 isEqualToString:v11];

  if ((v13 & 1) == 0)
  {
LABEL_11:
    v9 = objc_alloc_init(PKDynamicProvisioningPageContent);
    [(PKDynamicProvisioningPageContent *)v9 setPageNumber:0];
    v21 = PKLocalizedFeatureString(@"LANGUAGE_NOTICE_TITLE", 5, 0, v16, v17, v18, v19, v20, v46);
    [(PKDynamicProvisioningPageContent *)v9 setTitle:v21];

    v27 = PKLocalizedFeatureString(@"LANGUAGE_NOTICE_BODY", 5, 0, v22, v23, v24, v25, v26, v47);
    [(PKDynamicProvisioningPageContent *)v9 setSubtitle:v27];

    v33 = PKLocalizedFeatureString(@"CONTINUE", 5, 0, v28, v29, v30, v31, v32, v48);
    [(PKDynamicProvisioningPageContent *)v9 setPrimaryActionTitle:v33];

    v39 = PKLocalizedFeatureString(@"CANCEL", 5, 0, v34, v35, v36, v37, v38, v49);
    [(PKDynamicProvisioningPageContent *)v9 setSecondaryActionTitle:v39];

    [(PKDynamicProvisioningPageContent *)v9 setIdentifier:@"languageNotice"];
    [(PKDynamicProvisioningPageContent *)v9 setHeroImageURL:&stru_1F227FD28];
    [(PKDynamicProvisioningPageContent *)v9 setContentAlignment:2];
    [v4 addObject:v9];
    v14 = 1;
    goto LABEL_12;
  }

  v14 = 0;
LABEL_13:
  v40 = objc_alloc_init(PKDynamicProvisioningPageContent);
  [(PKDynamicProvisioningPageContent *)v40 setPageNumber:v14];
  [(PKDynamicProvisioningPageContent *)v40 setIdentifier:@"mainFeatureOnboardingPageIdentifier"];
  [v4 addObject:v40];
  v15 = [[PKPaymentSetupProduct alloc] initWithFeatureIdentifier:5];
  savingsAPY = self->_savingsAPY;
  v51[0] = savingsAPY;
  v50[0] = @"apy";
  v50[1] = @"interestRate";
  savingsInterestRate = self->_savingsInterestRate;
  v43 = savingsInterestRate;
  if (!savingsInterestRate)
  {
    v43 = PKAPRFromAPY(savingsAPY, 365);
  }

  v51[1] = v43;
  v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:2];
  [(PKPaymentSetupProduct *)v15 setClientInfo:v44];

  if (!savingsInterestRate)
  {
  }

  [(PKPaymentSetupProduct *)v15 setOnboardingItems:v4];

LABEL_18:

  return v15;
}

@end