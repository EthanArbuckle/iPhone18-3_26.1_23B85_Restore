@interface PKPeerPaymentAccount
- (BOOL)areAssociatedAccountsOutOfDate;
- (BOOL)areRecurringPaymentsOutOfDate;
- (BOOL)isAccountOutOfDate;
- (BOOL)isEligibleForRecurringPaymentsForUser:(id)a3;
- (BOOL)isEligibleForThresholdTopUpForUser:(id)a3;
- (BOOL)isEligibleForUserInfoUpdates;
- (BOOL)isEligibleToAddMoneyForUser:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)supportsAssociatedAccountStateAction;
- (BOOL)supportsBillingAddress;
- (BOOL)supportsCardBalancePromotion;
- (BOOL)supportsDeviceTap;
- (BOOL)supportsFamilySharing;
- (BOOL)supportsGraduationWhileAssociatedAccountLocked;
- (BOOL)supportsGroupMessage;
- (BOOL)supportsInstantWithdrawal;
- (BOOL)supportsLoadFromCard;
- (BOOL)supportsPendingRequestAction;
- (BOOL)supportsPreserveCurrentBalance;
- (BOOL)supportsRecurringPayments;
- (BOOL)supportsRequestFromUser;
- (BOOL)supportsRequestFromWallet;
- (BOOL)supportsSendFromWallet;
- (BOOL)supportsSendToUser;
- (BOOL)supportsThresholdTopUp;
- (BOOL)supportsTransferToBank;
- (BOOL)termsAcceptanceRequired;
- (BOOL)transactionAmountIsValid:(id)a3 feature:(id)a4;
- (BOOL)willTriggerIdentityVerificationForTransactionAmount:(id)a3;
- (NSArray)defaultSuggestions;
- (NSDictionary)maximumTransferAmounts;
- (NSDictionary)minimumTransferAmounts;
- (NSSet)cloudStoreZoneNames;
- (NSString)associatedPassSerialNumber;
- (NSString)associatedPassTypeIdentifier;
- (NSString)termsIdentifier;
- (NSURL)termsURL;
- (PKPeerPaymentAccount)initWithCoder:(id)a3;
- (PKPeerPaymentAccount)initWithDictionary:(id)a3;
- (PKPeerPaymentAccount)initWithDictionary:(id)a3 lastUpdated:(id)a4;
- (PKPeerPaymentAccount)peerPaymentAccountWithAltDSID:(id)a3;
- (PKPeerPaymentAccount)peerPaymentAccountWithIdentifier:(id)a3;
- (id)_featureWithIdentifier:(id)a3;
- (id)accountInvitationWithAltDSID:(id)a3;
- (id)associatedPassUniqueID;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAssociatedAccountInformation:(id)a3;
@end

@implementation PKPeerPaymentAccount

- (id)associatedPassUniqueID
{
  v3 = [(PKPeerPaymentAccount *)self associatedPassTypeIdentifier];
  v4 = [(PKPeerPaymentAccount *)self associatedPassSerialNumber];
  v5 = PKGeneratePassUniqueID(v3, v4);

  return v5;
}

- (NSString)associatedPassTypeIdentifier
{
  if ((PKUseMockSURFServer() & 1) != 0 || PKStoreDemoModeEnabled())
  {
    v3 = PKMockPeerPaymentPassPassTypeID();
  }

  else
  {
    v3 = self->_associatedPassTypeIdentifier;
  }

  return v3;
}

- (NSString)associatedPassSerialNumber
{
  if ((PKUseMockSURFServer() & 1) != 0 || PKStoreDemoModeEnabled())
  {
    v3 = PKMockPeerPaymentPassSerialNumber();
  }

  else
  {
    v3 = self->_associatedPassSerialNumber;
  }

  return v3;
}

- (BOOL)isAccountOutOfDate
{
  if (!self->_lastUpdated)
  {
    return 1;
  }

  if (self->_proactiveFetchPeriod <= 0.0)
  {
    proactiveFetchPeriod = *&PKPeerPaymentAccountDefaultProactiveFetchPeriod;
  }

  else
  {
    proactiveFetchPeriod = self->_proactiveFetchPeriod;
  }

  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSinceDate:self->_lastUpdated];
  v6 = v5 >= proactiveFetchPeriod;

  return v6;
}

- (BOOL)supportsSendToUser
{
  v2 = [(PKPeerPaymentAccount *)self sendToUserFeatureDescriptor];
  v3 = v2 != 0;

  return v3;
}

- (PKPeerPaymentAccount)initWithDictionary:(id)a3 lastUpdated:(id)a4
{
  v87 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v85.receiver = self;
  v85.super_class = PKPeerPaymentAccount;
  v8 = [(PKPeerPaymentAccount *)&v85 init];
  if (!v8)
  {
    goto LABEL_33;
  }

  v9 = [v6 PKStringForKey:@"state"];
  v8->_state = PKPeerPaymentAccountStateFromString(v9);

  v10 = [v6 PKStringForKey:@"stage"];
  v8->_stage = PKPeerPaymentAccountStageFromString(v10);

  v11 = [v6 PKStringForKey:@"stateReason"];
  v8->_stateReason = PKPeerPaymentAccountStateReasonFromString(v11);

  v12 = [v6 PKStringForKey:@"personToPersonRestrictionType"];
  v8->_sendRestrictionType = PKPeerPaymentAccountSendRestrictionTypeFromString(v12);

  v13 = [v6 PKStringForKey:@"receiveRestrictionType"];
  v8->_receiveRestrictionType = PKPeerPaymentAccountReceiveRestrictionTypeFromString(v13);

  v14 = [v6 PKStringForKey:@"countryCode"];
  countryCode = v8->_countryCode;
  v8->_countryCode = v14;

  v16 = [v6 PKStringForKey:@"role"];
  v8->_role = PKPeerPaymentAccountRoleFromString(v16);

  v17 = [v6 PKStringForKey:@"identifier"];
  identifier = v8->_identifier;
  v8->_identifier = v17;

  v19 = [v6 PKDateForKey:@"createdDate"];
  createdDate = v8->_createdDate;
  v8->_createdDate = v19;

  v21 = [v6 PKDateForKey:@"identifiedDate"];
  identifiedDate = v8->_identifiedDate;
  v8->_identifiedDate = v21;

  v23 = [v6 PKDecimalNumberFromStringForKey:@"currentBalance"];
  v24 = [v6 PKStringForKey:@"currency"];
  v25 = 0;
  if (v23 && v24)
  {
    v25 = [[PKCurrencyAmount alloc] initWithAmount:v23 currency:v24 exponent:0];
  }

  currentBalance = v8->_currentBalance;
  v8->_currentBalance = v25;

  v27 = [v6 PKDecimalNumberFromStringForKey:@"maximumBalance"];
  maximumBalance = v8->_maximumBalance;
  v8->_maximumBalance = v27;

  v29 = v8->_maximumBalance;
  v30 = [MEMORY[0x1E696AB90] zero];
  if ([(NSDecimalNumber *)v29 compare:v30]== NSOrderedSame)
  {

LABEL_9:
    v34 = v8->_maximumBalance;
    v8->_maximumBalance = 0;

    goto LABEL_10;
  }

  v31 = v8->_maximumBalance;
  v32 = [MEMORY[0x1E696AB90] zero];
  v33 = [(NSDecimalNumber *)v31 compare:v32];

  if (v33 == -1)
  {
    goto LABEL_9;
  }

LABEL_10:
  v80 = v7;
  v8->_identityVerificationRequired = [v6 PKBoolForKey:@"identityVerificationRequired"];
  v35 = [v6 PKDecimalNumberFromStringForKey:@"amountRemainingUntilIdentityVerification"];
  v36 = v35;
  v79 = v23;
  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"500"];
  }

  amountRemainingUntilIdentityVerification = v8->_amountRemainingUntilIdentityVerification;
  v8->_amountRemainingUntilIdentityVerification = v37;

  objc_storeStrong(&v8->_lastUpdated, a4);
  [v6 PKDoubleForKey:@"proactiveFetchPeriod"];
  v8->_proactiveFetchPeriod = v39;
  [v6 PKDoubleForKey:@"accountFetchAfterTransactionWaitPeriod"];
  v8->_accountFetchAfterTransactionWaitPeriod = v40;
  [v6 PKDoubleForKey:@"accountFetchAfterTransactionWaitTolerance"];
  v8->_accountFetchAfterTransactionWaitTolerance = v41;
  v8->_termsAcceptanceRequired = [v6 PKBoolForKey:@"termsAcceptanceRequired"];
  v42 = [v6 PKStringForKey:@"termsIdentifier"];
  termsIdentifier = v8->_termsIdentifier;
  v8->_termsIdentifier = v42;

  v44 = [v6 PKURLForKey:@"termsURL"];
  termsURL = v8->_termsURL;
  v8->_termsURL = v44;

  v46 = [v6 PKURLForKey:@"associatedPassURL"];
  associatedPassURL = v8->_associatedPassURL;
  v8->_associatedPassURL = v46;

  v48 = [v6 PKStringForKey:@"associatedPassSerialNumber"];
  associatedPassSerialNumber = v8->_associatedPassSerialNumber;
  v8->_associatedPassSerialNumber = v48;

  v50 = [v6 PKStringForKey:@"associatedPassTypeIdentifier"];
  associatedPassTypeIdentifier = v8->_associatedPassTypeIdentifier;
  v8->_associatedPassTypeIdentifier = v50;

  v52 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v53 = [v6 PKArrayContaining:objc_opt_class() forKey:@"supportedFeatures"];
  v54 = [v53 countByEnumeratingWithState:&v81 objects:v86 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v82;
    do
    {
      for (i = 0; i != v55; ++i)
      {
        if (*v82 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v58 = [[PKPeerPaymentAccountFeatureDescriptor alloc] initWithDictionary:*(*(&v81 + 1) + 8 * i)];
        if (v58)
        {
          [v52 addObject:v58];
        }
      }

      v55 = [v53 countByEnumeratingWithState:&v81 objects:v86 count:16];
    }

    while (v55);
  }

  v59 = [v52 copy];
  supportedFeatureDescriptors = v8->_supportedFeatureDescriptors;
  v8->_supportedFeatureDescriptors = v59;

  v7 = v80;
  v61 = [[PKPeerPaymentAssociatedAccountInformation alloc] initWithDictionary:v6 lastUpdated:v80];
  associatedAccountInformation = v8->_associatedAccountInformation;
  v8->_associatedAccountInformation = v61;

  v8->_pendingPaymentCount = [v6 PKIntegerForKey:@"pendingPaymentCount"];
  v8->_identityVerificationForDisbursementsRequired = [v6 PKBoolForKey:@"identityVerificationForDisbursementsRequired"];
  v63 = [v6 PKStringForKey:@"altDSID"];
  altDSID = v8->_altDSID;
  v8->_altDSID = v63;

  v65 = [v6 PKSetContaining:objc_opt_class() forKey:@"cloudStoreZoneNames"];
  cloudStoreZoneNames = v8->_cloudStoreZoneNames;
  v8->_cloudStoreZoneNames = v65;

  v67 = [v6 PKDictionaryForKey:@"additionalPushTopics"];
  if (v67)
  {
    v68 = [[PKPeerPaymentAdditionalPushTopics alloc] initWithDictionary:v67];
    additionalPushTopics = v8->_additionalPushTopics;
    v8->_additionalPushTopics = v68;
  }

  v70 = [v6 PKIntegerForKey:@"deviceScoreEncryptedPayloadVersion"];
  v71 = 1;
  if (v70 != 1)
  {
    v71 = 2;
  }

  if (!v70)
  {
    v71 = 0;
  }

  v8->_deviceScoreEncryptedPayloadVersion = v71;
  v8->_hasRecurringPayments = [v6 PKBoolForKey:@"hasRecurringPayments"];
  v72 = [v6 PKDictionaryForKey:@"paymentModeIdentifiers"];
  if (v72)
  {
    v73 = [[PKPeerPaymentPaymentModeIdentifiers alloc] initWithDictionary:v72];
    paymentModeIdentifiers = v8->_paymentModeIdentifiers;
    v8->_paymentModeIdentifiers = v73;
  }

  v75 = [v6 PKDictionaryForKey:@"encryptionCertificatesVersions"];
  if (v75)
  {
    v76 = [[PKPeerPaymentEncryptionCertificatesVersions alloc] initWithDictionary:v75];
    encryptionCertificatesVersions = v8->_encryptionCertificatesVersions;
    v8->_encryptionCertificatesVersions = v76;
  }

LABEL_33:
  return v8;
}

- (NSArray)defaultSuggestions
{
  v7[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"10"];
  v3 = [MEMORY[0x1E696AB90] decimalNumberWithString:{@"20", v2}];
  v7[1] = v3;
  v4 = [MEMORY[0x1E696AB90] decimalNumberWithString:@"50"];
  v7[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];

  return v5;
}

- (PKPeerPaymentAccount)peerPaymentAccountWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = self->_identifier;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {

    goto LABEL_7;
  }

  if (v6 && v5)
  {
    v8 = [(NSString *)v5 isEqualToString:v6];

    if (!v8)
    {
      goto LABEL_9;
    }

LABEL_7:
    v9 = self;
    goto LABEL_10;
  }

LABEL_9:
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__37;
  v19 = __Block_byref_object_dispose__37;
  v20 = 0;
  associatedAccountInformation = self->_associatedAccountInformation;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__PKPeerPaymentAccount_peerPaymentAccountWithIdentifier___block_invoke;
  v12[3] = &unk_1E79D61F0;
  v13 = v7;
  v14 = &v15;
  [(PKPeerPaymentAssociatedAccountInformation *)associatedAccountInformation enumerateAssociatedAccountsUsingBlock:v12];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);
LABEL_10:

  return v9;
}

void __57__PKPeerPaymentAccount_peerPaymentAccountWithIdentifier___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v12 = a2;
  v6 = [v12 identifier];
  v7 = *(a1 + 32);
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {

    goto LABEL_7;
  }

  if (!v8 || !v9)
  {

    goto LABEL_9;
  }

  v11 = [v8 isEqualToString:v9];

  if (v11)
  {
LABEL_7:
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }

LABEL_9:
}

- (PKPeerPaymentAccount)peerPaymentAccountWithAltDSID:(id)a3
{
  v4 = a3;
  v5 = self->_altDSID;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {

    goto LABEL_7;
  }

  if (v6 && v5)
  {
    v8 = [(NSString *)v5 isEqualToString:v6];

    if (!v8)
    {
      goto LABEL_9;
    }

LABEL_7:
    v9 = self;
    goto LABEL_10;
  }

LABEL_9:
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__37;
  v19 = __Block_byref_object_dispose__37;
  v20 = 0;
  associatedAccountInformation = self->_associatedAccountInformation;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__PKPeerPaymentAccount_peerPaymentAccountWithAltDSID___block_invoke;
  v12[3] = &unk_1E79D61F0;
  v13 = v7;
  v14 = &v15;
  [(PKPeerPaymentAssociatedAccountInformation *)associatedAccountInformation enumerateAssociatedAccountsUsingBlock:v12];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);
LABEL_10:

  return v9;
}

void __54__PKPeerPaymentAccount_peerPaymentAccountWithAltDSID___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v12 = a2;
  v6 = [v12 altDSID];
  v7 = *(a1 + 32);
  v8 = v6;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {

    goto LABEL_7;
  }

  if (!v8 || !v9)
  {

    goto LABEL_9;
  }

  v11 = [v8 isEqualToString:v9];

  if (v11)
  {
LABEL_7:
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }

LABEL_9:
}

- (id)accountInvitationWithAltDSID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__37;
    v16 = __Block_byref_object_dispose__37;
    v17 = 0;
    associatedAccountInformation = self->_associatedAccountInformation;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __53__PKPeerPaymentAccount_accountInvitationWithAltDSID___block_invoke;
    v9[3] = &unk_1E79D6218;
    v10 = v4;
    v11 = &v12;
    [(PKPeerPaymentAssociatedAccountInformation *)associatedAccountInformation enumerateAccountInvitationsUsingBlock:v9];
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __53__PKPeerPaymentAccount_accountInvitationWithAltDSID___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v14 = v6;
  v8 = [v6 altDSID];
  v9 = v7;
  v10 = v8;
  v11 = v10;
  if (v9 == v10)
  {

LABEL_10:
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
    goto LABEL_11;
  }

  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {

    goto LABEL_11;
  }

  v13 = [v9 isEqualToString:v10];

  if (v13)
  {
    goto LABEL_10;
  }

LABEL_11:
}

- (BOOL)areAssociatedAccountsOutOfDate
{
  if (![(PKPeerPaymentAccount *)self supportsFamilySharing])
  {
    return 0;
  }

  [(PKPeerPaymentAssociatedAccountInformation *)self->_associatedAccountInformation proactiveAssociatedAccountFetchPeriod];
  v4 = v3;
  v5 = [(PKPeerPaymentAssociatedAccountInformation *)self->_associatedAccountInformation lastUpdated];
  if (v5)
  {
    if (v4 <= 0.0)
    {
      v4 = *&PKPeerPaymentAssociatedAccountDefaultProactiveFetchPeriod;
    }

    v6 = [MEMORY[0x1E695DF00] date];
    [v6 timeIntervalSinceDate:v5];
    v8 = v7 >= v4;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)areRecurringPaymentsOutOfDate
{
  if (![(PKPeerPaymentAccount *)self supportsRecurringPayments])
  {
    return 0;
  }

  v3 = [(PKPeerPaymentAccount *)self recurringPaymentsFeatureDescriptor];
  [v3 proactiveFetchPeriod];
  v5 = v4;

  v6 = PKPeerPaymentRecurringPaymentsLastUpdated();
  if (v6)
  {
    if (v5 <= 0.0)
    {
      v5 = *&PKPeerPaymentRecurringPaymentsDefaultProactiveFetchPeriod;
    }

    v7 = [MEMORY[0x1E695DF00] date];
    [v7 timeIntervalSinceDate:v6];
    v9 = v8 >= v5;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)isEligibleToAddMoneyForUser:(id)a3
{
  v4 = 0;
  if (a3 && self->_role == 1)
  {
    v4 = [a3 memberType] == 2;
  }

  return self->_state == 1 && !v4;
}

- (BOOL)isEligibleForRecurringPaymentsForUser:(id)a3
{
  v4 = 0;
  if (a3 && self->_role == 1)
  {
    v4 = [a3 memberType] == 2;
  }

  return self->_state - 3 > 0xFFFFFFFFFFFFFFFDLL && !v4;
}

- (BOOL)isEligibleForThresholdTopUpForUser:(id)a3
{
  v4 = 0;
  if (a3 && self->_role == 1)
  {
    v4 = [a3 memberType] == 2;
  }

  return self->_state - 3 > 0xFFFFFFFFFFFFFFFDLL && !v4;
}

- (BOOL)isEligibleForUserInfoUpdates
{
  v3 = [(PKPeerPaymentAccount *)self supportsBillingAddress];
  if (v3)
  {

    LOBYTE(v3) = [(PKPeerPaymentAccount *)self isOwnerAccountPersonalized];
  }

  return v3;
}

- (BOOL)willTriggerIdentityVerificationForTransactionAmount:(id)a3
{
  if (self->_stage == 3)
  {
    return 0;
  }

  v4 = [(NSDecimalNumber *)self->_amountRemainingUntilIdentityVerification decimalNumberBySubtracting:a3];
  v5 = [MEMORY[0x1E696AB90] zero];
  v3 = [v4 compare:v5] == -1;

  return v3;
}

- (BOOL)transactionAmountIsValid:(id)a3 feature:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  v5 = a4;
  v6 = a3;
  v7 = [v5 minimumAmount];
  v8 = [v6 compare:v7];

  v9 = [v5 maximumAmount];

  v10 = [v6 compare:v9];
  return v8 != -1 && v10 != 1;
}

- (BOOL)termsAcceptanceRequired
{
  if (PKUseMockSURFServer() & 1) != 0 || (PKStoreDemoModeEnabled())
  {
    return 0;
  }

  else
  {
    v5 = PKPeerPaymentServiceForceTermsURL();

    return v5 || self->_termsAcceptanceRequired;
  }
}

- (NSURL)termsURL
{
  v3 = PKPeerPaymentServiceForceTermsURL();

  if (v3)
  {
    v4 = PKPeerPaymentServiceForceTermsURL();
  }

  else
  {
    v4 = self->_termsURL;
  }

  return v4;
}

- (NSString)termsIdentifier
{
  v3 = PKPeerPaymentServiceForceTermsURL();

  if (v3)
  {
    v4 = @"clientForcedTerms";
  }

  else
  {
    v4 = self->_termsIdentifier;
  }

  return v4;
}

- (NSSet)cloudStoreZoneNames
{
  if ([(NSSet *)self->_cloudStoreZoneNames count])
  {
    v3 = self->_cloudStoreZoneNames;
  }

  else
  {
    v3 = [MEMORY[0x1E695DFD8] setWithObject:@"transactions"];
  }

  return v3;
}

- (void)setAssociatedAccountInformation:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  associatedAccountInformation = self->_associatedAccountInformation;
  p_associatedAccountInformation = &self->_associatedAccountInformation;
  v7 = associatedAccountInformation;
  if (v5 && v7)
  {
    if ([v5 isEqual:?])
    {
      goto LABEL_14;
    }

    v7 = *p_associatedAccountInformation;
  }

  else if (v7 == v5)
  {
    goto LABEL_14;
  }

  v10 = v7;
  objc_storeStrong(p_associatedAccountInformation, a3);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [v10 associatedAccountRemovalRecords];
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        v17 = *p_associatedAccountInformation;
        v18 = [v16 altDSID];
        [v17 markAssociatedAccountRemovalRecordWithAltDSID:v18 hasPresentedNotification:{objc_msgSend(v16, "hasPresentedNotification")}];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

LABEL_14:
}

- (PKPeerPaymentAccount)initWithCoder:(id)a3
{
  v62[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v60.receiver = self;
  v60.super_class = PKPeerPaymentAccount;
  v5 = [(PKPeerPaymentAccount *)&v60 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_role = [v4 decodeIntegerForKey:@"role"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"createdDate"];
    createdDate = v5->_createdDate;
    v5->_createdDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifiedDate"];
    identifiedDate = v5->_identifiedDate;
    v5->_identifiedDate = v10;

    v5->_state = [v4 decodeIntegerForKey:@"state"];
    v5->_stage = [v4 decodeIntegerForKey:@"stage"];
    v5->_stateReason = [v4 decodeIntegerForKey:@"stateReason"];
    v5->_sendRestrictionType = [v4 decodeIntegerForKey:@"personToPersonRestrictionType"];
    v5->_receiveRestrictionType = [v4 decodeIntegerForKey:@"receiveRestrictionType"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentBalance"];
    currentBalance = v5->_currentBalance;
    v5->_currentBalance = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maximumBalance"];
    maximumBalance = v5->_maximumBalance;
    v5->_maximumBalance = v16;

    v5->_identityVerificationRequired = [v4 decodeBoolForKey:@"identityVerificationRequired"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amountRemainingUntilIdentityVerification"];
    amountRemainingUntilIdentityVerification = v5->_amountRemainingUntilIdentityVerification;
    v5->_amountRemainingUntilIdentityVerification = v18;

    v5->_accountStateDirty = [v4 decodeBoolForKey:@"accountStateDirty"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdated"];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v20;

    [v4 decodeDoubleForKey:@"proactiveFetchPeriod"];
    v5->_proactiveFetchPeriod = v22;
    [v4 decodeDoubleForKey:@"accountFetchAfterTransactionWaitPeriod"];
    v5->_accountFetchAfterTransactionWaitPeriod = v23;
    [v4 decodeDoubleForKey:@"accountFetchAfterTransactionWaitTolerance"];
    v5->_accountFetchAfterTransactionWaitTolerance = v24;
    v5->_termsAcceptanceRequired = [v4 decodeBoolForKey:@"termsAcceptanceRequired"];
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"termsIdentifier"];
    termsIdentifier = v5->_termsIdentifier;
    v5->_termsIdentifier = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"termsURL"];
    termsURL = v5->_termsURL;
    v5->_termsURL = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedPassURL"];
    associatedPassURL = v5->_associatedPassURL;
    v5->_associatedPassURL = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedPassSerialNumber"];
    associatedPassSerialNumber = v5->_associatedPassSerialNumber;
    v5->_associatedPassSerialNumber = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedPassTypeIdentifier"];
    associatedPassTypeIdentifier = v5->_associatedPassTypeIdentifier;
    v5->_associatedPassTypeIdentifier = v33;

    v35 = MEMORY[0x1E695DFD8];
    v62[0] = objc_opt_class();
    v62[1] = objc_opt_class();
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
    v37 = [v35 setWithArray:v36];
    v38 = [v4 decodeObjectOfClasses:v37 forKey:@"supportedFeatureDescriptors"];
    supportedFeatureDescriptors = v5->_supportedFeatureDescriptors;
    v5->_supportedFeatureDescriptors = v38;

    v5->_pendingPaymentCount = [v4 decodeIntegerForKey:@"pendingPaymentCount"];
    v5->_identityVerificationForDisbursementsRequired = [v4 decodeBoolForKey:@"identityVerificationForDisbursementsRequired"];
    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v40;

    v42 = MEMORY[0x1E695DFD8];
    v61[0] = objc_opt_class();
    v61[1] = objc_opt_class();
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
    v44 = [v42 setWithArray:v43];
    v45 = [v4 decodeObjectOfClasses:v44 forKey:@"cloudStoreZoneNames"];
    cloudStoreZoneNames = v5->_cloudStoreZoneNames;
    v5->_cloudStoreZoneNames = v45;

    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"additionalPushTopics"];
    additionalPushTopics = v5->_additionalPushTopics;
    v5->_additionalPushTopics = v47;

    v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionSourceIdentifier"];
    transactionSourceIdentifier = v5->_transactionSourceIdentifier;
    v5->_transactionSourceIdentifier = v49;

    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedAccountInformation"];
    associatedAccountInformation = v5->_associatedAccountInformation;
    v5->_associatedAccountInformation = v51;

    v5->_hasDisplayedAssociatedAccountActiveNotification = [v4 decodeBoolForKey:@"hasDisplayedAssociatedAccountActiveNotification"];
    v53 = [v4 decodeIntegerForKey:@"deviceScoreEncryptedPayloadVersion"];
    v54 = 1;
    if (v53 != 1)
    {
      v54 = 2;
    }

    if (!v53)
    {
      v54 = 0;
    }

    v5->_deviceScoreEncryptedPayloadVersion = v54;
    v5->_hasRecurringPayments = [v4 decodeBoolForKey:@"hasRecurringPayments"];
    v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentModeIdentifiers"];
    paymentModeIdentifiers = v5->_paymentModeIdentifiers;
    v5->_paymentModeIdentifiers = v55;

    v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encryptionCertificatesVersions"];
    encryptionCertificatesVersions = v5->_encryptionCertificatesVersions;
    v5->_encryptionCertificatesVersions = v57;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeInteger:self->_role forKey:@"role"];
  [v5 encodeObject:self->_createdDate forKey:@"createdDate"];
  [v5 encodeObject:self->_identifiedDate forKey:@"identifiedDate"];
  [v5 encodeInteger:self->_state forKey:@"state"];
  [v5 encodeInteger:self->_stage forKey:@"stage"];
  [v5 encodeInteger:self->_stateReason forKey:@"stateReason"];
  [v5 encodeInteger:self->_sendRestrictionType forKey:@"personToPersonRestrictionType"];
  [v5 encodeInteger:self->_receiveRestrictionType forKey:@"receiveRestrictionType"];
  [v5 encodeObject:self->_countryCode forKey:@"countryCode"];
  [v5 encodeObject:self->_currentBalance forKey:@"currentBalance"];
  [v5 encodeObject:self->_maximumBalance forKey:@"maximumBalance"];
  [v5 encodeBool:self->_identityVerificationRequired forKey:@"identityVerificationRequired"];
  [v5 encodeObject:self->_amountRemainingUntilIdentityVerification forKey:@"amountRemainingUntilIdentityVerification"];
  [v5 encodeBool:self->_accountStateDirty forKey:@"accountStateDirty"];
  [v5 encodeObject:self->_lastUpdated forKey:@"lastUpdated"];
  [v5 encodeDouble:@"proactiveFetchPeriod" forKey:self->_proactiveFetchPeriod];
  [v5 encodeDouble:@"accountFetchAfterTransactionWaitPeriod" forKey:self->_accountFetchAfterTransactionWaitPeriod];
  [v5 encodeDouble:@"accountFetchAfterTransactionWaitTolerance" forKey:self->_accountFetchAfterTransactionWaitTolerance];
  [v5 encodeBool:self->_termsAcceptanceRequired forKey:@"termsAcceptanceRequired"];
  [v5 encodeObject:self->_termsIdentifier forKey:@"termsIdentifier"];
  [v5 encodeObject:self->_termsURL forKey:@"termsURL"];
  [v5 encodeObject:self->_associatedPassURL forKey:@"associatedPassURL"];
  [v5 encodeObject:self->_associatedPassSerialNumber forKey:@"associatedPassSerialNumber"];
  [v5 encodeObject:self->_associatedPassTypeIdentifier forKey:@"associatedPassTypeIdentifier"];
  [v5 encodeObject:self->_supportedFeatureDescriptors forKey:@"supportedFeatureDescriptors"];
  [v5 encodeInteger:self->_pendingPaymentCount forKey:@"pendingPaymentCount"];
  [v5 encodeBool:self->_identityVerificationForDisbursementsRequired forKey:@"identityVerificationForDisbursementsRequired"];
  [v5 encodeObject:self->_altDSID forKey:@"altDSID"];
  [v5 encodeObject:self->_cloudStoreZoneNames forKey:@"cloudStoreZoneNames"];
  [v5 encodeObject:self->_additionalPushTopics forKey:@"additionalPushTopics"];
  [v5 encodeObject:self->_transactionSourceIdentifier forKey:@"transactionSourceIdentifier"];
  [v5 encodeObject:self->_associatedAccountInformation forKey:@"associatedAccountInformation"];
  [v5 encodeBool:self->_hasDisplayedAssociatedAccountActiveNotification forKey:@"hasDisplayedAssociatedAccountActiveNotification"];
  [v5 encodeInteger:self->_deviceScoreEncryptedPayloadVersion forKey:@"deviceScoreEncryptedPayloadVersion"];
  [v5 encodeBool:self->_hasRecurringPayments forKey:@"hasRecurringPayments"];
  [v5 encodeObject:self->_paymentModeIdentifiers forKey:@"paymentModeIdentifiers"];
  [v5 encodeObject:self->_encryptionCertificatesVersions forKey:@"encryptionCertificatesVersions"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  role = self->_role;
  v5 = @"unknown";
  v6 = @"participant";
  if (role != 1)
  {
    v6 = @"unknown";
  }

  if (role)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"owner";
  }

  [v3 appendFormat:@"role: '%@'; ", v7];
  [v3 appendFormat:@"createdDate: '%@'; ", self->_createdDate];
  [v3 appendFormat:@"identifiedDate: '%@'; ", self->_identifiedDate];
  v8 = self->_state - 1;
  if (v8 <= 3)
  {
    v5 = off_1E79D6280[v8];
  }

  [v3 appendFormat:@"state: '%@'; ", v5];
  v9 = self->_stage - 1;
  if (v9 > 2)
  {
    v10 = @"unknown";
  }

  else
  {
    v10 = off_1E79D62A0[v9];
  }

  [v3 appendFormat:@"stage: '%@'; ", v10];
  v11 = PKPeerPaymentAccountStateReasonToString(self->_stateReason);
  [v3 appendFormat:@"stateReason: '%@'; ", v11];

  sendRestrictionType = self->_sendRestrictionType;
  v13 = @"unknown";
  if (sendRestrictionType <= 2)
  {
    v13 = off_1E79D62B8[sendRestrictionType];
  }

  [v3 appendFormat:@"sendRestrictionType: '%@'; ", v13];
  receiveRestrictionType = self->_receiveRestrictionType;
  v15 = @"none";
  if (receiveRestrictionType)
  {
    v15 = @"unknown";
  }

  if (receiveRestrictionType == 1)
  {
    v16 = @"family";
  }

  else
  {
    v16 = v15;
  }

  [v3 appendFormat:@"receiveRestrictionType: '%@'; ", v16];
  [v3 appendFormat:@"countryCode: '%@'; ", self->_countryCode];
  [v3 appendFormat:@"currentBalance: '%@'; ", self->_currentBalance];
  [v3 appendFormat:@"maximumBalance: '%@'; ", self->_maximumBalance];
  if (self->_identityVerificationRequired)
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  [v3 appendFormat:@"identityVerificationRequired: '%@'; ", v17];
  [v3 appendFormat:@"amountRemainingUntilIdentityVerification: '%@'; ", self->_amountRemainingUntilIdentityVerification];
  if (self->_accountStateDirty)
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  [v3 appendFormat:@"accountStateDirty: '%@'; ", v18];
  [v3 appendFormat:@"lastUpdated: '%@'; ", self->_lastUpdated];
  accountFetchAfterTransactionWaitPeriod = self->_accountFetchAfterTransactionWaitPeriod;
  if (accountFetchAfterTransactionWaitPeriod > 0.0)
  {
    [v3 appendFormat:@"accountFetchAfterTransactionWaitPeriod: '%ld'; ", accountFetchAfterTransactionWaitPeriod];
  }

  accountFetchAfterTransactionWaitTolerance = self->_accountFetchAfterTransactionWaitTolerance;
  if (accountFetchAfterTransactionWaitTolerance > 0.0)
  {
    [v3 appendFormat:@"accountFetchAfterTransactionWaitTolerance: '%ld'; ", accountFetchAfterTransactionWaitTolerance];
  }

  if (self->_termsAcceptanceRequired)
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  [v3 appendFormat:@"termsAcceptanceRequired: '%@'; ", v21];
  if (self->_termsAcceptanceRequired)
  {
    [v3 appendFormat:@"termsIdentifier: '%@'; ", self->_termsIdentifier];
    [v3 appendFormat:@"termsURL: '%@'; ", self->_termsURL];
  }

  [v3 appendFormat:@"associatedPassURL: '%@'; ", self->_associatedPassURL];
  [v3 appendFormat:@"associatedPassSerialNumber: '%@'; ", self->_associatedPassSerialNumber];
  [v3 appendFormat:@"associatedPassTypeIdentifier: '%@'; ", self->_associatedPassTypeIdentifier];
  [v3 appendFormat:@"supportedFeatureDescriptors: '%@'; ", self->_supportedFeatureDescriptors];
  [v3 appendFormat:@"pendingPaymentCount: '%ld'; ", self->_pendingPaymentCount];
  if (self->_identityVerificationForDisbursementsRequired)
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  [v3 appendFormat:@"identityVerificationForDisbursementsRequired: '%@'; ", v22];
  [v3 appendFormat:@"altDSID: '%@'; ", self->_altDSID];
  [v3 appendFormat:@"cloudStoreZoneNames: '%@'; ", self->_cloudStoreZoneNames];
  [v3 appendFormat:@"additionalPushTopics: '%@'; ", self->_additionalPushTopics];
  [v3 appendFormat:@"transactionSourceIdentifier: '%@'; ", self->_transactionSourceIdentifier];
  if (self->_associatedAccountInformation)
  {
    [v3 appendFormat:@"associatedAccountInformation: '%@'; ", self->_associatedAccountInformation];
  }

  if (self->_hasDisplayedAssociatedAccountActiveNotification)
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  [v3 appendFormat:@"hasDisplayedAssociatedAccountActiveNotification: '%@'; ", v23];
  deviceScoreEncryptedPayloadVersion = self->_deviceScoreEncryptedPayloadVersion;
  if (deviceScoreEncryptedPayloadVersion > 2)
  {
    v25 = @"unknown";
  }

  else
  {
    v25 = off_1E79D62D0[deviceScoreEncryptedPayloadVersion];
  }

  [v3 appendFormat:@"deviceScoreEncryptedPayloadVersion: '%@'; ", v25];
  if (self->_hasRecurringPayments)
  {
    v26 = @"YES";
  }

  else
  {
    v26 = @"NO";
  }

  [v3 appendFormat:@"hasRecurringPayments: '%@'; ", v26];
  [v3 appendFormat:@"paymentModeIdentifiers: '%@'; ", self->_paymentModeIdentifiers];
  [v3 appendFormat:@"encryptionCertificatesVersions: '%@'; ", self->_encryptionCertificatesVersions];
  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_89;
  }

  identifier = self->_identifier;
  v6 = *(v4 + 2);
  if (identifier && v6)
  {
    if (([(NSString *)identifier isEqual:?]& 1) == 0)
    {
      goto LABEL_89;
    }
  }

  else if (identifier != v6)
  {
    goto LABEL_89;
  }

  createdDate = self->_createdDate;
  v8 = *(v4 + 4);
  if (createdDate && v8)
  {
    if (([(NSDate *)createdDate isEqual:?]& 1) == 0)
    {
      goto LABEL_89;
    }
  }

  else if (createdDate != v8)
  {
    goto LABEL_89;
  }

  identifiedDate = self->_identifiedDate;
  v10 = *(v4 + 5);
  if (identifiedDate && v10)
  {
    if (([(NSDate *)identifiedDate isEqual:?]& 1) == 0)
    {
      goto LABEL_89;
    }
  }

  else if (identifiedDate != v10)
  {
    goto LABEL_89;
  }

  countryCode = self->_countryCode;
  v12 = *(v4 + 11);
  if (countryCode && v12)
  {
    if (([(NSString *)countryCode isEqual:?]& 1) == 0)
    {
      goto LABEL_89;
    }
  }

  else if (countryCode != v12)
  {
    goto LABEL_89;
  }

  currentBalance = self->_currentBalance;
  v14 = *(v4 + 12);
  if (currentBalance && v14)
  {
    if (![(PKCurrencyAmount *)currentBalance isEqual:?])
    {
      goto LABEL_89;
    }
  }

  else if (currentBalance != v14)
  {
    goto LABEL_89;
  }

  maximumBalance = self->_maximumBalance;
  v16 = *(v4 + 13);
  if (maximumBalance && v16)
  {
    if (([(NSDecimalNumber *)maximumBalance isEqual:?]& 1) == 0)
    {
      goto LABEL_89;
    }
  }

  else if (maximumBalance != v16)
  {
    goto LABEL_89;
  }

  termsIdentifier = self->_termsIdentifier;
  v18 = *(v4 + 19);
  if (termsIdentifier && v18)
  {
    if (([(NSString *)termsIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_89;
    }
  }

  else if (termsIdentifier != v18)
  {
    goto LABEL_89;
  }

  termsURL = self->_termsURL;
  v20 = *(v4 + 20);
  if (termsURL && v20)
  {
    if (([(NSURL *)termsURL isEqual:?]& 1) == 0)
    {
      goto LABEL_89;
    }
  }

  else if (termsURL != v20)
  {
    goto LABEL_89;
  }

  associatedPassURL = self->_associatedPassURL;
  v22 = *(v4 + 21);
  if (associatedPassURL && v22)
  {
    if (([(NSURL *)associatedPassURL isEqual:?]& 1) == 0)
    {
      goto LABEL_89;
    }
  }

  else if (associatedPassURL != v22)
  {
    goto LABEL_89;
  }

  associatedPassSerialNumber = self->_associatedPassSerialNumber;
  v24 = *(v4 + 22);
  if (associatedPassSerialNumber && v24)
  {
    if (([(NSString *)associatedPassSerialNumber isEqual:?]& 1) == 0)
    {
      goto LABEL_89;
    }
  }

  else if (associatedPassSerialNumber != v24)
  {
    goto LABEL_89;
  }

  associatedPassTypeIdentifier = self->_associatedPassTypeIdentifier;
  v26 = *(v4 + 23);
  if (associatedPassTypeIdentifier && v26)
  {
    if (([(NSString *)associatedPassTypeIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_89;
    }
  }

  else if (associatedPassTypeIdentifier != v26)
  {
    goto LABEL_89;
  }

  supportedFeatureDescriptors = self->_supportedFeatureDescriptors;
  v28 = *(v4 + 33);
  if (supportedFeatureDescriptors && v28)
  {
    if (([(NSSet *)supportedFeatureDescriptors isEqual:?]& 1) == 0)
    {
      goto LABEL_89;
    }
  }

  else if (supportedFeatureDescriptors != v28)
  {
    goto LABEL_89;
  }

  v29 = *(v4 + 25);
  v30 = self->_altDSID;
  v31 = v29;
  v32 = v31;
  if (v30 == v31)
  {
  }

  else
  {
    if (!v30 || !v31)
    {
      goto LABEL_88;
    }

    v33 = [(NSString *)v30 isEqualToString:v31];

    if (!v33)
    {
      goto LABEL_89;
    }
  }

  cloudStoreZoneNames = self->_cloudStoreZoneNames;
  v35 = *(v4 + 26);
  if (cloudStoreZoneNames && v35)
  {
    if (([(NSSet *)cloudStoreZoneNames isEqual:?]& 1) == 0)
    {
      goto LABEL_89;
    }
  }

  else if (cloudStoreZoneNames != v35)
  {
    goto LABEL_89;
  }

  additionalPushTopics = self->_additionalPushTopics;
  v37 = *(v4 + 27);
  if (additionalPushTopics && v37)
  {
    if (![(PKPeerPaymentAdditionalPushTopics *)additionalPushTopics isEqual:?])
    {
      goto LABEL_89;
    }
  }

  else if (additionalPushTopics != v37)
  {
    goto LABEL_89;
  }

  associatedAccountInformation = self->_associatedAccountInformation;
  v39 = *(v4 + 28);
  if (associatedAccountInformation && v39)
  {
    if (![(PKPeerPaymentAssociatedAccountInformation *)associatedAccountInformation isEqual:?])
    {
      goto LABEL_89;
    }
  }

  else if (associatedAccountInformation != v39)
  {
    goto LABEL_89;
  }

  v40 = *(v4 + 29);
  v30 = self->_transactionSourceIdentifier;
  v41 = v40;
  v32 = v41;
  if (v30 != v41)
  {
    if (v30 && v41)
    {
      v42 = [(NSString *)v30 isEqualToString:v41];

      if (!v42)
      {
        goto LABEL_89;
      }

      goto LABEL_92;
    }

LABEL_88:

    goto LABEL_89;
  }

LABEL_92:
  paymentModeIdentifiers = self->_paymentModeIdentifiers;
  v46 = *(v4 + 31);
  if (paymentModeIdentifiers && v46)
  {
    if (![(PKPeerPaymentPaymentModeIdentifiers *)paymentModeIdentifiers isEqual:?])
    {
      goto LABEL_89;
    }
  }

  else if (paymentModeIdentifiers != v46)
  {
    goto LABEL_89;
  }

  encryptionCertificatesVersions = self->_encryptionCertificatesVersions;
  v48 = *(v4 + 32);
  if (encryptionCertificatesVersions && v48)
  {
    if (![(PKPeerPaymentEncryptionCertificatesVersions *)encryptionCertificatesVersions isEqual:?])
    {
      goto LABEL_89;
    }
  }

  else if (encryptionCertificatesVersions != v48)
  {
    goto LABEL_89;
  }

  if (self->_identityVerificationRequired == *(v4 + 8))
  {
    amountRemainingUntilIdentityVerification = self->_amountRemainingUntilIdentityVerification;
    v50 = *(v4 + 14);
    if (amountRemainingUntilIdentityVerification && v50)
    {
      if (([(NSDecimalNumber *)amountRemainingUntilIdentityVerification isEqual:?]& 1) == 0)
      {
        goto LABEL_89;
      }
    }

    else if (amountRemainingUntilIdentityVerification != v50)
    {
      goto LABEL_89;
    }

    if (self->_termsAcceptanceRequired == *(v4 + 10) && self->_proactiveFetchPeriod == v4[16] && self->_accountFetchAfterTransactionWaitPeriod == v4[17] && self->_accountFetchAfterTransactionWaitTolerance == v4[18] && self->_role == *(v4 + 3) && self->_state == *(v4 + 6) && self->_stateReason == *(v4 + 8) && self->_sendRestrictionType == *(v4 + 9) && self->_receiveRestrictionType == *(v4 + 10) && self->_stage == *(v4 + 7) && self->_pendingPaymentCount == *(v4 + 24) && self->_identityVerificationForDisbursementsRequired == *(v4 + 11) && self->_hasDisplayedAssociatedAccountActiveNotification == *(v4 + 12) && self->_deviceScoreEncryptedPayloadVersion == *(v4 + 30))
    {
      v43 = self->_hasRecurringPayments == *(v4 + 13);
      goto LABEL_90;
    }
  }

LABEL_89:
  v43 = 0;
LABEL_90:

  return v43;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_createdDate];
  [v3 safelyAddObject:self->_identifiedDate];
  [v3 safelyAddObject:self->_countryCode];
  [v3 safelyAddObject:self->_currentBalance];
  [v3 safelyAddObject:self->_maximumBalance];
  [v3 safelyAddObject:self->_amountRemainingUntilIdentityVerification];
  [v3 safelyAddObject:self->_termsIdentifier];
  [v3 safelyAddObject:self->_termsURL];
  [v3 safelyAddObject:self->_associatedPassURL];
  [v3 safelyAddObject:self->_associatedPassSerialNumber];
  [v3 safelyAddObject:self->_associatedPassTypeIdentifier];
  [v3 safelyAddObject:self->_supportedFeatureDescriptors];
  [v3 safelyAddObject:self->_altDSID];
  [v3 safelyAddObject:self->_cloudStoreZoneNames];
  [v3 safelyAddObject:self->_additionalPushTopics];
  [v3 safelyAddObject:self->_transactionSourceIdentifier];
  [v3 safelyAddObject:self->_associatedAccountInformation];
  [v3 safelyAddObject:self->_paymentModeIdentifiers];
  [v3 safelyAddObject:self->_encryptionCertificatesVersions];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_identityVerificationRequired - v4 + 32 * v4;
  v6 = self->_termsAcceptanceRequired - v5 + 32 * v5;
  v7 = self->_proactiveFetchPeriod - v6 + 32 * v6;
  v8 = self->_accountFetchAfterTransactionWaitPeriod - v7 + 32 * v7;
  v9 = self->_accountFetchAfterTransactionWaitTolerance - v8 + 32 * v8;
  v10 = self->_role - v9 + 32 * v9;
  v11 = self->_state - v10 + 32 * v10;
  v12 = self->_stateReason - v11 + 32 * v11;
  v13 = self->_stage - v12 + 32 * v12;
  v14 = self->_sendRestrictionType - v13 + 32 * v13;
  v15 = self->_receiveRestrictionType - v14 + 32 * v14;
  v16 = self->_pendingPaymentCount - v15 + 32 * v15;
  v17 = self->_identityVerificationForDisbursementsRequired - v16 + 32 * v16;
  v18 = self->_hasDisplayedAssociatedAccountActiveNotification - v17 + 32 * v17;
  v19 = self->_deviceScoreEncryptedPayloadVersion - v18 + 32 * v18;
  v20 = self->_hasRecurringPayments - v19 + 32 * v19;

  return v20;
}

- (BOOL)supportsLoadFromCard
{
  v2 = [(PKPeerPaymentAccount *)self loadFromCardFeatureDescriptor];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)supportsTransferToBank
{
  v2 = [(PKPeerPaymentAccount *)self transferToBankFeatureDescriptor];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)supportsRequestFromUser
{
  v2 = [(PKPeerPaymentAccount *)self requestFromUserFeatureDescriptor];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)supportsSendFromWallet
{
  v2 = [(PKPeerPaymentAccount *)self sendFromWalletFeatureDescriptor];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)supportsRequestFromWallet
{
  v2 = [(PKPeerPaymentAccount *)self requestFromWalletFeatureDescriptor];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)supportsPendingRequestAction
{
  v2 = [(PKPeerPaymentAccount *)self pendingRequestActionFeatureDescriptor];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)supportsRecurringPayments
{
  v2 = [(PKPeerPaymentAccount *)self recurringPaymentsFeatureDescriptor];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)supportsThresholdTopUp
{
  v2 = [(PKPeerPaymentAccount *)self thresholdTopUpFeatureDescriptor];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)supportsCardBalancePromotion
{
  v2 = [(PKPeerPaymentAccount *)self cardBalancePromotionFeatureDescriptor];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)supportsInstantWithdrawal
{
  v2 = [(PKPeerPaymentAccount *)self instantWithdrawalPromotionFeatureDescriptor];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)supportsAssociatedAccountStateAction
{
  v2 = [(PKPeerPaymentAccount *)self associatedAccountStateActionFeatureDescriptor];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)supportsPreserveCurrentBalance
{
  v2 = [(PKPeerPaymentAccount *)self preserveCurrentBalanceFeatureDescriptor];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)supportsFamilySharing
{
  v2 = [(PKPeerPaymentAccount *)self supportsFamilySharingFeatureDescriptor];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)supportsGraduationWhileAssociatedAccountLocked
{
  v2 = [(PKPeerPaymentAccount *)self supportsGraduationWhileAssociatedAccountLockedFeatureDescriptor];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)supportsDeviceTap
{
  v2 = [(PKPeerPaymentAccount *)self deviceTapFeatureDescriptor];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)supportsGroupMessage
{
  v2 = [(PKPeerPaymentAccount *)self groupMessageFeatureDescriptor];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)supportsBillingAddress
{
  v2 = [(PKPeerPaymentAccount *)self billingAddressFeatureDescriptor];
  v3 = v2 != 0;

  return v3;
}

- (id)_featureWithIdentifier:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(PKPeerPaymentAccount *)self supportedFeatureDescriptors];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 identifier];
        if ([v10 isEqualToString:v4])
        {
          v11 = [v9 isSupported];

          if (v11)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

LABEL_12:

  return v6;
}

- (PKPeerPaymentAccount)initWithDictionary:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  v6 = [v4 date];
  v7 = [(PKPeerPaymentAccount *)self initWithDictionary:v5 lastUpdated:v6];

  return v7;
}

- (NSDictionary)minimumTransferAmounts
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(PKPeerPaymentAccount *)self currentBalance];
  v4 = [v3 currency];

  v5 = [(PKPeerPaymentAccount *)self sendToUserFeatureDescriptor];
  v6 = [v5 minimumAmount];

  v7 = 0;
  if (v4 && v6)
  {
    v9 = v4;
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  return v7;
}

- (NSDictionary)maximumTransferAmounts
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(PKPeerPaymentAccount *)self currentBalance];
  v4 = [v3 currency];

  v5 = [(PKPeerPaymentAccount *)self sendToUserFeatureDescriptor];
  v6 = [v5 maximumAmount];

  v7 = 0;
  if (v4 && v6)
  {
    v9 = v4;
    v10[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  return v7;
}

@end