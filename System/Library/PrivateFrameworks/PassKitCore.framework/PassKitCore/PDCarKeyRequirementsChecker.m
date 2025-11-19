@interface PDCarKeyRequirementsChecker
- (BOOL)carAccessFeatureAvailable;
- (BOOL)deviceSupportsCredentials;
- (PDCarKeyRequirementsChecker)initWithWebServiceCoordinator:(id)a3 databaseManager:(id)a4;
- (id)_carAccessFeature;
- (id)supportedTerminalForConfiguration:(id)a3;
- (id)supportedTerminalForTCIs:(id)a3 brandCode:(int64_t)a4;
- (void)canAddCarKeyPassWithConfiguration:(id)a3 completion:(id)a4;
@end

@implementation PDCarKeyRequirementsChecker

- (PDCarKeyRequirementsChecker)initWithWebServiceCoordinator:(id)a3 databaseManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PDCarKeyRequirementsChecker;
  v9 = [(PDCarKeyRequirementsChecker *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_webServiceCoordinator, a3);
    objc_storeStrong(&v10->_databaseManager, a4);
  }

  return v10;
}

- (BOOL)deviceSupportsCredentials
{
  if (qword_100924250 != -1)
  {
    sub_1005C0010();
  }

  if (byte_100924248 == 1)
  {
    return PKIsBeneficiaryAccount() ^ 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)carAccessFeatureAvailable
{
  v2 = [(PDCarKeyRequirementsChecker *)self _carAccessFeature];
  v3 = [v2 supportedTerminals];
  v4 = [v3 count] != 0;

  return v4;
}

- (void)canAddCarKeyPassWithConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 supportedRadioTechnologies];
    if (!v8)
    {
      v9 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v63 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Defaulting to NFC due to missing or invalid radioTechnologies for configuration: %@", buf, 0xCu);
      }

      v8 = 1;
    }

    if (PKRadioTechnologyForConfigurationTechnology())
    {
      if ([(PDCarKeyRequirementsChecker *)self deviceSupportsCredentials])
      {
        v10 = [v6 manufacturerIdentifier];
        if (v10)
        {
          v11 = [v6 issuerIdentifier];
          v12 = [PKDAManager isCarKeySupportedForManufacturerIdentifier:v10 issuerIdentifier:v11 productPlanIdentifier:0];

          if ((v12 & 1) == 0)
          {
            v23 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v63 = v6;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Vehicle onboarding check failed for configuration: %@", buf, 0xCu);
            }

            v14 = v7[2];
            v15 = v7;
            v16 = 0;
            goto LABEL_24;
          }
        }

        if (PKPassbookIsCurrentlyDeletedByUser())
        {
          v13 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Skipping feature enabled check because Wallet is deleted. User will be prompted to redownload Wallet before the configuration can be used.", buf, 2u);
          }

          v14 = v7[2];
          v15 = v7;
          v16 = 1;
LABEL_24:
          v14(v15, v16, 0, 0);
          goto LABEL_25;
        }

        v24 = [v6 pairedReaderIdentifier];
        if ([v24 length])
        {
          v25 = objc_alloc_init(PDSecureElementPassDatabaseRequest);
          v26 = [NSSet setWithObjects:&off_1008A2A08, &off_1008A2A20, &off_1008A2A38, &off_1008A2A50, &off_1008A2A68, &off_1008A2A80, &off_1008A2A98, &off_1008A2AB0, &off_1008A2AC8, 0];
          [(PDSecureElementPassDatabaseRequest *)v25 setPrimaryPaymentApplicationStates:v26];
          [(PDSecureElementPassDatabaseRequest *)v25 setReaderIdentifier:v24];
          if ([(PDDatabaseManager *)self->_databaseManager countOfPassesForRequest:v25])
          {
            v27 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v63 = v24;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Active credentialed pass already provisioned for '%@'", buf, 0xCu);
            }

            v28 = PKSubcredentialProvisioningErrorDomain;
            v56 = NSDebugDescriptionErrorKey;
            v57 = @"pass already provisioned";
            v29 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
            v30 = [NSError errorWithDomain:v28 code:11 userInfo:v29];

            (v7[2])(v7, 0, 0, v30);
LABEL_55:

            goto LABEL_25;
          }
        }

        v25 = [(PDCarKeyRequirementsChecker *)self _carAccessFeature];
        if (v25)
        {
          v31 = [v6 issuerIdentifier];
          v26 = v31;
          if (v31)
          {
            v32 = v31;
            v46 = v25;
            v47 = v24;
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            obj = [(PDSecureElementPassDatabaseRequest *)v25 supportedTerminals];
            v33 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = *v50;
              while (2)
              {
                for (i = 0; i != v34; i = i + 1)
                {
                  if (*v50 != v35)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v37 = *(*(&v49 + 1) + 8 * i);
                  v38 = [v37 partnerIdentifier];
                  v39 = [v38 isEqualToString:v32];

                  if (v39)
                  {
                    if (!v10)
                    {
                      v44 = [v37 manufacturerIdentifier];
                      [v6 setManufacturerIdentifier:v44];
                    }

                    (v7[2])(v7, 1, v37, 0);

                    v25 = v46;
                    v24 = v47;
                    v26 = v32;
                    goto LABEL_55;
                  }
                }

                v34 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
                if (v34)
                {
                  continue;
                }

                break;
              }
            }

            v40 = PKLogFacilityTypeGetObject();
            v26 = v32;
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v63 = v32;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Credentialed pass feature is supported on device but not with issuer: %@", buf, 0xCu);
            }

            (v7[2])(v7, 0, 0, 0);
            v25 = v46;
            v24 = v47;
          }

          else
          {
            v45 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Credentialed pass feature is supported and no issuer provided. Allowing flow to proceed because it will be blocked with SLG if issuer unsupported.", buf, 2u);
            }

            (v7[2])(v7, 1, 0, 0);
          }
        }

        else
        {
          v41 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Credentialed pass feature is not supported on device", buf, 2u);
          }

          v42 = PKSubcredentialProvisioningErrorDomain;
          v54 = NSDebugDescriptionErrorKey;
          v55 = @"Software not supported";
          v43 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
          v26 = [NSError errorWithDomain:v42 code:21 userInfo:v43];

          (v7[2])(v7, 0, 0, v26);
        }

        goto LABEL_55;
      }

      v21 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Device does not support provisioning passes with credentials", buf, 2u);
      }

      v18 = PKSubcredentialProvisioningErrorDomain;
      v58 = NSDebugDescriptionErrorKey;
      v59 = @"Hardware not supported";
      v19 = &v59;
      v20 = &v58;
    }

    else
    {
      v17 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v63 = v8;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Device does not support the radio technologies %lu", buf, 0xCu);
      }

      v18 = PKSubcredentialProvisioningErrorDomain;
      v60 = NSDebugDescriptionErrorKey;
      v61 = @"Hardware not supported";
      v19 = &v61;
      v20 = &v60;
    }

    v22 = [NSDictionary dictionaryWithObjects:v19 forKeys:v20 count:1];
    v10 = [NSError errorWithDomain:v18 code:20 userInfo:v22];

    (v7[2])(v7, 0, 0, v10);
LABEL_25:
  }
}

- (id)supportedTerminalForTCIs:(id)a3 brandCode:(int64_t)a4
{
  v6 = a3;
  v7 = [(PDCarKeyRequirementsChecker *)self _carAccessFeature];
  v31 = v7;
  if (!v7)
  {
    a4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(a4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEFAULT, "Native pairing feature is not supported on device", buf, 2u);
    }

    v12 = 0;
    goto LABEL_36;
  }

  v8 = v7;
  if (a4)
  {
    v9 = [v7 brandIdentifierForBrandCode];
    v10 = [NSNumber numberWithInteger:a4];
    a4 = [v9 objectForKey:v10];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [v8 supportedTerminals];
  v34 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (!v34)
  {
    goto LABEL_31;
  }

  v33 = *v41;
  do
  {
    v11 = 0;
    do
    {
      if (*v41 != v33)
      {
        objc_enumerationMutation(obj);
      }

      v35 = v11;
      v12 = *(*(&v40 + 1) + 8 * v11);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v13 = [v12 terminalCriteria];
      v14 = [v13 countByEnumeratingWithState:&v36 objects:v48 count:16];
      if (!v14)
      {
LABEL_22:

        goto LABEL_29;
      }

      v15 = v14;
      v16 = *v37;
LABEL_11:
      v17 = 0;
      while (1)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v36 + 1) + 8 * v17);
        if ([v18 technologyType] != 4)
        {
          goto LABEL_20;
        }

        v19 = [v18 primaryTCIs];
        if ([v6 intersectsSet:v19])
        {
        }

        else
        {
          v20 = [v18 TCIs];
          v21 = [v6 intersectsSet:v20];

          if (!v21)
          {
            goto LABEL_20;
          }
        }

        if (!a4)
        {
          v24 = v12;
          v25 = PKLogFacilityTypeGetObject();
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_28;
          }

          *buf = 138412290;
          v45 = v24;
          v26 = v25;
          v27 = "Found associated terminal for field: %@";
          v28 = 12;
          goto LABEL_27;
        }

        v22 = [v12 partnerIdentifier];
        v23 = [a4 isEqualToString:v22];

        if (v23)
        {
          break;
        }

LABEL_20:
        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v36 objects:v48 count:16];
          if (v15)
          {
            goto LABEL_11;
          }

          goto LABEL_22;
        }
      }

      v29 = v12;
      v25 = PKLogFacilityTypeGetObject();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      *buf = 138412546;
      v45 = v29;
      v46 = 2112;
      v47 = a4;
      v26 = v25;
      v27 = "Found associated terminal for field: %@ brandIdentifier: %@";
      v28 = 22;
LABEL_27:
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v27, buf, v28);
LABEL_28:

      if (v12)
      {
        goto LABEL_32;
      }

LABEL_29:
      v11 = v35 + 1;
    }

    while ((v35 + 1) != v34);
    v34 = [obj countByEnumeratingWithState:&v40 objects:v49 count:16];
  }

  while (v34);
LABEL_31:
  v12 = 0;
LABEL_32:

LABEL_36:

  return v12;
}

- (id)supportedTerminalForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(PDCarKeyRequirementsChecker *)self _carAccessFeature];
  if (v5)
  {
    v6 = [v4 issuerIdentifier];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [v5 supportedTerminals];
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 partnerIdentifier];
          v14 = [v13 isEqualToString:v6];

          if (v14)
          {
            v15 = v12;
            goto LABEL_14;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Credentialed pass feature is supported on device but not with issuer: %@", buf, 0xCu);
    }

    v15 = 0;
LABEL_14:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_carAccessFeature
{
  v2 = [(PDPaymentWebServiceCoordinator *)self->_webServiceCoordinator sharedWebServiceContext];
  v3 = [v2 configuration];
  v4 = PKCurrentRegion();
  v5 = [v3 featureWithType:2 inRegion:v4];

  return v5;
}

@end