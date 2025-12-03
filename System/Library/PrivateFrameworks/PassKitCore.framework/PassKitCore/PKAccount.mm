@interface PKAccount
+ (id)accountIdentifierFromRecordName:(id)name;
+ (id)analyticsAccountTypeForAccount:(id)account;
+ (id)recordNameForAccountIdentifier:(id)identifier;
- (BOOL)FDICBehaviorHideAuthenticationInterstitial;
- (BOOL)FDICBehaviorHideCreditRewardsHubSignage;
- (BOOL)FDICBehaviorShowCreditDashboardBalance;
- (BOOL)FDICBehaviorShowCreditRewardsHubBalance;
- (BOOL)FDICBehaviorShowSettingsBalance;
- (BOOL)accountUserInvitationAllowed;
- (BOOL)hideBillPaymentHoldTime;
- (BOOL)hideDisputeDetails;
- (BOOL)hideEnhancedDisputeDetails;
- (BOOL)hideInterestChargeClarity;
- (BOOL)hideSpendingInsights;
- (BOOL)isContentEqualToAccount:(id)account;
- (BOOL)isEqual:(id)equal;
- (BOOL)provisioningAllowed;
- (BOOL)showBillPaymentInterest;
- (BOOL)showBillPaymentInterestSummary;
- (BOOL)showCardPromotions;
- (BOOL)showEnhancedMerchants;
- (BOOL)showPaymentSheetRewards;
- (BOOL)showPhysicalCardExpiringSoonMessaging;
- (BOOL)showRewardsGraph;
- (BOOL)supportsAMPRedeemGiftcard;
- (BOOL)supportsAMPTopUp;
- (BOOL)supportsAccountBalanceEventReportingForLocation:(id)location;
- (BOOL)supportsAddBeneficiaries;
- (BOOL)supportsAddFundingSource;
- (BOOL)supportsDynamicSecurityCodes;
- (BOOL)supportsExportSavingsTransactionData;
- (BOOL)supportsExportTransactionData;
- (BOOL)supportsInStorePayment;
- (BOOL)supportsInStoreTopUp;
- (BOOL)supportsMoneyMovement;
- (BOOL)supportsOneTimeDeposit;
- (BOOL)supportsOneTimeDepositWithAppleCash;
- (BOOL)supportsOneTimeWithdrawal;
- (BOOL)supportsOneTimeWithdrawalWithAppleCash;
- (BOOL)supportsPhysicalCardActivation;
- (BOOL)supportsRedeemRewards;
- (BOOL)supportsRequestPhysicalCard;
- (BOOL)supportsRequestStatement;
- (BOOL)supportsSchedulePayment;
- (BOOL)supportsScheduleRecurringPayments;
- (BOOL)supportsShowAccountSummary;
- (BOOL)supportsShowNotifications;
- (BOOL)supportsShowSavingsAccountSummary;
- (BOOL)supportsShowVirtualCard;
- (BOOL)supportsStatementMetadata;
- (BOOL)supportsTopUp;
- (BOOL)supportsTransactionSyncReporting;
- (BOOL)supportsViewSavingsStatement;
- (BOOL)supportsViewStatement;
- (BOOL)supportsViewTaxDocuments;
- (NSArray)cloudStoreZoneNames;
- (NSSet)allAccountIdentifiers;
- (PKAccount)initWithCloudStoreCoder:(id)coder;
- (PKAccount)initWithCoder:(id)coder;
- (PKAccount)initWithDictionary:(id)dictionary isCloudAccount:(BOOL)account;
- (id)_appleBalanceFeatureWithIdentifier:(id)identifier;
- (id)_creditFeatureWithIdentifier:(id)identifier;
- (id)_featureDescriptorsForFeature:(unint64_t)feature inCloudRecord:(id)record;
- (id)_featureWithIdentifier:(id)identifier;
- (id)_savingsFeatureWithIdentifier:(id)identifier;
- (id)analyticsEventAccountType;
- (id)associatedPassUniqueID;
- (id)cardAvailabilityInfo;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createdDate;
- (id)description;
- (id)productTimeZone;
- (id)recordTypesAndNamesForCodingType:(unint64_t)type;
- (id)updateUserInfoBaseURL;
- (unint64_t)hash;
- (unint64_t)oneTimeDepositFundingSourceTypes;
- (unint64_t)oneTimeWithdrawalFundingSourceTypes;
- (unint64_t)supportedContactMethodForAddingBeneficiaries;
- (void)_addSupportedFeaturesToEncryptedCloudRecord:(id)record;
- (void)_insertSupportedFeature:(id)feature;
- (void)_removeSupportedFeatureWithIdentifier:(id)identifier;
- (void)applyPropertiesFromCloudStoreRecord:(id)record;
- (void)encodeWithCloudStoreCoder:(id)coder codingType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithCloudStoreRecord:(id)record;
@end

@implementation PKAccount

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_accountIdentifier];
  [array safelyAddObject:self->_details];
  [array safelyAddObject:self->_supportedFeatures];
  [array safelyAddObject:self->_lastUpdated];
  [array safelyAddObject:self->_accountBaseURL];
  [array safelyAddObject:self->_altDSID];
  [array safelyAddObject:self->_applyServiceURL];
  [array safelyAddObject:self->_previousAccountIdentifiers];
  [array safelyAddObject:self->_paymentServicesBaseURL];
  [array safelyAddObject:self->_additionalPushTopics];
  cloudStoreZoneNames = [(PKAccount *)self cloudStoreZoneNames];
  [array safelyAddObject:cloudStoreZoneNames];

  [array safelyAddObject:self->_fetchPeriods];
  v5 = PKCombinedHash(17, array);
  v6 = self->_type - v5 + 32 * v5;
  v7 = self->_feature - v6 + 32 * v6;
  v8 = self->_state - v7 + 32 * v7;
  v9 = self->_stateReason - v8 + 32 * v8;
  v10 = self->_accessLevel - v9 + 32 * v9;
  v11 = self->_accountStateDirty - v10 + 32 * v10;
  v12 = self->_blockAllAccountAccess - v11 + 32 * v11;
  v13 = self->_blockNotifications - v12 + 32 * v12;
  v14 = self->_isCloudAccount - v13 + 32 * v13;
  v15 = self->_coOwner - v14 + 32 * v14;
  v16 = self->_sharedAccount - v15 + 32 * v15;

  return v16;
}

- (NSArray)cloudStoreZoneNames
{
  v5[1] = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_cloudStoreZoneNames count])
  {
    v3 = self->_cloudStoreZoneNames;
  }

  else
  {
    v5[0] = @"transactions";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  return v3;
}

- (PKAccount)initWithDictionary:(id)dictionary isCloudAccount:(BOOL)account
{
  v73 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v67.receiver = self;
  v67.super_class = PKAccount;
  v7 = [(PKAccount *)&v67 init];
  if (!v7)
  {
    goto LABEL_67;
  }

  v8 = [dictionaryCopy PKStringForKey:@"accountIdentifier"];
  accountIdentifier = v7->_accountIdentifier;
  v7->_accountIdentifier = v8;

  if (![(NSString *)v7->_accountIdentifier length])
  {
    v12 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "Error: Account identifier missing";
      goto LABEL_9;
    }

LABEL_10:

LABEL_11:
    v14 = 0;
    goto LABEL_68;
  }

  v10 = [dictionaryCopy PKURLForKey:@"accountBaseURL"];
  accountBaseURL = v7->_accountBaseURL;
  v7->_accountBaseURL = v10;

  v7->_isCloudAccount = account;
  if (!v7->_accountBaseURL && !account)
  {
    v12 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "Error: Account baseURL missing for non-cloud account";
LABEL_9:
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v15 = [dictionaryCopy PKStringForKey:@"featureIdentifier"];
  v16 = PKFeatureIdentifierFromString(v15);
  v7->_feature = v16;
  if (!v16)
  {
    v26 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v7->_accountIdentifier;
      *buf = 138412546;
      v70 = v27;
      v71 = 2112;
      v72 = v15;
      _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, "Error: Unknown feature identifier for account: %@ feature:%@", buf, 0x16u);
    }

    goto LABEL_11;
  }

  v17 = [dictionaryCopy PKURLForKey:@"applyServiceURL"];
  applyServiceURL = v7->_applyServiceURL;
  v7->_applyServiceURL = v17;

  v19 = [dictionaryCopy PKURLForKey:@"paymentServicesBaseURL"];
  paymentServicesBaseURL = v7->_paymentServicesBaseURL;
  v7->_paymentServicesBaseURL = v19;

  v21 = [dictionaryCopy PKStringForKey:@"accountType"];
  v7->_type = PKAccountTypeFromString(v21);

  v22 = [PKAccountDetails alloc];
  v23 = [dictionaryCopy PKDictionaryForKey:@"accountDetails"];
  v24 = v7->_type - 1;
  if (v24 > 3)
  {
    v25 = 0;
  }

  else
  {
    v25 = qword_1ADB996B0[v24];
  }

  v28 = [(PKAccountDetails *)v22 initWithDictionary:v23 type:v25];
  details = v7->_details;
  v7->_details = v28;

  v30 = [dictionaryCopy PKStringForKey:@"state"];
  v7->_state = PKAccountStateFromString(v30);

  v31 = [dictionaryCopy PKStringForKey:@"stateReason"];
  v62 = v15;
  if ([v31 isEqualToString:@"delinquent"])
  {
    v32 = 1;
  }

  else if ([v31 isEqualToString:{@"hardship", v15}])
  {
    v32 = 3;
  }

  else if ([v31 isEqualToString:@"disasterRecovery"])
  {
    v32 = 2;
  }

  else if ([v31 isEqualToString:@"termsOfUseViolation"])
  {
    v32 = 4;
  }

  else if ([v31 isEqualToString:@"fraudSuspected"])
  {
    v32 = 5;
  }

  else if ([v31 isEqualToString:@"fraudConfirmed"])
  {
    v32 = 6;
  }

  else if ([v31 isEqualToString:@"fraudConfirmedCustomer"])
  {
    v32 = 7;
  }

  else if ([v31 isEqualToString:@"chargedOff"])
  {
    v32 = 8;
  }

  else if ([v31 isEqualToString:@"securityDowngrade"])
  {
    v32 = 9;
  }

  else if ([v31 isEqualToString:@"embargoRecovery"])
  {
    v32 = 10;
  }

  else if ([v31 isEqualToString:@"mergeComplete"])
  {
    v32 = 12;
  }

  else if ([v31 isEqualToString:@"merging"])
  {
    v32 = 11;
  }

  else if ([v31 isEqualToString:@"removed"])
  {
    v32 = 13;
  }

  else if ([v31 isEqualToString:@"mergeInitiated"])
  {
    v32 = 14;
  }

  else if ([v31 isEqualToString:@"bankruptcy"])
  {
    v32 = 15;
  }

  else
  {
    v32 = 0;
  }

  v7->_stateReason = v32;
  v33 = [dictionaryCopy PKStringForKey:@"accessLevel"];
  v7->_accessLevel = PKAccountAccessLevelFromString(v33);

  v7->_blockAllAccountAccess = [dictionaryCopy PKBoolForKey:@"blockAllAccountAccess"];
  v7->_blockNotifications = [dictionaryCopy PKBoolForKey:@"blockNotifications"];
  v34 = [dictionaryCopy PKStringForKey:@"altDSID"];
  altDSID = v7->_altDSID;
  v7->_altDSID = v34;

  v7->_sharedAccount = [dictionaryCopy PKBoolForKey:@"isSharedAccount"];
  v36 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"previousAccountIdentifiers"];
  previousAccountIdentifiers = v7->_previousAccountIdentifiers;
  v7->_previousAccountIdentifiers = v36;

  v38 = [dictionaryCopy PKSetForKey:@"supportedFeatures"];
  v39 = [MEMORY[0x1E695DFA8] set];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v40 = v38;
  v41 = [v40 countByEnumeratingWithState:&v63 objects:v68 count:16];
  if (!v41)
  {
    goto LABEL_64;
  }

  v42 = v41;
  v43 = *v64;
  do
  {
    for (i = 0; i != v42; ++i)
    {
      if (*v64 != v43)
      {
        objc_enumerationMutation(v40);
      }

      type = v7->_type;
      switch(type)
      {
        case 1uLL:
          v46 = off_1E79BF928;
          break;
        case 4uLL:
          v46 = off_1E79C1770;
          break;
        case 3uLL:
          v46 = off_1E79BF3C8;
          break;
        default:
          continue;
      }

      v47 = [objc_alloc(*v46) initWithDictionary:*(*(&v63 + 1) + 8 * i)];
      [v39 addObject:v47];
    }

    v42 = [v40 countByEnumeratingWithState:&v63 objects:v68 count:16];
  }

  while (v42);
LABEL_64:

  v48 = [v39 copy];
  supportedFeatures = v7->_supportedFeatures;
  v7->_supportedFeatures = v48;

  v50 = [PKAccountAdditionalPushTopics alloc];
  v51 = [dictionaryCopy PKDictionaryForKey:@"additionalPushTopics"];
  v52 = [(PKAccountAdditionalPushTopics *)v50 initWithDictionary:v51];
  additionalPushTopics = v7->_additionalPushTopics;
  v7->_additionalPushTopics = v52;

  v54 = [PKAccountFetchPeriods alloc];
  v55 = [dictionaryCopy PKDictionaryForKey:@"proactiveFetchPeriods"];
  v56 = [(PKAccountFetchPeriods *)v54 initWithDictionary:v55];
  fetchPeriods = v7->_fetchPeriods;
  v7->_fetchPeriods = v56;

  v58 = [dictionaryCopy PKDictionaryForKey:@"extendedAccountDetails"];
  if (v58)
  {
    [(PKAccountDetails *)v7->_details ingestExtendedAccountDetails:v58];
  }

  v59 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"cloudStoreZoneNames"];
  cloudStoreZoneNames = v7->_cloudStoreZoneNames;
  v7->_cloudStoreZoneNames = v59;

LABEL_67:
  v14 = v7;
LABEL_68:

  return v14;
}

- (id)associatedPassUniqueID
{
  type = self->_type;
  if (type == 3)
  {
    appleBalanceDetails = [(PKAccount *)self appleBalanceDetails];
    goto LABEL_5;
  }

  if (type == 1)
  {
    appleBalanceDetails = [(PKAccount *)self creditDetails];
LABEL_5:
    v4 = appleBalanceDetails;
    if (appleBalanceDetails)
    {
      associatedPassTypeIdentifier = [appleBalanceDetails associatedPassTypeIdentifier];
      associatedPassSerialNumber = [v4 associatedPassSerialNumber];
      v7 = PKGeneratePassUniqueID(associatedPassTypeIdentifier, associatedPassSerialNumber);
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_10;
  }

  v7 = 0;
LABEL_10:

  return v7;
}

- (id)createdDate
{
  type = self->_type;
  switch(type)
  {
    case 4uLL:
      savingsDetails = [(PKAccount *)self savingsDetails];
      goto LABEL_7;
    case 3uLL:
      savingsDetails = [(PKAccount *)self appleBalanceDetails];
      goto LABEL_7;
    case 1uLL:
      savingsDetails = [(PKAccount *)self creditDetails];
LABEL_7:
      v4 = savingsDetails;
      createdDate = [savingsDetails createdDate];

      goto LABEL_9;
  }

  createdDate = 0;
LABEL_9:

  return createdDate;
}

- (id)productTimeZone
{
  type = self->_type;
  if (type == 4)
  {
    savingsDetails = [(PKAccount *)self savingsDetails];
    goto LABEL_5;
  }

  if (type == 1)
  {
    savingsDetails = [(PKAccount *)self creditDetails];
LABEL_5:
    v4 = savingsDetails;
    productTimeZone = [savingsDetails productTimeZone];

    goto LABEL_7;
  }

  productTimeZone = 0;
LABEL_7:

  return productTimeZone;
}

- (id)analyticsEventAccountType
{
  if (self->_coOwner)
  {
    v3 = PKAnalyticsReportEventTypeAccountTypeCoOwner;
    goto LABEL_7;
  }

  accessLevel = self->_accessLevel;
  if (accessLevel == 1)
  {
    v3 = PKAnalyticsReportEventTypeAccountTypePrimary;
LABEL_7:
    v5 = *v3;

    return v5;
  }

  if (accessLevel == 2)
  {
    v3 = PKAnalyticsReportEventTypeAccountTypeParticipant;
    goto LABEL_7;
  }

  v5 = 0;

  return v5;
}

+ (id)analyticsAccountTypeForAccount:(id)account
{
  if (account)
  {
    analyticsEventAccountType = [account analyticsEventAccountType];
  }

  else
  {
    analyticsEventAccountType = @"new";
  }

  return analyticsEventAccountType;
}

- (NSSet)allAccountIdentifiers
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = v3;
  if (self->_accountIdentifier)
  {
    [v3 addObject:?];
  }

  if ([(NSSet *)self->_previousAccountIdentifiers count])
  {
    [v4 unionSet:self->_previousAccountIdentifiers];
  }

  v5 = [v4 copy];

  return v5;
}

- (id)updateUserInfoBaseURL
{
  applyServiceURL = self->_applyServiceURL;
  if (applyServiceURL)
  {
    applyServiceURL = [applyServiceURL URLByAppendingPathComponent:@"updateUserInfo"];
    v2 = vars8;
  }

  return applyServiceURL;
}

- (id)cardAvailabilityInfo
{
  v3 = [PKAccountCardAvailabilityInfo alloc];
  state = [(PKAccount *)self state];
  type = [(PKAccount *)self type];
  supportedFeatures = [(PKAccount *)self supportedFeatures];
  v7 = [(PKAccountCardAvailabilityInfo *)v3 initWithAccountState:state accountType:type supportedFeatures:supportedFeatures];

  return v7;
}

- (PKAccount)initWithCoder:(id)coder
{
  v44[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v43.receiver = self;
  v43.super_class = PKAccount;
  v5 = [(PKAccount *)&v43 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountBaseURL"];
    accountBaseURL = v5->_accountBaseURL;
    v5->_accountBaseURL = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applyServiceURL"];
    applyServiceURL = v5->_applyServiceURL;
    v5->_applyServiceURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentServicesBaseURL"];
    paymentServicesBaseURL = v5->_paymentServicesBaseURL;
    v5->_paymentServicesBaseURL = v12;

    v5->_feature = [coderCopy decodeIntegerForKey:@"feature"];
    v5->_type = [coderCopy decodeIntegerForKey:@"accountType"];
    v5->_state = [coderCopy decodeIntegerForKey:@"state"];
    v5->_stateReason = [coderCopy decodeIntegerForKey:@"stateReason"];
    v5->_accessLevel = [coderCopy decodeIntegerForKey:@"accessLevel"];
    v5->_blockAllAccountAccess = [coderCopy decodeBoolForKey:@"blockAllAccountAccess"];
    v5->_blockNotifications = [coderCopy decodeBoolForKey:@"blockNotifications"];
    v5->_isCloudAccount = [coderCopy decodeBoolForKey:@"isCloudAccount"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v14;

    v5->_coOwner = [coderCopy decodeBoolForKey:@"coOwner"];
    v5->_sharedAccount = [coderCopy decodeBoolForKey:@"isSharedAccount"];
    v16 = objc_alloc(MEMORY[0x1E695DFD8]);
    v17 = objc_opt_class();
    v18 = [v16 initWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"previousAccountIdentifiers"];
    previousAccountIdentifiers = v5->_previousAccountIdentifiers;
    v5->_previousAccountIdentifiers = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdated"];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v21;

    type = v5->_type;
    if (type == 1 || type == 4 || type == 3)
    {
      v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountDetails"];
      details = v5->_details;
      v5->_details = v24;

      v26 = MEMORY[0x1E695DFD8];
      v27 = objc_opt_class();
      v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
      v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"supportedFeatures"];
      supportedFeatures = v5->_supportedFeatures;
      v5->_supportedFeatures = v29;
    }

    v5->_accountStateDirty = [coderCopy decodeBoolForKey:@"accountStateDirty"];
    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"additionalPushTopics"];
    additionalPushTopics = v5->_additionalPushTopics;
    v5->_additionalPushTopics = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proactiveFetchPeriods"];
    fetchPeriods = v5->_fetchPeriods;
    v5->_fetchPeriods = v33;

    v35 = MEMORY[0x1E695DFD8];
    v44[0] = objc_opt_class();
    v44[1] = objc_opt_class();
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
    v37 = [v35 setWithArray:v36];
    v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"cloudStoreZoneNames"];
    cloudStoreZoneNames = v5->_cloudStoreZoneNames;
    v5->_cloudStoreZoneNames = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionSourceIdentifier"];
    transactionSourceIdentifier = v5->_transactionSourceIdentifier;
    v5->_transactionSourceIdentifier = v40;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  accountIdentifier = self->_accountIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:accountIdentifier forKey:@"accountIdentifier"];
  [coderCopy encodeObject:self->_accountBaseURL forKey:@"accountBaseURL"];
  [coderCopy encodeObject:self->_applyServiceURL forKey:@"applyServiceURL"];
  [coderCopy encodeObject:self->_paymentServicesBaseURL forKey:@"paymentServicesBaseURL"];
  [coderCopy encodeInteger:self->_feature forKey:@"feature"];
  [coderCopy encodeInteger:self->_type forKey:@"accountType"];
  [coderCopy encodeInteger:self->_state forKey:@"state"];
  [coderCopy encodeInteger:self->_stateReason forKey:@"stateReason"];
  [coderCopy encodeBool:self->_blockAllAccountAccess forKey:@"blockAllAccountAccess"];
  [coderCopy encodeBool:self->_blockNotifications forKey:@"blockNotifications"];
  [coderCopy encodeBool:self->_isCloudAccount forKey:@"isCloudAccount"];
  [coderCopy encodeObject:self->_altDSID forKey:@"altDSID"];
  [coderCopy encodeBool:self->_coOwner forKey:@"coOwner"];
  [coderCopy encodeBool:self->_sharedAccount forKey:@"isSharedAccount"];
  [coderCopy encodeObject:self->_previousAccountIdentifiers forKey:@"previousAccountIdentifiers"];
  [coderCopy encodeInteger:self->_accessLevel forKey:@"accessLevel"];
  [coderCopy encodeObject:self->_lastUpdated forKey:@"lastUpdated"];
  [coderCopy encodeObject:self->_details forKey:@"accountDetails"];
  [coderCopy encodeObject:self->_supportedFeatures forKey:@"supportedFeatures"];
  [coderCopy encodeBool:self->_accountStateDirty forKey:@"accountStateDirty"];
  [coderCopy encodeObject:self->_additionalPushTopics forKey:@"additionalPushTopics"];
  [coderCopy encodeObject:self->_fetchPeriods forKey:@"proactiveFetchPeriods"];
  [coderCopy encodeObject:self->_cloudStoreZoneNames forKey:@"cloudStoreZoneNames"];
  [coderCopy encodeObject:self->_transactionSourceIdentifier forKey:@"transactionSourceIdentifier"];
}

- (BOOL)isContentEqualToAccount:(id)account
{
  accountCopy = account;
  if (!accountCopy)
  {
    goto LABEL_63;
  }

  accountIdentifier = self->_accountIdentifier;
  v6 = accountCopy[2];
  if (accountIdentifier)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (accountIdentifier != v6)
    {
      goto LABEL_63;
    }
  }

  else if (([(NSString *)accountIdentifier isEqual:?]& 1) == 0)
  {
    goto LABEL_63;
  }

  accountBaseURL = self->_accountBaseURL;
  v9 = accountCopy[3];
  if (accountBaseURL && v9)
  {
    if (([(NSURL *)accountBaseURL isEqual:?]& 1) == 0)
    {
      goto LABEL_63;
    }
  }

  else if (accountBaseURL != v9)
  {
    goto LABEL_63;
  }

  applyServiceURL = self->_applyServiceURL;
  v11 = accountCopy[5];
  if (applyServiceURL && v11)
  {
    if (([(NSURL *)applyServiceURL isEqual:?]& 1) == 0)
    {
      goto LABEL_63;
    }
  }

  else if (applyServiceURL != v11)
  {
    goto LABEL_63;
  }

  paymentServicesBaseURL = self->_paymentServicesBaseURL;
  v13 = accountCopy[4];
  if (paymentServicesBaseURL && v13)
  {
    if (([(NSURL *)paymentServicesBaseURL isEqual:?]& 1) == 0)
    {
      goto LABEL_63;
    }
  }

  else if (paymentServicesBaseURL != v13)
  {
    goto LABEL_63;
  }

  details = self->_details;
  v15 = accountCopy[8];
  if (details && v15)
  {
    if (![(PKAccountDetails *)details isEqual:?])
    {
      goto LABEL_63;
    }
  }

  else if (details != v15)
  {
    goto LABEL_63;
  }

  if (self->_feature != accountCopy[6] || self->_type != accountCopy[7] || self->_state != accountCopy[9] || self->_stateReason != accountCopy[10] || self->_accessLevel != accountCopy[11] || self->_blockAllAccountAccess != *(accountCopy + 9) || self->_blockNotifications != *(accountCopy + 8) || self->_isCloudAccount != *(accountCopy + 10))
  {
    goto LABEL_63;
  }

  altDSID = self->_altDSID;
  v17 = accountCopy[12];
  if (altDSID && v17)
  {
    if (([(NSString *)altDSID isEqual:?]& 1) == 0)
    {
      goto LABEL_63;
    }
  }

  else if (altDSID != v17)
  {
    goto LABEL_63;
  }

  if (self->_coOwner != *(accountCopy + 11) || self->_sharedAccount != *(accountCopy + 12))
  {
    goto LABEL_63;
  }

  previousAccountIdentifiers = self->_previousAccountIdentifiers;
  v19 = accountCopy[13];
  if (previousAccountIdentifiers && v19)
  {
    if (([(NSSet *)previousAccountIdentifiers isEqual:?]& 1) == 0)
    {
      goto LABEL_63;
    }
  }

  else if (previousAccountIdentifiers != v19)
  {
    goto LABEL_63;
  }

  if (self->_accountStateDirty != *(accountCopy + 13))
  {
    goto LABEL_63;
  }

  supportedFeatures = self->_supportedFeatures;
  v21 = accountCopy[14];
  if (supportedFeatures && v21)
  {
    if (([(NSSet *)supportedFeatures isEqual:?]& 1) == 0)
    {
      goto LABEL_63;
    }
  }

  else if (supportedFeatures != v21)
  {
    goto LABEL_63;
  }

  additionalPushTopics = self->_additionalPushTopics;
  v23 = accountCopy[15];
  if (!additionalPushTopics || !v23)
  {
    if (additionalPushTopics == v23)
    {
      goto LABEL_59;
    }

LABEL_63:
    v26 = 0;
    goto LABEL_64;
  }

  if (![(PKAccountAdditionalPushTopics *)additionalPushTopics isEqual:?])
  {
    goto LABEL_63;
  }

LABEL_59:
  fetchPeriods = self->_fetchPeriods;
  v25 = accountCopy[16];
  if (fetchPeriods && v25)
  {
    v26 = [(PKAccountFetchPeriods *)fetchPeriods isEqual:?];
  }

  else
  {
    v26 = fetchPeriods == v25;
  }

LABEL_64:

  return v26;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_68;
  }

  accountIdentifier = self->_accountIdentifier;
  v6 = equalCopy[2];
  if (accountIdentifier && v6)
  {
    if (([(NSString *)accountIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_68;
    }
  }

  else if (accountIdentifier != v6)
  {
    goto LABEL_68;
  }

  accountBaseURL = self->_accountBaseURL;
  v8 = equalCopy[3];
  if (accountBaseURL && v8)
  {
    if (([(NSURL *)accountBaseURL isEqual:?]& 1) == 0)
    {
      goto LABEL_68;
    }
  }

  else if (accountBaseURL != v8)
  {
    goto LABEL_68;
  }

  applyServiceURL = self->_applyServiceURL;
  v10 = equalCopy[5];
  if (applyServiceURL && v10)
  {
    if (([(NSURL *)applyServiceURL isEqual:?]& 1) == 0)
    {
      goto LABEL_68;
    }
  }

  else if (applyServiceURL != v10)
  {
    goto LABEL_68;
  }

  paymentServicesBaseURL = self->_paymentServicesBaseURL;
  v12 = equalCopy[4];
  if (paymentServicesBaseURL && v12)
  {
    if (([(NSURL *)paymentServicesBaseURL isEqual:?]& 1) == 0)
    {
      goto LABEL_68;
    }
  }

  else if (paymentServicesBaseURL != v12)
  {
    goto LABEL_68;
  }

  details = self->_details;
  v14 = equalCopy[8];
  if (details && v14)
  {
    if (![(PKAccountDetails *)details isEqual:?])
    {
      goto LABEL_68;
    }
  }

  else if (details != v14)
  {
    goto LABEL_68;
  }

  if (self->_feature == equalCopy[6])
  {
    lastUpdated = self->_lastUpdated;
    v16 = equalCopy[17];
    if (lastUpdated && v16)
    {
      if (([(NSDate *)lastUpdated isEqual:?]& 1) == 0)
      {
        goto LABEL_68;
      }
    }

    else if (lastUpdated != v16)
    {
      goto LABEL_68;
    }

    if (self->_type != equalCopy[7] || self->_state != equalCopy[9] || self->_stateReason != equalCopy[10] || self->_accessLevel != equalCopy[11] || self->_blockAllAccountAccess != *(equalCopy + 9) || self->_blockNotifications != *(equalCopy + 8) || self->_isCloudAccount != *(equalCopy + 10))
    {
      goto LABEL_68;
    }

    altDSID = self->_altDSID;
    v18 = equalCopy[12];
    if (altDSID && v18)
    {
      if (([(NSString *)altDSID isEqual:?]& 1) == 0)
      {
        goto LABEL_68;
      }
    }

    else if (altDSID != v18)
    {
      goto LABEL_68;
    }

    if (self->_coOwner != *(equalCopy + 11) || self->_sharedAccount != *(equalCopy + 12))
    {
      goto LABEL_68;
    }

    previousAccountIdentifiers = self->_previousAccountIdentifiers;
    v20 = equalCopy[13];
    if (previousAccountIdentifiers && v20)
    {
      if (([(NSSet *)previousAccountIdentifiers isEqual:?]& 1) == 0)
      {
        goto LABEL_68;
      }
    }

    else if (previousAccountIdentifiers != v20)
    {
      goto LABEL_68;
    }

    if (self->_accountStateDirty == *(equalCopy + 13))
    {
      supportedFeatures = self->_supportedFeatures;
      v22 = equalCopy[14];
      if (supportedFeatures && v22)
      {
        if (([(NSSet *)supportedFeatures isEqual:?]& 1) == 0)
        {
          goto LABEL_68;
        }
      }

      else if (supportedFeatures != v22)
      {
        goto LABEL_68;
      }

      additionalPushTopics = self->_additionalPushTopics;
      v24 = equalCopy[15];
      if (additionalPushTopics && v24)
      {
        if ([(PKAccountAdditionalPushTopics *)additionalPushTopics isEqual:?])
        {
LABEL_61:
          cloudStoreZoneNames = [(PKAccount *)self cloudStoreZoneNames];
          cloudStoreZoneNames2 = [equalCopy cloudStoreZoneNames];
          v27 = cloudStoreZoneNames2;
          if (cloudStoreZoneNames && cloudStoreZoneNames2)
          {
            if ([cloudStoreZoneNames isEqual:cloudStoreZoneNames2])
            {
LABEL_64:
              fetchPeriods = self->_fetchPeriods;
              v29 = equalCopy[16];
              if (fetchPeriods && v29)
              {
                v30 = [(PKAccountFetchPeriods *)fetchPeriods isEqual:?];
              }

              else
              {
                v30 = fetchPeriods == v29;
              }

              goto LABEL_73;
            }
          }

          else if (cloudStoreZoneNames == cloudStoreZoneNames2)
          {
            goto LABEL_64;
          }

          v30 = 0;
LABEL_73:

          goto LABEL_69;
        }
      }

      else if (additionalPushTopics == v24)
      {
        goto LABEL_61;
      }
    }
  }

LABEL_68:
  v30 = 0;
LABEL_69:

  return v30;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"accountIdentifier: '%@'; ", self->_accountIdentifier];
  [v3 appendFormat:@"accountBaseURL: '%@'; ", self->_accountBaseURL];
  [v3 appendFormat:@"applyServiceURL: '%@'; ", self->_applyServiceURL];
  [v3 appendFormat:@"paymentServicesBaseURL: '%@'; ", self->_paymentServicesBaseURL];
  v4 = PKFeatureIdentifierToString(self->_feature);
  [v3 appendFormat:@"feature: '%@'; ", v4];

  type = self->_type;
  if (type > 4)
  {
    v6 = @"unknown";
  }

  else
  {
    v6 = off_1E79CB660[type];
  }

  [v3 appendFormat:@"type: '%@'; ", v6];
  v7 = PKAccountStateToString(self->_state);
  [v3 appendFormat:@"state: '%@'; ", v7];

  v8 = PKAccountStateReasonToString(self->_stateReason);
  [v3 appendFormat:@"stateReason: '%@'; ", v8];

  accessLevel = self->_accessLevel;
  if (accessLevel > 2)
  {
    v10 = @"unknown";
  }

  else
  {
    v10 = off_1E79CB648[accessLevel];
  }

  [v3 appendFormat:@"accessLevel: '%@'; ", v10];
  v11 = [(PKAccountDetails *)self->_details description];
  [v3 appendFormat:@"details: '%@'; ", v11];

  if ([(NSSet *)self->_supportedFeatures count])
  {
    v12 = [(NSSet *)self->_supportedFeatures description];
    [v3 appendFormat:@"supported features: '%@'; ", v12];
  }

  if (self->_accountStateDirty)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  [v3 appendFormat:@"dirty: '%@'; ", v13];
  if (self->_isCloudAccount)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  [v3 appendFormat:@"is cloud account: '%@'; ", v14];
  if (self->_type == 1)
  {
    if (self->_blockAllAccountAccess)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    [v3 appendFormat:@"block all account access: '%@'; ", v15];
    if (self->_blockNotifications)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    [v3 appendFormat:@"block notifications: '%@'; ", v16];
    [v3 appendFormat:@"altDSID: '%@'; ", self->_altDSID];
    if (self->_sharedAccount)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    [v3 appendFormat:@"shared account: '%@'; ", v17];
    [v3 appendFormat:@"previousAccountIdentifiers: '%@'; ", self->_previousAccountIdentifiers];
    if (self->_coOwner)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    [v3 appendFormat:@"coOwner: '%@'; ", v18];
  }

  [v3 appendFormat:@"cloudStoreZoneNames: '%@'; ", self->_cloudStoreZoneNames];
  v19 = [(NSDate *)self->_lastUpdated description];
  [v3 appendFormat:@"last update: '%@'; ", v19];

  v20 = [(PKAccountAdditionalPushTopics *)self->_additionalPushTopics description];
  [v3 appendFormat:@"additional push topics: '%@'; ", v20];

  v21 = [(PKAccountFetchPeriods *)self->_fetchPeriods description];
  [v3 appendFormat:@"fetch periods: '%@'; ", v21];

  [v3 appendFormat:@"source identifier: '%@'; ", self->_transactionSourceIdentifier];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = [+[PKAccount allocWithZone:](PKAccount init];
  v6 = [(NSString *)self->_accountIdentifier copyWithZone:zone];
  accountIdentifier = v5->_accountIdentifier;
  v5->_accountIdentifier = v6;

  v8 = [(NSURL *)self->_accountBaseURL copyWithZone:zone];
  accountBaseURL = v5->_accountBaseURL;
  v5->_accountBaseURL = v8;

  v10 = [(NSURL *)self->_applyServiceURL copyWithZone:zone];
  applyServiceURL = v5->_applyServiceURL;
  v5->_applyServiceURL = v10;

  v12 = [(NSURL *)self->_paymentServicesBaseURL copyWithZone:zone];
  paymentServicesBaseURL = v5->_paymentServicesBaseURL;
  v5->_paymentServicesBaseURL = v12;

  v5->_feature = self->_feature;
  v5->_type = self->_type;
  v5->_state = self->_state;
  v5->_stateReason = self->_stateReason;
  v5->_accessLevel = self->_accessLevel;
  v5->_blockAllAccountAccess = self->_blockAllAccountAccess;
  v5->_blockNotifications = self->_blockNotifications;
  v5->_isCloudAccount = self->_isCloudAccount;
  v5->_coOwner = self->_coOwner;
  v14 = [(NSString *)self->_altDSID copyWithZone:zone];
  altDSID = v5->_altDSID;
  v5->_altDSID = v14;

  v5->_sharedAccount = self->_sharedAccount;
  v16 = [(NSSet *)self->_previousAccountIdentifiers copyWithZone:zone];
  previousAccountIdentifiers = v5->_previousAccountIdentifiers;
  v5->_previousAccountIdentifiers = v16;

  v18 = [(PKAccountDetails *)self->_details copyWithZone:zone];
  details = v5->_details;
  v5->_details = v18;

  v20 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v21 = self->_supportedFeatures;
  v22 = [(NSSet *)v21 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v41;
    do
    {
      v25 = 0;
      do
      {
        if (*v41 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v40 + 1) + 8 * v25) copy];
        [v20 addObject:v26];

        ++v25;
      }

      while (v23 != v25);
      v23 = [(NSSet *)v21 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v23);
  }

  v27 = [MEMORY[0x1E695DFD8] setWithSet:v20];
  supportedFeatures = v5->_supportedFeatures;
  v5->_supportedFeatures = v27;

  v5->_accountStateDirty = self->_accountStateDirty;
  v29 = [(NSDate *)self->_lastUpdated copyWithZone:zone];
  lastUpdated = v5->_lastUpdated;
  v5->_lastUpdated = v29;

  v31 = [(PKAccountAdditionalPushTopics *)self->_additionalPushTopics copyWithZone:zone];
  additionalPushTopics = v5->_additionalPushTopics;
  v5->_additionalPushTopics = v31;

  v33 = [(PKAccountFetchPeriods *)self->_fetchPeriods copyWithZone:zone];
  fetchPeriods = v5->_fetchPeriods;
  v5->_fetchPeriods = v33;

  v35 = [(NSArray *)self->_cloudStoreZoneNames copyWithZone:zone];
  cloudStoreZoneNames = v5->_cloudStoreZoneNames;
  v5->_cloudStoreZoneNames = v35;

  v37 = [(NSString *)self->_transactionSourceIdentifier copyWithZone:zone];
  transactionSourceIdentifier = v5->_transactionSourceIdentifier;
  v5->_transactionSourceIdentifier = v37;

  return v5;
}

- (void)updateWithCloudStoreRecord:(id)record
{
  v4 = [record recordsWithRecordType:@"Account"];
  firstObject = [v4 firstObject];

  if (firstObject)
  {
    v6 = [firstObject pk_stringForKey:@"featureIdentifier"];
    v7 = PKFeatureIdentifierFromString(v6);

    if (v7 == 4)
    {
      v8 = [firstObject pk_encryptedObjectForKey:@"balanceAmount" ofClass:objc_opt_class()];
      v9 = v8;
      v10 = MEMORY[0x1E696AB90];
      if (v8)
      {
        [v8 decimalValue];
      }

      else
      {
        v14[0] = 0;
        v14[1] = 0;
        v15 = 0;
      }

      v11 = [v10 decimalNumberWithDecimal:v14];
      if (v11)
      {
        appleBalanceDetails = [(PKAccount *)self appleBalanceDetails];
        accountSummary = [appleBalanceDetails accountSummary];

        [accountSummary setCurrentBalance:v11];
      }
    }
  }
}

- (PKAccount)initWithCloudStoreCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PKAccount;
  v5 = [(PKAccount *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PKAccount *)v5 applyPropertiesFromCloudStoreRecord:coderCopy];
  }

  return v6;
}

- (void)applyPropertiesFromCloudStoreRecord:(id)record
{
  v4 = [record recordsWithRecordType:@"Account"];
  firstObject = [v4 firstObject];

  v5 = firstObject;
  if (firstObject)
  {
    v6 = [firstObject pk_encryptedStringForKey:@"accountIdentifier"];
    accountIdentifier = self->_accountIdentifier;
    self->_accountIdentifier = v6;

    v8 = [firstObject pk_stringForKey:@"featureIdentifier"];
    self->_feature = PKFeatureIdentifierFromString(v8);

    v9 = [firstObject pk_stringForKey:@"accountType"];
    self->_type = PKAccountTypeFromString(v9);

    v10 = [PKAccountDetails alloc];
    v11 = self->_type - 1;
    if (v11 > 3)
    {
      v12 = 0;
    }

    else
    {
      v12 = qword_1ADB996B0[v11];
    }

    v13 = [(PKAccountDetails *)v10 initWithCloudRecord:firstObject type:v12];
    details = self->_details;
    self->_details = v13;

    v15 = [firstObject pk_encryptedStringForKey:@"state"];
    self->_state = PKAccountStateFromString(v15);

    *&self->_stateReason = xmmword_1ADB78CF0;
    self->_isCloudAccount = 1;
    self->_sharedAccount = 0;
    v16 = [firstObject pk_arrayForKey:@"cloudStoreZoneNames"];
    cloudStoreZoneNames = self->_cloudStoreZoneNames;
    self->_cloudStoreZoneNames = v16;

    v18 = [(PKAccount *)self _featureDescriptorsForFeature:self->_feature inCloudRecord:firstObject];
    supportedFeatures = self->_supportedFeatures;
    self->_supportedFeatures = v18;

    v5 = firstObject;
  }
}

- (void)encodeWithCloudStoreCoder:(id)coder codingType:(unint64_t)type
{
  v6 = [coder recordsWithRecordType:@"Account"];
  firstObject = [v6 firstObject];

  v7 = PKFeatureIdentifierToString(self->_feature);
  [firstObject setObject:v7 forKey:@"featureIdentifier"];

  type = self->_type;
  if (type > 4)
  {
    v9 = @"unknown";
  }

  else
  {
    v9 = off_1E79CB660[type];
  }

  [firstObject setObject:v9 forKey:@"accountType"];
  cloudStoreZoneNames = self->_cloudStoreZoneNames;
  if (cloudStoreZoneNames)
  {
    v11 = [MEMORY[0x1E696ACB0] dataWithJSONObject:cloudStoreZoneNames options:0 error:0];
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v11 encoding:4];
    [firstObject setObject:v12 forKey:@"cloudStoreZoneNames"];
  }

  encryptedValues = [firstObject encryptedValues];
  [encryptedValues setObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  v14 = PKAccountStateToString(self->_state);
  [encryptedValues setObject:v14 forKey:@"state"];

  [(PKAccountDetails *)self->_details encodeWithCloudRecord:firstObject codingType:type];
  [(PKAccount *)self _addSupportedFeaturesToEncryptedCloudRecord:firstObject];
}

- (id)recordTypesAndNamesForCodingType:(unint64_t)type
{
  v9[1] = *MEMORY[0x1E69E9840];
  v7 = @"Account";
  v3 = [objc_opt_class() recordNameForAccountIdentifier:{self->_accountIdentifier, @"Account"}];
  v8 = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  return v5;
}

+ (id)recordNameForAccountIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E696AEC0];
  identifierCopy = identifier;
  v6 = [v4 alloc];
  recordNamePrefix = [self recordNamePrefix];
  identifierCopy = [v6 initWithFormat:@"%@%@", recordNamePrefix, identifierCopy];

  return identifierCopy;
}

+ (id)accountIdentifierFromRecordName:(id)name
{
  nameCopy = name;
  recordNamePrefix = [self recordNamePrefix];
  v6 = [nameCopy hasPrefix:recordNamePrefix];

  if (v6)
  {
    recordNamePrefix2 = [self recordNamePrefix];
    v8 = [nameCopy substringFromIndex:{objc_msgSend(recordNamePrefix2, "length")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_featureDescriptorsForFeature:(unint64_t)feature inCloudRecord:(id)record
{
  recordCopy = record;
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (feature == 4)
  {
    if ([recordCopy pk_BOOLForKey:@"ampTopUpSupported"])
    {
      v7 = [[PKAppleBalanceAccountFeatureDescriptor alloc] initWithIdentifier:@"ampTopUpSupported"];
      [v6 addObject:v7];
    }

    if ([recordCopy pk_BOOLForKey:@"ampRedemptionSupported"])
    {
      v8 = [[PKAppleBalanceAccountFeatureDescriptor alloc] initWithIdentifier:@"ampRedemptionSupported"];
      [v6 addObject:v8];
    }
  }

  return v6;
}

- (void)_addSupportedFeaturesToEncryptedCloudRecord:(id)record
{
  if (self->_feature == 4)
  {
    v5 = MEMORY[0x1E696AD98];
    recordCopy = record;
    v7 = [v5 numberWithBool:{-[PKAccount supportsAMPTopUp](self, "supportsAMPTopUp")}];
    [recordCopy setObject:v7 forKey:@"ampTopUpSupported"];

    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[PKAccount supportsAMPRedeemGiftcard](self, "supportsAMPRedeemGiftcard")}];
    [recordCopy setObject:v8 forKey:@"ampRedemptionSupported"];
  }
}

- (id)_featureWithIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  supportedFeatures = [(PKAccount *)self supportedFeatures];
  v6 = [supportedFeatures countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(supportedFeatures);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [supportedFeatures countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_insertSupportedFeature:(id)feature
{
  featureCopy = feature;
  identifier = [featureCopy identifier];
  v5 = [(PKAccount *)self _featureWithIdentifier:identifier];

  if (!v5)
  {
    v6 = [(NSSet *)self->_supportedFeatures setByAddingObject:featureCopy];
    supportedFeatures = self->_supportedFeatures;
    self->_supportedFeatures = v6;
  }
}

- (void)_removeSupportedFeatureWithIdentifier:(id)identifier
{
  v4 = [(PKAccount *)self _featureWithIdentifier:identifier];
  if (v4)
  {
    v7 = v4;
    v5 = [(NSSet *)self->_supportedFeatures pk_setByRemovingObject:v4];
    supportedFeatures = self->_supportedFeatures;
    self->_supportedFeatures = v5;

    v4 = v7;
  }
}

- (BOOL)supportsSchedulePayment
{
  schedulePaymentFeatureDescriptor = [(PKAccount *)self schedulePaymentFeatureDescriptor];
  v3 = schedulePaymentFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsScheduleRecurringPayments
{
  scheduleRecurringPaymentsFeatureDescriptor = [(PKAccount *)self scheduleRecurringPaymentsFeatureDescriptor];
  v3 = scheduleRecurringPaymentsFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsViewStatement
{
  viewStatementFeatureDescriptor = [(PKAccount *)self viewStatementFeatureDescriptor];
  v3 = viewStatementFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsRequestStatement
{
  requestStatementFeatureDescriptor = [(PKAccount *)self requestStatementFeatureDescriptor];
  v3 = requestStatementFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsExportTransactionData
{
  exportTransactionDataFeatureDescriptor = [(PKAccount *)self exportTransactionDataFeatureDescriptor];
  v3 = exportTransactionDataFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsRequestPhysicalCard
{
  requestPhysicalCardFeatureDescriptor = [(PKAccount *)self requestPhysicalCardFeatureDescriptor];
  v3 = requestPhysicalCardFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsRedeemRewards
{
  redeemRewardsFeatureDescriptor = [(PKAccount *)self redeemRewardsFeatureDescriptor];
  v3 = redeemRewardsFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsShowNotifications
{
  showNotificationsFeatureDescriptor = [(PKAccount *)self showNotificationsFeatureDescriptor];
  v3 = showNotificationsFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsTransactionSyncReporting
{
  transactionSyncReportingFeatureDescriptor = [(PKAccount *)self transactionSyncReportingFeatureDescriptor];
  v3 = transactionSyncReportingFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsStatementMetadata
{
  statementMetadataFeatureDescriptor = [(PKAccount *)self statementMetadataFeatureDescriptor];
  v3 = statementMetadataFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsShowAccountSummary
{
  showAccountSummaryFeatureDescriptor = [(PKAccount *)self showAccountSummaryFeatureDescriptor];
  v3 = showAccountSummaryFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsAddFundingSource
{
  addFundingSourceFeatureDescriptor = [(PKAccount *)self addFundingSourceFeatureDescriptor];
  v3 = addFundingSourceFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsShowVirtualCard
{
  showVirtualCardFeatureDescriptor = [(PKAccount *)self showVirtualCardFeatureDescriptor];
  v3 = showVirtualCardFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsDynamicSecurityCodes
{
  dynamicSecurityCodesFeatureDescriptor = [(PKAccount *)self dynamicSecurityCodesFeatureDescriptor];
  v3 = dynamicSecurityCodesFeatureDescriptor != 0;

  return v3;
}

- (BOOL)provisioningAllowed
{
  provisioningAllowedFeatureDescriptor = [(PKAccount *)self provisioningAllowedFeatureDescriptor];
  v3 = provisioningAllowedFeatureDescriptor != 0;

  return v3;
}

- (BOOL)accountUserInvitationAllowed
{
  accountUserInvitationAllowedFeatureDescriptor = [(PKAccount *)self accountUserInvitationAllowedFeatureDescriptor];
  v3 = accountUserInvitationAllowedFeatureDescriptor != 0;

  return v3;
}

- (BOOL)showPhysicalCardExpiringSoonMessaging
{
  showPhysicalCardExpiringSoonMessagingDescriptor = [(PKAccount *)self showPhysicalCardExpiringSoonMessagingDescriptor];
  v3 = showPhysicalCardExpiringSoonMessagingDescriptor != 0;

  return v3;
}

- (BOOL)supportsPhysicalCardActivation
{
  physicalCardActivationFeatureDescriptor = [(PKAccount *)self physicalCardActivationFeatureDescriptor];
  v3 = physicalCardActivationFeatureDescriptor != 0;

  return v3;
}

- (BOOL)showBillPaymentInterest
{
  showBillPaymentInterestFeatureDescriptor = [(PKAccount *)self showBillPaymentInterestFeatureDescriptor];
  v3 = showBillPaymentInterestFeatureDescriptor != 0;

  return v3;
}

- (BOOL)showBillPaymentInterestSummary
{
  showBillPaymentInterestSummaryFeatureDescriptor = [(PKAccount *)self showBillPaymentInterestSummaryFeatureDescriptor];
  v3 = showBillPaymentInterestSummaryFeatureDescriptor != 0;

  return v3;
}

- (BOOL)hideInterestChargeClarity
{
  hideInterestChargeClarityFeatureDescriptor = [(PKAccount *)self hideInterestChargeClarityFeatureDescriptor];
  v3 = hideInterestChargeClarityFeatureDescriptor != 0;

  return v3;
}

- (BOOL)hideBillPaymentHoldTime
{
  hideBillPaymentHoldTimeFeatureDescriptor = [(PKAccount *)self hideBillPaymentHoldTimeFeatureDescriptor];
  v3 = hideBillPaymentHoldTimeFeatureDescriptor != 0;

  return v3;
}

- (BOOL)hideEnhancedDisputeDetails
{
  hideEnhancedDisputeDetailsFeatureDescriptor = [(PKAccount *)self hideEnhancedDisputeDetailsFeatureDescriptor];
  v3 = hideEnhancedDisputeDetailsFeatureDescriptor != 0;

  return v3;
}

- (BOOL)hideDisputeDetails
{
  hideDisputeDetailsFeatureDescriptor = [(PKAccount *)self hideDisputeDetailsFeatureDescriptor];
  v3 = hideDisputeDetailsFeatureDescriptor != 0;

  return v3;
}

- (BOOL)hideSpendingInsights
{
  hideSpendingInsightsFeatureDescriptor = [(PKAccount *)self hideSpendingInsightsFeatureDescriptor];
  v3 = hideSpendingInsightsFeatureDescriptor != 0;

  return v3;
}

- (BOOL)showRewardsGraph
{
  showRewardsGraphFeatureDescriptor = [(PKAccount *)self showRewardsGraphFeatureDescriptor];
  v3 = showRewardsGraphFeatureDescriptor != 0;

  return v3;
}

- (BOOL)showPaymentSheetRewards
{
  showPaymentSheetRewardsFeatureDescriptor = [(PKAccount *)self showPaymentSheetRewardsFeatureDescriptor];
  v3 = showPaymentSheetRewardsFeatureDescriptor != 0;

  return v3;
}

- (BOOL)showCardPromotions
{
  showCardPromotionsFeatureDescriptor = [(PKAccount *)self showCardPromotionsFeatureDescriptor];
  v3 = showCardPromotionsFeatureDescriptor != 0;

  return v3;
}

- (BOOL)showEnhancedMerchants
{
  showEnhancedMerchantsFeatureDescriptor = [(PKAccount *)self showEnhancedMerchantsFeatureDescriptor];
  v3 = showEnhancedMerchantsFeatureDescriptor != 0;

  return v3;
}

- (id)_creditFeatureWithIdentifier:(id)identifier
{
  v3 = [(PKAccount *)self _featureWithIdentifier:identifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)supportsTopUp
{
  if (PKAppleBalanceNativeTopUpEnabled())
  {
    return 1;
  }

  supportsTopUpFeatureDescriptor = [(PKAccount *)self supportsTopUpFeatureDescriptor];
  v3 = supportsTopUpFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsAMPTopUp
{
  supportsAMPTopUpFeatureDescriptor = [(PKAccount *)self supportsAMPTopUpFeatureDescriptor];
  v3 = supportsAMPTopUpFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsAMPRedeemGiftcard
{
  supportsAMPRedeemGiftcardFeatureDescriptor = [(PKAccount *)self supportsAMPRedeemGiftcardFeatureDescriptor];
  v3 = supportsAMPRedeemGiftcardFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsInStoreTopUp
{
  supportsInStoreTopUpFeatureDescriptor = [(PKAccount *)self supportsInStoreTopUpFeatureDescriptor];
  v3 = supportsInStoreTopUpFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsInStorePayment
{
  supportsInStorePaymentFeatureDescriptor = [(PKAccount *)self supportsInStorePaymentFeatureDescriptor];
  v3 = supportsInStorePaymentFeatureDescriptor != 0;

  return v3;
}

- (id)_appleBalanceFeatureWithIdentifier:(id)identifier
{
  v3 = [(PKAccount *)self _featureWithIdentifier:identifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (BOOL)supportsMoneyMovement
{
  if ([(PKAccount *)self supportsOneTimeDeposit]|| [(PKAccount *)self supportsOneTimeWithdrawal]|| [(PKAccount *)self supportsOneTimeDepositWithAppleCash])
  {
    return 1;
  }

  return [(PKAccount *)self supportsOneTimeWithdrawalWithAppleCash];
}

- (BOOL)supportsOneTimeDeposit
{
  oneTimeDepositFeatureDescriptor = [(PKAccount *)self oneTimeDepositFeatureDescriptor];
  v3 = oneTimeDepositFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsOneTimeWithdrawal
{
  oneTimeWithdrawalFeatureDescriptor = [(PKAccount *)self oneTimeWithdrawalFeatureDescriptor];
  v3 = oneTimeWithdrawalFeatureDescriptor != 0;

  return v3;
}

- (unint64_t)oneTimeDepositFundingSourceTypes
{
  oneTimeDepositFeatureDescriptor = [(PKAccount *)self oneTimeDepositFeatureDescriptor];
  fundingSourceTypes = [oneTimeDepositFeatureDescriptor fundingSourceTypes];

  oneTimeDepositWithAppleCashFeatureDescriptor = [(PKAccount *)self oneTimeDepositWithAppleCashFeatureDescriptor];
  fundingSourceTypes2 = [oneTimeDepositWithAppleCashFeatureDescriptor fundingSourceTypes];

  return fundingSourceTypes2 | fundingSourceTypes & 0xFFFFFFFFFFFFFFFDLL;
}

- (unint64_t)oneTimeWithdrawalFundingSourceTypes
{
  oneTimeWithdrawalFeatureDescriptor = [(PKAccount *)self oneTimeWithdrawalFeatureDescriptor];
  fundingSourceTypes = [oneTimeWithdrawalFeatureDescriptor fundingSourceTypes];

  oneTimeWithdrawalWithAppleCashFeatureDescriptor = [(PKAccount *)self oneTimeWithdrawalWithAppleCashFeatureDescriptor];
  fundingSourceTypes2 = [oneTimeWithdrawalWithAppleCashFeatureDescriptor fundingSourceTypes];

  return fundingSourceTypes2 | fundingSourceTypes & 0xFFFFFFFFFFFFFFFDLL;
}

- (BOOL)supportsOneTimeDepositWithAppleCash
{
  oneTimeDepositWithAppleCashFeatureDescriptor = [(PKAccount *)self oneTimeDepositWithAppleCashFeatureDescriptor];
  v3 = oneTimeDepositWithAppleCashFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsOneTimeWithdrawalWithAppleCash
{
  oneTimeWithdrawalWithAppleCashFeatureDescriptor = [(PKAccount *)self oneTimeWithdrawalWithAppleCashFeatureDescriptor];
  v3 = oneTimeWithdrawalWithAppleCashFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsViewSavingsStatement
{
  viewSavingsStatementFeatureDescriptor = [(PKAccount *)self viewSavingsStatementFeatureDescriptor];
  v3 = viewSavingsStatementFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsExportSavingsTransactionData
{
  exportSavingsTransactionDataFeatureDescriptor = [(PKAccount *)self exportSavingsTransactionDataFeatureDescriptor];
  v3 = exportSavingsTransactionDataFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsShowSavingsAccountSummary
{
  showSavingsAccountSummaryFeatureDescriptor = [(PKAccount *)self showSavingsAccountSummaryFeatureDescriptor];
  v3 = showSavingsAccountSummaryFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsAddBeneficiaries
{
  addBeneficiariesFeatureDescriptor = [(PKAccount *)self addBeneficiariesFeatureDescriptor];
  v3 = addBeneficiariesFeatureDescriptor != 0;

  return v3;
}

- (unint64_t)supportedContactMethodForAddingBeneficiaries
{
  addBeneficiariesFeatureDescriptor = [(PKAccount *)self addBeneficiariesFeatureDescriptor];
  contactMethod = [addBeneficiariesFeatureDescriptor contactMethod];
  if (contactMethod <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = contactMethod;
  }

  return v4;
}

- (BOOL)FDICBehaviorShowCreditRewardsHubBalance
{
  fDICBehaviorsFeatureDescriptor = [(PKAccount *)self FDICBehaviorsFeatureDescriptor];
  showCreditRewardsHubBalance = [fDICBehaviorsFeatureDescriptor showCreditRewardsHubBalance];

  return showCreditRewardsHubBalance;
}

- (BOOL)FDICBehaviorShowCreditDashboardBalance
{
  fDICBehaviorsFeatureDescriptor = [(PKAccount *)self FDICBehaviorsFeatureDescriptor];
  showCreditDashboardBalance = [fDICBehaviorsFeatureDescriptor showCreditDashboardBalance];

  return showCreditDashboardBalance;
}

- (BOOL)FDICBehaviorShowSettingsBalance
{
  fDICBehaviorsFeatureDescriptor = [(PKAccount *)self FDICBehaviorsFeatureDescriptor];
  showSettingsBalance = [fDICBehaviorsFeatureDescriptor showSettingsBalance];

  return showSettingsBalance;
}

- (BOOL)FDICBehaviorHideCreditRewardsHubSignage
{
  fDICBehaviorsFeatureDescriptor = [(PKAccount *)self FDICBehaviorsFeatureDescriptor];
  hideCreditRewardsHubSignage = [fDICBehaviorsFeatureDescriptor hideCreditRewardsHubSignage];

  return hideCreditRewardsHubSignage;
}

- (BOOL)FDICBehaviorHideAuthenticationInterstitial
{
  fDICBehaviorsFeatureDescriptor = [(PKAccount *)self FDICBehaviorsFeatureDescriptor];
  hideAuthenticationInterstitial = [fDICBehaviorsFeatureDescriptor hideAuthenticationInterstitial];

  return hideAuthenticationInterstitial;
}

- (BOOL)supportsViewTaxDocuments
{
  viewTaxDocumentsFeatureDescriptor = [(PKAccount *)self viewTaxDocumentsFeatureDescriptor];
  v3 = viewTaxDocumentsFeatureDescriptor != 0;

  return v3;
}

- (BOOL)supportsAccountBalanceEventReportingForLocation:(id)location
{
  v15 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  accountBalanceEventReportingFeatureDescriptor = [(PKAccount *)self accountBalanceEventReportingFeatureDescriptor];
  v6 = accountBalanceEventReportingFeatureDescriptor;
  if (locationCopy && accountBalanceEventReportingFeatureDescriptor)
  {
    accountLocations = [accountBalanceEventReportingFeatureDescriptor accountLocations];
    v8 = [accountLocations containsObject:locationCopy];
  }

  else
  {
    v9 = PKLogFacilityTypeGetObject(0xFuLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218240;
      v12 = v6 == 0;
      v13 = 2048;
      v14 = locationCopy == 0;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Either feature descriptor (%ld) or location (%ld) was nil when checking supported balance access locations", &v11, 0x16u);
    }

    v8 = 0;
  }

  return v8;
}

- (id)_savingsFeatureWithIdentifier:(id)identifier
{
  v3 = [(PKAccount *)self _featureWithIdentifier:identifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

@end