@interface PKPeerPaymentAccount
- (BOOL)areAssociatedAccountsOutOfDate;
- (BOOL)areRecurringPaymentsOutOfDate;
- (BOOL)isAccountOutOfDate;
- (BOOL)isEligibleForRecurringPaymentsForUser:(id)user;
- (BOOL)isEligibleForThresholdTopUpForUser:(id)user;
- (BOOL)isEligibleForUserInfoUpdates;
- (BOOL)isEligibleToAddMoneyForUser:(id)user;
- (BOOL)isEqual:(id)equal;
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
- (BOOL)transactionAmountIsValid:(id)valid feature:(id)feature;
- (BOOL)willTriggerIdentityVerificationForTransactionAmount:(id)amount;
- (NSArray)defaultSuggestions;
- (NSDictionary)maximumTransferAmounts;
- (NSDictionary)minimumTransferAmounts;
- (NSSet)cloudStoreZoneNames;
- (NSString)associatedPassSerialNumber;
- (NSString)associatedPassTypeIdentifier;
- (NSString)termsIdentifier;
- (NSURL)termsURL;
- (PKPeerPaymentAccount)initWithCoder:(id)coder;
- (PKPeerPaymentAccount)initWithDictionary:(id)dictionary;
- (PKPeerPaymentAccount)initWithDictionary:(id)dictionary lastUpdated:(id)updated;
- (PKPeerPaymentAccount)peerPaymentAccountWithAltDSID:(id)d;
- (PKPeerPaymentAccount)peerPaymentAccountWithIdentifier:(id)identifier;
- (id)_featureWithIdentifier:(id)identifier;
- (id)accountInvitationWithAltDSID:(id)d;
- (id)associatedPassUniqueID;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAssociatedAccountInformation:(id)information;
@end

@implementation PKPeerPaymentAccount

- (id)associatedPassUniqueID
{
  associatedPassTypeIdentifier = [(PKPeerPaymentAccount *)self associatedPassTypeIdentifier];
  associatedPassSerialNumber = [(PKPeerPaymentAccount *)self associatedPassSerialNumber];
  v5 = PKGeneratePassUniqueID(associatedPassTypeIdentifier, associatedPassSerialNumber);

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

  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceDate:self->_lastUpdated];
  v6 = v5 >= proactiveFetchPeriod;

  return v6;
}

- (BOOL)supportsSendToUser
{
  sendToUserFeatureDescriptor = [(PKPeerPaymentAccount *)self sendToUserFeatureDescriptor];
  v3 = sendToUserFeatureDescriptor != 0;

  return v3;
}

- (PKPeerPaymentAccount)initWithDictionary:(id)dictionary lastUpdated:(id)updated
{
  v87 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  updatedCopy = updated;
  v85.receiver = self;
  v85.super_class = PKPeerPaymentAccount;
  v8 = [(PKPeerPaymentAccount *)&v85 init];
  if (!v8)
  {
    goto LABEL_33;
  }

  v9 = [dictionaryCopy PKStringForKey:@"state"];
  v8->_state = PKPeerPaymentAccountStateFromString(v9);

  v10 = [dictionaryCopy PKStringForKey:@"stage"];
  v8->_stage = PKPeerPaymentAccountStageFromString(v10);

  v11 = [dictionaryCopy PKStringForKey:@"stateReason"];
  v8->_stateReason = PKPeerPaymentAccountStateReasonFromString(v11);

  v12 = [dictionaryCopy PKStringForKey:@"personToPersonRestrictionType"];
  v8->_sendRestrictionType = PKPeerPaymentAccountSendRestrictionTypeFromString(v12);

  v13 = [dictionaryCopy PKStringForKey:@"receiveRestrictionType"];
  v8->_receiveRestrictionType = PKPeerPaymentAccountReceiveRestrictionTypeFromString(v13);

  v14 = [dictionaryCopy PKStringForKey:@"countryCode"];
  countryCode = v8->_countryCode;
  v8->_countryCode = v14;

  v16 = [dictionaryCopy PKStringForKey:@"role"];
  v8->_role = PKPeerPaymentAccountRoleFromString(v16);

  v17 = [dictionaryCopy PKStringForKey:@"identifier"];
  identifier = v8->_identifier;
  v8->_identifier = v17;

  v19 = [dictionaryCopy PKDateForKey:@"createdDate"];
  createdDate = v8->_createdDate;
  v8->_createdDate = v19;

  v21 = [dictionaryCopy PKDateForKey:@"identifiedDate"];
  identifiedDate = v8->_identifiedDate;
  v8->_identifiedDate = v21;

  v23 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"currentBalance"];
  v24 = [dictionaryCopy PKStringForKey:@"currency"];
  v25 = 0;
  if (v23 && v24)
  {
    v25 = [[PKCurrencyAmount alloc] initWithAmount:v23 currency:v24 exponent:0];
  }

  currentBalance = v8->_currentBalance;
  v8->_currentBalance = v25;

  v27 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"maximumBalance"];
  maximumBalance = v8->_maximumBalance;
  v8->_maximumBalance = v27;

  v29 = v8->_maximumBalance;
  zero = [MEMORY[0x1E696AB90] zero];
  if ([(NSDecimalNumber *)v29 compare:zero]== NSOrderedSame)
  {

LABEL_9:
    v34 = v8->_maximumBalance;
    v8->_maximumBalance = 0;

    goto LABEL_10;
  }

  v31 = v8->_maximumBalance;
  zero2 = [MEMORY[0x1E696AB90] zero];
  v33 = [(NSDecimalNumber *)v31 compare:zero2];

  if (v33 == -1)
  {
    goto LABEL_9;
  }

LABEL_10:
  v80 = updatedCopy;
  v8->_identityVerificationRequired = [dictionaryCopy PKBoolForKey:@"identityVerificationRequired"];
  v35 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"amountRemainingUntilIdentityVerification"];
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

  objc_storeStrong(&v8->_lastUpdated, updated);
  [dictionaryCopy PKDoubleForKey:@"proactiveFetchPeriod"];
  v8->_proactiveFetchPeriod = v39;
  [dictionaryCopy PKDoubleForKey:@"accountFetchAfterTransactionWaitPeriod"];
  v8->_accountFetchAfterTransactionWaitPeriod = v40;
  [dictionaryCopy PKDoubleForKey:@"accountFetchAfterTransactionWaitTolerance"];
  v8->_accountFetchAfterTransactionWaitTolerance = v41;
  v8->_termsAcceptanceRequired = [dictionaryCopy PKBoolForKey:@"termsAcceptanceRequired"];
  v42 = [dictionaryCopy PKStringForKey:@"termsIdentifier"];
  termsIdentifier = v8->_termsIdentifier;
  v8->_termsIdentifier = v42;

  v44 = [dictionaryCopy PKURLForKey:@"termsURL"];
  termsURL = v8->_termsURL;
  v8->_termsURL = v44;

  v46 = [dictionaryCopy PKURLForKey:@"associatedPassURL"];
  associatedPassURL = v8->_associatedPassURL;
  v8->_associatedPassURL = v46;

  v48 = [dictionaryCopy PKStringForKey:@"associatedPassSerialNumber"];
  associatedPassSerialNumber = v8->_associatedPassSerialNumber;
  v8->_associatedPassSerialNumber = v48;

  v50 = [dictionaryCopy PKStringForKey:@"associatedPassTypeIdentifier"];
  associatedPassTypeIdentifier = v8->_associatedPassTypeIdentifier;
  v8->_associatedPassTypeIdentifier = v50;

  v52 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v53 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"supportedFeatures"];
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

  updatedCopy = v80;
  v61 = [[PKPeerPaymentAssociatedAccountInformation alloc] initWithDictionary:dictionaryCopy lastUpdated:v80];
  associatedAccountInformation = v8->_associatedAccountInformation;
  v8->_associatedAccountInformation = v61;

  v8->_pendingPaymentCount = [dictionaryCopy PKIntegerForKey:@"pendingPaymentCount"];
  v8->_identityVerificationForDisbursementsRequired = [dictionaryCopy PKBoolForKey:@"identityVerificationForDisbursementsRequired"];
  v63 = [dictionaryCopy PKStringForKey:@"altDSID"];
  altDSID = v8->_altDSID;
  v8->_altDSID = v63;

  v65 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"cloudStoreZoneNames"];
  cloudStoreZoneNames = v8->_cloudStoreZoneNames;
  v8->_cloudStoreZoneNames = v65;

  v67 = [dictionaryCopy PKDictionaryForKey:@"additionalPushTopics"];
  if (v67)
  {
    v68 = [[PKPeerPaymentAdditionalPushTopics alloc] initWithDictionary:v67];
    additionalPushTopics = v8->_additionalPushTopics;
    v8->_additionalPushTopics = v68;
  }

  v70 = [dictionaryCopy PKIntegerForKey:@"deviceScoreEncryptedPayloadVersion"];
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
  v8->_hasRecurringPayments = [dictionaryCopy PKBoolForKey:@"hasRecurringPayments"];
  v72 = [dictionaryCopy PKDictionaryForKey:@"paymentModeIdentifiers"];
  if (v72)
  {
    v73 = [[PKPeerPaymentPaymentModeIdentifiers alloc] initWithDictionary:v72];
    paymentModeIdentifiers = v8->_paymentModeIdentifiers;
    v8->_paymentModeIdentifiers = v73;
  }

  v75 = [dictionaryCopy PKDictionaryForKey:@"encryptionCertificatesVersions"];
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

- (PKPeerPaymentAccount)peerPaymentAccountWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = self->_identifier;
  v6 = identifierCopy;
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
    selfCopy = self;
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
  selfCopy = v16[5];

  _Block_object_dispose(&v15, 8);
LABEL_10:

  return selfCopy;
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

- (PKPeerPaymentAccount)peerPaymentAccountWithAltDSID:(id)d
{
  dCopy = d;
  v5 = self->_altDSID;
  v6 = dCopy;
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
    selfCopy = self;
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
  selfCopy = v16[5];

  _Block_object_dispose(&v15, 8);
LABEL_10:

  return selfCopy;
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

- (id)accountInvitationWithAltDSID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
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
    v10 = dCopy;
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
  lastUpdated = [(PKPeerPaymentAssociatedAccountInformation *)self->_associatedAccountInformation lastUpdated];
  if (lastUpdated)
  {
    if (v4 <= 0.0)
    {
      v4 = *&PKPeerPaymentAssociatedAccountDefaultProactiveFetchPeriod;
    }

    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:lastUpdated];
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

  recurringPaymentsFeatureDescriptor = [(PKPeerPaymentAccount *)self recurringPaymentsFeatureDescriptor];
  [recurringPaymentsFeatureDescriptor proactiveFetchPeriod];
  v5 = v4;

  v6 = PKPeerPaymentRecurringPaymentsLastUpdated();
  if (v6)
  {
    if (v5 <= 0.0)
    {
      v5 = *&PKPeerPaymentRecurringPaymentsDefaultProactiveFetchPeriod;
    }

    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:v6];
    v9 = v8 >= v5;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)isEligibleToAddMoneyForUser:(id)user
{
  v4 = 0;
  if (user && self->_role == 1)
  {
    v4 = [user memberType] == 2;
  }

  return self->_state == 1 && !v4;
}

- (BOOL)isEligibleForRecurringPaymentsForUser:(id)user
{
  v4 = 0;
  if (user && self->_role == 1)
  {
    v4 = [user memberType] == 2;
  }

  return self->_state - 3 > 0xFFFFFFFFFFFFFFFDLL && !v4;
}

- (BOOL)isEligibleForThresholdTopUpForUser:(id)user
{
  v4 = 0;
  if (user && self->_role == 1)
  {
    v4 = [user memberType] == 2;
  }

  return self->_state - 3 > 0xFFFFFFFFFFFFFFFDLL && !v4;
}

- (BOOL)isEligibleForUserInfoUpdates
{
  supportsBillingAddress = [(PKPeerPaymentAccount *)self supportsBillingAddress];
  if (supportsBillingAddress)
  {

    LOBYTE(supportsBillingAddress) = [(PKPeerPaymentAccount *)self isOwnerAccountPersonalized];
  }

  return supportsBillingAddress;
}

- (BOOL)willTriggerIdentityVerificationForTransactionAmount:(id)amount
{
  if (self->_stage == 3)
  {
    return 0;
  }

  v4 = [(NSDecimalNumber *)self->_amountRemainingUntilIdentityVerification decimalNumberBySubtracting:amount];
  zero = [MEMORY[0x1E696AB90] zero];
  v3 = [v4 compare:zero] == -1;

  return v3;
}

- (BOOL)transactionAmountIsValid:(id)valid feature:(id)feature
{
  if (!feature)
  {
    return 0;
  }

  featureCopy = feature;
  validCopy = valid;
  minimumAmount = [featureCopy minimumAmount];
  v8 = [validCopy compare:minimumAmount];

  maximumAmount = [featureCopy maximumAmount];

  v10 = [validCopy compare:maximumAmount];
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

- (void)setAssociatedAccountInformation:(id)information
{
  v24 = *MEMORY[0x1E69E9840];
  informationCopy = information;
  v6 = informationCopy;
  associatedAccountInformation = self->_associatedAccountInformation;
  p_associatedAccountInformation = &self->_associatedAccountInformation;
  v7 = associatedAccountInformation;
  if (informationCopy && v7)
  {
    if ([informationCopy isEqual:?])
    {
      goto LABEL_14;
    }

    v7 = *p_associatedAccountInformation;
  }

  else if (v7 == informationCopy)
  {
    goto LABEL_14;
  }

  v10 = v7;
  objc_storeStrong(p_associatedAccountInformation, information);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  associatedAccountRemovalRecords = [v10 associatedAccountRemovalRecords];
  v12 = [associatedAccountRemovalRecords countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(associatedAccountRemovalRecords);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        v17 = *p_associatedAccountInformation;
        altDSID = [v16 altDSID];
        [v17 markAssociatedAccountRemovalRecordWithAltDSID:altDSID hasPresentedNotification:{objc_msgSend(v16, "hasPresentedNotification")}];
      }

      v13 = [associatedAccountRemovalRecords countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

LABEL_14:
}

- (PKPeerPaymentAccount)initWithCoder:(id)coder
{
  v62[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v60.receiver = self;
  v60.super_class = PKPeerPaymentAccount;
  v5 = [(PKPeerPaymentAccount *)&v60 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_role = [coderCopy decodeIntegerForKey:@"role"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"createdDate"];
    createdDate = v5->_createdDate;
    v5->_createdDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifiedDate"];
    identifiedDate = v5->_identifiedDate;
    v5->_identifiedDate = v10;

    v5->_state = [coderCopy decodeIntegerForKey:@"state"];
    v5->_stage = [coderCopy decodeIntegerForKey:@"stage"];
    v5->_stateReason = [coderCopy decodeIntegerForKey:@"stateReason"];
    v5->_sendRestrictionType = [coderCopy decodeIntegerForKey:@"personToPersonRestrictionType"];
    v5->_receiveRestrictionType = [coderCopy decodeIntegerForKey:@"receiveRestrictionType"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentBalance"];
    currentBalance = v5->_currentBalance;
    v5->_currentBalance = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maximumBalance"];
    maximumBalance = v5->_maximumBalance;
    v5->_maximumBalance = v16;

    v5->_identityVerificationRequired = [coderCopy decodeBoolForKey:@"identityVerificationRequired"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"amountRemainingUntilIdentityVerification"];
    amountRemainingUntilIdentityVerification = v5->_amountRemainingUntilIdentityVerification;
    v5->_amountRemainingUntilIdentityVerification = v18;

    v5->_accountStateDirty = [coderCopy decodeBoolForKey:@"accountStateDirty"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdated"];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v20;

    [coderCopy decodeDoubleForKey:@"proactiveFetchPeriod"];
    v5->_proactiveFetchPeriod = v22;
    [coderCopy decodeDoubleForKey:@"accountFetchAfterTransactionWaitPeriod"];
    v5->_accountFetchAfterTransactionWaitPeriod = v23;
    [coderCopy decodeDoubleForKey:@"accountFetchAfterTransactionWaitTolerance"];
    v5->_accountFetchAfterTransactionWaitTolerance = v24;
    v5->_termsAcceptanceRequired = [coderCopy decodeBoolForKey:@"termsAcceptanceRequired"];
    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"termsIdentifier"];
    termsIdentifier = v5->_termsIdentifier;
    v5->_termsIdentifier = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"termsURL"];
    termsURL = v5->_termsURL;
    v5->_termsURL = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedPassURL"];
    associatedPassURL = v5->_associatedPassURL;
    v5->_associatedPassURL = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedPassSerialNumber"];
    associatedPassSerialNumber = v5->_associatedPassSerialNumber;
    v5->_associatedPassSerialNumber = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedPassTypeIdentifier"];
    associatedPassTypeIdentifier = v5->_associatedPassTypeIdentifier;
    v5->_associatedPassTypeIdentifier = v33;

    v35 = MEMORY[0x1E695DFD8];
    v62[0] = objc_opt_class();
    v62[1] = objc_opt_class();
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
    v37 = [v35 setWithArray:v36];
    v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"supportedFeatureDescriptors"];
    supportedFeatureDescriptors = v5->_supportedFeatureDescriptors;
    v5->_supportedFeatureDescriptors = v38;

    v5->_pendingPaymentCount = [coderCopy decodeIntegerForKey:@"pendingPaymentCount"];
    v5->_identityVerificationForDisbursementsRequired = [coderCopy decodeBoolForKey:@"identityVerificationForDisbursementsRequired"];
    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v40;

    v42 = MEMORY[0x1E695DFD8];
    v61[0] = objc_opt_class();
    v61[1] = objc_opt_class();
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
    v44 = [v42 setWithArray:v43];
    v45 = [coderCopy decodeObjectOfClasses:v44 forKey:@"cloudStoreZoneNames"];
    cloudStoreZoneNames = v5->_cloudStoreZoneNames;
    v5->_cloudStoreZoneNames = v45;

    v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"additionalPushTopics"];
    additionalPushTopics = v5->_additionalPushTopics;
    v5->_additionalPushTopics = v47;

    v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionSourceIdentifier"];
    transactionSourceIdentifier = v5->_transactionSourceIdentifier;
    v5->_transactionSourceIdentifier = v49;

    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedAccountInformation"];
    associatedAccountInformation = v5->_associatedAccountInformation;
    v5->_associatedAccountInformation = v51;

    v5->_hasDisplayedAssociatedAccountActiveNotification = [coderCopy decodeBoolForKey:@"hasDisplayedAssociatedAccountActiveNotification"];
    v53 = [coderCopy decodeIntegerForKey:@"deviceScoreEncryptedPayloadVersion"];
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
    v5->_hasRecurringPayments = [coderCopy decodeBoolForKey:@"hasRecurringPayments"];
    v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentModeIdentifiers"];
    paymentModeIdentifiers = v5->_paymentModeIdentifiers;
    v5->_paymentModeIdentifiers = v55;

    v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptionCertificatesVersions"];
    encryptionCertificatesVersions = v5->_encryptionCertificatesVersions;
    v5->_encryptionCertificatesVersions = v57;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeInteger:self->_role forKey:@"role"];
  [coderCopy encodeObject:self->_createdDate forKey:@"createdDate"];
  [coderCopy encodeObject:self->_identifiedDate forKey:@"identifiedDate"];
  [coderCopy encodeInteger:self->_state forKey:@"state"];
  [coderCopy encodeInteger:self->_stage forKey:@"stage"];
  [coderCopy encodeInteger:self->_stateReason forKey:@"stateReason"];
  [coderCopy encodeInteger:self->_sendRestrictionType forKey:@"personToPersonRestrictionType"];
  [coderCopy encodeInteger:self->_receiveRestrictionType forKey:@"receiveRestrictionType"];
  [coderCopy encodeObject:self->_countryCode forKey:@"countryCode"];
  [coderCopy encodeObject:self->_currentBalance forKey:@"currentBalance"];
  [coderCopy encodeObject:self->_maximumBalance forKey:@"maximumBalance"];
  [coderCopy encodeBool:self->_identityVerificationRequired forKey:@"identityVerificationRequired"];
  [coderCopy encodeObject:self->_amountRemainingUntilIdentityVerification forKey:@"amountRemainingUntilIdentityVerification"];
  [coderCopy encodeBool:self->_accountStateDirty forKey:@"accountStateDirty"];
  [coderCopy encodeObject:self->_lastUpdated forKey:@"lastUpdated"];
  [coderCopy encodeDouble:@"proactiveFetchPeriod" forKey:self->_proactiveFetchPeriod];
  [coderCopy encodeDouble:@"accountFetchAfterTransactionWaitPeriod" forKey:self->_accountFetchAfterTransactionWaitPeriod];
  [coderCopy encodeDouble:@"accountFetchAfterTransactionWaitTolerance" forKey:self->_accountFetchAfterTransactionWaitTolerance];
  [coderCopy encodeBool:self->_termsAcceptanceRequired forKey:@"termsAcceptanceRequired"];
  [coderCopy encodeObject:self->_termsIdentifier forKey:@"termsIdentifier"];
  [coderCopy encodeObject:self->_termsURL forKey:@"termsURL"];
  [coderCopy encodeObject:self->_associatedPassURL forKey:@"associatedPassURL"];
  [coderCopy encodeObject:self->_associatedPassSerialNumber forKey:@"associatedPassSerialNumber"];
  [coderCopy encodeObject:self->_associatedPassTypeIdentifier forKey:@"associatedPassTypeIdentifier"];
  [coderCopy encodeObject:self->_supportedFeatureDescriptors forKey:@"supportedFeatureDescriptors"];
  [coderCopy encodeInteger:self->_pendingPaymentCount forKey:@"pendingPaymentCount"];
  [coderCopy encodeBool:self->_identityVerificationForDisbursementsRequired forKey:@"identityVerificationForDisbursementsRequired"];
  [coderCopy encodeObject:self->_altDSID forKey:@"altDSID"];
  [coderCopy encodeObject:self->_cloudStoreZoneNames forKey:@"cloudStoreZoneNames"];
  [coderCopy encodeObject:self->_additionalPushTopics forKey:@"additionalPushTopics"];
  [coderCopy encodeObject:self->_transactionSourceIdentifier forKey:@"transactionSourceIdentifier"];
  [coderCopy encodeObject:self->_associatedAccountInformation forKey:@"associatedAccountInformation"];
  [coderCopy encodeBool:self->_hasDisplayedAssociatedAccountActiveNotification forKey:@"hasDisplayedAssociatedAccountActiveNotification"];
  [coderCopy encodeInteger:self->_deviceScoreEncryptedPayloadVersion forKey:@"deviceScoreEncryptedPayloadVersion"];
  [coderCopy encodeBool:self->_hasRecurringPayments forKey:@"hasRecurringPayments"];
  [coderCopy encodeObject:self->_paymentModeIdentifiers forKey:@"paymentModeIdentifiers"];
  [coderCopy encodeObject:self->_encryptionCertificatesVersions forKey:@"encryptionCertificatesVersions"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_89;
  }

  identifier = self->_identifier;
  v6 = *(equalCopy + 2);
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
  v8 = *(equalCopy + 4);
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
  v10 = *(equalCopy + 5);
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
  v12 = *(equalCopy + 11);
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
  v14 = *(equalCopy + 12);
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
  v16 = *(equalCopy + 13);
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
  v18 = *(equalCopy + 19);
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
  v20 = *(equalCopy + 20);
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
  v22 = *(equalCopy + 21);
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
  v24 = *(equalCopy + 22);
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
  v26 = *(equalCopy + 23);
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
  v28 = *(equalCopy + 33);
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

  v29 = *(equalCopy + 25);
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
  v35 = *(equalCopy + 26);
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
  v37 = *(equalCopy + 27);
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
  v39 = *(equalCopy + 28);
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

  v40 = *(equalCopy + 29);
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
  v46 = *(equalCopy + 31);
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
  v48 = *(equalCopy + 32);
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

  if (self->_identityVerificationRequired == *(equalCopy + 8))
  {
    amountRemainingUntilIdentityVerification = self->_amountRemainingUntilIdentityVerification;
    v50 = *(equalCopy + 14);
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

    if (self->_termsAcceptanceRequired == *(equalCopy + 10) && self->_proactiveFetchPeriod == equalCopy[16] && self->_accountFetchAfterTransactionWaitPeriod == equalCopy[17] && self->_accountFetchAfterTransactionWaitTolerance == equalCopy[18] && self->_role == *(equalCopy + 3) && self->_state == *(equalCopy + 6) && self->_stateReason == *(equalCopy + 8) && self->_sendRestrictionType == *(equalCopy + 9) && self->_receiveRestrictionType == *(equalCopy + 10) && self->_stage == *(equalCopy + 7) && self->_pendingPaymentCount == *(equalCopy + 24) && self->_identityVerificationForDisbursementsRequired == *(equalCopy + 11) && self->_hasDisplayedAssociatedAccountActiveNotification == *(equalCopy + 12) && self->_deviceScoreEncryptedPayloadVersion == *(equalCopy + 30))
    {
      v43 = self->_hasRecurringPayments == *(equalCopy + 13);
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
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_createdDate];
  [array safelyAddObject:self->_identifiedDate];
  [array safelyAddObject:self->_countryCode];
  [array safelyAddObject:self->_currentBalance];
  [array safelyAddObject:self->_maximumBalance];
  [array safelyAddObject:self->_amountRemainingUntilIdentityVerification];
  [array safelyAddObject:self->_termsIdentifier];
  [array safelyAddObject:self->_termsURL];
  [array safelyAddObject:self->_associatedPassURL];
  [array safelyAddObject:self->_associatedPassSerialNumber];
  [array safelyAddObject:self->_associatedPassTypeIdentifier];
  [array safelyAddObject:self->_supportedFeatureDescriptors];
  [array safelyAddObject:self->_altDSID];
  [array safelyAddObject:self->_cloudStoreZoneNames];
  [array safelyAddObject:self->_additionalPushTopics];
  [array safelyAddObject:self->_transactionSourceIdentifier];
  [array safelyAddObject:self->_associatedAccountInformation];
  [array safelyAddObject:self->_paymentModeIdentifiers];
  [array safelyAddObject:self->_encryptionCertificatesVersions];
  v4 = PKCombinedHash(17, array);
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
  loadFromCardFeatureDescriptor = [(PKPeerPaymentAccount *)self loadFromCardFeatureDescriptor];
  v3 = loadFromCardFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsTransferToBank
{
  transferToBankFeatureDescriptor = [(PKPeerPaymentAccount *)self transferToBankFeatureDescriptor];
  v3 = transferToBankFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsRequestFromUser
{
  requestFromUserFeatureDescriptor = [(PKPeerPaymentAccount *)self requestFromUserFeatureDescriptor];
  v3 = requestFromUserFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsSendFromWallet
{
  sendFromWalletFeatureDescriptor = [(PKPeerPaymentAccount *)self sendFromWalletFeatureDescriptor];
  v3 = sendFromWalletFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsRequestFromWallet
{
  requestFromWalletFeatureDescriptor = [(PKPeerPaymentAccount *)self requestFromWalletFeatureDescriptor];
  v3 = requestFromWalletFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsPendingRequestAction
{
  pendingRequestActionFeatureDescriptor = [(PKPeerPaymentAccount *)self pendingRequestActionFeatureDescriptor];
  v3 = pendingRequestActionFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsRecurringPayments
{
  recurringPaymentsFeatureDescriptor = [(PKPeerPaymentAccount *)self recurringPaymentsFeatureDescriptor];
  v3 = recurringPaymentsFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsThresholdTopUp
{
  thresholdTopUpFeatureDescriptor = [(PKPeerPaymentAccount *)self thresholdTopUpFeatureDescriptor];
  v3 = thresholdTopUpFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsCardBalancePromotion
{
  cardBalancePromotionFeatureDescriptor = [(PKPeerPaymentAccount *)self cardBalancePromotionFeatureDescriptor];
  v3 = cardBalancePromotionFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsInstantWithdrawal
{
  instantWithdrawalPromotionFeatureDescriptor = [(PKPeerPaymentAccount *)self instantWithdrawalPromotionFeatureDescriptor];
  v3 = instantWithdrawalPromotionFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsAssociatedAccountStateAction
{
  associatedAccountStateActionFeatureDescriptor = [(PKPeerPaymentAccount *)self associatedAccountStateActionFeatureDescriptor];
  v3 = associatedAccountStateActionFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsPreserveCurrentBalance
{
  preserveCurrentBalanceFeatureDescriptor = [(PKPeerPaymentAccount *)self preserveCurrentBalanceFeatureDescriptor];
  v3 = preserveCurrentBalanceFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsFamilySharing
{
  supportsFamilySharingFeatureDescriptor = [(PKPeerPaymentAccount *)self supportsFamilySharingFeatureDescriptor];
  v3 = supportsFamilySharingFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsGraduationWhileAssociatedAccountLocked
{
  supportsGraduationWhileAssociatedAccountLockedFeatureDescriptor = [(PKPeerPaymentAccount *)self supportsGraduationWhileAssociatedAccountLockedFeatureDescriptor];
  v3 = supportsGraduationWhileAssociatedAccountLockedFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsDeviceTap
{
  deviceTapFeatureDescriptor = [(PKPeerPaymentAccount *)self deviceTapFeatureDescriptor];
  v3 = deviceTapFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsGroupMessage
{
  groupMessageFeatureDescriptor = [(PKPeerPaymentAccount *)self groupMessageFeatureDescriptor];
  v3 = groupMessageFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsBillingAddress
{
  billingAddressFeatureDescriptor = [(PKPeerPaymentAccount *)self billingAddressFeatureDescriptor];
  v3 = billingAddressFeatureDescriptor != 0;

  return v3;
}

- (id)_featureWithIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  supportedFeatureDescriptors = [(PKPeerPaymentAccount *)self supportedFeatureDescriptors];
  v6 = [supportedFeatureDescriptors countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(supportedFeatureDescriptors);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        if ([identifier isEqualToString:identifierCopy])
        {
          isSupported = [v9 isSupported];

          if (isSupported)
          {
            v6 = v9;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v6 = [supportedFeatureDescriptors countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

LABEL_12:

  return v6;
}

- (PKPeerPaymentAccount)initWithDictionary:(id)dictionary
{
  v4 = MEMORY[0x1E695DF00];
  dictionaryCopy = dictionary;
  date = [v4 date];
  v7 = [(PKPeerPaymentAccount *)self initWithDictionary:dictionaryCopy lastUpdated:date];

  return v7;
}

- (NSDictionary)minimumTransferAmounts
{
  v10[1] = *MEMORY[0x1E69E9840];
  currentBalance = [(PKPeerPaymentAccount *)self currentBalance];
  currency = [currentBalance currency];

  sendToUserFeatureDescriptor = [(PKPeerPaymentAccount *)self sendToUserFeatureDescriptor];
  minimumAmount = [sendToUserFeatureDescriptor minimumAmount];

  v7 = 0;
  if (currency && minimumAmount)
  {
    v9 = currency;
    v10[0] = minimumAmount;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  return v7;
}

- (NSDictionary)maximumTransferAmounts
{
  v10[1] = *MEMORY[0x1E69E9840];
  currentBalance = [(PKPeerPaymentAccount *)self currentBalance];
  currency = [currentBalance currency];

  sendToUserFeatureDescriptor = [(PKPeerPaymentAccount *)self sendToUserFeatureDescriptor];
  maximumAmount = [sendToUserFeatureDescriptor maximumAmount];

  v7 = 0;
  if (currency && maximumAmount)
  {
    v9 = currency;
    v10[0] = maximumAmount;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  return v7;
}

@end