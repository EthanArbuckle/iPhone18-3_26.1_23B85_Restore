@interface PKProvisioningAnalyticsSession
+ (id)continueAnalyticsSessionForEnvironment:(id)environment intent:(id)intent referralSource:(id)source archivedParent:(id)parent;
+ (id)startAnalyticsSessionForEnvironment:(id)environment intent:(id)intent referralSource:(id)source;
- (PKProvisioningAnalyticsSession)initWithEnvironment:(id)environment intent:(id)intent referralSource:(id)source archivedParent:(id)parent;
- (id)createPreflightReporter;
- (id)createStepReporter;
- (id)createViewReporterForPage:(id)page;
- (void)_populateDictionary:(id)dictionary withError:(id)error;
- (void)reportButtonPressedForReporter:(id)reporter buttonTag:(unint64_t)tag context:(id)context;
- (void)reportErrorForReporter:(id)reporter error:(id)error context:(id)context;
- (void)reportOtherButtonPressedForReporter:(id)reporter otherButtonTag:(id)tag context:(id)context;
- (void)reportOtherErrorForReporter:(id)reporter error:(id)error context:(id)context;
- (void)reportPageCompletedForReporter:(id)reporter success:(BOOL)success context:(id)context;
- (void)reportPreflightEventForReporter:(id)reporter context:(id)context;
- (void)reportProvisioningCompleteForReporter:(id)reporter success:(BOOL)success;
- (void)reportProvisioningStepForReporter:(id)reporter step:(id)step success:(BOOL)success error:(id)error context:(id)context;
- (void)reportProvisioningStepStartForReporter:(id)reporter step:(id)step context:(id)context;
- (void)reportStateChangedForReporter:(id)reporter context:(id)context;
- (void)reportViewAppearedForReporter:(id)reporter context:(id)context;
- (void)resetForNewProductSetup;
- (void)setPass:(id)pass;
- (void)setProductType:(id)type subtype:(id)subtype;
- (void)setSetupProduct:(id)product;
- (void)stop;
@end

@implementation PKProvisioningAnalyticsSession

+ (id)startAnalyticsSessionForEnvironment:(id)environment intent:(id)intent referralSource:(id)source
{
  sourceCopy = source;
  intentCopy = intent;
  environmentCopy = environment;
  v10 = [[PKProvisioningAnalyticsSession alloc] initWithEnvironment:environmentCopy intent:intentCopy referralSource:sourceCopy];

  return v10;
}

+ (id)continueAnalyticsSessionForEnvironment:(id)environment intent:(id)intent referralSource:(id)source archivedParent:(id)parent
{
  parentCopy = parent;
  sourceCopy = source;
  intentCopy = intent;
  environmentCopy = environment;
  v13 = [[PKProvisioningAnalyticsSession alloc] initWithEnvironment:environmentCopy intent:intentCopy referralSource:sourceCopy archivedParent:parentCopy];

  return v13;
}

- (PKProvisioningAnalyticsSession)initWithEnvironment:(id)environment intent:(id)intent referralSource:(id)source archivedParent:(id)parent
{
  environmentCopy = environment;
  intentCopy = intent;
  sourceCopy = source;
  parentCopy = parent;
  v58.receiver = self;
  v58.super_class = PKProvisioningAnalyticsSession;
  v14 = [(PKProvisioningAnalyticsSession *)&v58 init];
  if (!v14)
  {
    goto LABEL_91;
  }

  if (parentCopy)
  {
    v15 = [PKProvisioningAnalyticsArchive createArchiveFromArchiveData:parentCopy];
    v16 = v15;
    if (v15)
    {
      state = [v15 state];
      state = v14->_state;
      v14->_state = state;

      provisioningSubjectHandle = [v16 provisioningSubjectHandle];
      provisioningSubjectHandle = v14->_provisioningSubjectHandle;
      v14->_provisioningSubjectHandle = provisioningSubjectHandle;

      marketingSubjectHandle = [v16 marketingSubjectHandle];
      marketingSubjectHandle = v14->_marketingSubjectHandle;
      v14->_marketingSubjectHandle = marketingSubjectHandle;

      campaignAttributionSubjectHandle = [v16 campaignAttributionSubjectHandle];
      campaignAttributionSubjectHandle = v14->_campaignAttributionSubjectHandle;
      v14->_campaignAttributionSubjectHandle = campaignAttributionSubjectHandle;
    }
  }

  if (!v14->_state)
  {
    v25 = objc_alloc_init(PKProvisioningAnalyticsState);
    v26 = v14->_state;
    v14->_state = v25;

    v27 = v14->_state;
    v28 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    uUIDString = [v28 UUIDString];
    [(PKProvisioningAnalyticsState *)v27 setSessionID:uUIDString];

    v30 = sourceCopy;
    v31 = v30;
    if (v30 && @"notification")
    {
      if (([(__CFString *)v30 isEqual:@"notification"]& 1) != 0)
      {
        goto LABEL_83;
      }
    }

    else if (@"notification" == v30)
    {
      goto LABEL_83;
    }

    if (v31 && @"discoveryCard")
    {
      if (([(__CFString *)v31 isEqual:@"discoveryCard"]& 1) != 0)
      {
        goto LABEL_83;
      }
    }

    else if (@"discoveryCard" == v31)
    {
      goto LABEL_83;
    }

    if (v31 && @"plusButton")
    {
      if (([(__CFString *)v31 isEqual:@"plusButton"]& 1) != 0)
      {
        goto LABEL_83;
      }

LABEL_22:
      v32 = PKSubcredentialPairingReferralSourceToString(1);
      v33 = v32;
      if (v31 && v32)
      {
        if (([(__CFString *)v31 isEqual:v32]& 1) != 0)
        {
          goto LABEL_82;
        }
      }

      else if (v32 == v31)
      {
LABEL_82:

        goto LABEL_83;
      }

      v34 = PKSubcredentialPairingReferralSourceToString(7);
      v35 = v34;
      if (v31 && v34)
      {
        if (([(__CFString *)v31 isEqual:v34]& 1) != 0)
        {
          goto LABEL_81;
        }
      }

      else if (v34 == v31)
      {
LABEL_81:

        goto LABEL_82;
      }

      v36 = PKSubcredentialPairingReferralSourceToString(8);
      v37 = v36;
      if (v31 && v36)
      {
        if (([(__CFString *)v31 isEqual:v36]& 1) != 0)
        {
          goto LABEL_80;
        }
      }

      else if (v36 == v31)
      {
LABEL_80:

        goto LABEL_81;
      }

      v38 = PKSubcredentialPairingReferralSourceToString(2);
      v39 = v38;
      if (v31 && v38)
      {
        if (([(__CFString *)v31 isEqual:v38]& 1) != 0)
        {
          goto LABEL_79;
        }
      }

      else if (v38 == v31)
      {
LABEL_79:

        goto LABEL_80;
      }

      v40 = PKSubcredentialPairingReferralSourceToString(3);
      v57 = v40;
      if (v31 && v40)
      {
        if (([(__CFString *)v31 isEqual:v40]& 1) != 0)
        {
          goto LABEL_78;
        }
      }

      else if (v40 == v31)
      {
LABEL_78:

        goto LABEL_79;
      }

      v41 = PKSubcredentialPairingReferralSourceToString(4);
      v56 = v41;
      if (v31 && v41)
      {
        if (([(__CFString *)v31 isEqual:v41]& 1) != 0)
        {
          goto LABEL_77;
        }
      }

      else if (v41 == v31)
      {
LABEL_77:

        goto LABEL_78;
      }

      v42 = PKSubcredentialPairingReferralSourceToString(5);
      v55 = v42;
      if (v31 && v42)
      {
        if (([(__CFString *)v31 isEqual:v42]& 1) != 0)
        {
          goto LABEL_76;
        }
      }

      else if (v42 == v31)
      {
LABEL_76:

        goto LABEL_77;
      }

      v43 = PKSubcredentialPairingReferralSourceToString(6);
      v54 = v43;
      if (v31 && v43)
      {
        if (([(__CFString *)v31 isEqual:v43]& 1) != 0)
        {
          goto LABEL_75;
        }
      }

      else if (v43 == v31)
      {
        goto LABEL_75;
      }

      if (v31 && @"imessage")
      {
        if (([(__CFString *)v31 isEqual:@"imessage"]& 1) != 0)
        {
          goto LABEL_75;
        }
      }

      else if (@"imessage" == v31)
      {
        goto LABEL_75;
      }

      if (v31 && @"sms")
      {
        if (([(__CFString *)v31 isEqual:@"sms"]& 1) != 0)
        {
          goto LABEL_75;
        }

LABEL_72:
        if (v31 && @"email")
        {
          if (([(__CFString *)v31 isEqual:@"email"]& 1) != 0)
          {
            goto LABEL_75;
          }
        }

        else if (@"email" == v31)
        {
          goto LABEL_75;
        }

        if (v31 && @"airdrop")
        {
          v53 = [(__CFString *)v31 isEqual:@"airdrop"];
        }

        else
        {
          v53 = @"airdrop" == v31;
        }

        if ((v53 & 1) == 0)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      }

      if (@"sms" != v31)
      {
        goto LABEL_72;
      }

LABEL_75:

      goto LABEL_76;
    }

    if (@"plusButton" != v31)
    {
      goto LABEL_22;
    }

LABEL_83:

LABEL_84:
    v44 = v14->_state;
    v45 = [(__CFString *)v31 copy];
    [(PKProvisioningAnalyticsState *)v44 setReferralSource:v45];
  }

LABEL_85:
  [(PKProvisioningAnalyticsState *)v14->_state setEnvironment:environmentCopy];
  [(PKProvisioningAnalyticsState *)v14->_state setIntent:intentCopy];
  if (!v14->_provisioningSubjectHandle)
  {
    v46 = [[PKProvisioningAnalyticsSessionProvisioningSubjectHandle alloc] initWithArchivedParent:0];
    v47 = v14->_provisioningSubjectHandle;
    v14->_provisioningSubjectHandle = v46;
  }

  if (!v14->_marketingSubjectHandle)
  {
    v48 = [[PKProvisioningAnalyticsSessionMarketingSubjectHandle alloc] initWithArchivedParent:0];
    v49 = v14->_marketingSubjectHandle;
    v14->_marketingSubjectHandle = v48;
  }

  if (!v14->_campaignAttributionSubjectHandle)
  {
    v50 = [[PKProvisioningAnalyticsSessionCampaignAttributionSubjectHandle alloc] initWithArchivedParent:0];
    v51 = v14->_campaignAttributionSubjectHandle;
    v14->_campaignAttributionSubjectHandle = v50;
  }

LABEL_91:

  return v14;
}

- (id)createPreflightReporter
{
  v3 = [PKProvisioningAnalyticsSessionPreflightReporter alloc];
  sessionID = [(PKProvisioningAnalyticsState *)self->_state sessionID];
  v5 = [(PKProvisioningAnalyticsSessionReporter *)v3 initWithResponder:self sessionID:sessionID];

  return v5;
}

- (id)createViewReporterForPage:(id)page
{
  pageCopy = page;
  v5 = [PKProvisioningAnalyticsSessionUIReporter alloc];
  sessionID = [(PKProvisioningAnalyticsState *)self->_state sessionID];
  v7 = [(PKProvisioningAnalyticsSessionUIReporter *)v5 initWithResponder:self sessionID:sessionID pageTag:pageCopy];

  return v7;
}

- (id)createStepReporter
{
  v3 = [PKProvisioningAnalyticsSessionStepReporter alloc];
  sessionID = [(PKProvisioningAnalyticsState *)self->_state sessionID];
  v5 = [(PKProvisioningAnalyticsSessionReporter *)v3 initWithResponder:self sessionID:sessionID];

  return v5;
}

- (void)stop
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v5 setObject:@"flowFinished" forKeyedSubscript:@"eventType"];
  provisioningSubjectHandle = self->_provisioningSubjectHandle;
  v4 = [v5 copy];
  [(PKProvisioningAnalyticsSessionProvisioningSubjectHandle *)provisioningSubjectHandle reportEvent:v4 state:self->_state];

  [(PKProvisioningAnalyticsSessionSubjectHandle *)self->_provisioningSubjectHandle stop];
  [(PKProvisioningAnalyticsSessionSubjectHandle *)self->_marketingSubjectHandle stop];
  [(PKProvisioningAnalyticsSessionSubjectHandle *)self->_campaignAttributionSubjectHandle stop];
}

- (void)resetForNewProductSetup
{
  [(PKProvisioningAnalyticsSession *)self _clearEnvironmentValues];
  state = self->_state;
  v5 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  uUIDString = [v5 UUIDString];
  [(PKProvisioningAnalyticsState *)state setSessionID:uUIDString];
}

- (void)setProductType:(id)type subtype:(id)subtype
{
  state = self->_state;
  subtypeCopy = subtype;
  [(PKProvisioningAnalyticsState *)state setProductTypeDescriptor:type];
  [(PKProvisioningAnalyticsState *)self->_state setProductSubtypeDescriptor:subtypeCopy];

  [(PKProvisioningAnalyticsState *)self->_state setPassMetadata:0];
  [(PKProvisioningAnalyticsState *)self->_state setProductMetadata:0];
  v8 = self->_state;

  [(PKProvisioningAnalyticsState *)v8 setProductIssuer:0];
}

- (void)setSetupProduct:(id)product
{
  productCopy = product;
  if (productCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    displayName = [productCopy displayName];
    [v5 setObject:displayName forKeyedSubscript:@"issuer"];

    [(PKProvisioningAnalyticsState *)self->_state setProductMetadata:v5];
    state = self->_state;
    configuration = [productCopy configuration];
    type = [configuration type];
    if (type <= 0xC)
    {
      v3 = *off_1E79CBBB0[type];
    }

    [(PKProvisioningAnalyticsState *)state setProductTypeDescriptor:v3];

    [(PKProvisioningAnalyticsState *)self->_state setProductSubtypeDescriptor:0];
    partners = [productCopy partners];
    v11 = [partners pk_createArrayBySafelyApplyingBlock:&__block_literal_global_36];
    v12 = [v11 componentsJoinedByString:{@", "}];
    v13 = v12;
    if (v12)
    {
      partnerName = v12;
    }

    else
    {
      partnerName = [productCopy partnerName];
    }

    v15 = partnerName;

    v16 = self->_state;
    lowercaseString = [v15 lowercaseString];
    [(PKProvisioningAnalyticsState *)v16 setProductIssuer:lowercaseString];
  }

  else
  {
    [(PKProvisioningAnalyticsState *)self->_state setProductMetadata:0];
  }
}

- (void)setPass:(id)pass
{
  v70 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = passCopy;
  v7 = v6;
  if (v6)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (v8)
  {
    goto LABEL_77;
  }

  passType = [v6 passType];
  if ((passType + 1) >= 3)
  {
    v11 = @"unknown";
  }

  else
  {
    v11 = off_1E79CBC18[passType + 1];
  }

  [v5 setObject:v11 forKeyedSubscript:@"passType"];

  style = [v7 style];
  secureElementPass = [v7 secureElementPass];
  isIdentityPass = [secureElementPass isIdentityPass];

  if (isIdentityPass)
  {
    v15 = @"identity";
  }

  else if (style < 0xE && ((0x27FFu >> style) & 1) != 0)
  {
    v15 = off_1E79CBC30[style];
  }

  else
  {
    v15 = @"unknown";
  }

  [v5 setObject:v15 forKeyedSubscript:@"passStyle"];

  nfcPayload = [v7 nfcPayload];
  v17 = PKAnalyticsReportSwitchToggleResultValue(nfcPayload != 0);
  [v5 setObject:v17 forKeyedSubscript:@"hasNFC"];

  v18 = v7;
  if ([v18 passType] == 1)
  {
    secureElementPass2 = [v18 secureElementPass];
    cardType = [secureElementPass2 cardType];
    if (cardType <= 4)
    {
      v17 = *off_1E79CBCA0[cardType];
    }
  }

  else
  {
    v17 = @"other";
  }

  [v5 setObject:v17 forKeyedSubscript:@"productType"];
  secureElementPass3 = [v18 secureElementPass];
  if ([secureElementPass3 isIdentityPass])
  {
    identityType = [secureElementPass3 identityType];
    if (identityType <= 2)
    {
      if (identityType == 1)
      {
        v23 = PKAnalyticsReportDriversLicenseProductSubtype;
        goto LABEL_43;
      }

      if (identityType == 2)
      {
        v23 = PKAnalyticsReportStateIDProductSubtype;
        goto LABEL_43;
      }
    }

    else
    {
      switch(identityType)
      {
        case 3:
          goto LABEL_27;
        case 4:
          v23 = PKAnalyticsReportIDCardProductSubtype;
          goto LABEL_43;
        case 5:
LABEL_27:
          v23 = PKAnalyticsReportPassportVerifiedPhotoIDProductSubtype;
LABEL_43:
          v28 = *v23;
          goto LABEL_44;
      }
    }

LABEL_36:
    v28 = @"unknown";
LABEL_44:
    v27 = v28;
    goto LABEL_57;
  }

  if (![secureElementPass3 isAccessPass])
  {
    goto LABEL_36;
  }

  accessType = [secureElementPass3 accessType];
  accessReportingType = [secureElementPass3 accessReportingType];
  v26 = accessReportingType;
  if (accessType > 2)
  {
    if (accessType <= 4)
    {
      if (accessType == 3)
      {
        v27 = @"singlefamily";
      }

      else
      {
        v27 = @"cars";
      }

      goto LABEL_56;
    }

    if (accessType == 5)
    {
      v27 = @"multifamily";
      goto LABEL_56;
    }

    if (accessType == 6)
    {
      v27 = @"urbanmobility";
      goto LABEL_56;
    }

    goto LABEL_51;
  }

  if (!accessType)
  {
    v29 = @"general";
    if (accessReportingType)
    {
      v29 = accessReportingType;
    }

    goto LABEL_52;
  }

  if (accessType == 1)
  {
    v27 = @"hospitality";
    goto LABEL_56;
  }

  if (accessType != 2)
  {
LABEL_51:
    v29 = @"unknown";
LABEL_52:
    v27 = v29;
    goto LABEL_56;
  }

  v27 = @"corporate";
LABEL_56:

LABEL_57:
  [v5 setObject:v27 forKeyedSubscript:@"productSubType"];

  secureElementPass4 = [v18 secureElementPass];
  devicePaymentApplications = [secureElementPass4 devicePaymentApplications];
  v32 = [devicePaymentApplications count] > 1;

  v33 = PKAnalyticsReportSwitchToggleResultValue(v32);

  [v5 setObject:v33 forKeyedSubscript:@"coBadgeEnable"];
  secureElementPass5 = [v18 secureElementPass];
  v35 = @"unknown";
  organizationName = [secureElementPass5 organizationName];
  if ([organizationName length])
  {
    cardType2 = [secureElementPass5 cardType];
    if (cardType2 <= 4 && ((1 << cardType2) & 0x16) != 0)
    {
      v38 = organizationName;

      v35 = v38;
    }
  }

  [v5 setObject:v35 forKeyedSubscript:@"issuer"];
  secureElementPass6 = [v18 secureElementPass];
  v40 = secureElementPass6;
  if (secureElementPass6)
  {
    v64 = v9;
    [secureElementPass6 devicePaymentApplications];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v41 = v68 = 0u;
    v42 = [v41 countByEnumeratingWithState:&v65 objects:v69 count:16];
    if (v42)
    {
      v43 = v42;
      paymentType = 0;
      v45 = *v66;
      while (2)
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v66 != v45)
          {
            objc_enumerationMutation(v41);
          }

          v47 = *(*(&v65 + 1) + 8 * i);
          if (paymentType && paymentType != [*(*(&v65 + 1) + 8 * i) paymentType])
          {

            v48 = @"multiple";
            goto LABEL_75;
          }

          paymentType = [v47 paymentType];
        }

        v43 = [v41 countByEnumeratingWithState:&v65 objects:v69 count:16];
        if (v43)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      paymentType = 0;
    }

    v48 = PKPaymentMethodTypeToString(paymentType);
LABEL_75:

    [v5 setObject:v48 forKeyedSubscript:@"paymentMethodType"];
    issuerCountryCode = [v40 issuerCountryCode];
    [v5 setObject:issuerCountryCode forKeyedSubscript:@"issuerCountryCode"];

    v9 = v64;
  }

LABEL_77:
  if ([v7 passType] == 1)
  {
    v50 = v7;
    v51 = v5;
    if (v9)
    {
      v52 = PKAnalyticsReportSwitchToggleResultValue([v50 isCobranded]);
      [v51 setObject:v52 forKeyedSubscript:@"isCobrandedCard"];

      cobrandName = [v50 cobrandName];
      [v51 setObject:cobrandName forKeyedSubscript:@"cobrandName"];

      issuerCountryCode2 = [v50 issuerCountryCode];
      [v51 setObject:issuerCountryCode2 forKeyedSubscript:@"issuerCountryCode"];

      devicePrimaryPaymentApplication = [v50 devicePrimaryPaymentApplication];
      v56 = PKPaymentNetworkNameForPaymentCredentialType([devicePrimaryPaymentApplication paymentNetworkIdentifier]);
      [v51 setObject:v56 forKeyedSubscript:@"networkName"];
    }

    state = self->_state;
    v58 = v50;
    if ([v58 isTransitPass])
    {
      v59 = 4;
    }

    else
    {
      devicePrimaryPaymentApplication2 = [v58 devicePrimaryPaymentApplication];
      paymentType2 = [devicePrimaryPaymentApplication2 paymentType];

      if (paymentType2 == 1)
      {
        v59 = 2;
      }

      else
      {
        devicePrimaryPaymentApplication3 = [v58 devicePrimaryPaymentApplication];
        paymentType3 = [devicePrimaryPaymentApplication3 paymentType];

        if (paymentType3 == 2)
        {
          v59 = 3;
        }

        else if ([v58 hasAssociatedPeerPaymentAccount])
        {
          v59 = 1;
        }

        else if ([v58 isIdentityPass])
        {
          v59 = 5;
        }

        else
        {
          v59 = 0;
        }
      }
    }

    [(PKProvisioningAnalyticsState *)state setCampaignAttributionProductType:v59];
  }

  [(PKProvisioningAnalyticsState *)self->_state setPassMetadata:v5];
}

- (void)reportErrorForReporter:(id)reporter error:(id)error context:(id)context
{
  errorCopy = error;
  v8 = [context mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v13 = v10;

  [v13 setObject:@"pageError" forKeyedSubscript:@"eventType"];
  [(PKProvisioningAnalyticsSession *)self _populateDictionary:v13 withError:errorCopy];

  provisioningSubjectHandle = self->_provisioningSubjectHandle;
  v12 = [v13 copy];
  [(PKProvisioningAnalyticsSessionProvisioningSubjectHandle *)provisioningSubjectHandle reportEvent:v12 state:self->_state];
}

- (void)reportOtherErrorForReporter:(id)reporter error:(id)error context:(id)context
{
  errorCopy = error;
  v8 = [context mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v13 = v10;

  [v13 setObject:@"pageError" forKeyedSubscript:@"eventType"];
  [v13 setObject:errorCopy forKeyedSubscript:@"errorText"];

  provisioningSubjectHandle = self->_provisioningSubjectHandle;
  v12 = [v13 copy];
  [(PKProvisioningAnalyticsSessionProvisioningSubjectHandle *)provisioningSubjectHandle reportEvent:v12 state:self->_state];
}

- (void)reportViewAppearedForReporter:(id)reporter context:(id)context
{
  reporterCopy = reporter;
  v6 = [context mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v9 = v8;

  [v9 setObject:@"viewDidAppear" forKeyedSubscript:@"eventType"];
  pageTag = [reporterCopy pageTag];
  [v9 setObject:pageTag forKeyedSubscript:@"pageTag"];

  provisioningSubjectHandle = self->_provisioningSubjectHandle;
  v12 = [v9 copy];
  [(PKProvisioningAnalyticsSessionProvisioningSubjectHandle *)provisioningSubjectHandle reportEvent:v12 state:self->_state];

  if (![(PKProvisioningAnalyticsState *)self->_state firstViewAppeared])
  {
    [(PKProvisioningAnalyticsState *)self->_state setFirstViewAppeared:1];
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);

    [v13 setObject:@"sessionStarted" forKeyedSubscript:@"eventType"];
    pageTag2 = [reporterCopy pageTag];
    [v13 setObject:pageTag2 forKeyedSubscript:@"pageTag"];

    marketingSubjectHandle = self->_marketingSubjectHandle;
    v16 = [v13 copy];
    [(PKProvisioningAnalyticsSessionMarketingSubjectHandle *)marketingSubjectHandle reportEvent:v16 state:self->_state];

    v9 = v13;
  }
}

- (void)reportButtonPressedForReporter:(id)reporter buttonTag:(unint64_t)tag context:(id)context
{
  reporterCopy = reporter;
  v9 = [context mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v15 = v11;

  [v15 setObject:@"buttonTap" forKeyedSubscript:@"eventType"];
  pageTag = [(__CFString *)reporterCopy pageTag];

  [v15 setObject:pageTag forKeyedSubscript:@"pageTag"];
  if (tag <= 5)
  {
    reporterCopy = *off_1E79CBCC8[tag];
  }

  [v15 setObject:reporterCopy forKeyedSubscript:@"buttonTag"];

  provisioningSubjectHandle = self->_provisioningSubjectHandle;
  v14 = [v15 copy];
  [(PKProvisioningAnalyticsSessionProvisioningSubjectHandle *)provisioningSubjectHandle reportEvent:v14 state:self->_state];
}

- (void)reportOtherButtonPressedForReporter:(id)reporter otherButtonTag:(id)tag context:(id)context
{
  tagCopy = tag;
  reporterCopy = reporter;
  v10 = [context mutableCopy];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v16 = v12;

  [v16 setObject:@"buttonTap" forKeyedSubscript:@"eventType"];
  [v16 setObject:tagCopy forKeyedSubscript:@"buttonTag"];

  pageTag = [reporterCopy pageTag];

  [v16 setObject:pageTag forKeyedSubscript:@"pageTag"];
  provisioningSubjectHandle = self->_provisioningSubjectHandle;
  v15 = [v16 copy];
  [(PKProvisioningAnalyticsSessionProvisioningSubjectHandle *)provisioningSubjectHandle reportEvent:v15 state:self->_state];
}

- (void)reportPageCompletedForReporter:(id)reporter success:(BOOL)success context:(id)context
{
  successCopy = success;
  contextCopy = context;
  v8 = MEMORY[0x1E695DF90];
  reporterCopy = reporter;
  v10 = objc_alloc_init(v8);
  if (contextCopy)
  {
    [v10 addEntriesFromDictionary:contextCopy];
  }

  [v10 setObject:@"pageTaskFinished" forKeyedSubscript:@"eventType"];
  v11 = PKAnalyticsReportResultSuccess;
  if (!successCopy)
  {
    v11 = PKAnalyticsReportResultFailure;
  }

  [v10 setObject:*v11 forKeyedSubscript:@"result"];
  pageTag = [reporterCopy pageTag];

  [v10 setObject:pageTag forKeyedSubscript:@"pageTag"];
  provisioningSubjectHandle = self->_provisioningSubjectHandle;
  v14 = [v10 copy];
  [(PKProvisioningAnalyticsSessionProvisioningSubjectHandle *)provisioningSubjectHandle reportEvent:v14 state:self->_state];
}

- (void)reportProvisioningStepStartForReporter:(id)reporter step:(id)step context:(id)context
{
  stepCopy = step;
  v8 = [context mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v13 = v10;

  [v13 setObject:@"provisioningStepStart" forKeyedSubscript:@"eventType"];
  [v13 setObject:stepCopy forKeyedSubscript:@"provisioningStep"];

  provisioningSubjectHandle = self->_provisioningSubjectHandle;
  v12 = [v13 copy];
  [(PKProvisioningAnalyticsSessionProvisioningSubjectHandle *)provisioningSubjectHandle reportEvent:v12 state:self->_state];
}

- (void)reportProvisioningStepForReporter:(id)reporter step:(id)step success:(BOOL)success error:(id)error context:(id)context
{
  successCopy = success;
  reporterCopy = reporter;
  stepCopy = step;
  errorCopy = error;
  v14 = [context mutableCopy];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v17 = v16;

  [v17 setObject:@"provisioningStatus" forKeyedSubscript:@"eventType"];
  [v17 setObject:stepCopy forKeyedSubscript:@"provisioningStep"];
  v18 = PKAnalyticsReportResultSuccess;
  if (!successCopy)
  {
    v18 = PKAnalyticsReportResultFailure;
  }

  [v17 setObject:*v18 forKeyedSubscript:@"result"];
  if (successCopy)
  {
    v19 = stepCopy;
    v20 = v19;
    if (@"provisioningSuccess" == v19)
    {
    }

    else
    {
      if (!v19 || !@"provisioningSuccess")
      {
LABEL_16:

        goto LABEL_17;
      }

      v21 = [(__CFString *)v19 isEqualToString:@"provisioningSuccess"];

      if (!v21)
      {
        goto LABEL_17;
      }
    }

    v20 = PKApplePayUserEducationDemoLastCompletedDate();
    if (v20)
    {
      v22 = [MEMORY[0x1E695DF00] now];
      v23 = [v20 isDateNewerThanNDays:182 beforeDate:v22];

      if (v23)
      {
        [v17 setObject:@"sixMonths" forKeyedSubscript:@"applePayDemoCompletedWithin"];
      }
    }

    goto LABEL_16;
  }

LABEL_17:
  [(PKProvisioningAnalyticsSession *)self _populateDictionary:v17 withError:errorCopy];
  provisioningSubjectHandle = self->_provisioningSubjectHandle;
  v25 = [v17 copy];
  [(PKProvisioningAnalyticsSessionProvisioningSubjectHandle *)provisioningSubjectHandle reportEvent:v25 state:self->_state];

  if (([reporterCopy didReportProvisioningStart] & 1) == 0)
  {
    [reporterCopy setDidReportProvisioningStart:1];
    [(PKProvisioningAnalyticsSessionCampaignAttributionSubjectHandle *)self->_campaignAttributionSubjectHandle reportProvisioningStartWithState:self->_state];
    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);

    [v26 setObject:@"provisioningStarted" forKeyedSubscript:@"eventType"];
    marketingSubjectHandle = self->_marketingSubjectHandle;
    v28 = [v26 copy];
    [(PKProvisioningAnalyticsSessionMarketingSubjectHandle *)marketingSubjectHandle reportEvent:v28 state:self->_state];

    v17 = v26;
  }
}

- (void)reportProvisioningCompleteForReporter:(id)reporter success:(BOOL)success
{
  successCopy = success;
  reporterCopy = reporter;
  if (([reporterCopy didReportSuccessfulProvisioning] & 1) == 0)
  {
    [reporterCopy setDidReportSuccessfulProvisioning:1];
    [(PKProvisioningAnalyticsSession *)self reportProvisioningStepForReporter:reporterCopy step:@"provisioningSuccess" success:successCopy error:0 context:0];
    [(PKProvisioningAnalyticsSessionCampaignAttributionSubjectHandle *)self->_campaignAttributionSubjectHandle reportProvisioningCompleteWithState:self->_state success:successCopy];
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v6 setObject:@"sessionFinished" forKeyedSubscript:@"eventType"];
    v7 = PKAnalyticsReportResultSuccess;
    if (!successCopy)
    {
      v7 = PKAnalyticsReportResultFailure;
    }

    [v6 setObject:*v7 forKeyedSubscript:@"result"];
    marketingSubjectHandle = self->_marketingSubjectHandle;
    v9 = [v6 copy];
    [(PKProvisioningAnalyticsSessionMarketingSubjectHandle *)marketingSubjectHandle reportEvent:v9 state:self->_state];
  }
}

- (void)reportStateChangedForReporter:(id)reporter context:(id)context
{
  reporterCopy = reporter;
  v7 = [context mutableCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v13 = v9;

  [v13 setObject:@"stateChange" forKeyedSubscript:@"eventType"];
  pageTag = [reporterCopy pageTag];

  [v13 setObject:pageTag forKeyedSubscript:@"pageTag"];
  provisioningSubjectHandle = self->_provisioningSubjectHandle;
  v12 = [v13 copy];
  [(PKProvisioningAnalyticsSessionProvisioningSubjectHandle *)provisioningSubjectHandle reportEvent:v12 state:self->_state];
}

- (void)reportPreflightEventForReporter:(id)reporter context:(id)context
{
  v5 = [context mutableCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v10 = v7;

  [v10 setObject:@"preflightStatus" forKeyedSubscript:@"eventType"];
  provisioningSubjectHandle = self->_provisioningSubjectHandle;
  v9 = [v10 copy];
  [(PKProvisioningAnalyticsSessionProvisioningSubjectHandle *)provisioningSubjectHandle reportEvent:v9 state:self->_state];
}

- (void)_populateDictionary:(id)dictionary withError:(id)error
{
  if (error)
  {
    [dictionary setObject:@"other" forKeyedSubscript:@"errorType"];
  }
}

@end