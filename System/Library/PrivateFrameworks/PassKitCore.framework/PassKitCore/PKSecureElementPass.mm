@interface PKSecureElementPass
+ (id)displayableErrorForAction:(id)a3 andReason:(unint64_t)a4;
+ (id)displayableErrorForTransitAction:(id)a3 andReason:(unint64_t)a4;
+ (id)displayableNoPaymentNetworkErrorMessageForAction:(id)a3 isTransit:(BOOL)a4;
- (BOOL)areCredentialsStoredInKML;
- (BOOL)availableForAutomaticPresentationUsingBeaconContext;
- (BOOL)availableForAutomaticPresentationUsingInAppOrWebContext;
- (BOOL)availableForAutomaticPresentationUsingVASContext;
- (BOOL)canPerformAction:(id)a3 unableReason:(unint64_t *)a4 displayableError:(id *)a5;
- (BOOL)hadMerchantTokens;
- (BOOL)hasActiveVirtualCard;
- (BOOL)hasActiveVirtualCardAccordingToWebService:(id)a3;
- (BOOL)hasContactlessDevicePaymentApplicationsAvailable;
- (BOOL)hasCredentials;
- (BOOL)hasDeviceTransactionSourceIdentifier:(id)a3;
- (BOOL)hasImmediateAutomaticSelectionCriterion;
- (BOOL)hasLegacyBalanceModel;
- (BOOL)hasMerchantTokens;
- (BOOL)isAccessPass;
- (BOOL)isAutoTopEnabled;
- (BOOL)isAutoTopUpBalance:(id)a3;
- (BOOL)isCarKeyPass;
- (BOOL)isChinaTransitCredential;
- (BOOL)isContactlessPaymentSupportedForTransitNetworks:(id)a3;
- (BOOL)isDevicePrimaryPaymentApplicationPersonalized;
- (BOOL)isEMoneyPass;
- (BOOL)isEqualToPassIncludingMetadata:(id)a3;
- (BOOL)isHomeKeyPass;
- (BOOL)isHybridIdentityPass;
- (BOOL)isOctopusPass;
- (BOOL)isPrecursorPass:(id)a3;
- (BOOL)isPrepaidPass;
- (BOOL)isPrivateLabel;
- (BOOL)isStoredValuePass;
- (BOOL)isSuicaPass;
- (BOOL)isTransitPass;
- (BOOL)needsHardcodedReminderOptions;
- (BOOL)preventsWalletDeletion;
- (BOOL)requiresFelicaSecureElement;
- (BOOL)shouldDisplayDeviceAssessmentEducationAccordingToService:(id)a3;
- (BOOL)shouldIgnoreTransactionUpdatesSwitch;
- (BOOL)shouldRampBacklight;
- (BOOL)shouldSuppressNoChargeAmount;
- (BOOL)supportsBarcodePayment;
- (BOOL)supportsDeviceAssessmentAccordingToService:(id)a3;
- (BOOL)supportsFeatureForCurrentDevice:(unint64_t)a3;
- (BOOL)supportsOnlyTransit;
- (BOOL)supportsVirtualCardNumber;
- (BOOL)supportsVirtualCardNumberAccordingToWebService:(id)a3;
- (BOOL)supportsWebPaymentMode:(int64_t)a3 withExclusionList:(id)a4 clientOSVersion:(id)a5;
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
- (PKSecureElementPass)initWithCoder:(id)a3;
- (PKSecureElementPass)initWithDictionary:(id)a3 bundle:(id)a4;
- (PKSecureElementPassActivationState)passActivationState;
- (PKSiriIntentsConfiguration)supportedSiriIntents;
- (PKTransitPassProperties)transitProperties;
- (id)_appletStateOverrideForAID:(id)a3 ofType:(unint64_t)a4;
- (id)_deviceSubcredentialEndpointIdentifiers;
- (id)_launchURLForPassAction:(id)a3;
- (id)_passCredentialFilesWithPrefix:(id)a3 extension:(id)a4 forSecureElementIdentifiers:(id)a5;
- (id)_passSubcredentialFilesWithPrefix:(id)a3 extension:(id)a4 forSecureElementIdentifiers:(id)a5;
- (id)_transactionServiceURLOverride;
- (id)actionGroups;
- (id)actionLocalizations;
- (id)addValueURL;
- (id)appletStateMessageOverrideOfType:(unint64_t)a3;
- (id)autoTopUpBalanceIdentifiers;
- (id)autoTopUpMerchantTokenIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)deviceContactlessPaymentApplications;
- (id)devicePaymentApplicationForAID:(id)a3;
- (id)deviceTransactionSourceIdentifiers;
- (id)dynamicLayerConfiguration;
- (id)eligibleExpressUpgradeRequestsForDeviceClass:(id)a3 deviceSEIDs:(id)a4 deviceVersion:(id)a5 technologyTest:(id)a6;
- (id)longTermPrivacyKeyGroupIdentifier;
- (id)notificationCenterTitle;
- (id)paymentApplicationForAID:(id)a3;
- (id)paymentApplicationsForSecureElementIdentifiers:(id)a3;
- (id)precursorUpgradeRequestsForDeviceSEIDs:(id)a3 deviceClass:(id)a4 deviceVersion:(id)a5;
- (id)primaryPaymentApplicationForSecureElementIdentifiers:(id)a3;
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
- (void)encodeWithCoder:(id)a3;
- (void)sanitizePaymentApplications;
- (void)updateDevicePaymentApplicationsWithSecureElementIdentifiers:(id)a3;
@end

@implementation PKSecureElementPass

- (PKSecureElementPassActivationState)passActivationState
{
  v2 = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  v3 = PKSecureElementPassActivationStateForApplicationState([v2 state]);

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
    v6 = [(PKObject *)self initializedViaInitWithCoder];
    v7 = @"was not";
    if (v6)
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
  v3 = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  v4 = [v3 state];

  if (v4 == 15 || v4 == 1)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(PKSecureElementPass *)self devicePaymentApplications];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * i) state];
          if (v4 != v10)
          {
            v4 = v10;
            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v4;
}

- (unint64_t)contactlessActivationState
{
  v2 = [(PKSecureElementPass *)self effectiveContactlessPaymentApplicationState];

  return PKSecureElementPassActivationStateForApplicationState(v2);
}

- (NSString)customerServiceIdentifier
{
  v2 = [(PKObject *)self contentLoadedIfNeeded];
  v3 = [v2 customerServiceIdentifier];

  return v3;
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
  v2 = [(PKObject *)self contentLoadedIfNeeded];
  v3 = [v2 dynamicLayerConfiguration];

  return v3;
}

- (BOOL)supportsBarcodePayment
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = [(PKSecureElementPass *)self paymentApplications];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __45__PKSecureElementPass_supportsBarcodePayment__block_invoke;
  v4[3] = &unk_1E79CFAA0;
  v4[4] = &v5;
  [v2 enumerateObjectsUsingBlock:v4];

  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
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
    v7 = [(PKObject *)self initializedViaInitWithCoder];
    v8 = @"was not";
    if (v7)
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

- (PKSecureElementPass)initWithDictionary:(id)a3 bundle:(id)a4
{
  v93 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v82.receiver = self;
  v82.super_class = PKSecureElementPass;
  v7 = [(PKPass *)&v82 initWithDictionary:v6 bundle:a4];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v6 PKStringForKey:@"cardType"];
    v10 = PKPaymentCardTypeFromString(v9);

    [(PKSecureElementPass *)v8 setCardType:v10];
    v11 = v6;
    v12 = [v11 PKArrayContaining:objc_opt_class() forKey:@"paymentApplications"];
    v13 = [v11 PKArrayContaining:objc_opt_class() forKey:@"auxiliaryPaymentApplications"];
    v81 = v6;
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

    v6 = v81;
  }

  return v8;
}

PKPassLegalAgreement *__49__PKSecureElementPass_initWithDictionary_bundle___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PKPassLegalAgreement alloc] initWithDictionary:v2];

  return v3;
}

- (PKSecureElementPass)initWithCoder:(id)a3
{
  v4 = a3;
  v69.receiver = self;
  v69.super_class = PKSecureElementPass;
  v5 = [(PKPass *)&v69 initWithCoder:v4];
  if (v5)
  {
    context = objc_autoreleasePoolPush();
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cardType"];
    [(PKSecureElementPass *)v5 setCardType:PKPaymentCardTypeFromString(v6)];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transactionSourceIdentifier"];
    [(PKSecureElementPass *)v5 setTransactionSourceIdentifier:v7];

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = objc_autoreleasePoolPush();
    v12 = [v4 decodeObjectOfClasses:v10 forKey:@"paymentApplications"];
    [(PKSecureElementPass *)v5 setPaymentApplications:v12];

    objc_autoreleasePoolPop(v11);
    v13 = objc_autoreleasePoolPush();
    v14 = [v4 decodeObjectOfClasses:v10 forKey:@"devicePaymentApplications"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"devicePaymentApplication"];
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

    v18 = [v4 decodeObjectOfClasses:v10 forKey:@"inAppPaymentApplications"];
    [(PKSecureElementPass *)v5 setDeviceInAppPaymentApplications:v18];

    objc_autoreleasePoolPop(v13);
    v19 = objc_autoreleasePoolPush();
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"devicePrimaryPaymentApplication"];
    [(PKSecureElementPass *)v5 setDevicePrimaryPaymentApplication:v20];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"devicePrimaryContactlessPaymentApplication"];
    [(PKSecureElementPass *)v5 setDevicePrimaryContactlessPaymentApplication:v21];

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"devicePrimaryInAppPaymentApplication"];
    [(PKSecureElementPass *)v5 setDevicePrimaryInAppPaymentApplication:v22];

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"devicePrimaryBarcodePaymentApplication"];
    [(PKSecureElementPass *)v5 setDevicePrimaryBarcodePaymentApplication:v23];

    objc_autoreleasePoolPop(v19);
    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"associatedApplicationIdentifiers"];
    [(PKSecureElementPass *)v5 setAssociatedApplicationIdentifiers:v27];

    v28 = [v4 decodeObjectOfClasses:v26 forKey:@"associatedWebDomains"];
    [(PKSecureElementPass *)v5 setAssociatedWebDomains:v28];

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryAccountIdentifier"];
    [(PKSecureElementPass *)v5 setPrimaryAccountIdentifier:v29];

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryAccountSuffix"];
    [(PKSecureElementPass *)v5 setPrimaryAccountNumberSuffix:v30];

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sanitizedPrimaryAccountNumber"];
    [(PKSecureElementPass *)v5 setSanitizedPrimaryAccountNumber:v31];

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sanitizedPrimaryAccountName"];
    [(PKSecureElementPass *)v5 setSanitizedPrimaryAccountName:v32];

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportsDPANNotifications"];
    -[PKSecureElementPass setSupportsDPANNotifications:](v5, "setSupportsDPANNotifications:", [v33 BOOLValue]);

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportsFPANNotifications"];
    -[PKSecureElementPass setSupportsFPANNotifications:](v5, "setSupportsFPANNotifications:", [v34 BOOLValue]);

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportsDefaultCardSelection"];
    -[PKSecureElementPass setSupportsDefaultCardSelection:](v5, "setSupportsDefaultCardSelection:", [v35 BOOLValue]);

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isShellPass"];
    -[PKSecureElementPass setShellPass:](v5, "setShellPass:", [v36 BOOLValue]);

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originalProvisioningDate"];
    [(PKSecureElementPass *)v5 setOriginalProvisioningDate:v37];

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"provisioningMetadata"];
    [(PKSecureElementPass *)v5 setProvisioningMetadata:v38];

    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supportsSerialNumberBasedProvisioning"];
    v40 = v39;
    v41 = MEMORY[0x1E695E118];
    if (v39)
    {
      v41 = v39;
    }

    v42 = v41;

    v43 = [v42 BOOLValue];
    [(PKSecureElementPass *)v5 setSupportsSerialNumberBasedProvisioning:v43];
    -[PKSecureElementPass setRequiresTransferSerialNumberBasedProvisioning:](v5, "setRequiresTransferSerialNumberBasedProvisioning:", [v4 decodeBoolForKey:@"requiresTransferSerialNumberBasedProvisioning"]);
    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contactlessActivationGroupingType"];
    v45 = v44;
    if (v44)
    {
      v46 = PKContactlessActivationGroupingTypeFromString(v44);
    }

    else
    {
      v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isPaymentOptionSelectable"];
      v48 = [v47 BOOLValue];

      if (v48)
      {
        v46 = 2;
      }

      else
      {
        v46 = 1;
      }
    }

    v5->_contactlessActivationGroupingType = v46;
    v49 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isCobranded"];
    -[PKSecureElementPass setCobranded:](v5, "setCobranded:", [v49 BOOLValue]);

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cobrandName"];
    [(PKSecureElementPass *)v5 setCobrandName:v50];

    v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"issuerCountryCode"];
    [(PKSecureElementPass *)v5 setIssuerCountryCode:v51];

    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"issuerAdministrativeAreaCode"];
    [(PKSecureElementPass *)v5 setIssuerAdministrativeAreaCode:v52];

    v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identityAccountKeyIdentifier"];
    [(PKSecureElementPass *)v5 setIdentityAccountKeyIdentifier:v53];

    v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hasAssociatedPeerPaymentAccount"];
    -[PKSecureElementPass setHasAssociatedPeerPaymentAccount:](v5, "setHasAssociatedPeerPaymentAccount:", [v54 BOOLValue]);

    v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedAccountServiceAccountIdentifier"];
    [(PKSecureElementPass *)v5 setAssociatedAccountServiceAccountIdentifier:v55];

    -[PKSecureElementPass setAssociatedAccountFeatureIdentifier:](v5, "setAssociatedAccountFeatureIdentifier:", [v4 decodeIntegerForKey:@"associatedAccountFeatureIdentifier"]);
    v56 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"topLeftBackgroundTitle"];
    [(PKSecureElementPass *)v5 setTopLeftBackgroundTitle:v56];

    v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"topRightBackgroundTitle"];
    [(PKSecureElementPass *)v5 setTopRightBackgroundTitle:v57];

    v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"partnerAccountIdentifier"];
    [(PKSecureElementPass *)v5 setPartnerAccountIdentifier:v58];

    v59 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shippingAddressSeed"];
    [(PKSecureElementPass *)v5 setShippingAddressSeed:v59];

    v60 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"speakableCarMake"];
    [(PKSecureElementPass *)v5 setSpeakableMake:v60];

    v61 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"speakableCarModel"];
    [(PKSecureElementPass *)v5 setSpeakableModel:v61];

    v62 = MEMORY[0x1E695DFD8];
    v63 = objc_opt_class();
    v64 = [v62 setWithObjects:{v63, objc_opt_class(), 0}];
    v65 = [v4 decodeObjectOfClasses:v64 forKey:@"legalAgreements"];
    [(PKSecureElementPass *)v5 setLegalAgreements:v65];

    v66 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessType"];
    [(PKSecureElementPass *)v5 setAccessType:PKSecureElementAccessPassTypeFromString(v66)];

    objc_autoreleasePoolPop(context);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PKSecureElementPass;
  [(PKPass *)&v17 encodeWithCoder:v4];
  v5 = objc_autoreleasePoolPush();
  v6 = PKPaymentCardTypeToString(self->_cardType);
  [v4 encodeObject:v6 forKey:@"cardType"];

  [v4 encodeObject:self->_paymentApplications forKey:@"paymentApplications"];
  [v4 encodeObject:self->_devicePaymentApplications forKey:@"devicePaymentApplications"];
  [v4 encodeObject:self->_deviceInAppPaymentApplications forKey:@"inAppPaymentApplications"];
  [v4 encodeObject:self->_devicePrimaryPaymentApplication forKey:@"devicePrimaryPaymentApplication"];
  [v4 encodeObject:self->_devicePrimaryContactlessPaymentApplication forKey:@"devicePrimaryContactlessPaymentApplication"];
  [v4 encodeObject:self->_devicePrimaryInAppPaymentApplication forKey:@"devicePrimaryInAppPaymentApplication"];
  [v4 encodeObject:self->_devicePrimaryBarcodePaymentApplication forKey:@"devicePrimaryBarcodePaymentApplication"];
  [v4 encodeObject:self->_associatedApplicationIdentifiers forKey:@"associatedApplicationIdentifiers"];
  [v4 encodeObject:self->_associatedWebDomains forKey:@"associatedWebDomains"];
  [v4 encodeObject:self->_primaryAccountIdentifier forKey:@"primaryAccountIdentifier"];
  [v4 encodeObject:self->_primaryAccountNumberSuffix forKey:@"primaryAccountSuffix"];
  [v4 encodeObject:self->_sanitizedPrimaryAccountNumber forKey:@"sanitizedPrimaryAccountNumber"];
  [v4 encodeObject:self->_sanitizedPrimaryAccountName forKey:@"sanitizedPrimaryAccountName"];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsDPANNotifications];
  [v4 encodeObject:v7 forKey:@"supportsDPANNotifications"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsFPANNotifications];
  [v4 encodeObject:v8 forKey:@"supportsFPANNotifications"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsDefaultCardSelection];
  [v4 encodeObject:v9 forKey:@"supportsDefaultCardSelection"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_shellPass];
  [v4 encodeObject:v10 forKey:@"isShellPass"];

  [v4 encodeObject:self->_originalProvisioningDate forKey:@"originalProvisioningDate"];
  [v4 encodeObject:self->_provisioningMetadata forKey:@"provisioningMetadata"];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsSerialNumberBasedProvisioning];
  [v4 encodeObject:v11 forKey:@"supportsSerialNumberBasedProvisioning"];

  [v4 encodeBool:self->_requiresTransferSerialNumberBasedProvisioning forKey:@"requiresTransferSerialNumberBasedProvisioning"];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_contactlessActivationGroupingType == 2];
  [v4 encodeObject:v12 forKey:@"isPaymentOptionSelectable"];

  v13 = PKContactlessActivationGroupingTypeToString(self->_contactlessActivationGroupingType);
  [v4 encodeObject:v13 forKey:@"contactlessActivationGroupingType"];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:self->_cobranded];
  [v4 encodeObject:v14 forKey:@"isCobranded"];

  [v4 encodeObject:self->_cobrandName forKey:@"cobrandName"];
  [v4 encodeObject:self->_issuerCountryCode forKey:@"issuerCountryCode"];
  [v4 encodeObject:self->_issuerAdministrativeAreaCode forKey:@"issuerAdministrativeAreaCode"];
  [v4 encodeObject:self->_identityAccountKeyIdentifier forKey:@"identityAccountKeyIdentifier"];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasAssociatedPeerPaymentAccount];
  [v4 encodeObject:v15 forKey:@"hasAssociatedPeerPaymentAccount"];

  [v4 encodeObject:self->_associatedAccountServiceAccountIdentifier forKey:@"associatedAccountServiceAccountIdentifier"];
  [v4 encodeInteger:self->_associatedAccountFeatureIdentifier forKey:@"associatedAccountFeatureIdentifier"];
  [v4 encodeObject:self->_topLeftBackgroundTitle forKey:@"topLeftBackgroundTitle"];
  [v4 encodeObject:self->_topRightBackgroundTitle forKey:@"topRightBackgroundTitle"];
  [v4 encodeObject:self->_transactionSourceIdentifier forKey:@"transactionSourceIdentifier"];
  [v4 encodeObject:self->_partnerAccountIdentifier forKey:@"partnerAccountIdentifier"];
  [v4 encodeObject:self->_shippingAddressSeed forKey:@"shippingAddressSeed"];
  [v4 encodeObject:self->_speakableMake forKey:@"speakableCarMake"];
  [v4 encodeObject:self->_speakableModel forKey:@"speakableCarModel"];
  [v4 encodeObject:self->_legalAgreements forKey:@"legalAgreements"];
  v16 = PKSecureElementAccessPassTypeToString(self->_accessType);
  [v4 encodeObject:v16 forKey:@"accessType"];

  objc_autoreleasePoolPop(v5);
}

- (id)copyWithZone:(_NSZone *)a3
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

  v12 = [(PKPaymentApplication *)self->_devicePrimaryPaymentApplication copyWithZone:a3];
  v13 = *(v5 + 111);
  *(v5 + 111) = v12;

  v14 = [(PKPaymentApplication *)self->_devicePrimaryContactlessPaymentApplication copyWithZone:a3];
  v15 = *(v5 + 112);
  *(v5 + 112) = v14;

  v16 = [(PKPaymentApplication *)self->_devicePrimaryInAppPaymentApplication copyWithZone:a3];
  v17 = *(v5 + 113);
  *(v5 + 113) = v16;

  v18 = [(PKPaymentApplication *)self->_devicePrimaryBarcodePaymentApplication copyWithZone:a3];
  v19 = *(v5 + 114);
  *(v5 + 114) = v18;

  v20 = [(NSSet *)self->_associatedApplicationIdentifiers copyWithZone:a3];
  v21 = *(v5 + 94);
  *(v5 + 94) = v20;

  v22 = [(NSSet *)self->_associatedWebDomains copyWithZone:a3];
  v23 = *(v5 + 95);
  *(v5 + 95) = v22;

  v24 = [(NSString *)self->_primaryAccountIdentifier copyWithZone:a3];
  v25 = *(v5 + 89);
  *(v5 + 89) = v24;

  v26 = [(NSString *)self->_primaryAccountNumberSuffix copyWithZone:a3];
  v27 = *(v5 + 90);
  *(v5 + 90) = v26;

  v28 = [(NSString *)self->_sanitizedPrimaryAccountNumber copyWithZone:a3];
  v29 = *(v5 + 96);
  *(v5 + 96) = v28;

  v30 = [(NSString *)self->_sanitizedPrimaryAccountName copyWithZone:a3];
  v31 = *(v5 + 97);
  *(v5 + 97) = v30;

  *(v5 + 696) = self->_supportsDPANNotifications;
  *(v5 + 697) = self->_supportsFPANNotifications;
  *(v5 + 698) = self->_supportsDefaultCardSelection;
  *(v5 + 702) = self->_shellPass;
  v32 = [(NSDate *)self->_originalProvisioningDate copyWithZone:a3];
  v33 = *(v5 + 104);
  *(v5 + 104) = v32;

  v34 = [(PKPassProvisioningMetadata *)self->_provisioningMetadata copy];
  v35 = *(v5 + 105);
  *(v5 + 105) = v34;

  *(v5 + 701) = self->_supportsSerialNumberBasedProvisioning;
  *(v5 + 704) = self->_requiresTransferSerialNumberBasedProvisioning;
  *(v5 + 103) = self->_contactlessActivationGroupingType;
  *(v5 + 703) = self->_cobranded;
  v36 = [(NSString *)self->_cobrandName copyWithZone:a3];
  v37 = *(v5 + 118);
  *(v5 + 118) = v36;

  v38 = [(NSString *)self->_issuerCountryCode copyWithZone:a3];
  v39 = *(v5 + 100);
  *(v5 + 100) = v38;

  v40 = [(NSString *)self->_issuerAdministrativeAreaCode copyWithZone:a3];
  v41 = *(v5 + 101);
  *(v5 + 101) = v40;

  v42 = [(NSString *)self->_identityAccountKeyIdentifier copyWithZone:a3];
  v43 = *(v5 + 102);
  *(v5 + 102) = v42;

  *(v5 + 699) = self->_hasAssociatedPeerPaymentAccount;
  objc_storeStrong(v5 + 98, self->_associatedAccountServiceAccountIdentifier);
  *(v5 + 99) = self->_associatedAccountFeatureIdentifier;
  v44 = [(NSString *)self->_topLeftBackgroundTitle copyWithZone:a3];
  v45 = *(v5 + 107);
  *(v5 + 107) = v44;

  v46 = [(NSString *)self->_topRightBackgroundTitle copyWithZone:a3];
  v47 = *(v5 + 108);
  *(v5 + 108) = v46;

  v48 = [(NSString *)self->_transactionSourceIdentifier copyWithZone:a3];
  v49 = *(v5 + 117);
  *(v5 + 117) = v48;

  v50 = [(NSString *)self->_partnerAccountIdentifier copyWithZone:a3];
  v51 = *(v5 + 116);
  *(v5 + 116) = v50;

  v52 = [(NSString *)self->_shippingAddressSeed copyWithZone:a3];
  v53 = *(v5 + 128);
  *(v5 + 128) = v52;

  v54 = [(NSString *)self->_speakableMake copyWithZone:a3];
  v55 = *(v5 + 129);
  *(v5 + 129) = v54;

  v56 = [(NSString *)self->_speakableModel copyWithZone:a3];
  v57 = *(v5 + 130);
  *(v5 + 130) = v56;

  objc_storeStrong(v5 + 106, self->_legalAgreements);
  *(v5 + 92) = self->_accessType;
  return v5;
}

- (BOOL)isEqualToPassIncludingMetadata:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKSecureElementPass;
  if ([(PKPass *)&v13 isEqualToPassIncludingMetadata:v4])
  {
    v5 = [(PKPass *)self paymentPass];
    v6 = [v5 associatedAccountFeatureIdentifier];
    v7 = [v4 paymentPass];
    if (v6 == [v7 associatedAccountFeatureIdentifier])
    {
      v8 = [(PKSecureElementPass *)self _deviceSubcredentialEndpointIdentifiers];
      v9 = [v4 secureElementPass];
      v10 = [v9 _deviceSubcredentialEndpointIdentifiers];
      v11 = [v8 isEqualToSet:v10];
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

- (id)primaryPaymentApplicationForSecureElementIdentifiers:(id)a3
{
  v4 = a3;
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
  EnumerateApplicationsForSEIDs(paymentApplications, v4, v8);
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

- (id)paymentApplicationsForSecureElementIdentifiers:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  paymentApplications = self->_paymentApplications;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__PKSecureElementPass_paymentApplicationsForSecureElementIdentifiers___block_invoke;
  v11[3] = &unk_1E79CFAC8;
  v12 = v6;
  v8 = v6;
  EnumerateApplicationsForSEIDs(paymentApplications, v5, v11);

  v9 = [v8 copy];

  return v9;
}

- (id)paymentApplicationForAID:(id)a3
{
  v4 = a3;
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
  v6 = v4;
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

- (id)devicePaymentApplicationForAID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__22;
  v16 = __Block_byref_object_dispose__22;
  v17 = 0;
  v5 = [(PKSecureElementPass *)self devicePaymentApplications];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__PKSecureElementPass_devicePaymentApplicationForAID___block_invoke;
  v9[3] = &unk_1E79CFB10;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateObjectsUsingBlock:v9];

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
  v2 = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  v3 = [v2 state];
  v5 = v3 == 1 || v3 == 15;

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

- (BOOL)isPrecursorPass:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(PKSecureElementPass *)self upgradeRequests];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 type] == 2)
        {
          v10 = [v9 secureElementIdentifier];
          if (!v10 || ([v4 containsObject:v10] & 1) != 0)
          {

            LOBYTE(v6) = 1;
            goto LABEL_14;
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
  v2 = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  v3 = [v2 paymentNetworkIdentifier] == 103;

  return v3;
}

- (BOOL)hasLegacyBalanceModel
{
  v2 = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  v3 = [v2 paymentNetworkIdentifier];

  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{&unk_1F23B4D18, &unk_1F23B4D30, &unk_1F23B4D48, &unk_1F23B4D60, &unk_1F23B4D78, &unk_1F23B4D90, 0}];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
  v6 = [v4 containsObject:v5];

  return v6;
}

- (BOOL)isPrepaidPass
{
  v2 = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  v3 = [v2 paymentType] == 3;

  return v3;
}

- (BOOL)isEMoneyPass
{
  if (self->_cardType == 1 && [(PKSecureElementPass *)self paymentType]== 1)
  {
    return 1;
  }

  v4 = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  v3 = [v4 paymentType] == 5;

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
  v3 = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  v4 = [v3 paymentNetworkIdentifier];

  if ((v4 & 0xFFFFFFFFFFFFFFFELL) != 0x6C)
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
  v2 = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  v3 = [v2 appletDataFormat];
  v4 = v3;
  if (v3 && @"transit.apple.octopus")
  {
    v5 = [(__CFString *)v3 isEqual:@"transit.apple.octopus"];
  }

  else
  {
    v5 = v3 == @"transit.apple.octopus";
  }

  return v5;
}

- (BOOL)isHybridIdentityPass
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [(PKSecureElementPass *)self paymentApplications];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) paymentType];
        v4 |= v8 != 1002;
        v5 |= v8 == 1002;
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v2 = [(PKSecureElementPass *)self devicePaymentApplications];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v8 = [v7 automaticSelectionCriteria];
        v9 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
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
                objc_enumerationMutation(v8);
              }

              if ([*(*(&v15 + 1) + 8 * j) technologyType] == 7)
              {

                v13 = 1;
                goto LABEL_19;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v19 objects:v24 count:16];
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

        v6 = [*(*(&v9 + 1) + 8 * i) subcredentials];
        v7 = [v6 count];

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
  v2 = [(PKPass *)self autoTopUpFields];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v2);
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

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    v4 = [(PKSecureElementPass *)self paymentApplications];
    v3 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v8 + 1) + 8 * i) hasMerchantTokens])
          {
            LOBYTE(v3) = 1;
            goto LABEL_13;
          }
        }

        v3 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
    v4 = [(PKSecureElementPass *)self paymentApplications];
    v3 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v4);
          }

          if ([*(*(&v8 + 1) + 8 * i) hadMerchantTokens])
          {
            LOBYTE(v3) = 1;
            goto LABEL_13;
          }
        }

        v3 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  v2 = [(PKSecureElementPass *)self devicePaymentApplications];
  v3 = PKIsCarKeyPass(v2);

  return v3;
}

- (BOOL)isHomeKeyPass
{
  v2 = self;
  v3 = [(PKSecureElementPass *)self devicePaymentApplications];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__PKSecureElementPass_isHomeKeyPass__block_invoke;
  v5[3] = &unk_1E79C7E20;
  v5[4] = v2;
  LOBYTE(v2) = [v3 pk_hasObjectPassingTest:v5];

  return v2;
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
  v3 = [(PKSecureElementPass *)self hasCredentials];
  if (v3)
  {
    LOBYTE(v3) = ![(PKSecureElementPass *)self isIdentityPass];
  }

  return v3;
}

- (NSString)devicePassIdentifier
{
  v2 = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  v3 = [v2 subcredentials];
  v4 = [v3 anyObject];
  v5 = [v4 identifier];

  return v5;
}

- (NSString)pairedTerminalIdentifier
{
  v2 = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  v3 = [v2 subcredentials];
  v4 = [v3 anyObject];
  v5 = [v4 pairedReaderIdentifier];

  return v5;
}

- (BOOL)requiresFelicaSecureElement
{
  v2 = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  v3 = [v2 appletDataFormat];

  if (v3 && @"transit.felica.suica")
  {
    if (([(__CFString *)v3 isEqual:@"transit.felica.suica"]& 1) != 0)
    {
LABEL_4:
      v4 = 1;
      goto LABEL_10;
    }
  }

  else if (v3 == @"transit.felica.suica")
  {
    goto LABEL_4;
  }

  if (v3 && @"transit.apple.octopus")
  {
    v4 = [(__CFString *)v3 isEqual:@"transit.apple.octopus"];
  }

  else
  {
    v4 = v3 == @"transit.apple.octopus";
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

  v3 = [(PKPass *)self associatedPassTypeIdentifiers];
  v4 = [v3 count] != 0;

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

  v3 = [(PKSecureElementPass *)self associatedWebDomains];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(PKSecureElementPass *)self associatedApplicationIdentifiers];
    v4 = [v5 count] != 0;
  }

  return v4;
}

- (NSString)deviceAccountIdentifier
{
  v2 = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  v3 = [v2 dpanIdentifier];

  return v3;
}

- (NSString)deviceAccountNumberSuffix
{
  v2 = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  v3 = [v2 dpanSuffix];

  return v3;
}

- (id)sanitizedDeviceAccountNumber
{
  v2 = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  v3 = [v2 sanitizedDPAN];

  return v3;
}

- (int64_t)effectiveInAppPaymentApplicationState
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(PKSecureElementPass *)self devicePrimaryInAppPaymentApplication];
  v4 = [v3 state];

  if (v4 == 15 || v4 == 1)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(PKSecureElementPass *)self devicePaymentApplications];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v12 + 1) + 8 * i) state];
          if (v4 != v10)
          {
            v4 = v10;
            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v4;
}

- (PKPaymentApplication)devicePrimaryContactlessPaymentApplication
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_devicePaymentApplications)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [(PKObject *)self initializedViaInitWithCoder];
    v7 = @"was not";
    if (v6)
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
    v6 = [(PKObject *)self initializedViaInitWithCoder];
    v7 = @"was not";
    if (v6)
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
    v6 = [(PKObject *)self initializedViaInitWithCoder];
    v7 = @"was not";
    if (v6)
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
    v6 = [(PKObject *)self initializedViaInitWithCoder];
    v7 = @"was not";
    if (v6)
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
  v2 = [(PKSecureElementPass *)self devicePaymentApplications];
  v3 = [v2 objectsPassingTest:&__block_literal_global_111];

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
  v2 = [(PKSecureElementPass *)self deviceContactlessPaymentApplications];
  v3 = [v2 count] > 1;

  return v3;
}

- (void)updateDevicePaymentApplicationsWithSecureElementIdentifiers:(id)a3
{
  v67 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
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
      v14 = [devicePrimaryContactlessPaymentApplication allObjects];
      v15 = [(PKSecureElementPass *)self sortedPaymentApplications:v14 ascending:1];
      v16 = [v15 firstObject];
      v17 = self->_devicePrimaryContactlessPaymentApplication;
      self->_devicePrimaryContactlessPaymentApplication = v16;
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
      v20 = [devicePrimaryBarcodePaymentApplication allObjects];
      v21 = [(PKSecureElementPass *)self sortedPaymentApplications:v20 ascending:1];
      v22 = [v21 firstObject];
      v23 = self->_devicePrimaryBarcodePaymentApplication;
      self->_devicePrimaryBarcodePaymentApplication = v22;
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
              v30 = [v29 paymentApplicationsIncludingAuxiliaryPaymentTypes];
              [v24 addObjectsFromArray:v30];
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
      v36 = [v35 firstObject];
      v37 = self->_devicePrimaryInAppPaymentApplication;
      self->_devicePrimaryInAppPaymentApplication = v36;
    }

    v38 = self->_devicePrimaryInAppPaymentApplication;
    if (v38 && [(PKPaymentApplication *)v38 supportsComboCard])
    {
      v39 = [(PKPaymentApplication *)self->_devicePrimaryInAppPaymentApplication paymentApplicationsIncludingAuxiliaryPaymentTypes];
      v40 = [v39 firstObject];
      v41 = self->_devicePrimaryInAppPaymentApplication;
      self->_devicePrimaryInAppPaymentApplication = v40;
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
      v44 = [(PKSecureElementPass *)self associatedAccountServiceAccountIdentifier];

      v42 = PKLogFacilityTypeGetObject(7uLL);
      v45 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
      if (!v44)
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

- (BOOL)supportsWebPaymentMode:(int64_t)a3 withExclusionList:(id)a4 clientOSVersion:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
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

        if ([*(*(&v14 + 1) + 8 * i) supportsWebPaymentMode:2 withExclusionList:v7 clientOSVersion:{v8, v14}])
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
  v2 = [(PKObject *)self contentLoadedIfNeeded];
  v3 = [v2 cobrandName];

  return v3;
}

- (NSString)shippingAddressSeed
{
  v2 = [(PKObject *)self contentLoadedIfNeeded];
  v3 = [v2 shippingAddressSeed];

  return v3;
}

- (NSString)speakableMake
{
  v2 = [(PKObject *)self contentLoadedIfNeeded];
  v3 = [v2 speakableMake];

  return v3;
}

- (NSString)speakableModel
{
  v2 = [(PKObject *)self contentLoadedIfNeeded];
  v3 = [v2 speakableModel];

  return v3;
}

- (PKSiriIntentsConfiguration)supportedSiriIntents
{
  v2 = [(PKObject *)self contentLoadedIfNeeded];
  v3 = [v2 supportedSiriIntents];

  return v3;
}

- (NSURL)transactionServiceURL
{
  v3 = [(PKSecureElementPass *)self _transactionServiceURLOverride];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(PKObject *)self contentLoadedIfNeeded];
    v5 = [v6 transactionServiceURL];
  }

  return v5;
}

- (NSURL)transactionServiceRegistrationURL
{
  v3 = [(PKSecureElementPass *)self _transactionServiceURLOverride];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(PKObject *)self contentLoadedIfNeeded];
    v5 = [v6 transactionServiceRegistrationURL];
  }

  return v5;
}

- (NSString)transactionPushTopic
{
  v3 = [(PKObject *)self uniqueID];
  v4 = PKTransactionServicePushTopicOverrideForPassUniqueIdentifier(v3);

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(PKObject *)self contentLoadedIfNeeded];
    v5 = [v6 transactionPushTopic];
  }

  return v5;
}

- (NSURL)messageServiceURL
{
  v2 = [(PKObject *)self contentLoadedIfNeeded];
  v3 = [v2 messageServiceURL];

  return v3;
}

- (NSURL)messageServiceRegistrationURL
{
  v2 = [(PKObject *)self contentLoadedIfNeeded];
  v3 = [v2 messageServiceRegistrationURL];

  return v3;
}

- (NSString)messagePushTopic
{
  v2 = [(PKObject *)self contentLoadedIfNeeded];
  v3 = [v2 messagePushTopic];

  return v3;
}

- (NSString)appURLScheme
{
  v2 = [(PKObject *)self contentLoadedIfNeeded];
  v3 = [v2 appURLScheme];

  return v3;
}

- (NSString)localizedSuspendedReason
{
  v3 = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  v4 = [v3 applicationIdentifier];

  v5 = [(PKObject *)self contentLoadedIfNeeded];
  v6 = [v5 localizedSuspendedReasonsByAID];
  v7 = [v6 objectForKey:v4];

  if (!v7)
  {
    v8 = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
    v9 = [v8 state];

    if (v9 == 9)
    {
      v10 = [(PKSecureElementPass *)self _appletStateOverrideForAID:v4 ofType:1];
      v7 = [v10 body];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)appletStateMessageOverrideOfType:(unint64_t)a3
{
  v5 = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  v6 = [v5 applicationIdentifier];
  v7 = [(PKSecureElementPass *)self _appletStateOverrideForAID:v6 ofType:a3];

  return v7;
}

- (id)_appletStateOverrideForAID:(id)a3 ofType:(unint64_t)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v7 = [(PKObject *)self contentLoadedIfNeeded];
    v8 = [v7 paymentApplicationStateNotificationMessageOverridesByAID];
    goto LABEL_5;
  }

  if (a4 == 1)
  {
    v7 = [(PKObject *)self contentLoadedIfNeeded];
    v8 = [v7 paymentApplicationStateDashboardMessageOverridesByAID];
LABEL_5:
    v9 = v8;

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  v10 = [v9 objectForKey:v6];

  return v10;
}

- (BOOL)supportsOnlyTransit
{
  v2 = [(PKObject *)self contentLoadedIfNeeded];
  v3 = [v2 supportsTransitOnly];

  return v3;
}

- (unint64_t)transitCommutePlanType
{
  v2 = [(PKObject *)self contentLoadedIfNeeded];
  v3 = [v2 transitCommutePlanType];

  return v3;
}

- (id)transitCommutePlans
{
  v2 = [(PKObject *)self contentLoadedIfNeeded];
  v3 = [v2 transitCommutePlans];

  return v3;
}

- (id)notificationCenterTitle
{
  if ([(PKSecureElementPass *)self isStoredValuePass]|| [(PKSecureElementPass *)self hasAssociatedPeerPaymentAccount]|| [(PKSecureElementPass *)self associatedAccountFeatureIdentifier]== 4)
  {
    v3 = [(PKPass *)self localizedDescription];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PKSecureElementPass;
    v3 = [(PKPass *)&v5 notificationCenterTitle];
  }

  return v3;
}

- (NSArray)availableActions
{
  v2 = [(PKObject *)self contentLoadedIfNeeded];
  v3 = [v2 availableActions];

  return v3;
}

- (id)actionLocalizations
{
  v2 = [(PKObject *)self contentLoadedIfNeeded];
  v3 = [v2 actionLocalizations];

  return v3;
}

- (id)actionGroups
{
  v2 = [(PKObject *)self contentLoadedIfNeeded];
  v3 = [v2 actionGroups];

  return v3;
}

- (NSArray)upgradeRequests
{
  v2 = [(PKObject *)self contentLoadedIfNeeded];
  v3 = [v2 upgradeRequests];

  return v3;
}

- (id)eligibleExpressUpgradeRequestsForDeviceClass:(id)a3 deviceSEIDs:(id)a4 deviceVersion:(id)a5 technologyTest:(id)a6
{
  v70 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v49 = self;
  v14 = [(PKSecureElementPass *)self upgradeRequests];
  v15 = [v14 countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v62;
    v47 = v11;
    v48 = v10;
    v45 = v13;
    v46 = v12;
    v43 = *v62;
    v44 = v14;
    do
    {
      v18 = 0;
      v50 = v16;
      do
      {
        if (*v62 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v61 + 1) + 8 * v18);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v52 = [v19 osVersionRange];
          if ((!v52 || [v52 versionMeetsRequirements:v12 deviceClass:v10]) && objc_msgSend(v19, "type") == 1)
          {
            v51 = [v19 secureElementIdentifier];
            if ([v11 containsObject:?])
            {
              v20 = [v19 paymentApplicationIdentifiers];
              v57 = 0u;
              v58 = 0u;
              v59 = 0u;
              v60 = 0u;
              v21 = [(PKSecureElementPass *)v49 devicePaymentApplications];
              v22 = [v21 countByEnumeratingWithState:&v57 objects:v68 count:16];
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
                      objc_enumerationMutation(v21);
                    }

                    v27 = *(*(&v57 + 1) + 8 * i);
                    v28 = [v27 applicationIdentifier];
                    if ([v20 containsObject:v28])
                    {
                      v29 = [v27 state];
                      if ((v29 - 1) > 0xE)
                      {
                        v30 = 0;
                      }

                      else
                      {
                        v30 = qword_1ADB9A568[v29 - 1];
                      }

                      v24 += v30;
                    }

                    else
                    {
                    }
                  }

                  v31 = v19;
                  v23 = [v21 countByEnumeratingWithState:&v57 objects:v68 count:16];
                }

                while (v23);
              }

              else
              {
                v31 = v19;
                v24 = 0;
              }

              v13 = v45;
              if (v24 == [v20 count])
              {
                v55 = 0u;
                v56 = 0u;
                v53 = 0u;
                v54 = 0u;
                v32 = [v31 technologyTypes];
                v33 = [v32 countByEnumeratingWithState:&v53 objects:v65 count:16];
                v11 = v47;
                v14 = v44;
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
                        objc_enumerationMutation(v32);
                      }

                      v37 = PKPassAutomaticSelectionTechnologyTypeFromType(*(*(&v53 + 1) + 8 * j));
                      if (!v45[2](v45, v37))
                      {

                        goto LABEL_40;
                      }
                    }

                    v34 = [v32 countByEnumeratingWithState:&v53 objects:v65 count:16];
                    if (v34)
                    {
                      continue;
                    }

                    break;
                  }
                }

                [v42 addObject:v19];
LABEL_40:
                v10 = v48;
                v12 = v46;
              }

              else
              {
                v38 = PKLogFacilityTypeGetObject(7uLL);
                v11 = v47;
                v10 = v48;
                v12 = v46;
                v14 = v44;
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v67 = v20;
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
      v16 = [v14 countByEnumeratingWithState:&v61 objects:v69 count:16];
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

- (id)precursorUpgradeRequestsForDeviceSEIDs:(id)a3 deviceClass:(id)a4 deviceVersion:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v11 = [(PKSecureElementPass *)self upgradeRequests];
  v12 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v31;
    *&v13 = 138412290;
    v27 = v13;
    v28 = v8;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        if ([v17 type] == 2)
        {
          v18 = v17;
          v19 = [v18 secureElementIdentifier];
          if ([v8 containsObject:v19])
          {
            v20 = [v18 osVersionRange];
            v21 = v20;
            if (v20 && ([v20 versionMeetsRequirements:v10 deviceClass:v9] & 1) == 0)
            {
              v22 = v10;
              v23 = v9;
              v24 = PKLogFacilityTypeGetObject(0x27uLL);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v27;
                v35 = v18;
                _os_log_impl(&dword_1AD337000, v24, OS_LOG_TYPE_DEFAULT, "Precursor request does not meet os version requirements: %@", buf, 0xCu);
              }

              v9 = v23;
              v10 = v22;
              v8 = v28;
            }

            else
            {
              [v29 addObject:v18];
            }
          }
        }
      }

      v14 = [v11 countByEnumeratingWithState:&v30 objects:v36 count:16];
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
  v3 = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  v4 = [v3 paymentNetworkIdentifier];

  if (v4 == 140)
  {
    return 5;
  }

  v6 = [(PKObject *)self contentLoadedIfNeeded];
  v7 = [v6 identityType];

  return v7;
}

- (int64_t)accessType
{
  v3 = [(PKSecureElementPass *)self devicePaymentApplications];
  accessType = self->_accessType;
  if (PKIsCarKeyPass(v3))
  {
    accessType = 4;
  }

  return accessType;
}

- (NSString)accessReportingType
{
  v2 = [(PKObject *)self contentLoadedIfNeeded];
  v3 = [v2 accessReportingType];

  return v3;
}

- (int64_t)paymentType
{
  v2 = [(PKObject *)self contentLoadedIfNeeded];
  v3 = [v2 paymentType];

  return v3;
}

- (unint64_t)supportedRadioTechnologies
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(PKSecureElementPass *)self paymentApplications];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v2);
        }

        v5 |= [*(*(&v9 + 1) + 8 * i) supportedRadioTechnologies];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  v2 = [(PKObject *)self contentLoadedIfNeeded];
  v3 = [v2 auxiliaryRegistrationRequirements];

  return v3;
}

- (id)longTermPrivacyKeyGroupIdentifier
{
  v2 = [(PKObject *)self contentLoadedIfNeeded];
  v3 = [v2 auxiliaryRegistrationRequirements];
  v4 = [v3 deviceDecryptionRequirements];
  v5 = [v4 pk_firstObjectPassingTest:&__block_literal_global_128];

  v6 = [v5 groupIdentifier];

  return v6;
}

- (PKTransitPassProperties)transitProperties
{
  v2 = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  v3 = [v2 transitProperties];

  return v3;
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

- (id)_launchURLForPassAction:(id)a3
{
  v4 = a3;
  v5 = [(PKObject *)self uniqueID];
  if (v5 && ![(PKPass *)self isRemotePass]&& ([(PKStoredValuePassProperties *)PKTransitPassProperties passPropertiesForPass:self], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AF20]);
    [v7 setScheme:@"shoebox"];
    [v7 setHost:@"card"];
    v8 = PKPaymentPassActionTypeToString([v4 type]);
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@/%@", v5, v8];
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
  v2 = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
  v3 = [v2 paymentNetworkIdentifier];

  return (v3 & 0xFFFFFFFFFFFFFFFELL) == 108;
}

- (BOOL)isContactlessPaymentSupportedForTransitNetworks:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(PKSecureElementPass *)self deviceContactlessPaymentApplications];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__PKSecureElementPass_isContactlessPaymentSupportedForTransitNetworks___block_invoke;
  v8[3] = &unk_1E79CFB10;
  v6 = v4;
  v9 = v6;
  v10 = &v11;
  [v5 enumerateObjectsUsingBlock:v8];

  LOBYTE(v5) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return v5;
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

          v9 = [*(*(&v18 + 1) + 8 * i) transactionSourceIdentifier];
          if (v9)
          {
            [v3 addObject:v9];
          }
        }

        v6 = [(NSSet *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    v10 = [(PKSecureElementPass *)self transactionSourceIdentifier];
    if (v10)
    {
      [v3 addObject:v10];
    }

    v11 = [v3 copy];
  }

  else
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [(PKObject *)self initializedViaInitWithCoder];
    v16 = @"was not";
    if (v15)
    {
      v16 = @"was";
    }

    v3 = [v12 stringWithFormat:@"updateDevicePaymentApplicationsWithSecureElementIdentifiers: must be called before calling devicePaymentApplications. (%@ %@ initialized via initWithCoder:)", v14, v16];

    v10 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = v3;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Error: %{public}@. Returning nil.", buf, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)hasDeviceTransactionSourceIdentifier:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!self->_devicePaymentApplications)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [(PKObject *)self initializedViaInitWithCoder];
    v13 = @"was not";
    if (v12)
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

  v5 = [(PKSecureElementPass *)self transactionSourceIdentifier];
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {

    goto LABEL_13;
  }

  if (v6 && v5)
  {
    v8 = [v5 isEqualToString:v6];

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

        v22 = [*(*(&v27 + 1) + 8 * i) transactionSourceIdentifier];
        v23 = v7;
        v24 = v23;
        if (v22 == v23)
        {

LABEL_30:
          v16 = 1;
          goto LABEL_31;
        }

        if (v7 && v22)
        {
          v25 = [v22 isEqualToString:v23];

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
  v2 = [(PKObject *)self uniqueID];
  v3 = PKTransactionServiceURLOverrideForPassUniqueIdentifier(v2);

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

- (id)_passCredentialFilesWithPrefix:(id)a3 extension:(id)a4 forSecureElementIdentifiers:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v31 = a3;
  v30 = a4;
  v8 = a5;
  v29 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v23 = v8;
  obj = [(PKSecureElementPass *)self paymentApplicationsForSecureElementIdentifiers:v8];
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
        v28 = [v10 subcredentials];
        v11 = [v28 countByEnumeratingWithState:&v32 objects:v40 count:16];
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
                objc_enumerationMutation(v28);
              }

              v15 = *(*(&v32 + 1) + 8 * i);
              v16 = [v15 identifier];
              v17 = [v31 stringByAppendingString:v16];
              v18 = [(PKObject *)self dataAccessor];
              v19 = [v18 dataForBundleResourceNamed:v17 withExtension:v30];

              if (v19)
              {
                v20 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
                [v20 setObject:v19 forKey:v15];
                [v29 setObject:v20 forKey:v10];
              }
            }

            v12 = [v28 countByEnumeratingWithState:&v32 objects:v40 count:16];
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

  v21 = [v29 copy];

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
  v4 = [(PKSecureElementPass *)self devicePaymentApplications];
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [v9 subcredentials];
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v18 + 1) + 8 * j) endpointIdentifier];
              [v3 pk_safelyAddObject:v15];
            }

            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v16 = [v3 copy];

  return v16;
}

- (id)_passSubcredentialFilesWithPrefix:(id)a3 extension:(id)a4 forSecureElementIdentifiers:(id)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v26 = v9;
  v27 = v8;
  v25 = v10;
  v12 = [(PKSecureElementPass *)self _passCredentialFilesWithPrefix:v8 extension:v9 forSecureElementIdentifiers:v10];
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
              [v11 setObject:v22 forKey:v21];
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

  v23 = [v11 copy];

  return v23;
}

- (BOOL)preventsWalletDeletion
{
  v3 = [(PKSecureElementPass *)self passActivationState];
  if ([(PKSecureElementPass *)self hasAssociatedPeerPaymentAccount])
  {
    return (v3 & 0xFFFFFFFFFFFFFFFDLL) == 0;
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

- (BOOL)supportsVirtualCardNumberAccordingToWebService:(id)a3
{
  v4 = a3;
  if ([(PKSecureElementPass *)self passActivationState])
  {
    v5 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 0;
      v6 = "Not offering VPAN (pass not activated)";
      v7 = &v20;
LABEL_11:
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
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
    v5 = [(PKSecureElementPass *)self devicePrimaryPaymentApplication];
    if (v5)
    {
      v13 = [PKWebServiceVirtualCardFeature virtualCardFeatureWithWebService:v4];
      if (v13)
      {
        v14 = v13;
        v15 = [v4 targetDevice];
        v11 = [v14 doesPaymentApplication:v5 supportVPANOnDevice:v15 associatedAccountFeatureIdentifier:self->_associatedAccountFeatureIdentifier];

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

  v5 = PKLogFacilityTypeGetObject(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
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

- (BOOL)hasActiveVirtualCardAccordingToWebService:(id)a3
{
  v4 = a3;
  if ([(PKSecureElementPass *)self passActivationState])
  {
    v5 = 0;
  }

  else
  {
    v6 = [PKVirtualCard cardsForPaymentPass:self accordingToWebService:v4];
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
  v2 = [(PKSecureElementPass *)self paymentApplications];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        v7 = [v6 virtualCardSuffix];

        if (v7)
        {
          v3 = [v6 virtualCardSuffix];
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (BOOL)supportsDeviceAssessmentAccordingToService:(id)a3
{
  v4 = a3;
  v5 = [(PKSecureElementPass *)self devicePaymentApplications];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__PKSecureElementPass_supportsDeviceAssessmentAccordingToService___block_invoke;
  v9[3] = &unk_1E79CFB58;
  v10 = v4;
  v6 = v4;
  v7 = [v5 pk_hasObjectPassingTest:v9];

  return v7;
}

- (BOOL)shouldDisplayDeviceAssessmentEducationAccordingToService:(id)a3
{
  v4 = a3;
  v5 = !PKHasSeenDeviceAssessmentEducation() && [(PKSecureElementPass *)self supportsDeviceAssessmentAccordingToService:v4];

  return v5;
}

- (BOOL)supportsFeatureForCurrentDevice:(unint64_t)a3
{
  if ([(PKPaymentApplication *)self->_devicePrimaryPaymentApplication isShareable])
  {
    return 1;
  }

  if ([(PKSecureElementPass *)self isCarKeyPass])
  {
    v6 = [(PKPaymentApplication *)self->_devicePrimaryPaymentApplication subcredentials];
    v7 = [v6 anyObject];
    v8 = [v7 isShareable];

    if (v8)
    {
      return 1;
    }
  }

  v9 = PKDeviceClass();
  v10 = +[PKOSVersionRequirement fromDeviceVersion];
  v12.receiver = self;
  v12.super_class = PKSecureElementPass;
  v5 = [(PKPass *)&v12 supportsFeature:a3 forDevice:v9 version:v10];

  return v5;
}

- (BOOL)isAutoTopUpBalance:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [a3 identifiers];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(PKPass *)self autoTopUpFields];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 key];
        if ([v11 isEqualToString:@"auto_top_up_field_value"])
        {
          v12 = [v10 foreignReferenceIdentifiers];
          v13 = [v12 intersectsSet:v4];

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

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (id)autoTopUpBalanceIdentifiers
{
  v2 = self;
  v31 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = [(PKPass *)self balanceFields];
  v19 = [v3 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v19)
  {
    v4 = *v26;
    v20 = v3;
    v17 = *v26;
    v18 = v2;
    do
    {
      v5 = 0;
      do
      {
        if (*v26 != v4)
        {
          objc_enumerationMutation(v3);
        }

        v6 = [*(*(&v25 + 1) + 8 * v5) foreignReferenceIdentifiers];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v7 = [(PKPass *)v2 autoTopUpFields];
        v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v21 + 1) + 8 * i);
              v13 = [v12 key];
              if ([v13 isEqualToString:@"auto_top_up_field_value"])
              {
                v14 = [v12 foreignReferenceIdentifiers];
                v15 = [v14 intersectsSet:v6];

                if (v15)
                {

                  v3 = v20;
                  goto LABEL_21;
                }
              }

              else
              {
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v9);
        }

        ++v5;
        v3 = v20;
        v4 = v17;
        v2 = v18;
      }

      while (v5 != v19);
      v6 = 0;
      v19 = [v20 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v19);
  }

  else
  {
    v6 = 0;
  }

LABEL_21:

  return v6;
}

- (id)autoTopUpMerchantTokenIdentifier
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(PKPass *)self balances];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v8 + 1) + 8 * i) paymentMethod];
        if (![v6 type])
        {
          v3 = [v6 merchantTokenIdentifier];

          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (BOOL)canPerformAction:(id)a3 unableReason:(unint64_t *)a4 displayableError:(id *)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v9 = a3;
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

  if ([v9 type] == 2)
  {
    v11 = [v9 associatedPlanIdentifier];
    if (v11)
    {
      v12 = [v9 associatedPlan];

      if (!v12)
      {
        v13 = [(PKPass *)self paymentPass];
        v14 = PKTransitCommutePlanInPassForIdentifier(v13, v11);

        [v9 setAssociatedPlan:v14];
      }
    }
  }

  v15 = [v9 availableFrom];
  v16 = [v9 availableUntil];
  v17 = [MEMORY[0x1E695DF00] date];
  if (PKCurrentPassbookState() > 1)
  {
    PaymentsUsingNetworksIssuerCountryCodesWithCapabilitiesAndRequestType = 0;
    v22 = 6;
    if (a4)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v18 = [(PKSecureElementPass *)self effectiveContactlessPaymentApplicationState];
    v19 = v18 != 15 && v18 != 1;
    if (v18 != 15 && v18 != 1)
    {
      PaymentsUsingNetworksIssuerCountryCodesWithCapabilitiesAndRequestType = 0;
      v22 = 1;
      if (!a4)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    v20 = [v9 unavailableActionReason];

    v21 = v20 == 0;
    if (v20)
    {
      v22 = 7;
    }

    else
    {
      v22 = v19;
    }

    if (!v20 && v15)
    {
      v23 = [v17 compare:v15];
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

    if (v21 && v16)
    {
      if ([v17 compare:v16] == 1)
      {
        PaymentsUsingNetworksIssuerCountryCodesWithCapabilitiesAndRequestType = 0;
        v22 = 4;
        if (!a4)
        {
          goto LABEL_38;
        }

LABEL_37:
        *a4 = v22;
        goto LABEL_38;
      }

      goto LABEL_32;
    }

    if (v21)
    {
LABEL_32:
      v25 = [v9 serviceProviderAcceptedNetworks];
      v26 = [v9 serviceProviderSupportedCountries];
      PaymentsUsingNetworksIssuerCountryCodesWithCapabilitiesAndRequestType = PKCanMakePaymentsUsingNetworksIssuerCountryCodesWithCapabilitiesAndRequestType(v25, v26, [v9 serviceProviderCapabilities], 0, 0);

      if ((PaymentsUsingNetworksIssuerCountryCodesWithCapabilitiesAndRequestType & 1) == 0)
      {
        v22 = 2;
      }

      if (a4)
      {
        goto LABEL_37;
      }

      goto LABEL_38;
    }

    PaymentsUsingNetworksIssuerCountryCodesWithCapabilitiesAndRequestType = 0;
    if (a4)
    {
      goto LABEL_37;
    }
  }

LABEL_38:
  if (a5)
  {
    *a5 = [objc_opt_class() displayableErrorForAction:v9 andReason:v22];
  }

  return PaymentsUsingNetworksIssuerCountryCodesWithCapabilitiesAndRequestType & 1;
}

+ (id)displayableNoPaymentNetworkErrorMessageForAction:(id)a3 isTransit:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 serviceProviderAcceptedNetworks];
  v7 = [v5 serviceProviderCapabilities];
  v8 = [v5 serviceProviderSupportedCountries];

  if ([v6 count] == 1 && !objc_msgSend(v8, "count"))
  {
    v11 = @"PASS_ACTION_UNAVAILABLE_REASON_NO_SPECIFIC_PAYMENT_CARD_AVAILABLE";
    v12 = @"PASS_ACTION_UNAVAILABLE_REASON_NO_SPECIFIC_PAYMENT_CARD_AVAILABLE_TRANSIT";
    if ((v7 & 0xC) == 8)
    {
      v11 = @"PASS_ACTION_UNAVAILABLE_REASON_NO_SPECIFIC_DEBIT_CARD_AVAILABLE";
      v12 = @"PASS_ACTION_UNAVAILABLE_REASON_NO_SPECIFIC_DEBIT_CARD_AVAILABLE_TRANSIT";
    }

    if (v4)
    {
      v11 = v12;
    }

    v13 = v11;
    v14 = [v6 objectAtIndexedSubscript:0];
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

+ (id)displayableErrorForTransitAction:(id)a3 andReason:(unint64_t)a4
{
  v6 = a3;
  if (a4 == 2)
  {
    v7 = PKLocalizedString(&cfstr_PassActionUnav_4.isa, 0);
    v8 = [(PKSecureElementPass *)PKPaymentPass displayableNoPaymentNetworkErrorMessageForAction:v6 isTransit:1];

    v9 = PKDisplayableErrorCustomWithType(-1, v7, v8, 0, 0);

    v6 = v7;
  }

  else
  {
    v9 = [a1 displayableErrorForAction:v6 andReason:a4];
  }

  return v9;
}

+ (id)displayableErrorForAction:(id)a3 andReason:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (a4 > 3)
  {
    if (a4 == 4)
    {
      v7 = [v5 unavailableAfterReason];
      if (!v7)
      {
        v14 = [v6 title];
        v10 = PKLocalizedPaymentString(&cfstr_PassActionUnav_6.isa, &stru_1F2281668.isa, v14);

        goto LABEL_17;
      }

      goto LABEL_15;
    }

    if (a4 == 7)
    {
      v7 = [v5 unavailableActionReason];
      if (!v7)
      {
        v8 = @"PASS_ACTION_UNAVAILABLE_GENERIC_REASON";
        goto LABEL_10;
      }

LABEL_15:
      v9 = v7;
      goto LABEL_16;
    }
  }

  else
  {
    if (a4 == 2)
    {
      v11 = PKLocalizedPaymentString(&cfstr_PassActionUnav_4.isa, 0);
      v10 = [(PKSecureElementPass *)PKPaymentPass displayableNoPaymentNetworkErrorMessageForAction:v6 isTransit:0];
      if (v11)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if (a4 == 3)
    {
      v7 = [v5 unavailableBeforeReason];
      if (!v7)
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