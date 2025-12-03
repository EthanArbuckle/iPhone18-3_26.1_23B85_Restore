@interface PKSecureElementPass
+ (id)displayableErrorForAction:(id)action andReason:(unint64_t)reason;
+ (id)displayableErrorForTransitAction:(id)action andReason:(unint64_t)reason;
+ (id)displayableNoPaymentNetworkErrorMessageForAction:(id)action isTransit:(BOOL)transit;
- (BOOL)areCredentialsStoredInKML;
- (BOOL)availableForAutomaticPresentationUsingBeaconContext;
- (BOOL)availableForAutomaticPresentationUsingInAppOrWebContext;
- (BOOL)availableForAutomaticPresentationUsingVASContext;
- (BOOL)canPerformAction:(id)action unableReason:(unint64_t *)reason displayableError:(id *)error;
- (BOOL)hadMerchantTokens;
- (BOOL)hasActiveVirtualCard;
- (BOOL)hasActiveVirtualCardAccordingToWebService:(id)service;
- (BOOL)hasContactlessDevicePaymentApplicationsAvailable;
- (BOOL)hasCredentials;
- (BOOL)hasDeviceTransactionSourceIdentifier:(id)identifier;
- (BOOL)hasImmediateAutomaticSelectionCriterion;
- (BOOL)hasLegacyBalanceModel;
- (BOOL)hasMerchantTokens;
- (BOOL)isAccessPass;
- (BOOL)isAutoTopEnabled;
- (BOOL)isAutoTopUpBalance:(id)balance;
- (BOOL)isCarKeyPass;
- (BOOL)isChinaTransitCredential;
- (BOOL)isContactlessPaymentSupportedForTransitNetworks:(id)networks;
- (BOOL)isDevicePrimaryPaymentApplicationPersonalized;
- (BOOL)isEMoneyPass;
- (BOOL)isEqualToPassIncludingMetadata:(id)metadata;
- (BOOL)isHomeKeyPass;
- (BOOL)isHybridIdentityPass;
- (BOOL)isOctopusPass;
- (BOOL)isPrecursorPass:(id)pass;
- (BOOL)isPrepaidPass;
- (BOOL)isPrivateLabel;
- (BOOL)isStoredValuePass;
- (BOOL)isSuicaPass;
- (BOOL)isTransitPass;
- (BOOL)needsHardcodedReminderOptions;
- (BOOL)preventsWalletDeletion;
- (BOOL)requiresFelicaSecureElement;
- (BOOL)shouldDisplayDeviceAssessmentEducationAccordingToService:(id)service;
- (BOOL)shouldIgnoreTransactionUpdatesSwitch;
- (BOOL)shouldRampBacklight;
- (BOOL)shouldSuppressNoChargeAmount;
- (BOOL)supportsBarcodePayment;
- (BOOL)supportsDeviceAssessmentAccordingToService:(id)service;
- (BOOL)supportsFeatureForCurrentDevice:(unint64_t)device;
- (BOOL)supportsOnlyTransit;
- (BOOL)supportsVirtualCardNumber;
- (BOOL)supportsVirtualCardNumberAccordingToWebService:(id)service;
- (BOOL)supportsWebPaymentMode:(int64_t)mode withExclusionList:(id)list clientOSVersion:(id)version;
- (NSArray)availableActions;
- (NSArray)upgradeRequests;
- (NSSet)deviceInAppPaymentApplications;
- (NSSet)devicePaymentApplications;
- (NSString)accessReportingType;
- (NSString)appURLScheme;
- (NSString)cobrandName;
- (NSString)customerServiceIdentifier;
- (NSString)deviceAccountIdentifier;
- (NSString)deviceAccountNumberSuffix;
- (NSString)devicePassIdentifier;
- (NSString)localizedSuspendedReason;
- (NSString)messagePushTopic;
- (NSString)pairedTerminalIdentifier;
- (NSString)shippingAddressSeed;
- (NSString)speakableMake;
- (NSString)speakableModel;
- (NSString)transactionPushTopic;
- (NSURL)messageServiceRegistrationURL;
- (NSURL)messageServiceURL;
- (NSURL)transactionServiceRegistrationURL;
- (NSURL)transactionServiceURL;
- (PKCurrencyAmount)peerPaymentBalance;
- (PKPassAuxiliaryRegistrationRequirements)auxiliaryRegistrationRequirements;
- (PKPaymentApplication)devicePrimaryBarcodePaymentApplication;
- (PKPaymentApplication)devicePrimaryContactlessPaymentApplication;
- (PKPaymentApplication)devicePrimaryInAppPaymentApplication;
- (PKPaymentApplication)devicePrimaryPaymentApplication;
- (PKSecureElementPass)initWithCoder:(id)coder;
- (PKSecureElementPass)initWithDictionary:(id)dictionary bundle:(id)bundle;
- (PKSecureElementPassActivationState)passActivationState;
- (PKSiriIntentsConfiguration)supportedSiriIntents;
- (PKTransitPassProperties)transitProperties;
- (id)_appletStateOverrideForAID:(id)d ofType:(unint64_t)type;
- (id)_deviceSubcredentialEndpointIdentifiers;
- (id)_launchURLForPassAction:(id)action;
- (id)_passCredentialFilesWithPrefix:(id)prefix extension:(id)extension forSecureElementIdentifiers:(id)identifiers;
- (id)_passSubcredentialFilesWithPrefix:(id)prefix extension:(id)extension forSecureElementIdentifiers:(id)identifiers;
- (id)_transactionServiceURLOverride;
- (id)actionGroups;
- (id)actionLocalizations;
- (id)addValueURL;
- (id)appletStateMessageOverrideOfType:(unint64_t)type;
- (id)autoTopUpBalanceIdentifiers;
- (id)autoTopUpMerchantTokenIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deviceContactlessPaymentApplications;
- (id)devicePaymentApplicationForAID:(id)d;
- (id)deviceTransactionSourceIdentifiers;
- (id)dynamicLayerConfiguration;
- (id)eligibleExpressUpgradeRequestsForDeviceClass:(id)class deviceSEIDs:(id)ds deviceVersion:(id)version technologyTest:(id)test;
- (id)longTermPrivacyKeyGroupIdentifier;
- (id)notificationCenterTitle;
- (id)paymentApplicationForAID:(id)d;
- (id)paymentApplicationsForSecureElementIdentifiers:(id)identifiers;
- (id)precursorUpgradeRequestsForDeviceSEIDs:(id)ds deviceClass:(id)class deviceVersion:(id)version;
- (id)primaryPaymentApplicationForSecureElementIdentifiers:(id)identifiers;
- (id)sanitizedDeviceAccountNumber;
- (id)transitCommutePlans;
- (id)virtualCardSuffix;
- (int64_t)accessType;
- (int64_t)effectiveContactlessPaymentApplicationState;
- (int64_t)effectiveInAppPaymentApplicationState;
- (int64_t)identityType;
- (int64_t)paymentType;
- (unint64_t)contactlessActivationState;
- (unint64_t)supportedRadioTechnologies;
- (unint64_t)transitCommutePlanType;
- (void)encodeWithCoder:(id)coder;
- (void)sanitizePaymentApplications;
- (void)updateDevicePaymentApplicationsWithSecureElementIdentifiers:(id)identifiers;
@end

@implementation PKSecureElementPass

- (PKSecureElementPassActivationState)passActivationState
{
  devicePrimaryPaymentApplication = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  v3 = PKSecureElementPassActivationStateForApplicationState([devicePrimaryPaymentApplication state]);

  return v3;
}

- (PKPaymentApplication)devicePrimaryPaymentApplication
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_devicePaymentApplications)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    initializedViaInitWithCoder = [(PKObject *)self initializedViaInitWithCoder];
    v7 = @"was not";
    if (initializedViaInitWithCoder)
    {
      v7 = @"was";
    }

    v8 = [v3 stringWithFormat:@"updateDevicePaymentApplicationsWithSecureElementIdentifiers: must be called before calling devicePrimaryPaymentApplication. (%@ %@ initialized via initWithCoder:)", v5, v7];

    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Error: %{public}@. Returning nil.", buf, 0xCu);
    }
  }

  devicePrimaryPaymentApplication = self->_devicePrimaryPaymentApplication;

  return devicePrimaryPaymentApplication;
}

- (int64_t)effectiveContactlessPaymentApplicationState
{
  v17 = *MEMORY[0x1E69E9840];
  devicePrimaryPaymentApplication = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  state = [devicePrimaryPaymentApplication state];

  if (state == 15 || state == 1)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    devicePaymentApplications = [(PKSecureElementPass *)self devicePaymentApplications];
    v6 = [devicePaymentApplications countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(devicePaymentApplications);
          }

          state2 = [*(*(&v12 + 1) + 8 * i) state];
          if (state != state2)
          {
            state = state2;
            goto LABEL_13;
          }
        }

        v7 = [devicePaymentApplications countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return state;
}

- (unint64_t)contactlessActivationState
{
  effectiveContactlessPaymentApplicationState = [(PKSecureElementPass *)self effectiveContactlessPaymentApplicationState];

  return PKSecureElementPassActivationStateForApplicationState(effectiveContactlessPaymentApplicationState);
}

- (NSString)customerServiceIdentifier
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  customerServiceIdentifier = [contentLoadedIfNeeded customerServiceIdentifier];

  return customerServiceIdentifier;
}

- (BOOL)isAccessPass
{
  v17 = *MEMORY[0x1E69E9840];
  cardType = self->_cardType;
  if (cardType == 3)
  {
    return 1;
  }

  if (cardType)
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_paymentApplications;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) paymentType] - 1001;
        if (v8 <= 3 && v8 != 1)
        {
          v10 = 1;
          goto LABEL_19;
        }
      }

      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v10 = 0;
    }

    while (v5);
  }

  else
  {
    v10 = 0;
  }

LABEL_19:

  return v10;
}

- (BOOL)isTransitPass
{
  v14 = *MEMORY[0x1E69E9840];
  cardType = self->_cardType;
  if (cardType == 2)
  {
    LOBYTE(v4) = 1;
  }

  else if (cardType)
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = self->_paymentApplications;
    v4 = [(NSSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = *v10;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v9 + 1) + 8 * i);
          if ([v7 paymentType] == 1000 && (objc_msgSend(v7, "supportsTransit") & 1) != 0)
          {
            LOBYTE(v4) = 1;
            goto LABEL_16;
          }
        }

        v4 = [(NSSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  return v4;
}

- (id)dynamicLayerConfiguration
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  dynamicLayerConfiguration = [contentLoadedIfNeeded dynamicLayerConfiguration];

  return dynamicLayerConfiguration;
}

- (BOOL)supportsBarcodePayment
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  paymentApplications = [(PKSecureElementPass *)self paymentApplications];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__PKSecureElementPass_supportsBarcodePayment__block_invoke;
  v4[3] = &unk_1E79CFAA0;
  v4[4] = &v5;
  [paymentApplications enumerateObjectsUsingBlock:v4];

  LOBYTE(paymentApplications) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return paymentApplications;
}

- (NSSet)devicePaymentApplications
{
  v14 = *MEMORY[0x1E69E9840];
  devicePaymentApplications = self->_devicePaymentApplications;
  if (!devicePaymentApplications)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    initializedViaInitWithCoder = [(PKObject *)self initializedViaInitWithCoder];
    v8 = @"was not";
    if (initializedViaInitWithCoder)
    {
      v8 = @"was";
    }

    v9 = [v4 stringWithFormat:@"updateDevicePaymentApplicationsWithSecureElementIdentifiers: must be called before calling devicePaymentApplications. (%@ %@ initialized via initWithCoder:)", v6, v8];

    v10 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = v9;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Error: %{public}@. Returning nil.", buf, 0xCu);
    }

    devicePaymentApplications = self->_devicePaymentApplications;
  }

  return devicePaymentApplications;
}

uint64_t __45__PKSecureElementPass_supportsBarcodePayment__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 supportsBarcodePayment];
  *(*(*(a1 + 32) + 8) + 24) = result;
  *a3 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

- (PKCurrencyAmount)peerPaymentBalance
{
  if ([(PKSecureElementPass *)self hasAssociatedPeerPaymentAccount])
  {
    v3 = objc_getAssociatedObject(self, sel_peerPaymentBalance);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PKSecureElementPass)initWithDictionary:(id)dictionary bundle:(id)bundle
{
  v93 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v82.receiver = self;
  v82.super_class = PKSecureElementPass;
  v7 = [(PKPass *)&v82 initWithDictionary:dictionaryCopy bundle:bundle];
  v8 = v7;
  if (dictionaryCopy && v7)
  {
    v9 = [dictionaryCopy PKStringForKey:@"cardType"];
    v10 = PKPaymentCardTypeFromString(v9);

    [(PKSecureElementPass *)v8 setCardType:v10];
    v11 = dictionaryCopy;
    v12 = [v11 PKArrayContaining:objc_opt_class() forKey:@"paymentApplications"];
    v13 = [v11 PKArrayContaining:objc_opt_class() forKey:@"auxiliaryPaymentApplications"];
    v81 = dictionaryCopy;
    if (v12)
    {
      v79 = v13;
      v14 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v13, "count") + objc_msgSend(v12, "count")}];
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v77 = v12;
      v15 = v12;
      v16 = [v15 countByEnumeratingWithState:&v87 objects:v92 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v88;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v88 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v87 + 1) + 8 * i);
            v21 = PKValidatePaymentApplicationDict(v20);

            if (!v21)
            {
              v22 = [[PKPaymentApplication alloc] initWithPaymentApplicationDictionary:v20 auxiliaryApplication:0];
              [v14 addObject:v22];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v87 objects:v92 count:16];
        }

        while (v17);
      }

      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v23 = v79;
      v24 = [v23 countByEnumeratingWithState:&v83 objects:v91 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v84;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v84 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v83 + 1) + 8 * j);
            v29 = PKValidatePaymentApplicationDict(v28);

            if (!v29)
            {
              v30 = [[PKPaymentApplication alloc] initWithPaymentApplicationDictionary:v28 auxiliaryApplication:1];
              [v14 addObject:v30];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v83 objects:v91 count:16];
        }

        while (v25);
      }

      v12 = v77;
      v13 = v79;
    }

    else
    {
      v14 = 0;
    }

    if ([v14 count])
    {
      v31 = v14;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;

    v33 = v32;
    [(PKSecureElementPass *)v8 setPaymentApplications:v32];
    v34 = MEMORY[0x1E695DFD8];
    v35 = [v11 PKArrayForKey:@"associatedApplicationIdentifiers"];
    v36 = [v34 setWithArray:v35];
    [(PKSecureElementPass *)v8 setAssociatedApplicationIdentifiers:v36];

    v37 = MEMORY[0x1E695DFD8];
    v38 = [v11 PKArrayForKey:@"associatedWebDomains"];
    v39 = [v37 setWithArray:v38];
    [(PKSecureElementPass *)v8 setAssociatedWebDomains:v39];

    v40 = [v11 PKStringForKey:@"primaryAccountIdentifier"];
    [(PKSecureElementPass *)v8 setPrimaryAccountIdentifier:v40];

    v41 = [v11 PKStringForKey:@"primaryAccountSuffix"];
    [(PKSecureElementPass *)v8 setPrimaryAccountNumberSuffix:v41];

    v42 = [v11 PKStringForKey:@"sanitizedPrimaryAccountNumber"];
    [(PKSecureElementPass *)v8 setSanitizedPrimaryAccountNumber:v42];

    v43 = [v11 PKStringForKey:@"sanitizedPrimaryAccountName"];
    [(PKSecureElementPass *)v8 setSanitizedPrimaryAccountName:v43];

    v44 = [v11 PKStringForKey:@"topLeftBackgroundTitle"];
    [(PKSecureElementPass *)v8 setTopLeftBackgroundTitle:v44];

    v45 = [v11 PKStringForKey:@"topRightBackgroundTitle"];
    [(PKSecureElementPass *)v8 setTopRightBackgroundTitle:v45];

    v46 = [v11 PKStringForKey:@"transactionServiceURL"];
    if ([v46 length])
    {
      v47 = [v11 PKStringForKey:@"transactionPushTopic"];
      v48 = [v47 length] != 0;
    }

    else
    {
      v48 = 0;
    }

    v49 = [v11 objectForKey:@"supportsDPANNotifications"];
    v50 = v48;
    if (v49)
    {
      v50 = [v11 PKBoolForKey:@"supportsDPANNotifications"];
    }

    [(PKSecureElementPass *)v8 setSupportsDPANNotifications:v50];
    v51 = [v11 objectForKey:@"supportsFPANNotifications"];
    if (v51)
    {
      v48 = [v11 PKBoolForKey:@"supportsFPANNotifications"];
    }

    [(PKSecureElementPass *)v8 setSupportsFPANNotifications:v48];
    v52 = [v11 objectForKey:@"supportsDefaultCardSelection"];
    if (v52)
    {
      v53 = [v11 PKBoolForKey:@"supportsDefaultCardSelection"];
    }

    else
    {
      v53 = 1;
    }

    [(PKSecureElementPass *)v8 setSupportsDefaultCardSelection:v53];
    v54 = [v11 objectForKey:@"supportsSerialNumberBasedProvisioning"];
    if (v54)
    {
      v55 = [v11 PKBoolForKey:@"supportsSerialNumberBasedProvisioning"];
    }

    else
    {
      v55 = 1;
    }

    [(PKSecureElementPass *)v8 setSupportsSerialNumberBasedProvisioning:v55];
    v56 = [v11 objectForKey:@"requiresTransferSerialNumberBasedProvisioning"];
    if (v56)
    {
      v57 = [v11 PKBoolForKey:@"requiresTransferSerialNumberBasedProvisioning"];
    }

    else
    {
      v57 = 0;
    }

    [(PKSecureElementPass *)v8 setRequiresTransferSerialNumberBasedProvisioning:v57];
    v58 = [v11 PKStringForKey:@"contactlessActivationGroupingType"];
    v80 = v58;
    if (v58)
    {
      v59 = PKContactlessActivationGroupingTypeFromString(v58);
    }

    else
    {
      v60 = [v11 objectForKey:@"isPaymentOptionSelectable"];
      if (v60)
      {
        if ([v11 PKBoolForKey:@"isPaymentOptionSelectable"])
        {
          v59 = 2;
        }

        else
        {
          v59 = 1;
        }
      }

      else
      {
        v59 = 2;
      }
    }

    [(PKSecureElementPass *)v8 setContactlessActivationGroupingType:v59];
    -[PKSecureElementPass setCobranded:](v8, "setCobranded:", [v11 PKBoolForKey:@"isCobranded"]);
    v78 = [v11 PKStringForKey:@"cobrandName"];
    [(PKSecureElementPass *)v8 setCobrandName:v78];
    v76 = [v11 PKStringForKey:@"issuerCountryCode"];
    [(PKSecureElementPass *)v8 setIssuerCountryCode:v76];
    v75 = [v11 PKStringForKey:@"issuerAdministrativeAreaCode"];
    [(PKSecureElementPass *)v8 setIssuerAdministrativeAreaCode:v75];
    v74 = [v11 PKStringForKey:@"identityAccountKeyIdentifier"];
    [(PKSecureElementPass *)v8 setIdentityAccountKeyIdentifier:v74];
    -[PKSecureElementPass setHasAssociatedPeerPaymentAccount:](v8, "setHasAssociatedPeerPaymentAccount:", [v11 PKBoolForKey:@"hasAssociatedPeerPaymentAccount"]);
    -[PKSecureElementPass setShellPass:](v8, "setShellPass:", [v11 PKBoolForKey:@"isShellPass"]);
    v73 = [v11 PKDateForKey:@"originalProvisioningDate"];
    [(PKSecureElementPass *)v8 setOriginalProvisioningDate:v73];
    v61 = [v11 PKStringForKey:@"associatedAccountServiceAccountIdentifier"];
    [(PKSecureElementPass *)v8 setAssociatedAccountServiceAccountIdentifier:v61];
    v62 = [v11 PKStringForKey:@"partnerAccountIdentifier"];
    [(PKSecureElementPass *)v8 setPartnerAccountIdentifier:v62];
    v63 = [v11 PKStringForKey:@"shippingAddressSeed"];
    [(PKSecureElementPass *)v8 setShippingAddressSeed:v63];
    v64 = [v11 PKStringForKey:@"speakableCarMake"];
    [(PKSecureElementPass *)v8 setSpeakableMake:v64];
    v65 = [v11 PKStringForKey:@"speakableCarModel"];
    [(PKSecureElementPass *)v8 setSpeakableModel:v65];
    v66 = [v11 PKArrayContaining:objc_opt_class() forKey:@"legalAgreements"];
    v67 = [v66 pk_arrayBySafelyApplyingBlock:&__block_literal_global_69];
    legalAgreements = v8->_legalAgreements;
    v8->_legalAgreements = v67;

    v69 = [v11 PKStringForKey:@"cardSubtype"];
    v70 = PKSecureElementAccessPassTypeFromString(v69);
    if (PKIsCarKeyPass(v33))
    {
      v71 = 4;
    }

    else
    {
      v71 = v70;
    }

    [(PKSecureElementPass *)v8 setAccessType:v71];

    dictionaryCopy = v81;
  }

  return v8;
}

PKPassLegalAgreement *__49__PKSecureElementPass_initWithDictionary_bundle___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKPassLegalAgreement alloc] initWithDictionary:v2];

  return v3;
}

- (PKSecureElementPass)initWithCoder:(id)coder
{
  coderCopy = coder;
  v69.receiver = self;
  v69.super_class = PKSecureElementPass;
  v5 = [(PKPass *)&v69 initWithCoder:coderCopy];
  if (v5)
  {
    context = objc_autoreleasePoolPush();
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cardType"];
    [(PKSecureElementPass *)v5 setCardType:PKPaymentCardTypeFromString(v6)];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionSourceIdentifier"];
    [(PKSecureElementPass *)v5 setTransactionSourceIdentifier:v7];

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = objc_autoreleasePoolPush();
    v12 = [coderCopy decodeObjectOfClasses:v10 forKey:@"paymentApplications"];
    [(PKSecureElementPass *)v5 setPaymentApplications:v12];

    objc_autoreleasePoolPop(v11);
    v13 = objc_autoreleasePoolPush();
    v14 = [coderCopy decodeObjectOfClasses:v10 forKey:@"devicePaymentApplications"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"devicePaymentApplication"];
    v16 = v15;
    if (v14)
    {
      [(PKSecureElementPass *)v5 setDevicePaymentApplications:v14];
    }

    else if (v15)
    {
      v17 = [MEMORY[0x1E695DFD8] setWithObject:v15];
      [(PKSecureElementPass *)v5 setDevicePaymentApplications:v17];
    }

    v18 = [coderCopy decodeObjectOfClasses:v10 forKey:@"inAppPaymentApplications"];
    [(PKSecureElementPass *)v5 setDeviceInAppPaymentApplications:v18];

    objc_autoreleasePoolPop(v13);
    v19 = objc_autoreleasePoolPush();
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"devicePrimaryPaymentApplication"];
    [(PKSecureElementPass *)v5 setDevicePrimaryPaymentApplication:v20];

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"devicePrimaryContactlessPaymentApplication"];
    [(PKSecureElementPass *)v5 setDevicePrimaryContactlessPaymentApplication:v21];

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"devicePrimaryInAppPaymentApplication"];
    [(PKSecureElementPass *)v5 setDevicePrimaryInAppPaymentApplication:v22];

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"devicePrimaryBarcodePaymentApplication"];
    [(PKSecureElementPass *)v5 setDevicePrimaryBarcodePaymentApplication:v23];

    objc_autoreleasePoolPop(v19);
    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"associatedApplicationIdentifiers"];
    [(PKSecureElementPass *)v5 setAssociatedApplicationIdentifiers:v27];

    v28 = [coderCopy decodeObjectOfClasses:v26 forKey:@"associatedWebDomains"];
    [(PKSecureElementPass *)v5 setAssociatedWebDomains:v28];

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryAccountIdentifier"];
    [(PKSecureElementPass *)v5 setPrimaryAccountIdentifier:v29];

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryAccountSuffix"];
    [(PKSecureElementPass *)v5 setPrimaryAccountNumberSuffix:v30];

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sanitizedPrimaryAccountNumber"];
    [(PKSecureElementPass *)v5 setSanitizedPrimaryAccountNumber:v31];

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sanitizedPrimaryAccountName"];
    [(PKSecureElementPass *)v5 setSanitizedPrimaryAccountName:v32];

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportsDPANNotifications"];
    -[PKSecureElementPass setSupportsDPANNotifications:](v5, "setSupportsDPANNotifications:", [v33 BOOLValue]);

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportsFPANNotifications"];
    -[PKSecureElementPass setSupportsFPANNotifications:](v5, "setSupportsFPANNotifications:", [v34 BOOLValue]);

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportsDefaultCardSelection"];
    -[PKSecureElementPass setSupportsDefaultCardSelection:](v5, "setSupportsDefaultCardSelection:", [v35 BOOLValue]);

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isShellPass"];
    -[PKSecureElementPass setShellPass:](v5, "setShellPass:", [v36 BOOLValue]);

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originalProvisioningDate"];
    [(PKSecureElementPass *)v5 setOriginalProvisioningDate:v37];

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provisioningMetadata"];
    [(PKSecureElementPass *)v5 setProvisioningMetadata:v38];

    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supportsSerialNumberBasedProvisioning"];
    v40 = v39;
    v41 = MEMORY[0x1E695E118];
    if (v39)
    {
      v41 = v39;
    }

    v42 = v41;

    bOOLValue = [v42 BOOLValue];
    [(PKSecureElementPass *)v5 setSupportsSerialNumberBasedProvisioning:bOOLValue];
    -[PKSecureElementPass setRequiresTransferSerialNumberBasedProvisioning:](v5, "setRequiresTransferSerialNumberBasedProvisioning:", [coderCopy decodeBoolForKey:@"requiresTransferSerialNumberBasedProvisioning"]);
    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactlessActivationGroupingType"];
    v45 = v44;
    if (v44)
    {
      v46 = PKContactlessActivationGroupingTypeFromString(v44);
    }

    else
    {
      v47 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isPaymentOptionSelectable"];
      bOOLValue2 = [v47 BOOLValue];

      if (bOOLValue2)
      {
        v46 = 2;
      }

      else
      {
        v46 = 1;
      }
    }

    v5->_contactlessActivationGroupingType = v46;
    v49 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isCobranded"];
    -[PKSecureElementPass setCobranded:](v5, "setCobranded:", [v49 BOOLValue]);

    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cobrandName"];
    [(PKSecureElementPass *)v5 setCobrandName:v50];

    v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"issuerCountryCode"];
    [(PKSecureElementPass *)v5 setIssuerCountryCode:v51];

    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"issuerAdministrativeAreaCode"];
    [(PKSecureElementPass *)v5 setIssuerAdministrativeAreaCode:v52];

    v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identityAccountKeyIdentifier"];
    [(PKSecureElementPass *)v5 setIdentityAccountKeyIdentifier:v53];

    v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hasAssociatedPeerPaymentAccount"];
    -[PKSecureElementPass setHasAssociatedPeerPaymentAccount:](v5, "setHasAssociatedPeerPaymentAccount:", [v54 BOOLValue]);

    v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedAccountServiceAccountIdentifier"];
    [(PKSecureElementPass *)v5 setAssociatedAccountServiceAccountIdentifier:v55];

    -[PKSecureElementPass setAssociatedAccountFeatureIdentifier:](v5, "setAssociatedAccountFeatureIdentifier:", [coderCopy decodeIntegerForKey:@"associatedAccountFeatureIdentifier"]);
    v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"topLeftBackgroundTitle"];
    [(PKSecureElementPass *)v5 setTopLeftBackgroundTitle:v56];

    v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"topRightBackgroundTitle"];
    [(PKSecureElementPass *)v5 setTopRightBackgroundTitle:v57];

    v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"partnerAccountIdentifier"];
    [(PKSecureElementPass *)v5 setPartnerAccountIdentifier:v58];

    v59 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shippingAddressSeed"];
    [(PKSecureElementPass *)v5 setShippingAddressSeed:v59];

    v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"speakableCarMake"];
    [(PKSecureElementPass *)v5 setSpeakableMake:v60];

    v61 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"speakableCarModel"];
    [(PKSecureElementPass *)v5 setSpeakableModel:v61];

    v62 = MEMORY[0x1E695DFD8];
    v63 = objc_opt_class();
    v64 = [v62 setWithObjects:{v63, objc_opt_class(), 0}];
    v65 = [coderCopy decodeObjectOfClasses:v64 forKey:@"legalAgreements"];
    [(PKSecureElementPass *)v5 setLegalAgreements:v65];

    v66 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessType"];
    [(PKSecureElementPass *)v5 setAccessType:PKSecureElementAccessPassTypeFromString(v66)];

    objc_autoreleasePoolPop(context);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PKSecureElementPass;
  [(PKPass *)&v17 encodeWithCoder:coderCopy];
  v5 = objc_autoreleasePoolPush();
  v6 = PKPaymentCardTypeToString(self->_cardType);
  [coderCopy encodeObject:v6 forKey:@"cardType"];

  [coderCopy encodeObject:self->_paymentApplications forKey:@"paymentApplications"];
  [coderCopy encodeObject:self->_devicePaymentApplications forKey:@"devicePaymentApplications"];
  [coderCopy encodeObject:self->_deviceInAppPaymentApplications forKey:@"inAppPaymentApplications"];
  [coderCopy encodeObject:self->_devicePrimaryPaymentApplication forKey:@"devicePrimaryPaymentApplication"];
  [coderCopy encodeObject:self->_devicePrimaryContactlessPaymentApplication forKey:@"devicePrimaryContactlessPaymentApplication"];
  [coderCopy encodeObject:self->_devicePrimaryInAppPaymentApplication forKey:@"devicePrimaryInAppPaymentApplication"];
  [coderCopy encodeObject:self->_devicePrimaryBarcodePaymentApplication forKey:@"devicePrimaryBarcodePaymentApplication"];
  [coderCopy encodeObject:self->_associatedApplicationIdentifiers forKey:@"associatedApplicationIdentifiers"];
  [coderCopy encodeObject:self->_associatedWebDomains forKey:@"associatedWebDomains"];
  [coderCopy encodeObject:self->_primaryAccountIdentifier forKey:@"primaryAccountIdentifier"];
  [coderCopy encodeObject:self->_primaryAccountNumberSuffix forKey:@"primaryAccountSuffix"];
  [coderCopy encodeObject:self->_sanitizedPrimaryAccountNumber forKey:@"sanitizedPrimaryAccountNumber"];
  [coderCopy encodeObject:self->_sanitizedPrimaryAccountName forKey:@"sanitizedPrimaryAccountName"];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsDPANNotifications];
  [coderCopy encodeObject:v7 forKey:@"supportsDPANNotifications"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsFPANNotifications];
  [coderCopy encodeObject:v8 forKey:@"supportsFPANNotifications"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsDefaultCardSelection];
  [coderCopy encodeObject:v9 forKey:@"supportsDefaultCardSelection"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_shellPass];
  [coderCopy encodeObject:v10 forKey:@"isShellPass"];

  [coderCopy encodeObject:self->_originalProvisioningDate forKey:@"originalProvisioningDate"];
  [coderCopy encodeObject:self->_provisioningMetadata forKey:@"provisioningMetadata"];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsSerialNumberBasedProvisioning];
  [coderCopy encodeObject:v11 forKey:@"supportsSerialNumberBasedProvisioning"];

  [coderCopy encodeBool:self->_requiresTransferSerialNumberBasedProvisioning forKey:@"requiresTransferSerialNumberBasedProvisioning"];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_contactlessActivationGroupingType == 2];
  [coderCopy encodeObject:v12 forKey:@"isPaymentOptionSelectable"];

  v13 = PKContactlessActivationGroupingTypeToString(self->_contactlessActivationGroupingType);
  [coderCopy encodeObject:v13 forKey:@"contactlessActivationGroupingType"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_cobranded];
  [coderCopy encodeObject:v14 forKey:@"isCobranded"];

  [coderCopy encodeObject:self->_cobrandName forKey:@"cobrandName"];
  [coderCopy encodeObject:self->_issuerCountryCode forKey:@"issuerCountryCode"];
  [coderCopy encodeObject:self->_issuerAdministrativeAreaCode forKey:@"issuerAdministrativeAreaCode"];
  [coderCopy encodeObject:self->_identityAccountKeyIdentifier forKey:@"identityAccountKeyIdentifier"];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasAssociatedPeerPaymentAccount];
  [coderCopy encodeObject:v15 forKey:@"hasAssociatedPeerPaymentAccount"];

  [coderCopy encodeObject:self->_associatedAccountServiceAccountIdentifier forKey:@"associatedAccountServiceAccountIdentifier"];
  [coderCopy encodeInteger:self->_associatedAccountFeatureIdentifier forKey:@"associatedAccountFeatureIdentifier"];
  [coderCopy encodeObject:self->_topLeftBackgroundTitle forKey:@"topLeftBackgroundTitle"];
  [coderCopy encodeObject:self->_topRightBackgroundTitle forKey:@"topRightBackgroundTitle"];
  [coderCopy encodeObject:self->_transactionSourceIdentifier forKey:@"transactionSourceIdentifier"];
  [coderCopy encodeObject:self->_partnerAccountIdentifier forKey:@"partnerAccountIdentifier"];
  [coderCopy encodeObject:self->_shippingAddressSeed forKey:@"shippingAddressSeed"];
  [coderCopy encodeObject:self->_speakableMake forKey:@"speakableCarMake"];
  [coderCopy encodeObject:self->_speakableModel forKey:@"speakableCarModel"];
  [coderCopy encodeObject:self->_legalAgreements forKey:@"legalAgreements"];
  v16 = PKSecureElementAccessPassTypeToString(self->_accessType);
  [coderCopy encodeObject:v16 forKey:@"accessType"];

  objc_autoreleasePoolPop(v5);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v59.receiver = self;
  v59.super_class = PKSecureElementPass;
  v5 = [(PKPass *)&v59 copyWithZone:?];
  *(v5 + 91) = self->_cardType;
  v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithSet:self->_paymentApplications copyItems:1];
  v7 = *(v5 + 109);
  *(v5 + 109) = v6;

  v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithSet:self->_devicePaymentApplications copyItems:1];
  v9 = *(v5 + 110);
  *(v5 + 110) = v8;

  v10 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithSet:self->_deviceInAppPaymentApplications copyItems:1];
  v11 = *(v5 + 115);
  *(v5 + 115) = v10;

  v12 = [(PKPaymentApplication *)self->_devicePrimaryPaymentApplication copyWithZone:zone];
  v13 = *(v5 + 111);
  *(v5 + 111) = v12;

  v14 = [(PKPaymentApplication *)self->_devicePrimaryContactlessPaymentApplication copyWithZone:zone];
  v15 = *(v5 + 112);
  *(v5 + 112) = v14;

  v16 = [(PKPaymentApplication *)self->_devicePrimaryInAppPaymentApplication copyWithZone:zone];
  v17 = *(v5 + 113);
  *(v5 + 113) = v16;

  v18 = [(PKPaymentApplication *)self->_devicePrimaryBarcodePaymentApplication copyWithZone:zone];
  v19 = *(v5 + 114);
  *(v5 + 114) = v18;

  v20 = [(NSSet *)self->_associatedApplicationIdentifiers copyWithZone:zone];
  v21 = *(v5 + 94);
  *(v5 + 94) = v20;

  v22 = [(NSSet *)self->_associatedWebDomains copyWithZone:zone];
  v23 = *(v5 + 95);
  *(v5 + 95) = v22;

  v24 = [(NSString *)self->_primaryAccountIdentifier copyWithZone:zone];
  v25 = *(v5 + 89);
  *(v5 + 89) = v24;

  v26 = [(NSString *)self->_primaryAccountNumberSuffix copyWithZone:zone];
  v27 = *(v5 + 90);
  *(v5 + 90) = v26;

  v28 = [(NSString *)self->_sanitizedPrimaryAccountNumber copyWithZone:zone];
  v29 = *(v5 + 96);
  *(v5 + 96) = v28;

  v30 = [(NSString *)self->_sanitizedPrimaryAccountName copyWithZone:zone];
  v31 = *(v5 + 97);
  *(v5 + 97) = v30;

  *(v5 + 696) = self->_supportsDPANNotifications;
  *(v5 + 697) = self->_supportsFPANNotifications;
  *(v5 + 698) = self->_supportsDefaultCardSelection;
  *(v5 + 702) = self->_shellPass;
  v32 = [(NSDate *)self->_originalProvisioningDate copyWithZone:zone];
  v33 = *(v5 + 104);
  *(v5 + 104) = v32;

  v34 = [(PKPassProvisioningMetadata *)self->_provisioningMetadata copy];
  v35 = *(v5 + 105);
  *(v5 + 105) = v34;

  *(v5 + 701) = self->_supportsSerialNumberBasedProvisioning;
  *(v5 + 704) = self->_requiresTransferSerialNumberBasedProvisioning;
  *(v5 + 103) = self->_contactlessActivationGroupingType;
  *(v5 + 703) = self->_cobranded;
  v36 = [(NSString *)self->_cobrandName copyWithZone:zone];
  v37 = *(v5 + 118);
  *(v5 + 118) = v36;

  v38 = [(NSString *)self->_issuerCountryCode copyWithZone:zone];
  v39 = *(v5 + 100);
  *(v5 + 100) = v38;

  v40 = [(NSString *)self->_issuerAdministrativeAreaCode copyWithZone:zone];
  v41 = *(v5 + 101);
  *(v5 + 101) = v40;

  v42 = [(NSString *)self->_identityAccountKeyIdentifier copyWithZone:zone];
  v43 = *(v5 + 102);
  *(v5 + 102) = v42;

  *(v5 + 699) = self->_hasAssociatedPeerPaymentAccount;
  objc_storeStrong(v5 + 98, self->_associatedAccountServiceAccountIdentifier);
  *(v5 + 99) = self->_associatedAccountFeatureIdentifier;
  v44 = [(NSString *)self->_topLeftBackgroundTitle copyWithZone:zone];
  v45 = *(v5 + 107);
  *(v5 + 107) = v44;

  v46 = [(NSString *)self->_topRightBackgroundTitle copyWithZone:zone];
  v47 = *(v5 + 108);
  *(v5 + 108) = v46;

  v48 = [(NSString *)self->_transactionSourceIdentifier copyWithZone:zone];
  v49 = *(v5 + 117);
  *(v5 + 117) = v48;

  v50 = [(NSString *)self->_partnerAccountIdentifier copyWithZone:zone];
  v51 = *(v5 + 116);
  *(v5 + 116) = v50;

  v52 = [(NSString *)self->_shippingAddressSeed copyWithZone:zone];
  v53 = *(v5 + 128);
  *(v5 + 128) = v52;

  v54 = [(NSString *)self->_speakableMake copyWithZone:zone];
  v55 = *(v5 + 129);
  *(v5 + 129) = v54;

  v56 = [(NSString *)self->_speakableModel copyWithZone:zone];
  v57 = *(v5 + 130);
  *(v5 + 130) = v56;

  objc_storeStrong(v5 + 106, self->_legalAgreements);
  *(v5 + 92) = self->_accessType;
  return v5;
}

- (BOOL)isEqualToPassIncludingMetadata:(id)metadata
{
  metadataCopy = metadata;
  v13.receiver = self;
  v13.super_class = PKSecureElementPass;
  if ([(PKPass *)&v13 isEqualToPassIncludingMetadata:metadataCopy])
  {
    paymentPass = [(PKPass *)self paymentPass];
    associatedAccountFeatureIdentifier = [paymentPass associatedAccountFeatureIdentifier];
    paymentPass2 = [metadataCopy paymentPass];
    if (associatedAccountFeatureIdentifier == [paymentPass2 associatedAccountFeatureIdentifier])
    {
      _deviceSubcredentialEndpointIdentifiers = [(PKSecureElementPass *)self _deviceSubcredentialEndpointIdentifiers];
      secureElementPass = [metadataCopy secureElementPass];
      _deviceSubcredentialEndpointIdentifiers2 = [secureElementPass _deviceSubcredentialEndpointIdentifiers];
      v11 = [_deviceSubcredentialEndpointIdentifiers isEqualToSet:_deviceSubcredentialEndpointIdentifiers2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)primaryPaymentApplicationForSecureElementIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__22;
  v13 = __Block_byref_object_dispose__22;
  v14 = 0;
  paymentApplications = self->_paymentApplications;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__PKSecureElementPass_primaryPaymentApplicationForSecureElementIdentifiers___block_invoke;
  v8[3] = &unk_1E79CFAA0;
  v8[4] = &v9;
  EnumerateApplicationsForSEIDs(paymentApplications, identifiersCopy, v8);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __76__PKSecureElementPass_primaryPaymentApplicationForSecureElementIdentifiers___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if (([v6 isAuxiliary] & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)paymentApplicationsForSecureElementIdentifiers:(id)identifiers
{
  v4 = MEMORY[0x1E695DF70];
  identifiersCopy = identifiers;
  v6 = objc_alloc_init(v4);
  paymentApplications = self->_paymentApplications;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__PKSecureElementPass_paymentApplicationsForSecureElementIdentifiers___block_invoke;
  v11[3] = &unk_1E79CFAC8;
  v12 = v6;
  v8 = v6;
  EnumerateApplicationsForSEIDs(paymentApplications, identifiersCopy, v11);

  v9 = [v8 copy];

  return v9;
}

- (id)paymentApplicationForAID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__22;
  v16 = __Block_byref_object_dispose__22;
  v17 = 0;
  paymentApplications = self->_paymentApplications;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__PKSecureElementPass_paymentApplicationForAID___block_invoke;
  v9[3] = &unk_1E79CFB10;
  v6 = dCopy;
  v10 = v6;
  v11 = &v12;
  [(NSSet *)paymentApplications enumerateObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __48__PKSecureElementPass_paymentApplicationForAID___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 applicationIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)devicePaymentApplicationForAID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__22;
  v16 = __Block_byref_object_dispose__22;
  v17 = 0;
  devicePaymentApplications = [(PKSecureElementPass *)self devicePaymentApplications];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__PKSecureElementPass_devicePaymentApplicationForAID___block_invoke;
  v9[3] = &unk_1E79CFB10;
  v6 = dCopy;
  v10 = v6;
  v11 = &v12;
  [devicePaymentApplications enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __54__PKSecureElementPass_devicePaymentApplicationForAID___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 applicationIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (BOOL)isDevicePrimaryPaymentApplicationPersonalized
{
  devicePrimaryPaymentApplication = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  state = [devicePrimaryPaymentApplication state];
  v5 = state == 1 || state == 15;

  return v5;
}

- (BOOL)isPrivateLabel
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_paymentApplications;
  v3 = [(NSSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) paymentNetworkIdentifier] == 100)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSSet *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)isPrecursorPass:(id)pass
{
  v17 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  upgradeRequests = [(PKSecureElementPass *)self upgradeRequests];
  v6 = [upgradeRequests countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(upgradeRequests);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 type] == 2)
        {
          secureElementIdentifier = [v9 secureElementIdentifier];
          if (!secureElementIdentifier || ([passCopy containsObject:secureElementIdentifier] & 1) != 0)
          {

            LOBYTE(v6) = 1;
            goto LABEL_14;
          }
        }
      }

      v6 = [upgradeRequests countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v6;
}

- (BOOL)isSuicaPass
{
  devicePrimaryPaymentApplication = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  v3 = [devicePrimaryPaymentApplication paymentNetworkIdentifier] == 103;

  return v3;
}

- (BOOL)hasLegacyBalanceModel
{
  devicePrimaryPaymentApplication = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  paymentNetworkIdentifier = [devicePrimaryPaymentApplication paymentNetworkIdentifier];

  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&unk_1F23B4D18, &unk_1F23B4D30, &unk_1F23B4D48, &unk_1F23B4D60, &unk_1F23B4D78, &unk_1F23B4D90, 0}];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:paymentNetworkIdentifier];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (BOOL)isPrepaidPass
{
  devicePrimaryPaymentApplication = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  v3 = [devicePrimaryPaymentApplication paymentType] == 3;

  return v3;
}

- (BOOL)isEMoneyPass
{
  if (self->_cardType == 1 && [(PKSecureElementPass *)self paymentType]== 1)
  {
    return 1;
  }

  devicePrimaryPaymentApplication = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  v3 = [devicePrimaryPaymentApplication paymentType] == 5;

  return v3;
}

- (BOOL)isStoredValuePass
{
  if ([(PKSecureElementPass *)self isTransitPass])
  {
    return 1;
  }

  return [(PKSecureElementPass *)self isEMoneyPass];
}

- (BOOL)isChinaTransitCredential
{
  devicePrimaryPaymentApplication = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  paymentNetworkIdentifier = [devicePrimaryPaymentApplication paymentNetworkIdentifier];

  if ((paymentNetworkIdentifier & 0xFFFFFFFFFFFFFFFELL) != 0x6C)
  {
    return 0;
  }

  return [(PKSecureElementPass *)self isTransitPass];
}

- (BOOL)needsHardcodedReminderOptions
{
  if ([(PKSecureElementPass *)self isSuicaPass])
  {
    return 1;
  }

  return [(PKSecureElementPass *)self isChinaTransitCredential];
}

- (BOOL)isOctopusPass
{
  devicePrimaryPaymentApplication = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  appletDataFormat = [devicePrimaryPaymentApplication appletDataFormat];
  v4 = appletDataFormat;
  if (appletDataFormat && @"transit.apple.octopus")
  {
    v5 = [(__CFString *)appletDataFormat isEqual:@"transit.apple.octopus"];
  }

  else
  {
    v5 = appletDataFormat == @"transit.apple.octopus";
  }

  return v5;
}

- (BOOL)isHybridIdentityPass
{
  v15 = *MEMORY[0x1E69E9840];
  paymentApplications = [(PKSecureElementPass *)self paymentApplications];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [paymentApplications countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(paymentApplications);
        }

        paymentType = [*(*(&v10 + 1) + 8 * i) paymentType];
        v4 |= paymentType != 1002;
        v5 |= paymentType == 1002;
      }

      v3 = [paymentApplications countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
    LOBYTE(v3) = v5 & v4;
  }

  return v3 & 1;
}

- (BOOL)hasImmediateAutomaticSelectionCriterion
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  devicePaymentApplications = [(PKSecureElementPass *)self devicePaymentApplications];
  v3 = [devicePaymentApplications countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(devicePaymentApplications);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        automaticSelectionCriteria = [v7 automaticSelectionCriteria];
        v9 = [automaticSelectionCriteria countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v16;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v16 != v11)
              {
                objc_enumerationMutation(automaticSelectionCriteria);
              }

              if ([*(*(&v15 + 1) + 8 * j) technologyType] == 7)
              {

                v13 = 1;
                goto LABEL_19;
              }
            }

            v10 = [automaticSelectionCriteria countByEnumeratingWithState:&v15 objects:v23 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      v4 = [devicePaymentApplications countByEnumeratingWithState:&v19 objects:v24 count:16];
      v13 = 0;
    }

    while (v4);
  }

  else
  {
    v13 = 0;
  }

LABEL_19:

  return v13;
}

- (BOOL)hasCredentials
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_paymentApplications;
  v3 = [(NSSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        subcredentials = [*(*(&v9 + 1) + 8 * i) subcredentials];
        v7 = [subcredentials count];

        if (v7)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [(NSSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)isAutoTopEnabled
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  autoTopUpFields = [(PKPass *)self autoTopUpFields];
  v3 = [autoTopUpFields countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(autoTopUpFields);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [v7 key];
        v9 = [v8 isEqualToString:@"auto_top_up_field_value"];

        if (v9)
        {
          [v7 threshold];
          v12 = v11;
          [v7 amount];
          v10 = v13 != 0.0 || v12 != 0.0;
          goto LABEL_13;
        }
      }

      v4 = [autoTopUpFields countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (BOOL)hasMerchantTokens
{
  v13 = *MEMORY[0x1E69E9840];
  if (PKMerchantTokensDemoModeEnabled())
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    paymentApplications = [(PKSecureElementPass *)self paymentApplications];
    v3 = [paymentApplications countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(paymentApplications);
          }

          if ([*(*(&v8 + 1) + 8 * i) hasMerchantTokens])
          {
            LOBYTE(v3) = 1;
            goto LABEL_13;
          }
        }

        v3 = [paymentApplications countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v3;
}

- (BOOL)hadMerchantTokens
{
  v13 = *MEMORY[0x1E69E9840];
  if (PKMerchantTokensDemoModeEnabled())
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    paymentApplications = [(PKSecureElementPass *)self paymentApplications];
    v3 = [paymentApplications countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(paymentApplications);
          }

          if ([*(*(&v8 + 1) + 8 * i) hadMerchantTokens])
          {
            LOBYTE(v3) = 1;
            goto LABEL_13;
          }
        }

        v3 = [paymentApplications countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v3;
}

- (BOOL)isCarKeyPass
{
  devicePaymentApplications = [(PKSecureElementPass *)self devicePaymentApplications];
  v3 = PKIsCarKeyPass(devicePaymentApplications);

  return v3;
}

- (BOOL)isHomeKeyPass
{
  selfCopy = self;
  devicePaymentApplications = [(PKSecureElementPass *)self devicePaymentApplications];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__PKSecureElementPass_isHomeKeyPass__block_invoke;
  v5[3] = &unk_1E79C7E20;
  v5[4] = selfCopy;
  LOBYTE(selfCopy) = [devicePaymentApplications pk_hasObjectPassingTest:v5];

  return selfCopy;
}

BOOL __36__PKSecureElementPass_isHomeKeyPass__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 paymentNetworkIdentifier];
  if (v3 == 133)
  {
    return 1;
  }

  if (v3 == 139)
  {
    return [*(a1 + 32) accessType] == 3;
  }

  return 0;
}

- (BOOL)areCredentialsStoredInKML
{
  hasCredentials = [(PKSecureElementPass *)self hasCredentials];
  if (hasCredentials)
  {
    LOBYTE(hasCredentials) = ![(PKSecureElementPass *)self isIdentityPass];
  }

  return hasCredentials;
}

- (NSString)devicePassIdentifier
{
  devicePrimaryPaymentApplication = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  subcredentials = [devicePrimaryPaymentApplication subcredentials];
  anyObject = [subcredentials anyObject];
  identifier = [anyObject identifier];

  return identifier;
}

- (NSString)pairedTerminalIdentifier
{
  devicePrimaryPaymentApplication = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  subcredentials = [devicePrimaryPaymentApplication subcredentials];
  anyObject = [subcredentials anyObject];
  pairedReaderIdentifier = [anyObject pairedReaderIdentifier];

  return pairedReaderIdentifier;
}

- (BOOL)requiresFelicaSecureElement
{
  devicePrimaryPaymentApplication = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  appletDataFormat = [devicePrimaryPaymentApplication appletDataFormat];

  if (appletDataFormat && @"transit.felica.suica")
  {
    if (([(__CFString *)appletDataFormat isEqual:@"transit.felica.suica"]& 1) != 0)
    {
LABEL_4:
      v4 = 1;
      goto LABEL_10;
    }
  }

  else if (appletDataFormat == @"transit.felica.suica")
  {
    goto LABEL_4;
  }

  if (appletDataFormat && @"transit.apple.octopus")
  {
    v4 = [(__CFString *)appletDataFormat isEqual:@"transit.apple.octopus"];
  }

  else
  {
    v4 = appletDataFormat == @"transit.apple.octopus";
  }

LABEL_10:

  return v4;
}

- (BOOL)shouldIgnoreTransactionUpdatesSwitch
{
  if ([(PKSecureElementPass *)self isTransitPass])
  {
    return 1;
  }

  return [(PKSecureElementPass *)self supportsBarcodePayment];
}

- (BOOL)availableForAutomaticPresentationUsingVASContext
{
  if (![(PKSecureElementPass *)self isPrivateLabel]&& ![(PKSecureElementPass *)self isCobranded])
  {
    return 0;
  }

  associatedPassTypeIdentifiers = [(PKPass *)self associatedPassTypeIdentifiers];
  v4 = [associatedPassTypeIdentifiers count] != 0;

  return v4;
}

- (BOOL)availableForAutomaticPresentationUsingBeaconContext
{
  if ([(PKSecureElementPass *)self isPrivateLabel]|| (v3 = [(PKSecureElementPass *)self isCobranded]))
  {
    v5.receiver = self;
    v5.super_class = PKSecureElementPass;
    LOBYTE(v3) = [(PKPass *)&v5 availableForAutomaticPresentationUsingBeaconContext];
  }

  return v3;
}

- (BOOL)availableForAutomaticPresentationUsingInAppOrWebContext
{
  if (![(PKSecureElementPass *)self isPrivateLabel]&& ![(PKSecureElementPass *)self isCobranded])
  {
    return 0;
  }

  associatedWebDomains = [(PKSecureElementPass *)self associatedWebDomains];
  if ([associatedWebDomains count])
  {
    v4 = 1;
  }

  else
  {
    associatedApplicationIdentifiers = [(PKSecureElementPass *)self associatedApplicationIdentifiers];
    v4 = [associatedApplicationIdentifiers count] != 0;
  }

  return v4;
}

- (NSString)deviceAccountIdentifier
{
  devicePrimaryPaymentApplication = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  dpanIdentifier = [devicePrimaryPaymentApplication dpanIdentifier];

  return dpanIdentifier;
}

- (NSString)deviceAccountNumberSuffix
{
  devicePrimaryPaymentApplication = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  dpanSuffix = [devicePrimaryPaymentApplication dpanSuffix];

  return dpanSuffix;
}

- (id)sanitizedDeviceAccountNumber
{
  devicePrimaryPaymentApplication = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  sanitizedDPAN = [devicePrimaryPaymentApplication sanitizedDPAN];

  return sanitizedDPAN;
}

- (int64_t)effectiveInAppPaymentApplicationState
{
  v17 = *MEMORY[0x1E69E9840];
  devicePrimaryInAppPaymentApplication = [(PKSecureElementPass *)self devicePrimaryInAppPaymentApplication];
  state = [devicePrimaryInAppPaymentApplication state];

  if (state == 15 || state == 1)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    devicePaymentApplications = [(PKSecureElementPass *)self devicePaymentApplications];
    v6 = [devicePaymentApplications countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(devicePaymentApplications);
          }

          state2 = [*(*(&v12 + 1) + 8 * i) state];
          if (state != state2)
          {
            state = state2;
            goto LABEL_13;
          }
        }

        v7 = [devicePaymentApplications countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return state;
}

- (PKPaymentApplication)devicePrimaryContactlessPaymentApplication
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_devicePaymentApplications)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    initializedViaInitWithCoder = [(PKObject *)self initializedViaInitWithCoder];
    v7 = @"was not";
    if (initializedViaInitWithCoder)
    {
      v7 = @"was";
    }

    v8 = [v3 stringWithFormat:@"updateDevicePaymentApplicationsWithSecureElementIdentifiers: must be called before calling devicePrimaryContactlessPaymentApplication. (%@ %@ initialized via initWithCoder:)", v5, v7];

    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Error: %{public}@. Returning nil.", buf, 0xCu);
    }
  }

  devicePrimaryContactlessPaymentApplication = self->_devicePrimaryContactlessPaymentApplication;

  return devicePrimaryContactlessPaymentApplication;
}

- (PKPaymentApplication)devicePrimaryInAppPaymentApplication
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_devicePaymentApplications)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    initializedViaInitWithCoder = [(PKObject *)self initializedViaInitWithCoder];
    v7 = @"was not";
    if (initializedViaInitWithCoder)
    {
      v7 = @"was";
    }

    v8 = [v3 stringWithFormat:@"updateDevicePaymentApplicationsWithSecureElementIdentifiers: must be called before calling devicePrimaryInAppPaymentApplication. (%@ %@ initialized via initWithCoder:)", v5, v7];

    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Error: %{public}@. Returning nil.", buf, 0xCu);
    }
  }

  devicePrimaryInAppPaymentApplication = self->_devicePrimaryInAppPaymentApplication;

  return devicePrimaryInAppPaymentApplication;
}

- (PKPaymentApplication)devicePrimaryBarcodePaymentApplication
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_devicePaymentApplications)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    initializedViaInitWithCoder = [(PKObject *)self initializedViaInitWithCoder];
    v7 = @"was not";
    if (initializedViaInitWithCoder)
    {
      v7 = @"was";
    }

    v8 = [v3 stringWithFormat:@"updateDevicePaymentApplicationsWithSecureElementIdentifiers: must be called before calling devicePrimaryInAppPaymentApplication. (%@ %@ initialized via initWithCoder:)", v5, v7];

    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Error: %{public}@. Returning nil.", buf, 0xCu);
    }
  }

  devicePrimaryBarcodePaymentApplication = self->_devicePrimaryBarcodePaymentApplication;

  return devicePrimaryBarcodePaymentApplication;
}

- (NSSet)deviceInAppPaymentApplications
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_devicePaymentApplications)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    initializedViaInitWithCoder = [(PKObject *)self initializedViaInitWithCoder];
    v7 = @"was not";
    if (initializedViaInitWithCoder)
    {
      v7 = @"was";
    }

    v8 = [v3 stringWithFormat:@"updateDevicePaymentApplicationsWithSecureElementIdentifiers: must be called before calling devicePrimaryInAppPaymentApplication. (%@ %@ initialized via initWithCoder:)", v5, v7];

    v9 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Error: %@. Returning nil.", buf, 0xCu);
    }
  }

  deviceInAppPaymentApplications = self->_deviceInAppPaymentApplications;

  return deviceInAppPaymentApplications;
}

- (id)deviceContactlessPaymentApplications
{
  devicePaymentApplications = [(PKSecureElementPass *)self devicePaymentApplications];
  v3 = [devicePaymentApplications objectsPassingTest:&__block_literal_global_111];

  return v3;
}

uint64_t __59__PKSecureElementPass_deviceContactlessPaymentApplications__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 state];
  if (v3 == 15 || v3 == 1)
  {
    v5 = [v2 supportsContactlessPayment];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasContactlessDevicePaymentApplicationsAvailable
{
  deviceContactlessPaymentApplications = [(PKSecureElementPass *)self deviceContactlessPaymentApplications];
  v3 = [deviceContactlessPaymentApplications count] > 1;

  return v3;
}

- (void)updateDevicePaymentApplicationsWithSecureElementIdentifiers:(id)identifiers
{
  v67 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v5 = identifiersCopy;
  if (identifiersCopy && [identifiersCopy count])
  {
    *buf = 0;
    v57 = buf;
    v58 = 0x3032000000;
    v59 = __Block_byref_object_copy__22;
    v60 = __Block_byref_object_dispose__22;
    v61 = 0;
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    paymentApplications = self->_paymentApplications;
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __83__PKSecureElementPass_updateDevicePaymentApplicationsWithSecureElementIdentifiers___block_invoke;
    v53[3] = &unk_1E79CFB10;
    v55 = buf;
    v8 = v6;
    v54 = v8;
    EnumerateApplicationsForSEIDs(paymentApplications, v5, v53);
    v9 = [v8 copy];
    devicePaymentApplications = self->_devicePaymentApplications;
    self->_devicePaymentApplications = v9;

    objc_storeStrong(&self->_devicePrimaryPaymentApplication, *(v57 + 5));
    if ([(PKPaymentApplication *)self->_devicePrimaryPaymentApplication supportsContactlessPayment])
    {
      v11 = self->_devicePrimaryPaymentApplication;
      devicePrimaryContactlessPaymentApplication = self->_devicePrimaryContactlessPaymentApplication;
      self->_devicePrimaryContactlessPaymentApplication = v11;
    }

    else
    {
      devicePrimaryContactlessPaymentApplication = [(NSSet *)self->_devicePaymentApplications objectsPassingTest:&__block_literal_global_114];
      allObjects = [devicePrimaryContactlessPaymentApplication allObjects];
      v15 = [(PKSecureElementPass *)self sortedPaymentApplications:allObjects ascending:1];
      firstObject = [v15 firstObject];
      v17 = self->_devicePrimaryContactlessPaymentApplication;
      self->_devicePrimaryContactlessPaymentApplication = firstObject;
    }

    if ([(PKPaymentApplication *)self->_devicePrimaryBarcodePaymentApplication supportsBarcodePayment])
    {
      v18 = self->_devicePrimaryPaymentApplication;
      devicePrimaryBarcodePaymentApplication = self->_devicePrimaryBarcodePaymentApplication;
      self->_devicePrimaryBarcodePaymentApplication = v18;
    }

    else
    {
      devicePrimaryBarcodePaymentApplication = [(NSSet *)self->_devicePaymentApplications objectsPassingTest:&__block_literal_global_116_0];
      allObjects2 = [devicePrimaryBarcodePaymentApplication allObjects];
      v21 = [(PKSecureElementPass *)self sortedPaymentApplications:allObjects2 ascending:1];
      firstObject2 = [v21 firstObject];
      v23 = self->_devicePrimaryBarcodePaymentApplication;
      self->_devicePrimaryBarcodePaymentApplication = firstObject2;
    }

    v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v25 = self->_devicePaymentApplications;
    v26 = [(NSSet *)v25 countByEnumeratingWithState:&v49 objects:v66 count:16];
    if (v26)
    {
      v27 = *v50;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v50 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v49 + 1) + 8 * i);
          if ([v29 supportsInAppPayment])
          {
            if ([v29 supportsComboCard])
            {
              paymentApplicationsIncludingAuxiliaryPaymentTypes = [v29 paymentApplicationsIncludingAuxiliaryPaymentTypes];
              [v24 addObjectsFromArray:paymentApplicationsIncludingAuxiliaryPaymentTypes];
            }

            else
            {
              [v24 addObject:v29];
            }
          }
        }

        v26 = [(NSSet *)v25 countByEnumeratingWithState:&v49 objects:v66 count:16];
      }

      while (v26);
    }

    v31 = [v24 copy];
    deviceInAppPaymentApplications = self->_deviceInAppPaymentApplications;
    self->_deviceInAppPaymentApplications = v31;

    if ([(PKPaymentApplication *)self->_devicePrimaryPaymentApplication supportsInAppPayment])
    {
      v33 = self->_devicePrimaryPaymentApplication;
      devicePrimaryInAppPaymentApplication = self->_devicePrimaryInAppPaymentApplication;
      self->_devicePrimaryInAppPaymentApplication = v33;
    }

    else
    {
      devicePrimaryInAppPaymentApplication = [(NSSet *)self->_deviceInAppPaymentApplications allObjects];
      v35 = [(PKSecureElementPass *)self sortedPaymentApplications:devicePrimaryInAppPaymentApplication ascending:1];
      firstObject3 = [v35 firstObject];
      v37 = self->_devicePrimaryInAppPaymentApplication;
      self->_devicePrimaryInAppPaymentApplication = firstObject3;
    }

    v38 = self->_devicePrimaryInAppPaymentApplication;
    if (v38 && [(PKPaymentApplication *)v38 supportsComboCard])
    {
      paymentApplicationsIncludingAuxiliaryPaymentTypes2 = [(PKPaymentApplication *)self->_devicePrimaryInAppPaymentApplication paymentApplicationsIncludingAuxiliaryPaymentTypes];
      firstObject4 = [paymentApplicationsIncludingAuxiliaryPaymentTypes2 firstObject];
      v41 = self->_devicePrimaryInAppPaymentApplication;
      self->_devicePrimaryInAppPaymentApplication = firstObject4;
    }

    if (self->_devicePrimaryPaymentApplication)
    {
      goto LABEL_39;
    }

    if ([(PKSecureElementPass *)self hasAssociatedPeerPaymentAccount])
    {
      v42 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *v62 = 0;
        v43 = "PeerPayment pass found without devicePrimaryPaymentApplication. This could be the ghost pass.";
LABEL_36:
        v46 = v42;
        v47 = 2;
LABEL_37:
        _os_log_impl(&dword_1AD337000, v46, OS_LOG_TYPE_DEFAULT, v43, v62, v47);
      }
    }

    else
    {
      associatedAccountServiceAccountIdentifier = [(PKSecureElementPass *)self associatedAccountServiceAccountIdentifier];

      v42 = PKLogFacilityTypeGetObject(7uLL);
      v45 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
      if (!associatedAccountServiceAccountIdentifier)
      {
        if (!v45)
        {
          goto LABEL_38;
        }

        v48 = self->_paymentApplications;
        *v62 = 138412546;
        v63 = v5;
        v64 = 2112;
        v65 = v48;
        v43 = "Failed to find devicePrimaryPaymentApplication for seids: %@ in payment applications: %@";
        v46 = v42;
        v47 = 22;
        goto LABEL_37;
      }

      if (v45)
      {
        *v62 = 0;
        v43 = "Pass with associatedAccountServiceAccountIdentifier found without devicePrimaryPaymentApplication. This could be the ghost pass.";
        goto LABEL_36;
      }
    }

LABEL_38:

LABEL_39:
    _Block_object_dispose(buf, 8);

    goto LABEL_40;
  }

  v13 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Error: PKPaymentPass updateDevicePaymentApplicationsWithSecureElementIdentifiers: called with no identifiers. Here be dragons!", buf, 2u);
  }

LABEL_40:
}

void __83__PKSecureElementPass_updateDevicePaymentApplicationsWithSecureElementIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  v7 = v4;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v6 = [v4 isAuxiliary];
    v5 = v7;
    if ((v6 & 1) == 0)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      v5 = v7;
    }
  }

  [*(a1 + 32) addObject:v5];
}

- (void)sanitizePaymentApplications
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = self->_paymentApplications;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      v8 = 0;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v27 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v6);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = self->_devicePaymentApplications;
  v10 = [(NSSet *)v9 countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v3 addObject:*(*(&v23 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [(NSSet *)v9 countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v11);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = v3;
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v19 + 1) + 8 * v18++) setSecureElementIdentifier:{0, v19}];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v31 count:16];
    }

    while (v16);
  }
}

- (BOOL)supportsWebPaymentMode:(int64_t)mode withExclusionList:(id)list clientOSVersion:(id)version
{
  v19 = *MEMORY[0x1E69E9840];
  listCopy = list;
  versionCopy = version;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_deviceInAppPaymentApplications;
  v10 = [(NSSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = *v15;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v9);
        }

        if ([*(*(&v14 + 1) + 8 * i) supportsWebPaymentMode:2 withExclusionList:listCopy clientOSVersion:{versionCopy, v14}])
        {
          LOBYTE(v10) = 1;
          goto LABEL_11;
        }
      }

      v10 = [(NSSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v10;
}

- (NSString)cobrandName
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  cobrandName = [contentLoadedIfNeeded cobrandName];

  return cobrandName;
}

- (NSString)shippingAddressSeed
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  shippingAddressSeed = [contentLoadedIfNeeded shippingAddressSeed];

  return shippingAddressSeed;
}

- (NSString)speakableMake
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  speakableMake = [contentLoadedIfNeeded speakableMake];

  return speakableMake;
}

- (NSString)speakableModel
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  speakableModel = [contentLoadedIfNeeded speakableModel];

  return speakableModel;
}

- (PKSiriIntentsConfiguration)supportedSiriIntents
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  supportedSiriIntents = [contentLoadedIfNeeded supportedSiriIntents];

  return supportedSiriIntents;
}

- (NSURL)transactionServiceURL
{
  _transactionServiceURLOverride = [(PKSecureElementPass *)self _transactionServiceURLOverride];
  v4 = _transactionServiceURLOverride;
  if (_transactionServiceURLOverride)
  {
    transactionServiceURL = _transactionServiceURLOverride;
  }

  else
  {
    contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
    transactionServiceURL = [contentLoadedIfNeeded transactionServiceURL];
  }

  return transactionServiceURL;
}

- (NSURL)transactionServiceRegistrationURL
{
  _transactionServiceURLOverride = [(PKSecureElementPass *)self _transactionServiceURLOverride];
  v4 = _transactionServiceURLOverride;
  if (_transactionServiceURLOverride)
  {
    transactionServiceRegistrationURL = _transactionServiceURLOverride;
  }

  else
  {
    contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
    transactionServiceRegistrationURL = [contentLoadedIfNeeded transactionServiceRegistrationURL];
  }

  return transactionServiceRegistrationURL;
}

- (NSString)transactionPushTopic
{
  uniqueID = [(PKObject *)self uniqueID];
  v4 = PKTransactionServicePushTopicOverrideForPassUniqueIdentifier(uniqueID);

  if (v4)
  {
    transactionPushTopic = v4;
  }

  else
  {
    contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
    transactionPushTopic = [contentLoadedIfNeeded transactionPushTopic];
  }

  return transactionPushTopic;
}

- (NSURL)messageServiceURL
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  messageServiceURL = [contentLoadedIfNeeded messageServiceURL];

  return messageServiceURL;
}

- (NSURL)messageServiceRegistrationURL
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  messageServiceRegistrationURL = [contentLoadedIfNeeded messageServiceRegistrationURL];

  return messageServiceRegistrationURL;
}

- (NSString)messagePushTopic
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  messagePushTopic = [contentLoadedIfNeeded messagePushTopic];

  return messagePushTopic;
}

- (NSString)appURLScheme
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  appURLScheme = [contentLoadedIfNeeded appURLScheme];

  return appURLScheme;
}

- (NSString)localizedSuspendedReason
{
  devicePrimaryPaymentApplication = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  applicationIdentifier = [devicePrimaryPaymentApplication applicationIdentifier];

  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  localizedSuspendedReasonsByAID = [contentLoadedIfNeeded localizedSuspendedReasonsByAID];
  body = [localizedSuspendedReasonsByAID objectForKey:applicationIdentifier];

  if (!body)
  {
    devicePrimaryPaymentApplication2 = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
    state = [devicePrimaryPaymentApplication2 state];

    if (state == 9)
    {
      v10 = [(PKSecureElementPass *)self _appletStateOverrideForAID:applicationIdentifier ofType:1];
      body = [v10 body];
    }

    else
    {
      body = 0;
    }
  }

  return body;
}

- (id)appletStateMessageOverrideOfType:(unint64_t)type
{
  devicePrimaryPaymentApplication = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  applicationIdentifier = [devicePrimaryPaymentApplication applicationIdentifier];
  v7 = [(PKSecureElementPass *)self _appletStateOverrideForAID:applicationIdentifier ofType:type];

  return v7;
}

- (id)_appletStateOverrideForAID:(id)d ofType:(unint64_t)type
{
  dCopy = d;
  if (type == 2)
  {
    contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
    paymentApplicationStateNotificationMessageOverridesByAID = [contentLoadedIfNeeded paymentApplicationStateNotificationMessageOverridesByAID];
    goto LABEL_5;
  }

  if (type == 1)
  {
    contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
    paymentApplicationStateNotificationMessageOverridesByAID = [contentLoadedIfNeeded paymentApplicationStateDashboardMessageOverridesByAID];
LABEL_5:
    v9 = paymentApplicationStateNotificationMessageOverridesByAID;

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  v10 = [v9 objectForKey:dCopy];

  return v10;
}

- (BOOL)supportsOnlyTransit
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  supportsTransitOnly = [contentLoadedIfNeeded supportsTransitOnly];

  return supportsTransitOnly;
}

- (unint64_t)transitCommutePlanType
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  transitCommutePlanType = [contentLoadedIfNeeded transitCommutePlanType];

  return transitCommutePlanType;
}

- (id)transitCommutePlans
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  transitCommutePlans = [contentLoadedIfNeeded transitCommutePlans];

  return transitCommutePlans;
}

- (id)notificationCenterTitle
{
  if ([(PKSecureElementPass *)self isStoredValuePass]|| [(PKSecureElementPass *)self hasAssociatedPeerPaymentAccount]|| [(PKSecureElementPass *)self associatedAccountFeatureIdentifier]== 4)
  {
    localizedDescription = [(PKPass *)self localizedDescription];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PKSecureElementPass;
    localizedDescription = [(PKPass *)&v5 notificationCenterTitle];
  }

  return localizedDescription;
}

- (NSArray)availableActions
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  availableActions = [contentLoadedIfNeeded availableActions];

  return availableActions;
}

- (id)actionLocalizations
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  actionLocalizations = [contentLoadedIfNeeded actionLocalizations];

  return actionLocalizations;
}

- (id)actionGroups
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  actionGroups = [contentLoadedIfNeeded actionGroups];

  return actionGroups;
}

- (NSArray)upgradeRequests
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  upgradeRequests = [contentLoadedIfNeeded upgradeRequests];

  return upgradeRequests;
}

- (id)eligibleExpressUpgradeRequestsForDeviceClass:(id)class deviceSEIDs:(id)ds deviceVersion:(id)version technologyTest:(id)test
{
  v70 = *MEMORY[0x1E69E9840];
  classCopy = class;
  dsCopy = ds;
  versionCopy = version;
  testCopy = test;
  v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  selfCopy = self;
  upgradeRequests = [(PKSecureElementPass *)self upgradeRequests];
  v15 = [upgradeRequests countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v62;
    v47 = dsCopy;
    v48 = classCopy;
    v45 = testCopy;
    v46 = versionCopy;
    v43 = *v62;
    v44 = upgradeRequests;
    do
    {
      v18 = 0;
      v50 = v16;
      do
      {
        if (*v62 != v17)
        {
          objc_enumerationMutation(upgradeRequests);
        }

        v19 = *(*(&v61 + 1) + 8 * v18);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          osVersionRange = [v19 osVersionRange];
          if ((!osVersionRange || [osVersionRange versionMeetsRequirements:versionCopy deviceClass:classCopy]) && objc_msgSend(v19, "type") == 1)
          {
            secureElementIdentifier = [v19 secureElementIdentifier];
            if ([dsCopy containsObject:?])
            {
              paymentApplicationIdentifiers = [v19 paymentApplicationIdentifiers];
              v57 = 0u;
              v58 = 0u;
              v59 = 0u;
              v60 = 0u;
              devicePaymentApplications = [(PKSecureElementPass *)selfCopy devicePaymentApplications];
              v22 = [devicePaymentApplications countByEnumeratingWithState:&v57 objects:v68 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = 0;
                v25 = *v58;
                do
                {
                  for (i = 0; i != v23; ++i)
                  {
                    if (*v58 != v25)
                    {
                      objc_enumerationMutation(devicePaymentApplications);
                    }

                    v27 = *(*(&v57 + 1) + 8 * i);
                    applicationIdentifier = [v27 applicationIdentifier];
                    if ([paymentApplicationIdentifiers containsObject:applicationIdentifier])
                    {
                      state = [v27 state];
                      if ((state - 1) > 0xE)
                      {
                        v30 = 0;
                      }

                      else
                      {
                        v30 = qword_1ADB9A568[state - 1];
                      }

                      v24 += v30;
                    }

                    else
                    {
                    }
                  }

                  v31 = v19;
                  v23 = [devicePaymentApplications countByEnumeratingWithState:&v57 objects:v68 count:16];
                }

                while (v23);
              }

              else
              {
                v31 = v19;
                v24 = 0;
              }

              testCopy = v45;
              if (v24 == [paymentApplicationIdentifiers count])
              {
                v55 = 0u;
                v56 = 0u;
                v53 = 0u;
                v54 = 0u;
                technologyTypes = [v31 technologyTypes];
                v33 = [technologyTypes countByEnumeratingWithState:&v53 objects:v65 count:16];
                dsCopy = v47;
                upgradeRequests = v44;
                if (v33)
                {
                  v34 = v33;
                  v35 = *v54;
                  while (2)
                  {
                    for (j = 0; j != v34; ++j)
                    {
                      if (*v54 != v35)
                      {
                        objc_enumerationMutation(technologyTypes);
                      }

                      v37 = PKPassAutomaticSelectionTechnologyTypeFromType(*(*(&v53 + 1) + 8 * j));
                      if (!v45[2](v45, v37))
                      {

                        goto LABEL_40;
                      }
                    }

                    v34 = [technologyTypes countByEnumeratingWithState:&v53 objects:v65 count:16];
                    if (v34)
                    {
                      continue;
                    }

                    break;
                  }
                }

                [v42 addObject:v19];
LABEL_40:
                classCopy = v48;
                versionCopy = v46;
              }

              else
              {
                v38 = PKLogFacilityTypeGetObject(7uLL);
                dsCopy = v47;
                classCopy = v48;
                versionCopy = v46;
                upgradeRequests = v44;
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v67 = paymentApplicationIdentifiers;
                  _os_log_impl(&dword_1AD337000, v38, OS_LOG_TYPE_DEFAULT, "Discarding upgrade request. One or more invalid payment applications: %@", buf, 0xCu);
                }
              }

              v17 = v43;
              v16 = v50;
            }
          }
        }

        ++v18;
      }

      while (v18 != v16);
      v16 = [upgradeRequests countByEnumeratingWithState:&v61 objects:v69 count:16];
    }

    while (v16);
  }

  if ([v42 count])
  {
    v39 = v42;
  }

  else
  {
    v39 = 0;
  }

  v40 = v39;

  return v39;
}

- (id)precursorUpgradeRequestsForDeviceSEIDs:(id)ds deviceClass:(id)class deviceVersion:(id)version
{
  v37 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  classCopy = class;
  versionCopy = version;
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  upgradeRequests = [(PKSecureElementPass *)self upgradeRequests];
  v12 = [upgradeRequests countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v31;
    *&v13 = 138412290;
    v27 = v13;
    v28 = dsCopy;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(upgradeRequests);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        if ([v17 type] == 2)
        {
          v18 = v17;
          secureElementIdentifier = [v18 secureElementIdentifier];
          if ([dsCopy containsObject:secureElementIdentifier])
          {
            osVersionRange = [v18 osVersionRange];
            v21 = osVersionRange;
            if (osVersionRange && ([osVersionRange versionMeetsRequirements:versionCopy deviceClass:classCopy] & 1) == 0)
            {
              v22 = versionCopy;
              v23 = classCopy;
              v24 = PKLogFacilityTypeGetObject(0x27uLL);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v27;
                v35 = v18;
                _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "Precursor request does not meet os version requirements: %@", buf, 0xCu);
              }

              classCopy = v23;
              versionCopy = v22;
              dsCopy = v28;
            }

            else
            {
              [v29 addObject:v18];
            }
          }
        }
      }

      v14 = [upgradeRequests countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v14);
  }

  if ([v29 count])
  {
    v25 = v29;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (int64_t)identityType
{
  devicePrimaryPaymentApplication = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  paymentNetworkIdentifier = [devicePrimaryPaymentApplication paymentNetworkIdentifier];

  if (paymentNetworkIdentifier == 140)
  {
    return 5;
  }

  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  identityType = [contentLoadedIfNeeded identityType];

  return identityType;
}

- (int64_t)accessType
{
  devicePaymentApplications = [(PKSecureElementPass *)self devicePaymentApplications];
  accessType = self->_accessType;
  if (PKIsCarKeyPass(devicePaymentApplications))
  {
    accessType = 4;
  }

  return accessType;
}

- (NSString)accessReportingType
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  accessReportingType = [contentLoadedIfNeeded accessReportingType];

  return accessReportingType;
}

- (int64_t)paymentType
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  paymentType = [contentLoadedIfNeeded paymentType];

  return paymentType;
}

- (unint64_t)supportedRadioTechnologies
{
  v14 = *MEMORY[0x1E69E9840];
  paymentApplications = [(PKSecureElementPass *)self paymentApplications];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [paymentApplications countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(paymentApplications);
        }

        v5 |= [*(*(&v9 + 1) + 8 * i) supportedRadioTechnologies];
      }

      v4 = [paymentApplications countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PKPassAuxiliaryRegistrationRequirements)auxiliaryRegistrationRequirements
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  auxiliaryRegistrationRequirements = [contentLoadedIfNeeded auxiliaryRegistrationRequirements];

  return auxiliaryRegistrationRequirements;
}

- (id)longTermPrivacyKeyGroupIdentifier
{
  contentLoadedIfNeeded = [(PKObject *)self contentLoadedIfNeeded];
  auxiliaryRegistrationRequirements = [contentLoadedIfNeeded auxiliaryRegistrationRequirements];
  deviceDecryptionRequirements = [auxiliaryRegistrationRequirements deviceDecryptionRequirements];
  v5 = [deviceDecryptionRequirements pk_firstObjectPassingTest:&__block_literal_global_128];

  groupIdentifier = [v5 groupIdentifier];

  return groupIdentifier;
}

- (PKTransitPassProperties)transitProperties
{
  devicePrimaryPaymentApplication = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  transitProperties = [devicePrimaryPaymentApplication transitProperties];

  return transitProperties;
}

- (id)addValueURL
{
  v19 = *MEMORY[0x1E69E9840];
  [(PKSecureElementPass *)self availableActions];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v15 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v14 + 1) + 8 * v7);
      if ([v8 type] == 1)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v9 = v8;

    v13 = 0;
    if (v9 && ([(PKSecureElementPass *)self canPerformAction:v9 unableReason:&v13 displayableError:0]|| v13 == 7 || v13 == 2))
    {
      v10 = [(PKSecureElementPass *)self _launchURLForPassAction:v9];
      goto LABEL_16;
    }
  }

  else
  {
LABEL_9:

    v9 = 0;
  }

  v10 = 0;
LABEL_16:
  v11 = v10;

  return v10;
}

- (id)_launchURLForPassAction:(id)action
{
  actionCopy = action;
  uniqueID = [(PKObject *)self uniqueID];
  if (uniqueID && ![(PKPass *)self isRemotePass]&& ([(PKStoredValuePassProperties *)PKTransitPassProperties passPropertiesForPass:self], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v7 setScheme:@"shoebox"];
    [v7 setHost:@"card"];
    v8 = PKPaymentPassActionTypeToString([actionCopy type]);
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@/%@", uniqueID, v8];
    [v7 setPath:v9];

    v10 = [v7 URL];
    v11 = [v10 copy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)shouldSuppressNoChargeAmount
{
  devicePrimaryPaymentApplication = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  paymentNetworkIdentifier = [devicePrimaryPaymentApplication paymentNetworkIdentifier];

  return (paymentNetworkIdentifier & 0xFFFFFFFFFFFFFFFELL) == 108;
}

- (BOOL)isContactlessPaymentSupportedForTransitNetworks:(id)networks
{
  networksCopy = networks;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  deviceContactlessPaymentApplications = [(PKSecureElementPass *)self deviceContactlessPaymentApplications];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__PKSecureElementPass_isContactlessPaymentSupportedForTransitNetworks___block_invoke;
  v8[3] = &unk_1E79CFB10;
  v6 = networksCopy;
  v9 = v6;
  v10 = &v11;
  [deviceContactlessPaymentApplications enumerateObjectsUsingBlock:v8];

  LOBYTE(deviceContactlessPaymentApplications) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return deviceContactlessPaymentApplications;
}

void __71__PKSecureElementPass_isContactlessPaymentSupportedForTransitNetworks___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 supportedTransitNetworkIdentifiers];
  if (![v6 count])
  {
    v7 = PKLegacyTransitNetworkIdentifierForCredentialType([v5 paymentNetworkIdentifier]);
    v8 = v7;
    if (v7)
    {
      v20[0] = v7;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];

      v6 = v9;
    }
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(a1 + 32) containsObject:{*(*(&v15 + 1) + 8 * i), v15}])
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          *a3 = 1;
          goto LABEL_15;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

- (id)deviceTransactionSourceIdentifiers
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->_devicePaymentApplications)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = self->_devicePaymentApplications;
    v5 = [(NSSet *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          transactionSourceIdentifier = [*(*(&v18 + 1) + 8 * i) transactionSourceIdentifier];
          if (transactionSourceIdentifier)
          {
            [v3 addObject:transactionSourceIdentifier];
          }
        }

        v6 = [(NSSet *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    transactionSourceIdentifier2 = [(PKSecureElementPass *)self transactionSourceIdentifier];
    if (transactionSourceIdentifier2)
    {
      [v3 addObject:transactionSourceIdentifier2];
    }

    v11 = [v3 copy];
  }

  else
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    initializedViaInitWithCoder = [(PKObject *)self initializedViaInitWithCoder];
    v16 = @"was not";
    if (initializedViaInitWithCoder)
    {
      v16 = @"was";
    }

    v3 = [v12 stringWithFormat:@"updateDevicePaymentApplicationsWithSecureElementIdentifiers: must be called before calling devicePaymentApplications. (%@ %@ initialized via initWithCoder:)", v14, v16];

    transactionSourceIdentifier2 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(transactionSourceIdentifier2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v3;
      _os_log_impl(&dword_1AD337000, transactionSourceIdentifier2, OS_LOG_TYPE_DEFAULT, "Error: %{public}@. Returning nil.", buf, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)hasDeviceTransactionSourceIdentifier:(id)identifier
{
  v34 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!self->_devicePaymentApplications)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    initializedViaInitWithCoder = [(PKObject *)self initializedViaInitWithCoder];
    v13 = @"was not";
    if (initializedViaInitWithCoder)
    {
      v13 = @"was";
    }

    v14 = [v9 stringWithFormat:@"updateDevicePaymentApplicationsWithSecureElementIdentifiers: must be called before calling devicePaymentApplications. (%@ %@ initialized via initWithCoder:)", v11, v13];

    v15 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v33 = v14;
      _os_log_impl(&dword_1AD337000, v15, OS_LOG_TYPE_DEFAULT, "Error: %{public}@. Returning NO.", buf, 0xCu);
    }

    v16 = 0;
    goto LABEL_32;
  }

  transactionSourceIdentifier = [(PKSecureElementPass *)self transactionSourceIdentifier];
  v6 = identifierCopy;
  v7 = v6;
  if (transactionSourceIdentifier == v6)
  {

    goto LABEL_13;
  }

  if (v6 && transactionSourceIdentifier)
  {
    v8 = [transactionSourceIdentifier isEqualToString:v6];

    if ((v8 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_13:
    v16 = 1;
    goto LABEL_32;
  }

LABEL_15:
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = self->_devicePaymentApplications;
  v18 = [(NSSet *)v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        transactionSourceIdentifier2 = [*(*(&v27 + 1) + 8 * i) transactionSourceIdentifier];
        v23 = v7;
        v24 = v23;
        if (transactionSourceIdentifier2 == v23)
        {

LABEL_30:
          v16 = 1;
          goto LABEL_31;
        }

        if (v7 && transactionSourceIdentifier2)
        {
          v25 = [transactionSourceIdentifier2 isEqualToString:v23];

          if (v25)
          {
            goto LABEL_30;
          }
        }

        else
        {
        }
      }

      v19 = [(NSSet *)v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_31:

LABEL_32:
  return v16;
}

- (id)_transactionServiceURLOverride
{
  uniqueID = [(PKObject *)self uniqueID];
  v3 = PKTransactionServiceURLOverrideForPassUniqueIdentifier(uniqueID);

  if (v3)
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_passCredentialFilesWithPrefix:(id)prefix extension:(id)extension forSecureElementIdentifiers:(id)identifiers
{
  v42 = *MEMORY[0x1E69E9840];
  prefixCopy = prefix;
  extensionCopy = extension;
  identifiersCopy = identifiers;
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v23 = identifiersCopy;
  obj = [(PKSecureElementPass *)self paymentApplicationsForSecureElementIdentifiers:identifiersCopy];
  v26 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v26)
  {
    v25 = *v37;
    do
    {
      v9 = 0;
      do
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v9;
        v10 = *(*(&v36 + 1) + 8 * v9);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        subcredentials = [v10 subcredentials];
        v11 = [subcredentials countByEnumeratingWithState:&v32 objects:v40 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v33;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v33 != v13)
              {
                objc_enumerationMutation(subcredentials);
              }

              v15 = *(*(&v32 + 1) + 8 * i);
              identifier = [v15 identifier];
              v17 = [prefixCopy stringByAppendingString:identifier];
              dataAccessor = [(PKObject *)self dataAccessor];
              v19 = [dataAccessor dataForBundleResourceNamed:v17 withExtension:extensionCopy];

              if (v19)
              {
                strongToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
                [strongToStrongObjectsMapTable2 setObject:v19 forKey:v15];
                [strongToStrongObjectsMapTable setObject:strongToStrongObjectsMapTable2 forKey:v10];
              }
            }

            v12 = [subcredentials countByEnumeratingWithState:&v32 objects:v40 count:16];
          }

          while (v12);
        }

        v9 = v27 + 1;
      }

      while (v27 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v26);
  }

  v21 = [strongToStrongObjectsMapTable copy];

  return v21;
}

- (id)_deviceSubcredentialEndpointIdentifiers
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  devicePaymentApplications = [(PKSecureElementPass *)self devicePaymentApplications];
  v5 = [devicePaymentApplications countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(devicePaymentApplications);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        subcredentials = [v9 subcredentials];
        v11 = [subcredentials countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(subcredentials);
              }

              endpointIdentifier = [*(*(&v18 + 1) + 8 * j) endpointIdentifier];
              [v3 pk_safelyAddObject:endpointIdentifier];
            }

            v12 = [subcredentials countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v6 = [devicePaymentApplications countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v16 = [v3 copy];

  return v16;
}

- (id)_passSubcredentialFilesWithPrefix:(id)prefix extension:(id)extension forSecureElementIdentifiers:(id)identifiers
{
  v39 = *MEMORY[0x1E69E9840];
  prefixCopy = prefix;
  extensionCopy = extension;
  identifiersCopy = identifiers;
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v26 = extensionCopy;
  v27 = prefixCopy;
  v25 = identifiersCopy;
  v12 = [(PKSecureElementPass *)self _passCredentialFilesWithPrefix:prefixCopy extension:extensionCopy forSecureElementIdentifiers:identifiersCopy];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v28 = *v34;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v34 != v28)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [v12 objectForKey:*(*(&v33 + 1) + 8 * i)];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v17 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v30;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v30 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v29 + 1) + 8 * j);
              v22 = [v16 objectForKey:v21];
              [strongToStrongObjectsMapTable setObject:v22 forKey:v21];
            }

            v18 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v18);
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v14);
  }

  v23 = [strongToStrongObjectsMapTable copy];

  return v23;
}

- (BOOL)preventsWalletDeletion
{
  passActivationState = [(PKSecureElementPass *)self passActivationState];
  if ([(PKSecureElementPass *)self hasAssociatedPeerPaymentAccount])
  {
    return (passActivationState & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  else
  {
    return [(PKSecureElementPass *)self accessType]!= 3;
  }
}

- (BOOL)supportsVirtualCardNumber
{
  v3 = +[PKPaymentWebService sharedService];
  LOBYTE(self) = [(PKSecureElementPass *)self supportsVirtualCardNumberAccordingToWebService:v3];

  return self;
}

- (BOOL)supportsVirtualCardNumberAccordingToWebService:(id)service
{
  serviceCopy = service;
  if ([(PKSecureElementPass *)self passActivationState])
  {
    devicePrimaryPaymentApplication = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(devicePrimaryPaymentApplication, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 0;
      v6 = "Not offering VPAN (pass not activated)";
      v7 = &v20;
LABEL_11:
      _os_log_impl(&dword_1AD337000, devicePrimaryPaymentApplication, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v8 = _os_feature_enabled_impl();
  associatedAccountFeatureIdentifier = self->_associatedAccountFeatureIdentifier;
  if (associatedAccountFeatureIdentifier == 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (!associatedAccountFeatureIdentifier || (v10 & 1) != 0)
  {
    devicePrimaryPaymentApplication = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
    if (devicePrimaryPaymentApplication)
    {
      v13 = [PKWebServiceVirtualCardFeature virtualCardFeatureWithWebService:serviceCopy];
      if (v13)
      {
        v14 = v13;
        targetDevice = [serviceCopy targetDevice];
        v11 = [v14 doesPaymentApplication:devicePrimaryPaymentApplication supportVPANOnDevice:targetDevice associatedAccountFeatureIdentifier:self->_associatedAccountFeatureIdentifier];

LABEL_23:
        goto LABEL_13;
      }

      v16 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v17 = 0;
        _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, "Not offering VPAN (not enabled)", v17, 2u);
      }

      v14 = 0;
    }

    else
    {
      v14 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Not offering VPAN (no payment application)", v18, 2u);
      }
    }

    v11 = 0;
    goto LABEL_23;
  }

  devicePrimaryPaymentApplication = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(devicePrimaryPaymentApplication, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v6 = "Not offering VPAN (unsupported feature)";
    v7 = buf;
    goto LABEL_11;
  }

LABEL_12:
  v11 = 0;
LABEL_13:

  return v11;
}

- (BOOL)hasActiveVirtualCard
{
  v3 = +[PKPaymentWebService sharedService];
  LOBYTE(self) = [(PKSecureElementPass *)self hasActiveVirtualCardAccordingToWebService:v3];

  return self;
}

- (BOOL)hasActiveVirtualCardAccordingToWebService:(id)service
{
  serviceCopy = service;
  if ([(PKSecureElementPass *)self passActivationState])
  {
    v5 = 0;
  }

  else
  {
    v6 = [PKVirtualCard cardsForPaymentPass:self accordingToWebService:serviceCopy];
    v5 = [v6 count] != 0;
  }

  return v5;
}

- (id)virtualCardSuffix
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  paymentApplications = [(PKSecureElementPass *)self paymentApplications];
  virtualCardSuffix2 = [paymentApplications countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (virtualCardSuffix2)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != virtualCardSuffix2; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(paymentApplications);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        virtualCardSuffix = [v6 virtualCardSuffix];

        if (virtualCardSuffix)
        {
          virtualCardSuffix2 = [v6 virtualCardSuffix];
          goto LABEL_11;
        }
      }

      virtualCardSuffix2 = [paymentApplications countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (virtualCardSuffix2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return virtualCardSuffix2;
}

- (BOOL)supportsDeviceAssessmentAccordingToService:(id)service
{
  serviceCopy = service;
  devicePaymentApplications = [(PKSecureElementPass *)self devicePaymentApplications];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__PKSecureElementPass_supportsDeviceAssessmentAccordingToService___block_invoke;
  v9[3] = &unk_1E79CFB58;
  v10 = serviceCopy;
  v6 = serviceCopy;
  v7 = [devicePaymentApplications pk_hasObjectPassingTest:v9];

  return v7;
}

- (BOOL)shouldDisplayDeviceAssessmentEducationAccordingToService:(id)service
{
  serviceCopy = service;
  v5 = !PKHasSeenDeviceAssessmentEducation() && [(PKSecureElementPass *)self supportsDeviceAssessmentAccordingToService:serviceCopy];

  return v5;
}

- (BOOL)supportsFeatureForCurrentDevice:(unint64_t)device
{
  if ([(PKPaymentApplication *)self->_devicePrimaryPaymentApplication isShareable])
  {
    return 1;
  }

  if ([(PKSecureElementPass *)self isCarKeyPass])
  {
    subcredentials = [(PKPaymentApplication *)self->_devicePrimaryPaymentApplication subcredentials];
    anyObject = [subcredentials anyObject];
    isShareable = [anyObject isShareable];

    if (isShareable)
    {
      return 1;
    }
  }

  v9 = PKDeviceClass();
  v10 = +[PKOSVersionRequirement fromDeviceVersion];
  v12.receiver = self;
  v12.super_class = PKSecureElementPass;
  v5 = [(PKPass *)&v12 supportsFeature:device forDevice:v9 version:v10];

  return v5;
}

- (BOOL)isAutoTopUpBalance:(id)balance
{
  v21 = *MEMORY[0x1E69E9840];
  identifiers = [balance identifiers];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  autoTopUpFields = [(PKPass *)self autoTopUpFields];
  v6 = [autoTopUpFields countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(autoTopUpFields);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 key];
        if ([v11 isEqualToString:@"auto_top_up_field_value"])
        {
          foreignReferenceIdentifiers = [v10 foreignReferenceIdentifiers];
          v13 = [foreignReferenceIdentifiers intersectsSet:identifiers];

          if (v13)
          {
            v14 = 1;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v7 = [autoTopUpFields countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (id)autoTopUpBalanceIdentifiers
{
  selfCopy = self;
  v31 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  balanceFields = [(PKPass *)self balanceFields];
  v19 = [balanceFields countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v19)
  {
    v4 = *v26;
    v20 = balanceFields;
    v17 = *v26;
    v18 = selfCopy;
    do
    {
      v5 = 0;
      do
      {
        if (*v26 != v4)
        {
          objc_enumerationMutation(balanceFields);
        }

        foreignReferenceIdentifiers = [*(*(&v25 + 1) + 8 * v5) foreignReferenceIdentifiers];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        autoTopUpFields = [(PKPass *)selfCopy autoTopUpFields];
        v8 = [autoTopUpFields countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v22;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v22 != v10)
              {
                objc_enumerationMutation(autoTopUpFields);
              }

              v12 = *(*(&v21 + 1) + 8 * i);
              v13 = [v12 key];
              if ([v13 isEqualToString:@"auto_top_up_field_value"])
              {
                foreignReferenceIdentifiers2 = [v12 foreignReferenceIdentifiers];
                v15 = [foreignReferenceIdentifiers2 intersectsSet:foreignReferenceIdentifiers];

                if (v15)
                {

                  balanceFields = v20;
                  goto LABEL_21;
                }
              }

              else
              {
              }
            }

            v9 = [autoTopUpFields countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v9);
        }

        ++v5;
        balanceFields = v20;
        v4 = v17;
        selfCopy = v18;
      }

      while (v5 != v19);
      foreignReferenceIdentifiers = 0;
      v19 = [v20 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v19);
  }

  else
  {
    foreignReferenceIdentifiers = 0;
  }

LABEL_21:

  return foreignReferenceIdentifiers;
}

- (id)autoTopUpMerchantTokenIdentifier
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  balances = [(PKPass *)self balances];
  merchantTokenIdentifier = [balances countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (merchantTokenIdentifier)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != merchantTokenIdentifier; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(balances);
        }

        paymentMethod = [*(*(&v8 + 1) + 8 * i) paymentMethod];
        if (![paymentMethod type])
        {
          merchantTokenIdentifier = [paymentMethod merchantTokenIdentifier];

          goto LABEL_11;
        }
      }

      merchantTokenIdentifier = [balances countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (merchantTokenIdentifier)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return merchantTokenIdentifier;
}

- (BOOL)shouldRampBacklight
{
  if ([(PKSecureElementPass *)self isAccessPass])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = PKSecureElementPass;
  return [(PKPass *)&v4 shouldRampBacklight];
}

- (BOOL)canPerformAction:(id)action unableReason:(unint64_t *)reason displayableError:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  if (PKRunningInPassd())
  {
    v10 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = NSStringFromSelector(a2);
      *buf = 138543618;
      v32 = v29;
      v33 = 2114;
      v34 = v30;
      _os_log_error_impl(&dword_1AD337000, v10, OS_LOG_TYPE_ERROR, "Calling [%{public}@ %{public}@] is unsupported from passd. Use [PDDatabaseManager canPerformAction:forPassWithUniqueIdentifier:] instead.", buf, 0x16u);
    }
  }

  if ([actionCopy type] == 2)
  {
    associatedPlanIdentifier = [actionCopy associatedPlanIdentifier];
    if (associatedPlanIdentifier)
    {
      associatedPlan = [actionCopy associatedPlan];

      if (!associatedPlan)
      {
        paymentPass = [(PKPass *)self paymentPass];
        v14 = PKTransitCommutePlanInPassForIdentifier(paymentPass, associatedPlanIdentifier);

        [actionCopy setAssociatedPlan:v14];
      }
    }
  }

  availableFrom = [actionCopy availableFrom];
  availableUntil = [actionCopy availableUntil];
  date = [MEMORY[0x1E695DF00] date];
  if (PKCurrentPassbookState() > 1)
  {
    PaymentsUsingNetworksIssuerCountryCodesWithCapabilitiesAndRequestType = 0;
    v22 = 6;
    if (reason)
    {
      goto LABEL_37;
    }
  }

  else
  {
    effectiveContactlessPaymentApplicationState = [(PKSecureElementPass *)self effectiveContactlessPaymentApplicationState];
    v19 = effectiveContactlessPaymentApplicationState != 15 && effectiveContactlessPaymentApplicationState != 1;
    if (effectiveContactlessPaymentApplicationState != 15 && effectiveContactlessPaymentApplicationState != 1)
    {
      PaymentsUsingNetworksIssuerCountryCodesWithCapabilitiesAndRequestType = 0;
      v22 = 1;
      if (!reason)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    unavailableActionReason = [actionCopy unavailableActionReason];

    v21 = unavailableActionReason == 0;
    if (unavailableActionReason)
    {
      v22 = 7;
    }

    else
    {
      v22 = v19;
    }

    if (!unavailableActionReason && availableFrom)
    {
      v23 = [date compare:availableFrom];
      v21 = v23 != -1;
      if (v23 == -1)
      {
        v22 = 3;
      }

      else
      {
        v22 = v19;
      }
    }

    if (v21 && availableUntil)
    {
      if ([date compare:availableUntil] == 1)
      {
        PaymentsUsingNetworksIssuerCountryCodesWithCapabilitiesAndRequestType = 0;
        v22 = 4;
        if (!reason)
        {
          goto LABEL_38;
        }

LABEL_37:
        *reason = v22;
        goto LABEL_38;
      }

      goto LABEL_32;
    }

    if (v21)
    {
LABEL_32:
      serviceProviderAcceptedNetworks = [actionCopy serviceProviderAcceptedNetworks];
      serviceProviderSupportedCountries = [actionCopy serviceProviderSupportedCountries];
      PaymentsUsingNetworksIssuerCountryCodesWithCapabilitiesAndRequestType = PKCanMakePaymentsUsingNetworksIssuerCountryCodesWithCapabilitiesAndRequestType(serviceProviderAcceptedNetworks, serviceProviderSupportedCountries, [actionCopy serviceProviderCapabilities], 0, 0);

      if ((PaymentsUsingNetworksIssuerCountryCodesWithCapabilitiesAndRequestType & 1) == 0)
      {
        v22 = 2;
      }

      if (reason)
      {
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    PaymentsUsingNetworksIssuerCountryCodesWithCapabilitiesAndRequestType = 0;
    if (reason)
    {
      goto LABEL_37;
    }
  }

LABEL_38:
  if (error)
  {
    *error = [objc_opt_class() displayableErrorForAction:actionCopy andReason:v22];
  }

  return PaymentsUsingNetworksIssuerCountryCodesWithCapabilitiesAndRequestType & 1;
}

+ (id)displayableNoPaymentNetworkErrorMessageForAction:(id)action isTransit:(BOOL)transit
{
  transitCopy = transit;
  actionCopy = action;
  serviceProviderAcceptedNetworks = [actionCopy serviceProviderAcceptedNetworks];
  serviceProviderCapabilities = [actionCopy serviceProviderCapabilities];
  serviceProviderSupportedCountries = [actionCopy serviceProviderSupportedCountries];

  if ([serviceProviderAcceptedNetworks count] == 1 && !objc_msgSend(serviceProviderSupportedCountries, "count"))
  {
    v11 = @"PASS_ACTION_UNAVAILABLE_REASON_NO_SPECIFIC_PAYMENT_CARD_AVAILABLE";
    v12 = @"PASS_ACTION_UNAVAILABLE_REASON_NO_SPECIFIC_PAYMENT_CARD_AVAILABLE_TRANSIT";
    if ((serviceProviderCapabilities & 0xC) == 8)
    {
      v11 = @"PASS_ACTION_UNAVAILABLE_REASON_NO_SPECIFIC_DEBIT_CARD_AVAILABLE";
      v12 = @"PASS_ACTION_UNAVAILABLE_REASON_NO_SPECIFIC_DEBIT_CARD_AVAILABLE_TRANSIT";
    }

    if (transitCopy)
    {
      v11 = v12;
    }

    v13 = v11;
    v14 = [serviceProviderAcceptedNetworks objectAtIndexedSubscript:0];
    v15 = PKPaymentCredentialTypeForPaymentNetworkName(v14);

    v16 = PKDisplayablePaymentNetworkNameForPaymentCredentialType(v15);
    v9 = PKLocalizedPaymentString(v13, &stru_1F2281668.isa, v16);
  }

  else
  {
    v9 = PKLocalizedPaymentString(&cfstr_PassActionUnav_3.isa, 0);
  }

  return v9;
}

+ (id)displayableErrorForTransitAction:(id)action andReason:(unint64_t)reason
{
  actionCopy = action;
  if (reason == 2)
  {
    v7 = PKLocalizedString(&cfstr_PassActionUnav_4.isa, 0);
    v8 = [(PKSecureElementPass *)PKPaymentPass displayableNoPaymentNetworkErrorMessageForAction:actionCopy isTransit:1];

    v9 = PKDisplayableErrorCustomWithType(-1, v7, v8, 0, 0);

    actionCopy = v7;
  }

  else
  {
    v9 = [self displayableErrorForAction:actionCopy andReason:reason];
  }

  return v9;
}

+ (id)displayableErrorForAction:(id)action andReason:(unint64_t)reason
{
  actionCopy = action;
  v6 = actionCopy;
  if (reason > 3)
  {
    if (reason == 4)
    {
      unavailableAfterReason = [actionCopy unavailableAfterReason];
      if (!unavailableAfterReason)
      {
        title = [v6 title];
        v10 = PKLocalizedPaymentString(&cfstr_PassActionUnav_6.isa, &stru_1F2281668.isa, title);

        goto LABEL_17;
      }

      goto LABEL_15;
    }

    if (reason == 7)
    {
      unavailableAfterReason = [actionCopy unavailableActionReason];
      if (!unavailableAfterReason)
      {
        v8 = @"PASS_ACTION_UNAVAILABLE_GENERIC_REASON";
        goto LABEL_10;
      }

LABEL_15:
      v9 = unavailableAfterReason;
      goto LABEL_16;
    }
  }

  else
  {
    if (reason == 2)
    {
      v11 = PKLocalizedPaymentString(&cfstr_PassActionUnav_4.isa, 0);
      v10 = [(PKSecureElementPass *)PKPaymentPass displayableNoPaymentNetworkErrorMessageForAction:v6 isTransit:0];
      if (v11)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if (reason == 3)
    {
      unavailableAfterReason = [actionCopy unavailableBeforeReason];
      if (!unavailableAfterReason)
      {
        v8 = @"PASS_ACTION_UNAVAILABLE_REASON_GENERIC_BEFORE_REASON";
LABEL_10:
        v9 = PKLocalizedPaymentString(&v8->isa, 0);
LABEL_16:
        v10 = v9;
LABEL_17:

        goto LABEL_18;
      }

      goto LABEL_15;
    }
  }

  v10 = PKLocalizedPaymentString(&cfstr_PassActionUnav_7.isa, 0);
LABEL_18:
  v11 = PKLocalizedPaymentString(&cfstr_PassActionUnav_8.isa, 0);
LABEL_19:
  v12 = PKDisplayableErrorCustomWithType(-1, v11, v10, 0, 0);

  return v12;
}

@end