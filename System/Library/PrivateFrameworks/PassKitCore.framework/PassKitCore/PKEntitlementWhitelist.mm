@interface PKEntitlementWhitelist
- (BOOL)_BOOLValueOfEntitlement:(id)entitlement fromSecTask:(__SecTask *)task;
- (BOOL)_probeEntitlementsWithAuditToken:(id *)token;
- (BOOL)entitledToPerformPassAction:(unint64_t)action pass:(id)pass;
- (BOOL)entitledToPerformPassAction:(unint64_t)action passTypeID:(id)d teamID:(id)iD associatedPassTypeIdentifiers:(id)identifiers associatedApplicationIdentifiers:(id)applicationIdentifiers;
- (BOOL)isEntitledForAnyFromUniquePassTypeIDs:(id)ds;
- (BOOL)isEntitledForMerchantSession:(id)session;
- (BOOL)isEntitledForPassTypeID:(id)d;
- (BOOL)isEntitledForPaymentRequest:(id)request;
- (PKEntitlementWhitelist)initWithConnection:(id)connection;
- (PKEntitlementWhitelist)initWithProcessIdentifier:(int)identifier auditToken:(id *)token;
- (id)_arrayValueOfEntitlement:(id)entitlement fromSecTask:(__SecTask *)task;
- (id)_stringValueOfEntitlement:(id)entitlement fromSecTask:(__SecTask *)task;
- (void)_copyValueOfEntitlement:(id)entitlement fromSecTask:(__SecTask *)task;
@end

@implementation PKEntitlementWhitelist

- (PKEntitlementWhitelist)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v5 = objc_autoreleasePoolPush();
  if (connectionCopy)
  {
    processIdentifier = [connectionCopy processIdentifier];
    v10 = 0u;
    v11 = 0u;
    [connectionCopy auditToken];
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    processIdentifier = 0xFFFFFFFFLL;
  }

  v9[0] = v10;
  v9[1] = v11;
  v7 = [(PKEntitlementWhitelist *)self initWithProcessIdentifier:processIdentifier auditToken:v9];
  objc_autoreleasePoolPop(v5);

  return v7;
}

- (PKEntitlementWhitelist)initWithProcessIdentifier:(int)identifier auditToken:(id *)token
{
  v14 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = PKEntitlementWhitelist;
  v6 = [(PKEntitlementWhitelist *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_processIdentifier = identifier;
    v8 = *&token->var0[4];
    *buf = *token->var0;
    v13 = v8;
    if (![(PKEntitlementWhitelist *)v6 _probeEntitlementsWithAuditToken:buf])
    {
      v9 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        *&buf[4] = identifier;
        _os_log_error_impl(&dword_1AD337000, v9, OS_LOG_TYPE_ERROR, "Failed to probe entitlements for process: %lu.", buf, 0xCu);
      }
    }
  }

  return v7;
}

- (void)_copyValueOfEntitlement:(id)entitlement fromSecTask:(__SecTask *)task
{
  v19 = *MEMORY[0x1E69E9840];
  entitlementCopy = entitlement;
  error = 0;
  v7 = SecTaskCopyValueForEntitlement(task, entitlementCopy, &error);
  v8 = error;
  if (error)
  {
    v9 = PKLogFacilityTypeGetObject(5uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      processIdentifier = self->_processIdentifier;
      *buf = 138412802;
      v14 = entitlementCopy;
      v15 = 2048;
      v16 = processIdentifier;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_1AD337000, v9, OS_LOG_TYPE_DEFAULT, "Failed to copy value of entitlement: %@ process: %lu error: %@", buf, 0x20u);
    }

    CFRelease(error);
  }

  return v7;
}

- (BOOL)_BOOLValueOfEntitlement:(id)entitlement fromSecTask:(__SecTask *)task
{
  v4 = [(PKEntitlementWhitelist *)self _copyValueOfEntitlement:entitlement fromSecTask:task];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  v7 = v6 == CFBooleanGetTypeID() && CFBooleanGetValue(v5) != 0;
  CFRelease(v5);
  return v7;
}

- (id)_arrayValueOfEntitlement:(id)entitlement fromSecTask:(__SecTask *)task
{
  v4 = [(PKEntitlementWhitelist *)self _copyValueOfEntitlement:entitlement fromSecTask:task];
  v5 = v4;
  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 != CFArrayGetTypeID())
    {
      CFRelease(v5);
      v5 = 0;
    }
  }

  return v5;
}

- (id)_stringValueOfEntitlement:(id)entitlement fromSecTask:(__SecTask *)task
{
  v4 = [(PKEntitlementWhitelist *)self _copyValueOfEntitlement:entitlement fromSecTask:task];
  v5 = v4;
  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 != CFStringGetTypeID())
    {
      CFRelease(v5);
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)_probeEntitlementsWithAuditToken:(id *)token
{
  v95 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E695E480];
  v5 = *&token->var0[4];
  *token.val = *token->var0;
  *&token.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(v4, &token);
  if (v6)
  {
    self->_passesAllAccess = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.cards.all-access" fromSecTask:v6];
    self->_passesOverviewAccess = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.cards.overview-access" fromSecTask:v6];
    self->_passesEntangledAccess = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.passes.entangled-access" fromSecTask:v6];
    self->_passesAddSilently = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.passes.add-silently" fromSecTask:v6];
    self->_passesAddUnsigned = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.passes.add-unsigned" fromSecTask:v6];
    self->_passesExternalMigrationAccess = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.passes.external-migration" fromSecTask:v6];
    self->_passPresentationSuppression = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.developer.passkit.pass-presentation-suppression" fromSecTask:v6];
    self->_passPresentationSuppressionFromBackground = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.private.passkit.pass-presentation-suppress-from-background" fromSecTask:v6];
    self->_paymentConfiguration = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.payment.configuration" fromSecTask:v6];
    self->_paymentPresentation = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.payment.presentation" fromSecTask:v6];
    self->_paymentAllAccess = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.payment.all-access" fromSecTask:v6];
    self->_applePayTrustAllAccess = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.apple-pay-trust.all-access" fromSecTask:v6];
    self->_fpanCardAccess = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.payment.fpan-card" fromSecTask:v6];
    self->_inAppPaymentsPrivate = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.private.in-app-payments" fromSecTask:v6];
    self->_cardOnFilePayments = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.payment.card-on-file" fromSecTask:v6];
    self->_externalizedContextPayments = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.payment.externalized-context" fromSecTask:v6];
    self->_trustedDeviceEnrollmentInfo = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.private.passkit.trusted-device-enrollment-info" fromSecTask:v6];
    self->_peerPaymentAllAccess = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.peerpayment.all-access" fromSecTask:v6];
    v7 = [(PKEntitlementWhitelist *)self _stringValueOfEntitlement:@"application-identifier" fromSecTask:v6];
    v8 = [v7 copy];
    applicationID = self->_applicationID;
    self->_applicationID = v8;

    self->_AMPCardEnrollment = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.payment.amp-card-enrollment" fromSecTask:v6];
    self->_searchAllAccess = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.passkit.search.all-access" fromSecTask:v6];
    v10 = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.features.all-access" fromSecTask:v6]|| [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.wallet.features.all-access" fromSecTask:v6];
    self->_featuresAllAccess = v10;
    self->_secureElementPassProvisioning = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.developer.contactless-payment-pass-provisioning" fromSecTask:v6];
    self->_secureElementPassProvisioningForMAIDs = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.developer.contactless-payment-pass-provisioning.maids" fromSecTask:v6];
    v11 = [(PKEntitlementWhitelist *)self _arrayValueOfEntitlement:@"com.apple.developer.contactless-payment-pass-provisioning" fromSecTask:v6];
    self->_shareableCredentialProvisioning = [v11 containsObject:@"shareablecredential"];

    v12 = [(PKEntitlementWhitelist *)self _arrayValueOfEntitlement:@"com.apple.developer.contactless-payment-pass-provisioning" fromSecTask:v6];
    self->_carKeyCredentialProvisioning = [v12 containsObject:@"carkey"];

    self->_paymentPassProvisioning = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.developer.payment-pass-provisioning" fromSecTask:v6];
    if (self->_secureElementPassProvisioning)
    {
      self->_secureElementPassProvisioning = 1;
    }

    else
    {
      v13 = [(PKEntitlementWhitelist *)self _arrayValueOfEntitlement:@"com.apple.developer.contactless-payment-pass-provisioning" fromSecTask:v6];
      self->_secureElementPassProvisioning = [v13 containsObject:@"carkey"];
    }

    self->_credentialStateAccess = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.private.credential-state-access" fromSecTask:v6];
    self->_sharingAllAccess = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.private.sharing.all-access" fromSecTask:v6];
    self->_appleMediaServicesPrivate = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.private.applemediaservices" fromSecTask:v6];
    self->_carKeyPassThroughAccess = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.developer.car-key-passthrough-access" fromSecTask:v6];
    v14 = [(PKEntitlementWhitelist *)self _arrayValueOfEntitlement:@"com.apple.developer.pay-later-merchandising" fromSecTask:v6];
    self->_payLaterPayInFourMerchandising = [v14 containsObject:@"payinfour-merchandising"];

    self->_badgeCountItemsAccess = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.private.wallet-badge-count-items" fromSecTask:v6];
    self->_remoteNetworkPaymentInitiate = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.private.payment.remote-network-payment-initiate" fromSecTask:v6];
    v15 = [(PKEntitlementWhitelist *)self _stringValueOfEntitlement:@"com.apple.developer.team-identifier" fromSecTask:v6];
    if (!v15)
    {
      v16 = self->_applicationID;
      if (v16 && (v17 = [(NSString *)v16 rangeOfString:@"."], v17 != 0x7FFFFFFFFFFFFFFFLL))
      {
        v15 = [(NSString *)self->_applicationID substringToIndex:v17];
      }

      else
      {
        v15 = 0;
      }
    }

    if ([v15 length] <= 9)
    {

      v15 = 0;
    }

    objc_storeStrong(&self->_developerTeamID, v15);
    v18 = [(PKEntitlementWhitelist *)self _arrayValueOfEntitlement:@"com.apple.developer.in-app-payments" fromSecTask:v6];
    v69 = v18;
    if (v18)
    {
      self->_inAppPayments = 1;
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v20 = v18;
      v21 = [v20 countByEnumeratingWithState:&v86 objects:v93 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v87;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v87 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v86 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v19 addObject:v25];
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v86 objects:v93 count:16];
        }

        while (v22);
      }

      v26 = [v19 copy];
      merchantIdentifiers = self->_merchantIdentifiers;
      self->_merchantIdentifiers = v26;

      v28 = PKLogFacilityTypeGetObject(5uLL);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = self->_merchantIdentifiers;
        token.val[0] = 138412290;
        *&token.val[1] = v29;
        _os_log_impl(&dword_1AD337000, v28, OS_LOG_TYPE_INFO, "Client has in-app payments entitlement for identifiers: %@", &token, 0xCu);
      }

      v18 = v69;
    }

    self->_winterpegPayments = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.payment.winterpeg" fromSecTask:v6];
    self->_webPayments = [(PKEntitlementWhitelist *)self _BOOLValueOfEntitlement:@"com.apple.developer.web-payments" fromSecTask:v6];
    v30 = [(PKEntitlementWhitelist *)self _arrayValueOfEntitlement:@"com.apple.developer.pass-type-identifiers" fromSecTask:v6];
    if (v30)
    {
      v31 = v30;
      v66 = v15;
      selfCopy = self;
      v68 = v6;
      v32 = objc_opt_class();
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __59__PKEntitlementWhitelist__probeEntitlementsWithAuditToken___block_invoke;
      v85[3] = &__block_descriptor_40_e25_B32__0__NSString_8Q16_B24lu32l8;
      v85[4] = v32;
      v33 = [v31 pk_objectsPassingTest:v85];

      v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v70 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v81 = 0u;
      v82 = 0u;
      v83 = 0u;
      v84 = 0u;
      obj = v33;
      v35 = [obj countByEnumeratingWithState:&v81 objects:v92 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v82;
        do
        {
          for (j = 0; j != v36; ++j)
          {
            if (*v82 != v37)
            {
              objc_enumerationMutation(obj);
            }

            v39 = *(*(&v81 + 1) + 8 * j);
            v40 = [v39 rangeOfString:{@".", v66}];
            if (v40 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v41 = v40;
              v42 = [v39 substringToIndex:v40];
              if ([v42 length])
              {
                v43 = [v39 substringFromIndex:v41 + 1];
                if ([v43 length])
                {
                  if ([v43 isEqualToString:@"*"])
                  {
                    [v34 addObject:v42];
                  }

                  else
                  {
                    v44 = [v70 objectForKeyedSubscript:v42];
                    if (!v44)
                    {
                      v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
                      [v70 setObject:v44 forKeyedSubscript:v42];
                    }

                    [v44 addObject:v43];
                  }
                }
              }
            }
          }

          v36 = [obj countByEnumeratingWithState:&v81 objects:v92 count:16];
        }

        while (v36);
      }

      v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v46 = v70;
      v47 = [v46 countByEnumeratingWithState:&v77 objects:v91 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v78;
        do
        {
          v50 = 0;
          v71 = v48;
          do
          {
            if (*v78 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v51 = *(*(&v77 + 1) + 8 * v50);
            if (([v34 containsObject:{v51, v66}] & 1) == 0)
            {
              v52 = v34;
              v75 = 0u;
              v76 = 0u;
              v73 = 0u;
              v74 = 0u;
              v53 = v46;
              v54 = [v46 objectForKeyedSubscript:v51];
              v55 = [v54 countByEnumeratingWithState:&v73 objects:v90 count:16];
              if (v55)
              {
                v56 = v55;
                v57 = *v74;
                do
                {
                  for (k = 0; k != v56; ++k)
                  {
                    if (*v74 != v57)
                    {
                      objc_enumerationMutation(v54);
                    }

                    v59 = *(*(&v73 + 1) + 8 * k);
                    if (([v45 containsObject:v59] & 1) == 0)
                    {
                      [v45 addObject:v59];
                    }
                  }

                  v56 = [v54 countByEnumeratingWithState:&v73 objects:v90 count:16];
                }

                while (v56);
              }

              v34 = v52;
              v46 = v53;
              v48 = v71;
            }

            ++v50;
          }

          while (v50 != v48);
          v48 = [v46 countByEnumeratingWithState:&v77 objects:v91 count:16];
        }

        while (v48);
      }

      v60 = [v34 copy];
      teamIDs = selfCopy->_teamIDs;
      selfCopy->_teamIDs = v60;

      v62 = [v45 copy];
      passTypeIDs = selfCopy->_passTypeIDs;
      selfCopy->_passTypeIDs = v62;

      passTypeIDPrefixes = selfCopy->_passTypeIDPrefixes;
      selfCopy->_passTypeIDPrefixes = MEMORY[0x1E695E0F0];

      v6 = v68;
      v18 = v69;
      v15 = v66;
    }

    CFRelease(v6);
  }

  return v6 != 0;
}

- (BOOL)isEntitledForPassTypeID:(id)d
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (dCopy)
  {
    if ([(NSArray *)self->_passTypeIDs containsObject:dCopy])
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v6 = self->_passTypeIDPrefixes;
      v5 = [(NSArray *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        v7 = *v11;
        while (2)
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v11 != v7)
            {
              objc_enumerationMutation(v6);
            }

            if ([dCopy hasPrefix:{*(*(&v10 + 1) + 8 * i), v10}])
            {
              LOBYTE(v5) = 1;
              goto LABEL_15;
            }
          }

          v5 = [(NSArray *)v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)isEntitledForAnyFromUniquePassTypeIDs:(id)ds
{
  v40 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = [dsCopy count];
  if (v5)
  {
    if (v5 == 1)
    {
      anyObject = [dsCopy anyObject];
      v7 = [(PKEntitlementWhitelist *)self isEntitledForPassTypeID:anyObject];
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v8 = self->_passTypeIDs;
      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v34;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v34 != v11)
            {
              objc_enumerationMutation(v8);
            }

            if ([dsCopy containsObject:*(*(&v33 + 1) + 8 * i)])
            {

              v7 = 1;
              goto LABEL_31;
            }
          }

          v10 = [(NSArray *)v8 countByEnumeratingWithState:&v33 objects:v39 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      anyObject = dsCopy;
      v13 = [anyObject countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v30;
        v24 = *v30;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v30 != v15)
            {
              objc_enumerationMutation(anyObject);
            }

            v17 = *(*(&v29 + 1) + 8 * j);
            v25 = 0u;
            v26 = 0u;
            v27 = 0u;
            v28 = 0u;
            v18 = self->_passTypeIDPrefixes;
            v19 = [(NSArray *)v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v26;
              while (2)
              {
                for (k = 0; k != v20; ++k)
                {
                  if (*v26 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  if ([v17 hasPrefix:*(*(&v25 + 1) + 8 * k)])
                  {

                    v7 = 1;
                    goto LABEL_4;
                  }
                }

                v20 = [(NSArray *)v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
                if (v20)
                {
                  continue;
                }

                break;
              }
            }

            v15 = v24;
          }

          v14 = [anyObject countByEnumeratingWithState:&v29 objects:v38 count:16];
          v7 = 0;
        }

        while (v14);
      }

      else
      {
        v7 = 0;
      }
    }

LABEL_4:
  }

  else
  {
    v7 = 0;
  }

LABEL_31:

  return v7;
}

- (BOOL)entitledToPerformPassAction:(unint64_t)action pass:(id)pass
{
  passCopy = pass;
  passTypeIdentifier = [passCopy passTypeIdentifier];
  teamID = [passCopy teamID];
  associatedPassTypeIdentifiers = [passCopy associatedPassTypeIdentifiers];
  secureElementPass = [passCopy secureElementPass];

  associatedApplicationIdentifiers = [secureElementPass associatedApplicationIdentifiers];
  LOBYTE(action) = [(PKEntitlementWhitelist *)self entitledToPerformPassAction:action passTypeID:passTypeIdentifier teamID:teamID associatedPassTypeIdentifiers:associatedPassTypeIdentifiers associatedApplicationIdentifiers:associatedApplicationIdentifiers];

  return action;
}

- (BOOL)entitledToPerformPassAction:(unint64_t)action passTypeID:(id)d teamID:(id)iD associatedPassTypeIdentifiers:(id)identifiers associatedApplicationIdentifiers:(id)applicationIdentifiers
{
  v42 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  identifiersCopy = identifiers;
  applicationIdentifiersCopy = applicationIdentifiers;
  if (self->_passesAllAccess || iDCopy && [(NSArray *)self->_teamIDs containsObject:iDCopy])
  {
    goto LABEL_15;
  }

  if (dCopy)
  {
    v16 = [(PKEntitlementWhitelist *)self isEntitledForPassTypeID:dCopy];
    if ((action & 7) == 0 || !identifiersCopy || v16)
    {
      if (v16)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

  else if ((action & 7) == 0 || !identifiersCopy)
  {
    goto LABEL_13;
  }

  if ([(PKEntitlementWhitelist *)self isEntitledForAnyFromUniquePassTypeIDs:identifiersCopy])
  {
LABEL_15:
    v17 = 1;
    goto LABEL_16;
  }

LABEL_13:
  if (PKPassTypeForPassTypeIdentifier(dCopy) != 1)
  {
    goto LABEL_37;
  }

  if (self->_paymentAllAccess)
  {
    goto LABEL_15;
  }

  if (action != 2)
  {
LABEL_37:
    v17 = 0;
    goto LABEL_16;
  }

  v19 = self->_applicationID;
  v20 = applicationIdentifiersCopy;
  v21 = v20;
  v36 = v19;
  if (v19 && [v20 count])
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v21;
    v22 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v22)
    {
      v23 = v22;
      v34 = v21;
      v24 = *v38;
      while (2)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v38 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v37 + 1) + 8 * i);
          if ([v26 hasSuffix:@".*"])
          {
            v27 = [v26 substringToIndex:{objc_msgSend(v26, "length") - 1}];
            if (v27)
            {
              v28 = v27;
              v29 = [(NSString *)v36 hasPrefix:v27];

              if (v29)
              {
                goto LABEL_41;
              }
            }
          }

          else
          {
            v30 = v36;
            v31 = v26;
            v32 = v31;
            if (v31 == v30)
            {

LABEL_41:
              v17 = 1;
              goto LABEL_42;
            }

            if (v31)
            {
              v33 = [(NSString *)v30 isEqualToString:v31];

              if (v33)
              {
                goto LABEL_41;
              }
            }

            else
            {
            }
          }
        }

        v23 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }

      v17 = 0;
LABEL_42:
      v21 = v34;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_16:
  return v17;
}

- (BOOL)isEntitledForPaymentRequest:(id)request
{
  v17 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  originatingURL = [requestCopy originatingURL];
  scheme = [originatingURL scheme];

  switch([requestCopy requestType])
  {
    case 0:
    case 10:
      if (scheme && ![scheme caseInsensitiveCompare:@"https"])
      {
        goto LABEL_23;
      }

      merchantIdentifier = [requestCopy merchantIdentifier];

      if (merchantIdentifier)
      {
        goto LABEL_20;
      }

      if (self->_inAppPayments || self->_paymentAllAccess || self->_inAppPaymentsPrivate)
      {
        goto LABEL_26;
      }

      goto LABEL_27;
    case 1:
      if (!self->_cardOnFilePayments)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    case 2:
    case 4:
    case 8:
    case 9:
    case 12:
    case 14:
      if (!self->_paymentAllAccess)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    case 3:
      if (!self->_AMPCardEnrollment)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    case 5:
      if (scheme && ![scheme caseInsensitiveCompare:@"https"])
      {
LABEL_23:
        merchantSession = [requestCopy merchantSession];
        inAppPaymentsPrivate = [(PKEntitlementWhitelist *)self isEntitledForMerchantSession:merchantSession];
      }

      else
      {
        merchantIdentifier2 = [requestCopy merchantIdentifier];

        if (!merchantIdentifier2)
        {
          goto LABEL_27;
        }

LABEL_20:
        merchantIdentifiers = self->_merchantIdentifiers;
        merchantSession = [requestCopy merchantIdentifier];
        if ([(NSArray *)merchantIdentifiers containsObject:merchantSession]|| self->_paymentAllAccess)
        {

LABEL_26:
          v12 = 1;
          goto LABEL_30;
        }

        inAppPaymentsPrivate = self->_inAppPaymentsPrivate;
      }

      if (inAppPaymentsPrivate)
      {
        goto LABEL_26;
      }

LABEL_27:
      v13 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        processIdentifier = self->_processIdentifier;
        v16[0] = 67109120;
        v16[1] = processIdentifier;
        _os_log_error_impl(&dword_1AD337000, v13, OS_LOG_TYPE_ERROR, "Process %d not entitled for payment request", v16, 8u);
      }

      v12 = 0;
LABEL_30:

      return v12;
    case 6:
    case 7:
    case 13:
    case 15:
      if (!self->_externalizedContextPayments)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    default:
      goto LABEL_27;
  }
}

- (BOOL)isEntitledForMerchantSession:(id)session
{
  v15 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  initiative = [sessionCopy initiative];
  lowercaseString = [initiative lowercaseString];

  if (![lowercaseString isEqualToString:@"messaging"])
  {
    if ([lowercaseString isEqualToString:@"amp_enrollment"])
    {
      if (self->_AMPCardEnrollment)
      {
        goto LABEL_21;
      }

      goto LABEL_9;
    }

    if ([lowercaseString isEqualToString:@"amp_psd2"])
    {
      if (!self->_cardOnFilePayments)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }

    if ([lowercaseString isEqualToString:@"in_app"])
    {
      if (self->_inAppPayments)
      {
        developerTeamID = self->_developerTeamID;
        initiativeContext = [sessionCopy initiativeContext];
        if (![(NSString *)developerTeamID isEqualToString:initiativeContext]&& (PKBypassCertValidation() & 1) == 0 && !self->_inAppPaymentsPrivate)
        {
          paymentAllAccess = self->_paymentAllAccess;

          if (paymentAllAccess)
          {
            goto LABEL_21;
          }

          goto LABEL_9;
        }

LABEL_21:
        v8 = 1;
        goto LABEL_22;
      }
    }

    else if (self->_webPayments)
    {
      goto LABEL_21;
    }

    if (self->_inAppPaymentsPrivate || self->_paymentAllAccess)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  if (self->_winterpegPayments)
  {
    goto LABEL_21;
  }

LABEL_9:
  v7 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    processIdentifier = self->_processIdentifier;
    v14[0] = 67109120;
    v14[1] = processIdentifier;
    _os_log_error_impl(&dword_1AD337000, v7, OS_LOG_TYPE_ERROR, "Process %d not entitled for merchant session", v14, 8u);
  }

  v8 = 0;
LABEL_22:

  return v8;
}

@end