@interface PKProvisioningAnalyticsSession
+ (id)continueAnalyticsSessionForEnvironment:(id)a3 intent:(id)a4 referralSource:(id)a5 archivedParent:(id)a6;
+ (id)startAnalyticsSessionForEnvironment:(id)a3 intent:(id)a4 referralSource:(id)a5;
- (PKProvisioningAnalyticsSession)initWithEnvironment:(id)a3 intent:(id)a4 referralSource:(id)a5 archivedParent:(id)a6;
- (id)createPreflightReporter;
- (id)createStepReporter;
- (id)createViewReporterForPage:(id)a3;
- (void)_populateDictionary:(id)a3 withError:(id)a4;
- (void)reportButtonPressedForReporter:(id)a3 buttonTag:(unint64_t)a4 context:(id)a5;
- (void)reportErrorForReporter:(id)a3 error:(id)a4 context:(id)a5;
- (void)reportOtherButtonPressedForReporter:(id)a3 otherButtonTag:(id)a4 context:(id)a5;
- (void)reportOtherErrorForReporter:(id)a3 error:(id)a4 context:(id)a5;
- (void)reportPageCompletedForReporter:(id)a3 success:(BOOL)a4 context:(id)a5;
- (void)reportPreflightEventForReporter:(id)a3 context:(id)a4;
- (void)reportProvisioningCompleteForReporter:(id)a3 success:(BOOL)a4;
- (void)reportProvisioningStepForReporter:(id)a3 step:(id)a4 success:(BOOL)a5 error:(id)a6 context:(id)a7;
- (void)reportProvisioningStepStartForReporter:(id)a3 step:(id)a4 context:(id)a5;
- (void)reportStateChangedForReporter:(id)a3 context:(id)a4;
- (void)reportViewAppearedForReporter:(id)a3 context:(id)a4;
- (void)resetForNewProductSetup;
- (void)setPass:(id)a3;
- (void)setProductType:(id)a3 subtype:(id)a4;
- (void)setSetupProduct:(id)a3;
- (void)stop;
@end

@implementation PKProvisioningAnalyticsSession

+ (id)startAnalyticsSessionForEnvironment:(id)a3 intent:(id)a4 referralSource:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[PKProvisioningAnalyticsSession alloc] initWithEnvironment:v9 intent:v8 referralSource:v7];

  return v10;
}

+ (id)continueAnalyticsSessionForEnvironment:(id)a3 intent:(id)a4 referralSource:(id)a5 archivedParent:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[PKProvisioningAnalyticsSession alloc] initWithEnvironment:v12 intent:v11 referralSource:v10 archivedParent:v9];

  return v13;
}

- (PKProvisioningAnalyticsSession)initWithEnvironment:(id)a3 intent:(id)a4 referralSource:(id)a5 archivedParent:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v58.receiver = self;
  v58.super_class = PKProvisioningAnalyticsSession;
  v14 = [(PKProvisioningAnalyticsSession *)&v58 init];
  if (!v14)
  {
    goto LABEL_91;
  }

  if (v13)
  {
    v15 = [PKProvisioningAnalyticsArchive createArchiveFromArchiveData:v13];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 state];
      state = v14->_state;
      v14->_state = v17;

      v19 = [v16 provisioningSubjectHandle];
      provisioningSubjectHandle = v14->_provisioningSubjectHandle;
      v14->_provisioningSubjectHandle = v19;

      v21 = [v16 marketingSubjectHandle];
      marketingSubjectHandle = v14->_marketingSubjectHandle;
      v14->_marketingSubjectHandle = v21;

      v23 = [v16 campaignAttributionSubjectHandle];
      campaignAttributionSubjectHandle = v14->_campaignAttributionSubjectHandle;
      v14->_campaignAttributionSubjectHandle = v23;
    }
  }

  if (!v14->_state)
  {
    v25 = objc_alloc_init(PKProvisioningAnalyticsState);
    v26 = v14->_state;
    v14->_state = v25;

    v27 = v14->_state;
    v28 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    v29 = [v28 UUIDString];
    [(PKProvisioningAnalyticsState *)v27 setSessionID:v29];

    v30 = v12;
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
  [(PKProvisioningAnalyticsState *)v14->_state setEnvironment:v10];
  [(PKProvisioningAnalyticsState *)v14->_state setIntent:v11];
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
  v4 = [(PKProvisioningAnalyticsState *)self->_state sessionID];
  v5 = [(PKProvisioningAnalyticsSessionReporter *)v3 initWithResponder:self sessionID:v4];

  return v5;
}

- (id)createViewReporterForPage:(id)a3
{
  v4 = a3;
  v5 = [PKProvisioningAnalyticsSessionUIReporter alloc];
  v6 = [(PKProvisioningAnalyticsState *)self->_state sessionID];
  v7 = [(PKProvisioningAnalyticsSessionUIReporter *)v5 initWithResponder:self sessionID:v6 pageTag:v4];

  return v7;
}

- (id)createStepReporter
{
  v3 = [PKProvisioningAnalyticsSessionStepReporter alloc];
  v4 = [(PKProvisioningAnalyticsState *)self->_state sessionID];
  v5 = [(PKProvisioningAnalyticsSessionReporter *)v3 initWithResponder:self sessionID:v4];

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
  v4 = [v5 UUIDString];
  [(PKProvisioningAnalyticsState *)state setSessionID:v4];
}

- (void)setProductType:(id)a3 subtype:(id)a4
{
  state = self->_state;
  v7 = a4;
  [(PKProvisioningAnalyticsState *)state setProductTypeDescriptor:a3];
  [(PKProvisioningAnalyticsState *)self->_state setProductSubtypeDescriptor:v7];

  [(PKProvisioningAnalyticsState *)self->_state setPassMetadata:0];
  [(PKProvisioningAnalyticsState *)self->_state setProductMetadata:0];
  v8 = self->_state;

  [(PKProvisioningAnalyticsState *)v8 setProductIssuer:0];
}

- (void)setSetupProduct:(id)a3
{
  v18 = a3;
  if (v18)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = [v18 displayName];
    [v5 setObject:v6 forKeyedSubscript:@"issuer"];

    [(PKProvisioningAnalyticsState *)self->_state setProductMetadata:v5];
    state = self->_state;
    v8 = [v18 configuration];
    v9 = [v8 type];
    if (v9 <= 0xC)
    {
      v3 = *off_1E79CBBB0[v9];
    }

    [(PKProvisioningAnalyticsState *)state setProductTypeDescriptor:v3];

    [(PKProvisioningAnalyticsState *)self->_state setProductSubtypeDescriptor:0];
    v10 = [v18 partners];
    v11 = [v10 pk_createArrayBySafelyApplyingBlock:&__block_literal_global_36];
    v12 = [v11 componentsJoinedByString:{@", "}];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [v18 partnerName];
    }

    v15 = v14;

    v16 = self->_state;
    v17 = [v15 lowercaseString];
    [(PKProvisioningAnalyticsState *)v16 setProductIssuer:v17];
  }

  else
  {
    [(PKProvisioningAnalyticsState *)self->_state setProductMetadata:0];
  }
}

- (void)setPass:(id)a3
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = v4;
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

  v10 = [v6 passType];
  if ((v10 + 1) >= 3)
  {
    v11 = @"unknown";
  }

  else
  {
    v11 = off_1E79CBC18[v10 + 1];
  }

  [v5 setObject:v11 forKeyedSubscript:@"passType"];

  v12 = [v7 style];
  v13 = [v7 secureElementPass];
  v14 = [v13 isIdentityPass];

  if (v14)
  {
    v15 = @"identity";
  }

  else if (v12 < 0xE && ((0x27FFu >> v12) & 1) != 0)
  {
    v15 = off_1E79CBC30[v12];
  }

  else
  {
    v15 = @"unknown";
  }

  [v5 setObject:v15 forKeyedSubscript:@"passStyle"];

  v16 = [v7 nfcPayload];
  v17 = PKAnalyticsReportSwitchToggleResultValue(v16 != 0);
  [v5 setObject:v17 forKeyedSubscript:@"hasNFC"];

  v18 = v7;
  if ([v18 passType] == 1)
  {
    v19 = [v18 secureElementPass];
    v20 = [v19 cardType];
    if (v20 <= 4)
    {
      v17 = *off_1E79CBCA0[v20];
    }
  }

  else
  {
    v17 = @"other";
  }

  [v5 setObject:v17 forKeyedSubscript:@"productType"];
  v21 = [v18 secureElementPass];
  if ([v21 isIdentityPass])
  {
    v22 = [v21 identityType];
    if (v22 <= 2)
    {
      if (v22 == 1)
      {
        v23 = PKAnalyticsReportDriversLicenseProductSubtype;
        goto LABEL_43;
      }

      if (v22 == 2)
      {
        v23 = PKAnalyticsReportStateIDProductSubtype;
        goto LABEL_43;
      }
    }

    else
    {
      switch(v22)
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

  if (![v21 isAccessPass])
  {
    goto LABEL_36;
  }

  v24 = [v21 accessType];
  v25 = [v21 accessReportingType];
  v26 = v25;
  if (v24 > 2)
  {
    if (v24 <= 4)
    {
      if (v24 == 3)
      {
        v27 = @"singlefamily";
      }

      else
      {
        v27 = @"cars";
      }

      goto LABEL_56;
    }

    if (v24 == 5)
    {
      v27 = @"multifamily";
      goto LABEL_56;
    }

    if (v24 == 6)
    {
      v27 = @"urbanmobility";
      goto LABEL_56;
    }

    goto LABEL_51;
  }

  if (!v24)
  {
    v29 = @"general";
    if (v25)
    {
      v29 = v25;
    }

    goto LABEL_52;
  }

  if (v24 == 1)
  {
    v27 = @"hospitality";
    goto LABEL_56;
  }

  if (v24 != 2)
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

  v30 = [v18 secureElementPass];
  v31 = [v30 devicePaymentApplications];
  v32 = [v31 count] > 1;

  v33 = PKAnalyticsReportSwitchToggleResultValue(v32);

  [v5 setObject:v33 forKeyedSubscript:@"coBadgeEnable"];
  v34 = [v18 secureElementPass];
  v35 = @"unknown";
  v36 = [v34 organizationName];
  if ([v36 length])
  {
    v37 = [v34 cardType];
    if (v37 <= 4 && ((1 << v37) & 0x16) != 0)
    {
      v38 = v36;

      v35 = v38;
    }
  }

  [v5 setObject:v35 forKeyedSubscript:@"issuer"];
  v39 = [v18 secureElementPass];
  v40 = v39;
  if (v39)
  {
    v64 = v9;
    [v39 devicePaymentApplications];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v41 = v68 = 0u;
    v42 = [v41 countByEnumeratingWithState:&v65 objects:v69 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = 0;
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
          if (v44 && v44 != [*(*(&v65 + 1) + 8 * i) paymentType])
          {

            v48 = @"multiple";
            goto LABEL_75;
          }

          v44 = [v47 paymentType];
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
      v44 = 0;
    }

    v48 = PKPaymentMethodTypeToString(v44);
LABEL_75:

    [v5 setObject:v48 forKeyedSubscript:@"paymentMethodType"];
    v49 = [v40 issuerCountryCode];
    [v5 setObject:v49 forKeyedSubscript:@"issuerCountryCode"];

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

      v53 = [v50 cobrandName];
      [v51 setObject:v53 forKeyedSubscript:@"cobrandName"];

      v54 = [v50 issuerCountryCode];
      [v51 setObject:v54 forKeyedSubscript:@"issuerCountryCode"];

      v55 = [v50 devicePrimaryPaymentApplication];
      v56 = PKPaymentNetworkNameForPaymentCredentialType([v55 paymentNetworkIdentifier]);
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
      v60 = [v58 devicePrimaryPaymentApplication];
      v61 = [v60 paymentType];

      if (v61 == 1)
      {
        v59 = 2;
      }

      else
      {
        v62 = [v58 devicePrimaryPaymentApplication];
        v63 = [v62 paymentType];

        if (v63 == 2)
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

- (void)reportErrorForReporter:(id)a3 error:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = [a5 mutableCopy];
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
  [(PKProvisioningAnalyticsSession *)self _populateDictionary:v13 withError:v7];

  provisioningSubjectHandle = self->_provisioningSubjectHandle;
  v12 = [v13 copy];
  [(PKProvisioningAnalyticsSessionProvisioningSubjectHandle *)provisioningSubjectHandle reportEvent:v12 state:self->_state];
}

- (void)reportOtherErrorForReporter:(id)a3 error:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = [a5 mutableCopy];
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
  [v13 setObject:v7 forKeyedSubscript:@"errorText"];

  provisioningSubjectHandle = self->_provisioningSubjectHandle;
  v12 = [v13 copy];
  [(PKProvisioningAnalyticsSessionProvisioningSubjectHandle *)provisioningSubjectHandle reportEvent:v12 state:self->_state];
}

- (void)reportViewAppearedForReporter:(id)a3 context:(id)a4
{
  v17 = a3;
  v6 = [a4 mutableCopy];
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
  v10 = [v17 pageTag];
  [v9 setObject:v10 forKeyedSubscript:@"pageTag"];

  provisioningSubjectHandle = self->_provisioningSubjectHandle;
  v12 = [v9 copy];
  [(PKProvisioningAnalyticsSessionProvisioningSubjectHandle *)provisioningSubjectHandle reportEvent:v12 state:self->_state];

  if (![(PKProvisioningAnalyticsState *)self->_state firstViewAppeared])
  {
    [(PKProvisioningAnalyticsState *)self->_state setFirstViewAppeared:1];
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);

    [v13 setObject:@"sessionStarted" forKeyedSubscript:@"eventType"];
    v14 = [v17 pageTag];
    [v13 setObject:v14 forKeyedSubscript:@"pageTag"];

    marketingSubjectHandle = self->_marketingSubjectHandle;
    v16 = [v13 copy];
    [(PKProvisioningAnalyticsSessionMarketingSubjectHandle *)marketingSubjectHandle reportEvent:v16 state:self->_state];

    v9 = v13;
  }
}

- (void)reportButtonPressedForReporter:(id)a3 buttonTag:(unint64_t)a4 context:(id)a5
{
  v8 = a3;
  v9 = [a5 mutableCopy];
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
  v12 = [(__CFString *)v8 pageTag];

  [v15 setObject:v12 forKeyedSubscript:@"pageTag"];
  if (a4 <= 5)
  {
    v8 = *off_1E79CBCC8[a4];
  }

  [v15 setObject:v8 forKeyedSubscript:@"buttonTag"];

  provisioningSubjectHandle = self->_provisioningSubjectHandle;
  v14 = [v15 copy];
  [(PKProvisioningAnalyticsSessionProvisioningSubjectHandle *)provisioningSubjectHandle reportEvent:v14 state:self->_state];
}

- (void)reportOtherButtonPressedForReporter:(id)a3 otherButtonTag:(id)a4 context:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a5 mutableCopy];
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
  [v16 setObject:v8 forKeyedSubscript:@"buttonTag"];

  v13 = [v9 pageTag];

  [v16 setObject:v13 forKeyedSubscript:@"pageTag"];
  provisioningSubjectHandle = self->_provisioningSubjectHandle;
  v15 = [v16 copy];
  [(PKProvisioningAnalyticsSessionProvisioningSubjectHandle *)provisioningSubjectHandle reportEvent:v15 state:self->_state];
}

- (void)reportPageCompletedForReporter:(id)a3 success:(BOOL)a4 context:(id)a5
{
  v5 = a4;
  v15 = a5;
  v8 = MEMORY[0x1E695DF90];
  v9 = a3;
  v10 = objc_alloc_init(v8);
  if (v15)
  {
    [v10 addEntriesFromDictionary:v15];
  }

  [v10 setObject:@"pageTaskFinished" forKeyedSubscript:@"eventType"];
  v11 = PKAnalyticsReportResultSuccess;
  if (!v5)
  {
    v11 = PKAnalyticsReportResultFailure;
  }

  [v10 setObject:*v11 forKeyedSubscript:@"result"];
  v12 = [v9 pageTag];

  [v10 setObject:v12 forKeyedSubscript:@"pageTag"];
  provisioningSubjectHandle = self->_provisioningSubjectHandle;
  v14 = [v10 copy];
  [(PKProvisioningAnalyticsSessionProvisioningSubjectHandle *)provisioningSubjectHandle reportEvent:v14 state:self->_state];
}

- (void)reportProvisioningStepStartForReporter:(id)a3 step:(id)a4 context:(id)a5
{
  v7 = a4;
  v8 = [a5 mutableCopy];
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
  [v13 setObject:v7 forKeyedSubscript:@"provisioningStep"];

  provisioningSubjectHandle = self->_provisioningSubjectHandle;
  v12 = [v13 copy];
  [(PKProvisioningAnalyticsSessionProvisioningSubjectHandle *)provisioningSubjectHandle reportEvent:v12 state:self->_state];
}

- (void)reportProvisioningStepForReporter:(id)a3 step:(id)a4 success:(BOOL)a5 error:(id)a6 context:(id)a7
{
  v9 = a5;
  v29 = a3;
  v12 = a4;
  v13 = a6;
  v14 = [a7 mutableCopy];
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
  [v17 setObject:v12 forKeyedSubscript:@"provisioningStep"];
  v18 = PKAnalyticsReportResultSuccess;
  if (!v9)
  {
    v18 = PKAnalyticsReportResultFailure;
  }

  [v17 setObject:*v18 forKeyedSubscript:@"result"];
  if (v9)
  {
    v19 = v12;
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
  [(PKProvisioningAnalyticsSession *)self _populateDictionary:v17 withError:v13];
  provisioningSubjectHandle = self->_provisioningSubjectHandle;
  v25 = [v17 copy];
  [(PKProvisioningAnalyticsSessionProvisioningSubjectHandle *)provisioningSubjectHandle reportEvent:v25 state:self->_state];

  if (([v29 didReportProvisioningStart] & 1) == 0)
  {
    [v29 setDidReportProvisioningStart:1];
    [(PKProvisioningAnalyticsSessionCampaignAttributionSubjectHandle *)self->_campaignAttributionSubjectHandle reportProvisioningStartWithState:self->_state];
    v26 = objc_alloc_init(MEMORY[0x1E695DF90]);

    [v26 setObject:@"provisioningStarted" forKeyedSubscript:@"eventType"];
    marketingSubjectHandle = self->_marketingSubjectHandle;
    v28 = [v26 copy];
    [(PKProvisioningAnalyticsSessionMarketingSubjectHandle *)marketingSubjectHandle reportEvent:v28 state:self->_state];

    v17 = v26;
  }
}

- (void)reportProvisioningCompleteForReporter:(id)a3 success:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  if (([v10 didReportSuccessfulProvisioning] & 1) == 0)
  {
    [v10 setDidReportSuccessfulProvisioning:1];
    [(PKProvisioningAnalyticsSession *)self reportProvisioningStepForReporter:v10 step:@"provisioningSuccess" success:v4 error:0 context:0];
    [(PKProvisioningAnalyticsSessionCampaignAttributionSubjectHandle *)self->_campaignAttributionSubjectHandle reportProvisioningCompleteWithState:self->_state success:v4];
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v6 setObject:@"sessionFinished" forKeyedSubscript:@"eventType"];
    v7 = PKAnalyticsReportResultSuccess;
    if (!v4)
    {
      v7 = PKAnalyticsReportResultFailure;
    }

    [v6 setObject:*v7 forKeyedSubscript:@"result"];
    marketingSubjectHandle = self->_marketingSubjectHandle;
    v9 = [v6 copy];
    [(PKProvisioningAnalyticsSessionMarketingSubjectHandle *)marketingSubjectHandle reportEvent:v9 state:self->_state];
  }
}

- (void)reportStateChangedForReporter:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = [a4 mutableCopy];
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
  v10 = [v6 pageTag];

  [v13 setObject:v10 forKeyedSubscript:@"pageTag"];
  provisioningSubjectHandle = self->_provisioningSubjectHandle;
  v12 = [v13 copy];
  [(PKProvisioningAnalyticsSessionProvisioningSubjectHandle *)provisioningSubjectHandle reportEvent:v12 state:self->_state];
}

- (void)reportPreflightEventForReporter:(id)a3 context:(id)a4
{
  v5 = [a4 mutableCopy];
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

- (void)_populateDictionary:(id)a3 withError:(id)a4
{
  if (a4)
  {
    [a3 setObject:@"other" forKeyedSubscript:@"errorType"];
  }
}

@end