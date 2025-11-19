uint64_t NPKPairedOrPairingDeviceSupportsExpressForAutomaticSelectionTechnologyType(uint64_t a1)
{
  v1 = a1;
  v16 = *MEMORY[0x277D85DE8];
  if ((a1 - 1) <= 6 && (v2 = a1 - 1, (v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:off_27994B858[v2]]) != 0))
  {
    v4 = v3;
    v5 = NPKPairedOrPairingDevice();
    v6 = [v5 supportsCapability:v4];
  }

  else
  {
    v6 = 0;
  }

  v7 = pk_Payment_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromBOOL();
      v13[0] = 67109378;
      v13[1] = v1;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Supports express for technology type %d: %@", v13, 0x12u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

id __NPKExpressConfigurationFromInformation_block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D37E88];
  v3 = a2;
  v4 = [[v2 alloc] initWithPassInformation:v3 isNFCExpressEnabled:1 isUWBExpressEnabled:0];

  return v4;
}

id NPKPairedDeviceCurrentExpressPassConfiguration()
{
  v32 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.stockholm"];
  v1 = [v0 dataForKey:@"PDExpressPasses-2"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    v2 = v1;
    v1 = 0;
LABEL_6:

    goto LABEL_7;
  }

  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v1 error:0];
    if (v2)
    {
      v3 = objc_alloc(MEMORY[0x277CBEB98]);
      v4 = objc_opt_class();
      v5 = [v3 initWithObjects:{v4, objc_opt_class(), 0}];
      v6 = [v2 decodeObjectOfClasses:v5 forKey:*MEMORY[0x277CCA308]];
      [v2 finishDecoding];
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_6;
  }

  v6 = 0;
LABEL_7:
  v7 = pk_General_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = @"PDExpressPasses-2";
      *&buf[22] = 2112;
      v30 = @"com.apple.stockholm";
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Read express pass configurations %@\n from key %@ domain %@", buf, 0x20u);
    }
  }

  if (!v6)
  {
    if (NPKIsPairedDeviceVersionGreaterThanOrEqual())
    {
      v10 = _passdExpressPassesInformationFromDomain(@"com.apple.stockholm");
      if (!v10)
      {
        v10 = _passdExpressPassesInformationFromDomain(@"com.apple.passd");
      }
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nanopassbook"];
      v12 = [v11 objectForKey:@"DefaultExpressPasses"];
      v13 = [MEMORY[0x277CBEB58] set];
      v14 = pk_Payment_log();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

      if (v15)
      {
        v16 = pk_Payment_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v12;
          _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Notice: All nanopassd watch express info: %@", buf, 0xCu);
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = ___nanopassdExpressPassesInformation_block_invoke;
        v30 = &unk_27994B808;
        v31 = v13;
        [v12 enumerateKeysAndObjectsUsingBlock:buf];
      }

      if (![v13 count])
      {
        v17 = [v11 objectForKey:@"IEFTPPUniqueID"];
        v18 = [v11 objectForKey:@"IEFTPPApplicationIdentifier"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = objc_alloc(MEMORY[0x277D37E90]);
            v20 = [v19 initForExpressMode:*MEMORY[0x277D38868] withPassUniqueIdentifier:v17 paymentApplicationIdentifier:v18];
            if (v20)
            {
              v21 = v20;
              [v13 addObject:v20];
            }
          }
        }
      }

      v22 = pk_General_log();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);

      if (v23)
      {
        v24 = pk_General_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *v27 = 138412290;
          v28 = v13;
          _os_log_impl(&dword_25B300000, v24, OS_LOG_TYPE_DEFAULT, "Notice: Retrieved nanopassd watch express pass information %@", v27, 0xCu);
        }
      }

      v10 = [v13 copy];
    }

    v6 = [v10 pk_setByApplyingBlock:&__block_literal_global_422];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v6;
}

id NPKPairedDeviceExpressPassConfigurationWithCardType(uint64_t a1)
{
  v2 = NPKPairedDeviceCurrentExpressPassConfiguration();
  if (v2)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __NPKPairedDeviceExpressPassConfigurationWithCardType_block_invoke;
    v6[3] = &__block_descriptor_40_e53_B24__0__PKExpressPassConfiguration_8__NSDictionary_16l;
    v6[4] = a1;
    v3 = [MEMORY[0x277CCAC30] predicateWithBlock:v6];
    v4 = [v2 filteredSetUsingPredicate:v3];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  return v4;
}

BOOL __NPKPairedDeviceExpressPassConfigurationWithCardType_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 passInformation];
  v4 = [v3 cardType] == *(a1 + 32);

  return v4;
}

void NPKPairedDeviceSetPeerPaymentPreferences(void *a1)
{
  v1 = MEMORY[0x277D2BA58];
  v2 = a1;
  v4 = [[v1 alloc] initWithDomain:@"com.apple.nanopassbook"];
  v3 = NPKSecureArchiveObjectWithClassNameForClass(v2, 0);

  [v4 setObject:v3 forKey:@"PeerPaymentPreferences"];
}

id NPKPairedDevicePeerPaymentPreferences()
{
  v0 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nanopassbook"];
  v1 = [v0 dataForKey:@"PeerPaymentPreferences"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = objc_opt_class();
    v3 = NPKSecureUnarchiveObjectWithClassNameForClass(v1, v2, 0);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t NPKShouldAllowPeerPaymentRegistrationForWebService(void *a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = NPKPairedOrPairingDevice();
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"4CAAF5A2-6DD3-43EE-B2D8-C3D8C4997856"];
  v7 = [v5 supportsCapability:v6];

  if ((v7 & 1) == 0)
  {
    v8 = pk_Payment_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = pk_Payment_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v37) = 0;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Paired device does not support peer payment; not allowing peer payment registration", &v37, 2u);
      }
    }
  }

  IsAvailable = PKSecureElementIsAvailable();
  if (!IsAvailable)
  {
    v12 = pk_Payment_log();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v14 = pk_Payment_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v37) = 0;
        _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Secure element is not available on local device; not allowing peer payment registration", &v37, 2u);
      }
    }
  }

  if (!v3)
  {
    goto LABEL_13;
  }

  v15 = PKPeerPaymentServiceOverrideURL();

  if (v15)
  {
    goto LABEL_13;
  }

  if ([v3 needsRegistration])
  {
    goto LABEL_20;
  }

  v26 = [v3 context];
  v27 = [v26 peerPaymentServiceURL];

  v28 = [v3 context];
  v29 = [v28 hasPeerPaymentAccount];

  v30 = [v3 context];
  v31 = [v30 configuration];
  v32 = [v31 peerPaymentEnabledForRegion:v4];

  v33 = pk_Payment_log();
  LODWORD(v31) = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

  if (v31)
  {
    v34 = pk_Payment_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 67109632;
      v38 = v29;
      v39 = 1024;
      v40 = v32;
      v41 = 1024;
      v42 = v27 != 0;
      _os_log_impl(&dword_25B300000, v34, OS_LOG_TYPE_DEFAULT, "Notice: Peer payment web service has account: %d region enabled: %d has URL: %d", &v37, 0x14u);
    }
  }

  v35 = v27 != 0;
  IsTinker = NPKPairedOrPairingDeviceIsTinker();
  if ((v29 | v32) & 1) != 0 && ((v35 | IsTinker))
  {
LABEL_13:
    v16 = 1;
  }

  else
  {
LABEL_20:
    v23 = pk_Payment_log();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

    v16 = 0;
    if (v24)
    {
      v25 = pk_Payment_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v37) = 0;
        _os_log_impl(&dword_25B300000, v25, OS_LOG_TYPE_DEFAULT, "Notice: Web service does not support peer payment; not allowing peer payment registration", &v37, 2u);
      }

      v16 = 0;
    }
  }

  v17 = ((IsAvailable != 0) & v16) & v7;
  v18 = pk_Payment_log();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

  if (v19)
  {
    v20 = pk_Payment_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 67109120;
      v38 = v17;
      _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: Should allow peer payment registration? %d", &v37, 8u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

id NPKPeerPaymentLocale()
{
  v0 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US"];

  return v0;
}

id NPKPeerPaymentNumberFormatterForCurrencyCode()
{
  v0 = PKMutableNumberFormatterForCurrencyCode();
  v1 = [v0 copy];

  [v1 setAlwaysShowsDecimalSeparator:0];
  [v1 setMinimumFractionDigits:0];
  [v1 setMaximumFractionDigits:2];
  v2 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US"];
  [v1 setLocale:v2];

  return v1;
}

id NPKPeerPaymentDecimalNumberFormatterForCurrencyCode()
{
  v0 = PKMutableNumberFormatterForCurrencyCode();
  v1 = [v0 copy];

  [v1 setAlwaysShowsDecimalSeparator:0];
  [v1 setMinimumFractionDigits:2];
  [v1 setMaximumFractionDigits:2];
  v2 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US"];
  [v1 setLocale:v2];

  return v1;
}

id NPKDecimalNumberFormatterWithMinimalFractionDigitsExcludingCurrencySymbol()
{
  v0 = PKMutableNumberFormatterForCurrencyCode();
  [v0 setAlwaysShowsDecimalSeparator:0];
  [v0 setMinimumFractionDigits:0];
  [v0 setMaximumFractionDigits:2];
  v1 = [MEMORY[0x277CBEAF8] currentLocale];
  [v0 setLocale:v1];

  [v0 setCurrencySymbol:&stru_286C934F8];
  [v0 setInternationalCurrencySymbol:&stru_286C934F8];

  return v0;
}

uint64_t NPKPeerPaymentValueHasDecimals(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = MEMORY[0x277CCA988];
  v2 = a1;
  v3 = [v1 decimalNumberHandlerWithRoundingMode:1 scale:0 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
  v4 = [v2 decimalNumberByRoundingAccordingToBehavior:v3];
  LODWORD(v1) = [v4 isEqual:v2];

  v5 = v1 ^ 1;
  return v5;
}

uint64_t NPKIsAddToWatchSupportedForCompanionPaymentPass(void *a1)
{
  v1 = a1;
  if ([v1 supportsSerialNumberBasedProvisioning] && (objc_msgSend(v1, "requiresTransferSerialNumberBasedProvisioning") & 1) == 0)
  {
    v2 = [v1 isPeerPaymentPass] ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id NPKSecureUnarchiveObjectOfClasses(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([v3 length])
  {
    v15 = 0;
    v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v3 error:&v15];
    v6 = v15;
    if (v6)
    {
      v7 = pk_Payment_log();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

      if (v8)
      {
        v9 = pk_Payment_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v17 = v6;
          _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Warning: Found error while unarchive: %@", buf, 0xCu);
        }
      }
    }

    v10 = [v5 decodeObjectOfClasses:v4 forKey:*MEMORY[0x277CCA308]];
    [v5 finishDecoding];

LABEL_12:
    goto LABEL_13;
  }

  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v4;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Warning: Attempt to unarchive %@ from empty data:%@", buf, 0x16u);
    }

    v10 = 0;
    goto LABEL_12;
  }

  v10 = 0;
LABEL_13:

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

id NPKSecureUnarchiveDictionaryOfKeyAndObjectClasses(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v5 length])
  {
    v18 = 0;
    v8 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v5 error:&v18];
    v9 = v18;
    if (v9)
    {
      v10 = pk_Payment_log();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

      if (v11)
      {
        v12 = pk_Payment_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v20 = v9;
          _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Warning: Found error while unarchive: %@", buf, 0xCu);
        }
      }
    }

    v13 = [v8 decodeDictionaryWithKeysOfClasses:v6 objectsOfClasses:v7 forKey:*MEMORY[0x277CCA308]];

LABEL_12:
    goto LABEL_13;
  }

  v14 = pk_Payment_log();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

  if (v15)
  {
    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Warning: Attempt to unarchive objects of types %@ and %@ from empty data: %@", buf, 0x20u);
    }

    v13 = 0;
    goto LABEL_12;
  }

  v13 = 0;
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

id NPKSecureUnarchiveArrayOfObjectsOfClasses(void *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([v3 length])
  {
    v15 = 0;
    v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v3 error:&v15];
    v6 = v15;
    if (v6)
    {
      v7 = pk_Payment_log();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

      if (v8)
      {
        v9 = pk_Payment_log();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v17 = v6;
          _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Warning: Found error while unarchive: %@", buf, 0xCu);
        }
      }
    }

    v10 = [v5 decodeArrayOfObjectsOfClasses:v4 forKey:*MEMORY[0x277CCA308]];

LABEL_12:
    goto LABEL_13;
  }

  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v6 = pk_Payment_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v17 = v4;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Warning: Attempt to unarchive objects of type %@ from empty data: %@", buf, 0x16u);
    }

    v10 = 0;
    goto LABEL_12;
  }

  v10 = 0;
LABEL_13:

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

id NPKSecureArchiveObjectWithClassNameForClass(void *a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v17 = a1;
  v18 = a2;
  if (v17)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
    if (v18)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v4 = v18;
      v5 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v5)
      {
        v6 = *v20;
        do
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v20 != v6)
            {
              objc_enumerationMutation(v4);
            }

            v8 = *(*(&v19 + 1) + 8 * i);
            v9 = [v4 objectForKeyedSubscript:{v8, v17}];
            [v3 setClassName:v8 forClass:v9];
            v10 = pk_General_log();
            v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

            if (v11)
            {
              v12 = pk_General_log();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                v13 = [v3 classNameForClass:v9];
                *buf = 138412546;
                v24 = v9;
                v25 = 2112;
                v26 = v13;
                _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: The coder will encode class %@ as class %@", buf, 0x16u);
              }
            }
          }

          v5 = [v4 countByEnumeratingWithState:&v19 objects:v27 count:16];
        }

        while (v5);
      }
    }

    [v3 encodeObject:v17 forKey:{*MEMORY[0x277CCA308], v17}];
    [v3 finishEncoding];
    v14 = [v3 encodedData];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

id NPKSharedPeerPaymentAccountManager()
{
  if ((PKUseMockSURFServer() | __forceUseMockPeerPaymentServer))
  {
    v0 = off_2799431F8;
  }

  else
  {
    v0 = off_279943368;
  }

  v1 = [(__objc2_class *)*v0 sharedInstance];

  return v1;
}

uint64_t NPKShouldDisablePassSync()
{
  v0 = NPKDomainAccessorForDomain(@"com.apple.nanopassbook");
  v1 = [v0 BOOLForKey:@"DisablePassSync"];

  return v1;
}

uint64_t NPKIsCompanionMigrationNeeded()
{
  v0 = NPKDomainAccessorForDomain(@"com.apple.nanopassbook");
  v1 = [v0 BOOLForKey:@"MigrationReregisterNeeded"];

  return v1;
}

void NPKSetCompanionMigrationNeeded(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = pk_Payment_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_Payment_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109120;
      v8[1] = a1;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Marking companion migration needed: %d", v8, 8u);
    }
  }

  v5 = NPKDomainAccessorForDomain(@"com.apple.nanopassbook");
  [v5 setBool:a1 forKey:@"MigrationReregisterNeeded"];
  v6 = [v5 synchronize];

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t NPKNRDeviceSupportsCredentialType(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  v5 = 1;
  switch(a2)
  {
    case 103:
      v6 = objc_alloc(MEMORY[0x277CCAD78]);
      v7 = @"6C4614A2-1ECC-4405-9FEE-B5F0A5666961";
      goto LABEL_24;
    case 104:
    case 105:
    case 106:
    case 111:
    case 112:
    case 116:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 124:
    case 125:
    case 126:
    case 132:
    case 134:
    case 136:
      goto LABEL_25;
    case 107:
      v6 = objc_alloc(MEMORY[0x277CCAD78]);
      v7 = @"6BD289D4-EFF7-4E48-A3AD-776E924C8723";
      goto LABEL_24;
    case 108:
    case 109:
      v6 = objc_alloc(MEMORY[0x277CCAD78]);
      v7 = @"ECFC47E2-4B1A-404F-ADA3-D23DF4B06A29";
      goto LABEL_24;
    case 110:
      v6 = objc_alloc(MEMORY[0x277CCAD78]);
      v7 = @"C9D5B8D6-68B4-4C31-9CB7-4CA5309D4C83";
      goto LABEL_24;
    case 113:
      v6 = objc_alloc(MEMORY[0x277CCAD78]);
      v7 = @"81603B90-6702-446B-A559-CBA22E92C0B8";
      goto LABEL_24;
    case 114:
    case 115:
      v6 = objc_alloc(MEMORY[0x277CCAD78]);
      v7 = @"82AA137D-7207-4997-8F6E-9DB738D759F1";
      goto LABEL_24;
    case 117:
      v6 = objc_alloc(MEMORY[0x277CCAD78]);
      v7 = @"77EA0BCD-6C9F-44F2-B623-FD7662848CB6";
      goto LABEL_24;
    case 123:
      v6 = objc_alloc(MEMORY[0x277CCAD78]);
      v7 = @"50BDC6C0-0803-11EA-AAEF-0800200C9A66";
      goto LABEL_24;
    case 127:
      v6 = objc_alloc(MEMORY[0x277CCAD78]);
      v7 = @"674FD660-822D-4A0A-8A10-7ED7299FB8F7";
      goto LABEL_24;
    case 128:
      v6 = objc_alloc(MEMORY[0x277CCAD78]);
      v7 = @"FA784EAB-0396-4E07-B68A-66815BB84E3E";
      goto LABEL_24;
    case 129:
      v8 = NPKDeviceSupportsMead(v3);
      goto LABEL_22;
    case 130:
      v8 = NPKPairedOrPairingDeviceSupportsUnifiedAccessProvisioning();
      goto LABEL_22;
    case 131:
      v6 = objc_alloc(MEMORY[0x277CCAD78]);
      v7 = @"D3581A95-1F64-4EBD-8F71-0CD6B696D766";
      goto LABEL_24;
    case 133:
      v8 = NPKPairedOrPairingDeviceSupportsHomeKeyProvisioning();
      goto LABEL_22;
    case 135:
      v8 = NPKNRDeviceSupportsAppleBalance(v3);
      goto LABEL_22;
    case 137:
    case 138:
      goto LABEL_5;
    case 139:
      v8 = NPKSupportsAliroAccessPassForNRDevice(v3);
LABEL_22:
      v5 = v8;
      goto LABEL_25;
    case 140:
      v6 = objc_alloc(MEMORY[0x277CCAD78]);
      v7 = @"0B0171D3-B1DB-4B4A-BC75-14ACB7BB9592";
      goto LABEL_24;
    default:
      if (a2 == 301)
      {
        v6 = objc_alloc(MEMORY[0x277CCAD78]);
        v7 = @"A5E3D6BA-0998-4787-BE2A-0BBF2B359CC0";
LABEL_24:
        v9 = [v6 initWithUUIDString:v7];
        v5 = [v4 supportsCapability:v9];
      }

      else if (!a2)
      {
LABEL_5:
        v5 = 0;
      }

LABEL_25:
      v10 = pk_General_log();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

      if (v11)
      {
        v12 = pk_General_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = PKPaymentNetworkNameForPaymentCredentialType();
          v16 = 138413058;
          v17 = v4;
          v18 = 1024;
          v19 = v5;
          v20 = 2048;
          v21 = a2;
          v22 = 2112;
          v23 = v13;
          _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Device:%@ supports %u credential type:%lu (%@)", &v16, 0x26u);
        }
      }

      v14 = *MEMORY[0x277D85DE8];
      return v5;
  }
}

uint64_t NPKDeviceSupportsMead(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"EECEF837-B719-472A-BE4C-375E1852CA2F"];
  if ([v1 supportsCapability:v2])
  {
    v3 = isM8pDevice(v1) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t NPKPairedOrPairingDeviceSupportsUnifiedAccessProvisioning()
{
  v0 = NPKPairedOrPairingDevice();
  v1 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"6993A7A9-22E3-4F44-AAAB-4F3DFDD83818"];
  if ([v0 supportsCapability:v1])
  {
    v2 = NPKIsTinkerDevice(v0) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t NPKPairedOrPairingDeviceSupportsHomeKeyProvisioning()
{
  v0 = NPKPairedOrPairingDevice();
  v1 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"AD3C8B62-1FB2-4A7A-ABF1-EBD5AF574209"];
  if ([v0 supportsCapability:v1])
  {
    v2 = NPKIsTinkerDevice(v0) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t NPKNRDeviceSupportsAppleBalance(void *a1)
{
  v1 = MEMORY[0x277CCAD78];
  v2 = a1;
  v3 = [[v1 alloc] initWithUUIDString:@"B7B7F81F-E5A3-4B99-82C2-C5A0095FE70A"];
  v4 = [v2 supportsCapability:v3];

  return v4;
}

uint64_t NPKSupportsAliroAccessPassForNRDevice(void *a1)
{
  v1 = MEMORY[0x277CCAD78];
  v2 = a1;
  v3 = [[v1 alloc] initWithUUIDString:@"E6F0AB1C-320C-4941-9948-D2EAE7BA9A51"];
  v4 = [v2 supportsCapability:v3];

  return v4;
}

uint64_t NPKPairedOrPairingDeviceSupportsCredentialType(uint64_t a1)
{
  v2 = NPKPairedOrPairingDevice();
  v3 = NPKNRDeviceSupportsCredentialType(v2, a1);

  return v3;
}

uint64_t NPKPairedOrPairingDeviceSupportsAppleBalance()
{
  v0 = NPKPairedOrPairingDevice();
  v1 = NPKNRDeviceSupportsAppleBalance(v0);

  return v1;
}

NSObject *NPKDeviceClassFromDevice(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 valueForProperty:*MEMORY[0x277D2BAB8]];
  if (v2)
  {
    v3 = v2;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_12;
    }

    v4 = pk_General_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = pk_General_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = objc_opt_class();
        v7 = v13;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Warning: Unexpected instance class:%@ for pairing/paired device DeviceClass property. Will drop it", &v12, 0xCu);
      }
    }

    goto LABEL_10;
  }

  v8 = pk_General_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

  if (v9)
  {
    v3 = pk_General_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v1;
      _os_log_impl(&dword_25B300000, v3, OS_LOG_TYPE_DEFAULT, "Notice: could not get device class from pairing/paired device:%@", &v12, 0xCu);
    }

LABEL_10:
  }

  v3 = 0;
LABEL_12:

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t NPKIsPairedDeviceVersionGreaterThanOrEqual()
{
  v0 = NPKPairedOrPairingDevice();
  if (v0)
  {
    NRWatchOSVersionForRemoteDevice();
    IsGreaterThanOrEqual = NRVersionIsGreaterThanOrEqual();
  }

  else
  {
    IsGreaterThanOrEqual = 0;
  }

  return IsGreaterThanOrEqual;
}

uint64_t NPKPairedOrPairingDeviceSupportsSubcredentialProvisioning()
{
  v0 = NPKPairedOrPairingDevice();
  v1 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"A5E3D6BA-0998-4787-BE2A-0BBF2B359CC0"];
  v2 = [v0 supportsCapability:v1];

  return v2;
}

uint64_t NPKPairedOrPairingDeviceSupportsUWBSubcredentialProvisioning()
{
  v0 = NPKPairedOrPairingDevice();
  v1 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"C4F6386A-780D-40E5-9900-0A26C16273A1"];
  v2 = [v0 supportsCapability:v1];

  return v2;
}

uint64_t NPKSupportsUWBForNRDevice(void *a1)
{
  v1 = MEMORY[0x277CCAD78];
  v2 = a1;
  v3 = [[v1 alloc] initWithUUIDString:@"81D292E4-16D8-4630-82ED-BDF62B05E334"];
  v4 = [v2 supportsCapability:v3];

  return v4;
}

uint64_t NPKPairedOrPairingDeviceSupportsUWB()
{
  v0 = NPKPairedOrPairingDevice();
  v1 = NPKSupportsUWBForNRDevice(v0);

  return v1;
}

unint64_t NPKRadioTechnologySupportedByPairedDevice(uint64_t a1, void *a2)
{
  v3 = NPKSupportsUWBForNRDevice(a2);
  if ((a1 & 2) != 0 && (v3 & 1) == 0)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Removing BT due to device not supporting UWB interactions", v6, 2u);
    }

    return a1 & 0xFFFFFFFFFFFFFFFDLL;
  }

  return a1;
}

uint64_t NPKPairedOrPairingDeviceSupportsSharedInvitationProvisioning()
{
  v0 = NPKPairedOrPairingDevice();
  v1 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"54EDC00B-9FDF-442B-93A8-0562A7EBCCE0"];
  v2 = [v0 supportsCapability:v1];

  return v2;
}

uint64_t NPKPairedOrPairingDeviceSupportsSharingInAChain()
{
  v0 = NPKPairedOrPairingDevice();
  v1 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"8CF6A4A5-2346-47AF-B997-475C3E77AF88"];
  v2 = [v0 supportsCapability:v1];

  return v2;
}

uint64_t NPKPairedOrPairingDeviceSupportsAuxiliaryRegistration()
{
  v0 = NPKPairedOrPairingDevice();
  v1 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"2A05C9E8-D388-4DB8-8EE2-EB4D0F0D11B5"];
  v2 = [v0 supportsCapability:v1];

  return v2;
}

uint64_t NPKPairedOrPairingDeviceSupportsAliroAccessPass()
{
  v0 = NPKPairedOrPairingDevice();
  v1 = NPKSupportsAliroAccessPassForNRDevice(v0);

  return v1;
}

uint64_t isM8pDevice(void *a1)
{
  v1 = [a1 valueForProperty:*MEMORY[0x277D2BAB0]];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 isEqualToNumber:&unk_286CE7798];
    v4 = pk_General_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (!v3)
    {
      if (!v5)
      {
        v11 = 0;
        goto LABEL_18;
      }

      v6 = pk_General_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Device is Not a Series 3", v13, 2u);
      }

      v11 = 0;
      goto LABEL_16;
    }

    if (v5)
    {
      v6 = pk_General_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 0;
        v7 = "Notice: Device is Series 3";
        v8 = &v14;
LABEL_9:
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v9 = pk_General_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v6 = pk_General_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "Warning: Fail to identify hardware assuming is Series 3 device";
        v8 = buf;
        goto LABEL_9;
      }

LABEL_10:
      v11 = 1;
LABEL_16:

      goto LABEL_18;
    }
  }

  v11 = 1;
LABEL_18:

  return v11;
}

uint64_t NPKIsValidVASPass(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 hasValidNFCPayload])
  {
    v3 = [v2 isExpired] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t NPKIsTruthOnCardTransitPass(void *a1)
{
  v1 = [a1 paymentPass];
  if ([v1 isTransitPass])
  {
    v2 = [v1 isSuicaPass];
    v3 = [v1 devicePrimaryPaymentApplication];
    v4 = [v3 supportsTransitHistory];

    v5 = v2 | v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t NPKRequireSTSSessionForPass(void *a1)
{
  v1 = a1;
  v2 = [a1 secureElementPass];
  v3 = v2;
  if (v1)
  {
    if ([v2 isCarKeyPass])
    {
      v1 = 0;
    }

    else
    {
      v1 = [v3 hasCredentials];
    }
  }

  return v1;
}

uint64_t NPKHasIssuerBindingErrorForPass(void *a1)
{
  v1 = a1;
  if ([v1 passType])
  {
    v2 = 0;
  }

  else
  {
    v3 = [v1 barcode];
    if (v3)
    {
      v2 = 0;
    }

    else
    {
      v4 = [v1 nfcPayload];
      if (v4)
      {
        v5 = [v1 issuerBindingInformation];
        if (v5)
        {
          v2 = [v1 hasValidNFCPayload] ^ 1;
        }

        else
        {
          v6 = [v1 fidoProfile];
          if (v6)
          {
            v2 = [v1 hasValidNFCPayload] ^ 1;
          }

          else
          {
            v2 = 0;
          }
        }
      }

      else
      {
        v2 = 0;
      }
    }
  }

  return v2;
}

uint64_t NPKIsNFCDisabledForPass(void *a1)
{
  v1 = a1;
  v2 = +[NPKSecureElement sharedInstance];
  if ([v2 isNFCDisabled])
  {
    v3 = [v1 secureElementPass];
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = [v1 npkHasValidNFCPayload];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id NPKPreventAppUninstallPassesWithPasses(void *a1)
{
  v1 = MEMORY[0x277CCAC30];
  v2 = a1;
  v3 = [v1 predicateWithBlock:&__block_literal_global_513];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

id NPKDefaultEligiblePassesWithPasses(void *a1)
{
  v1 = MEMORY[0x277CCAC30];
  v2 = a1;
  v3 = [v1 predicateWithBlock:&__block_literal_global_515];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

uint64_t NPKPairedWatchHasWalletInstalled()
{
  v0 = NPKPairedOrPairingDevice();
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v1 = dispatch_group_create();
  dispatch_group_enter(v1);
  v2 = [MEMORY[0x277CEAF80] sharedDeviceConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __NPKPairedWatchHasApplicationWithBundleID_block_invoke;
  v7[3] = &unk_27994AFF8;
  v8 = @"com.apple.NanoPassbook";
  v10 = &v11;
  v3 = v1;
  v9 = v3;
  [v2 applicationIsInstalledOnPairedDevice:v0 withBundleID:@"com.apple.NanoPassbook" completion:v7];

  v4 = dispatch_time(0, 900000000000);
  dispatch_group_wait(v3, v4);
  v5 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v5;
}

void sub_25B549CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void NPKAcquireProvisioningAssertionWithDescription(void *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = [MEMORY[0x277CCAC38] processInfo];
    v6 = [v5 processName];
    v7 = [v5 processIdentifier];
    v8 = [MEMORY[0x277CCAB68] stringWithFormat:@"%@:%ld", v6, v7];
    v9 = v8;
    if (v3)
    {
      [v8 appendFormat:@". %@", v3];
    }

    v10 = pk_General_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = pk_General_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v9;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Requesting provisioning assertion with reason:%@", buf, 0xCu);
      }
    }

    v13 = MEMORY[0x277D37DA8];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __NPKAcquireProvisioningAssertionWithDescription_block_invoke;
    v18[3] = &unk_27994B730;
    v19 = v9;
    v20 = v4;
    v14 = v9;
    [v13 acquireAssertionOfType:1 withReason:v14 completion:v18];
  }

  else
  {
    v16 = pk_General_log();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (!v17)
    {
      goto LABEL_10;
    }

    v5 = pk_General_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v3;
      _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Missing completion block. Could not acquire assertion with description:%@", buf, 0xCu);
    }
  }

LABEL_10:
  v15 = *MEMORY[0x277D85DE8];
}

void __NPKAcquireProvisioningAssertionWithDescription_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pk_General_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

  if (v8)
  {
    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v12 = 138412802;
      v13 = v10;
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Notice: Received provisioning assertion with reason:%@ assertion:%@ error:%@", &v12, 0x20u);
    }
  }

  [v5 setInvalidateWhenBackgrounded:0];
  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

id NPKPartialPassDataWithBaseManifest(void *a1, void *a2, void *a3)
{
  v134 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = NPKURLForPass(v5);
  if (v7)
  {
    v93 = a3;
    v94 = v7;
    v8 = [objc_alloc(MEMORY[0x277CCAA20]) initWithURL:v7 options:1 error:0];
    v9 = _NPKPartialPassCacheLocationCreatingIfNecessary();
    v10 = [MEMORY[0x277CCAD78] UUID];
    v11 = [v10 UUIDString];
    v91 = v9;
    v12 = [v9 URLByAppendingPathComponent:v11];
    v13 = [v12 URLByAppendingPathExtension:*MEMORY[0x277D38980]];

    v92 = v8;
    [v8 writeToURL:v13 options:1 originalContentsURL:0 error:0];
    v14 = [MEMORY[0x277CBEB38] dictionary];
    v104 = NPKManifestForPass(v5);
    v15 = pk_Payment_log();
    LODWORD(v11) = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v16 = pk_Payment_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v133 = v104;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Warning: Current manifest is %@", buf, 0xCu);
      }
    }

    v17 = pk_Payment_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

    if (v18)
    {
      v19 = pk_Payment_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v133 = v6;
        _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Warning: Base manifest is %@", buf, 0xCu);
      }
    }

    v102 = v14;
    v103 = v6;
    v95 = v5;
    v20 = [MEMORY[0x277CCAA00] defaultManager];
    v22 = *MEMORY[0x277CBE8B0];
    v129[0] = *MEMORY[0x277CBE868];
    v21 = v129[0];
    v129[1] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v129 count:2];
    v24 = [v20 enumeratorAtURL:v13 includingPropertiesForKeys:v23 options:8 errorHandler:0];

    v25 = v21;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    obj = v24;
    v113 = [obj countByEnumeratingWithState:&v120 objects:v128 count:16];
    if (v113)
    {
      v112 = *v121;
      v108 = *MEMORY[0x277D38688];
      v107 = *MEMORY[0x277D38698];
      v101 = *MEMORY[0x277D38A40];
      v109 = v22;
      v96 = v21;
      v97 = v13;
      do
      {
        for (i = 0; i != v113; ++i)
        {
          if (*v121 != v112)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v120 + 1) + 8 * i);
          v28 = pk_Payment_log();
          v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

          if (v29)
          {
            v30 = pk_Payment_log();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v133 = v27;
              _os_log_impl(&dword_25B300000, v30, OS_LOG_TYPE_DEFAULT, "Warning: Looking at URL %@", buf, 0xCu);
            }
          }

          v119 = 0;
          v31 = [v27 getResourceValue:&v119 forKey:v22 error:0];
          v32 = v119;
          v33 = v32;
          if (!v31 || ![v32 BOOLValue])
          {
            if (![obj isEnumeratingDirectoryPostOrder])
            {
              v117 = 0;
              v45 = [v27 getResourceValue:&v117 forKey:v25 error:0];
              v111 = v117;
              if (v45 && ([v111 BOOLValue]& 1) != 0)
              {
                v34 = v33;
LABEL_80:
                v37 = v111;
                goto LABEL_81;
              }

              v110 = i;
              v46 = PKRelativePathAfterResolvingSymlinks();
              if (v46)
              {
                v47 = [v108 stringByAppendingPathExtension:@"json"];
                if ([v46 isEqualToString:v47])
                {
                  goto LABEL_78;
                }

                v48 = [v46 isEqualToString:v107];

                if ((v48 & 1) == 0)
                {
                  v47 = [v104 objectForKey:v46];
                  v49 = pk_Payment_log();
                  v50 = os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT);

                  if (v50)
                  {
                    v51 = pk_Payment_log();
                    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v133 = v47;
                      _os_log_impl(&dword_25B300000, v51, OS_LOG_TYPE_DEFAULT, "Warning: Current Manifest SHA1 %@", buf, 0xCu);
                    }
                  }

                  if (v47)
                  {
                    v106 = v33;
                    v52 = v27;
                    v53 = v13;
                    v115 = [MEMORY[0x277CBEB38] dictionary];
                    v54 = [v52 pathExtension];
                    v55 = [v54 isEqualToString:v101];

                    v56 = v102;
                    v57 = v103;
                    v105 = v52;
                    v116 = v53;
                    if (v55)
                    {
                      v99 = v47;
                      v100 = v46;
                      v58 = [objc_alloc(MEMORY[0x277D38238]) initWithFileURL:v52 passURL:v53 error:0];
                      v124 = 0u;
                      v125 = 0u;
                      v126 = 0u;
                      v127 = 0u;
                      v98 = v58;
                      v59 = [v58 remoteAssets];
                      v60 = [v59 allValues];

                      v61 = [v60 countByEnumeratingWithState:&v124 objects:buf count:16];
                      if (v61)
                      {
                        v62 = v61;
                        v63 = *v125;
                        do
                        {
                          for (j = 0; j != v62; ++j)
                          {
                            if (*v125 != v63)
                            {
                              objc_enumerationMutation(v60);
                            }

                            v65 = *(*(&v124 + 1) + 8 * j);
                            v66 = [v65 localURL];
                            v67 = [MEMORY[0x277CCAA00] defaultManager];
                            v68 = [v66 path];
                            v69 = [v67 fileExistsAtPath:v68];

                            if (v69)
                            {
                              v70 = [v65 relativeLocalPath];
                              v71 = [v65 sha1Hex];
                              v72 = v71;
                              if (v70)
                              {
                                v73 = v71 == 0;
                              }

                              else
                              {
                                v73 = 1;
                              }

                              if (v73)
                              {
                                v74 = pk_Payment_log();
                                v75 = os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT);

                                if (v75)
                                {
                                  v76 = pk_Payment_log();
                                  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                                  {
                                    *v130 = 138412290;
                                    v131 = v65;
                                    _os_log_impl(&dword_25B300000, v76, OS_LOG_TYPE_DEFAULT, "Warning: Could not get relative path or hash for %@", v130, 0xCu);
                                  }
                                }
                              }

                              else
                              {
                                [v115 setObject:v71 forKey:v70];
                              }

                              v53 = v116;
                            }
                          }

                          v62 = [v60 countByEnumeratingWithState:&v124 objects:buf count:16];
                        }

                        while (v62);
                      }

                      v56 = v102;
                      v57 = v103;
                      v25 = v96;
                      v13 = v97;
                      v22 = v109;
                      v47 = v99;
                      v46 = v100;
                      v52 = v105;
                    }

                    [v56 addEntriesFromDictionary:v115];
                    v77 = [v57 objectForKey:v46];
                    v78 = pk_Payment_log();
                    v79 = os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT);

                    if (v79)
                    {
                      v80 = pk_Payment_log();
                      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v133 = v77;
                        _os_log_impl(&dword_25B300000, v80, OS_LOG_TYPE_DEFAULT, "Warning: Base Manifest SHA1 %@", buf, 0xCu);
                      }
                    }

                    if (PKEqualObjects())
                    {
                      _NPKDeleteFileAndRemoteAssetsAtURL(v105, v116);
                    }

                    v33 = v106;
                  }

                  goto LABEL_78;
                }
              }

              else
              {
                v84 = pk_Payment_log();
                v85 = os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT);

                if (v85)
                {
                  v47 = pk_Payment_log();
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                  {
                    v86 = [v27 path];
                    *buf = 138412290;
                    v133 = v86;
                    _os_log_impl(&dword_25B300000, v47, OS_LOG_TYPE_DEFAULT, "Warning: Unable to find pass-relative path for absolute path %@", buf, 0xCu);
                  }

LABEL_78:
                }
              }

              v34 = v33;

              i = v110;
              goto LABEL_80;
            }

            v34 = v33;
            v39 = [MEMORY[0x277CCAA00] defaultManager];
            v118 = 0;
            v40 = [v39 contentsOfDirectoryAtURL:v27 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 error:&v118];
            v41 = v118;

            v37 = v41;
            if (v41)
            {
              v42 = pk_Payment_log();
              v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);

              if (v43)
              {
                v44 = pk_Payment_log();
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v133 = v27;
                  _os_log_impl(&dword_25B300000, v44, OS_LOG_TYPE_DEFAULT, "Warning: Unable to get directory contents for URL %@", buf, 0xCu);
                }

                goto LABEL_73;
              }
            }

            else if (![v40 count])
            {
              v81 = pk_Payment_log();
              v82 = os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT);

              if (v82)
              {
                v83 = pk_Payment_log();
                if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v133 = v27;
                  _os_log_impl(&dword_25B300000, v83, OS_LOG_TYPE_DEFAULT, "Notice: Removing empty directory at URL %@", buf, 0xCu);
                }
              }

              v44 = [MEMORY[0x277CCAA00] defaultManager];
              [v44 removeItemAtURL:v27 error:0];
LABEL_73:
            }

            v22 = v109;
            goto LABEL_81;
          }

          v34 = v33;
          v35 = pk_Payment_log();
          v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);

          if (!v36)
          {
            goto LABEL_82;
          }

          v37 = pk_Payment_log();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = [v27 path];
            *buf = 138412290;
            v133 = v38;
            _os_log_impl(&dword_25B300000, v37, OS_LOG_TYPE_DEFAULT, "Notice: Illegal symlink: %@", buf, 0xCu);
          }

LABEL_81:

LABEL_82:
        }

        v113 = [obj countByEnumeratingWithState:&v120 objects:v128 count:16];
      }

      while (v113);
    }

    if (v93)
    {
      v87 = v102;
      *v93 = v102;
    }

    v88 = PKArchiverZipData(v13);

    v7 = v94;
    v5 = v95;
    v6 = v103;
  }

  else
  {
    v88 = 0;
  }

  v89 = *MEMORY[0x277D85DE8];

  return v88;
}

id _NPKPartialPassCacheLocationCreatingIfNecessary()
{
  v18 = *MEMORY[0x277D85DE8];
  if (_NPKPartialPassCacheLocationCreatingIfNecessary_onceToken != -1)
  {
    _NPKPartialPassCacheLocationCreatingIfNecessary_cold_1();
  }

  v0 = MEMORY[0x277CBEBC0];
  v1 = NSTemporaryDirectory();
  v2 = [v0 fileURLWithPath:v1];

  v3 = [v2 URLByAppendingPathComponent:@"PartialPassCache"];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v3 path];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = 0;
    v9 = [v8 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v13];
    v7 = v13;

    if ((v9 & 1) == 0)
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v15 = v3;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Could not create download cache at %@: %@", buf, 0x16u);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

void _NPKDeleteFileAndRemoteAssetsAtURL(void *a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 pathExtension];
  v6 = [v5 isEqualToString:*MEMORY[0x277D38A40]];

  if (v6)
  {
    v26 = v4;
    v27 = v3;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v25 = [objc_alloc(MEMORY[0x277D38238]) initWithFileURL:v3 passURL:v4 error:0];
    v7 = [v25 remoteAssets];
    v8 = [v7 allValues];

    v9 = [v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          v14 = pk_Payment_log();
          v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

          if (v15)
          {
            v16 = pk_Payment_log();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = [v13 localURL];
              *buf = 138412290;
              v33 = v17;
              _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Warning: Deleting remote asset at URL %@", buf, 0xCu);
            }
          }

          v18 = [MEMORY[0x277CCAA00] defaultManager];
          v19 = [v13 localURL];
          [v18 removeItemAtURL:v19 error:0];
        }

        v10 = [v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v10);
    }

    v4 = v26;
    v3 = v27;
  }

  v20 = pk_Payment_log();
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

  if (v21)
  {
    v22 = pk_Payment_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v3;
      _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Warning: Deleting file at URL %@", buf, 0xCu);
    }
  }

  v23 = [MEMORY[0x277CCAA00] defaultManager];
  [v23 removeItemAtURL:v3 error:0];

  v24 = *MEMORY[0x277D85DE8];
}

id NPKUpdatedPassWithPartialPassData(void *a1, void *a2, void *a3, NSObject **a4)
{
  v178[2] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v136 = a2;
  v7 = a3;
  v8 = NPKURLForPass(v6);
  v9 = _NPKPartialPassCacheLocationCreatingIfNecessary();
  v135 = v6;
  v10 = NPKManifestForPass(v6);
  v11 = 0;
  if (!v8 || !v9)
  {
    goto LABEL_114;
  }

  v134 = v10;
  v132 = v7;
  v12 = [MEMORY[0x277CCAD78] UUID];
  v13 = [v12 UUIDString];
  v14 = [v9 URLByAppendingPathComponent:v13];
  v15 = *MEMORY[0x277D38980];
  v16 = [v14 URLByAppendingPathExtension:*MEMORY[0x277D38980]];

  v131 = v8;
  v130 = [objc_alloc(MEMORY[0x277CCAA20]) initWithURL:v8 options:1 error:0];
  v148 = v16;
  [v130 writeToURL:v16 options:1 originalContentsURL:0 error:0];
  v17 = [MEMORY[0x277CCAD78] UUID];
  v18 = [v17 UUIDString];
  v19 = [v9 URLByAppendingPathComponent:v18];
  v20 = [v19 URLByAppendingPathExtension:v15];

  v147 = v20;
  v137 = v9;
  if (!PKUnarchiverZip(v136, v20))
  {
    goto LABEL_73;
  }

  v21 = [v135 uniqueID];
  v129 = _NPKManifestForURL(v21, v147);

  v22 = [MEMORY[0x277CCAA00] defaultManager];
  v23 = *MEMORY[0x277CBE8B0];
  v140 = *MEMORY[0x277CBE868];
  v178[0] = *MEMORY[0x277CBE868];
  v178[1] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v178 count:2];
  v25 = [v22 enumeratorAtURL:v147 includingPropertiesForKeys:v24 options:0 errorHandler:0];

  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  obj = v25;
  v26 = [obj countByEnumeratingWithState:&v164 objects:v177 count:16];
  if (!v26)
  {
    goto LABEL_46;
  }

  v27 = v26;
  v28 = *v165;
  v138 = *v165;
  do
  {
    v29 = 0;
    v143 = v27;
    do
    {
      if (*v165 != v28)
      {
        objc_enumerationMutation(obj);
      }

      v30 = *(*(&v164 + 1) + 8 * v29);
      v163 = 0;
      v31 = [v30 getResourceValue:&v163 forKey:v23 error:0];
      v32 = v163;
      v33 = v32;
      if (!v31 || ![v32 BOOLValue])
      {
        v36 = PKRelativePathAfterResolvingSymlinks();
        if (!v36)
        {
          v58 = pk_Payment_log();
          v59 = os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT);

          if (v59)
          {
            v37 = pk_Payment_log();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v60 = [v30 path];
              *buf = 138412290;
              v169 = v60;
              _os_log_impl(&dword_25B300000, v37, OS_LOG_TYPE_DEFAULT, "Notice: Unable to find pass-relative path for absolute path %@", buf, 0xCu);
            }

            goto LABEL_42;
          }

          goto LABEL_43;
        }

        v38 = v23;
        v39 = [v148 pathComponents];
        v40 = [v36 pathComponents];
        v37 = [v39 arrayByAddingObjectsFromArray:v40];

        v41 = MEMORY[0x277CBEBC0];
        v42 = [MEMORY[0x277CCACA8] pathWithComponents:v37];
        v43 = [v41 fileURLWithPath:v42];

        v162 = 0;
        LODWORD(v42) = [v30 getResourceValue:&v162 forKey:v140 error:0];
        v44 = v162;
        v45 = v44;
        if (!v42 || ![v44 BOOLValue])
        {
          v53 = pk_Payment_log();
          v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);

          if (v54)
          {
            v55 = pk_Payment_log();
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v169 = v30;
              v170 = 2112;
              v171 = v43;
              _os_log_impl(&dword_25B300000, v55, OS_LOG_TYPE_DEFAULT, "Notice: Copying file from %@ to %@", buf, 0x16u);
            }
          }

          v56 = [MEMORY[0x277CCAA00] defaultManager];
          [v56 removeItemAtURL:v43 error:0];

          v57 = [MEMORY[0x277CCAA00] defaultManager];
          [v57 copyItemAtURL:v30 toURL:v43 error:0];

          v23 = v38;
          v28 = v138;
          goto LABEL_41;
        }

        v161 = 0;
        v46 = [MEMORY[0x277CCAA00] defaultManager];
        v47 = [v43 path];
        v48 = [v46 fileExistsAtPath:v47 isDirectory:&v161];

        if (v48)
        {
          v49 = v161;
          v50 = pk_Payment_log();
          v51 = os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT);

          if (v49)
          {
            v23 = v38;
            v28 = v138;
            if (v51)
            {
              v52 = pk_Payment_log();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v169 = v43;
                _os_log_impl(&dword_25B300000, v52, OS_LOG_TYPE_DEFAULT, "Notice: Directory already exists at %@", buf, 0xCu);
              }

              goto LABEL_40;
            }

            goto LABEL_41;
          }

          if (v51)
          {
            v61 = pk_Payment_log();
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v169 = v43;
              _os_log_impl(&dword_25B300000, v61, OS_LOG_TYPE_DEFAULT, "Notice: Removing existing non-directory file at %@", buf, 0xCu);
            }
          }

          v62 = [MEMORY[0x277CCAA00] defaultManager];
          [v62 removeItemAtURL:v43 error:0];
        }

        v63 = pk_Payment_log();
        v64 = os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);

        v23 = v38;
        v28 = v138;
        if (v64)
        {
          v65 = pk_Payment_log();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v169 = v43;
            _os_log_impl(&dword_25B300000, v65, OS_LOG_TYPE_DEFAULT, "Notice: Creating empty directory at %@", buf, 0xCu);
          }
        }

        v52 = [MEMORY[0x277CCAA00] defaultManager];
        [v52 createDirectoryAtURL:v43 withIntermediateDirectories:1 attributes:0 error:0];
LABEL_40:

LABEL_41:
        v27 = v143;
        goto LABEL_42;
      }

      v34 = pk_Payment_log();
      v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);

      if (!v35)
      {
        goto LABEL_44;
      }

      v36 = pk_Payment_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [v30 path];
        *buf = 138412290;
        v169 = v37;
        _os_log_impl(&dword_25B300000, v36, OS_LOG_TYPE_DEFAULT, "Notice: Illegal symlink: %@", buf, 0xCu);
LABEL_42:
      }

LABEL_43:

LABEL_44:
      ++v29;
    }

    while (v27 != v29);
    v27 = [obj countByEnumeratingWithState:&v164 objects:v177 count:16];
  }

  while (v27);
LABEL_46:

  v66 = pk_Payment_log();
  v67 = os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT);

  v9 = v137;
  if (v67)
  {
    v68 = pk_Payment_log();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v169 = v134;
      v170 = 2112;
      v171 = v129;
      _os_log_impl(&dword_25B300000, v68, OS_LOG_TYPE_DEFAULT, "Notice: base pass manifest: %@ partial pass manifest: %@", buf, 0x16u);
    }
  }

  if (v134 && v129)
  {
    v69 = MEMORY[0x277CBEB98];
    v70 = [v134 allKeys];
    v71 = [v69 setWithArray:v70];
    v72 = [v71 mutableCopy];

    v73 = MEMORY[0x277CBEB98];
    v74 = [v129 allKeys];
    v75 = [v73 setWithArray:v74];
    [v72 minusSet:v75];

    v76 = pk_Payment_log();
    LODWORD(v74) = os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT);

    if (v74)
    {
      v77 = pk_Payment_log();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v169 = v72;
        _os_log_impl(&dword_25B300000, v77, OS_LOG_TYPE_DEFAULT, "Notice: keys only in base pass manifest: %@", buf, 0xCu);
      }
    }

    v78 = [*MEMORY[0x277D38688] stringByAppendingPathExtension:@"json"];
    v79 = *MEMORY[0x277D38698];
    v141 = v78;
    v176[0] = v78;
    v176[1] = v79;
    v80 = [MEMORY[0x277CBEA60] arrayWithObjects:v176 count:2];
    v159[0] = MEMORY[0x277D85DD0];
    v159[1] = 3221225472;
    v159[2] = __NPKUpdatedPassWithPartialPassData_block_invoke;
    v159[3] = &unk_279945858;
    v81 = v72;
    v160 = v81;
    v139 = v80;
    [v80 enumerateObjectsUsingBlock:v159];
    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v82 = v81;
    v83 = [v82 countByEnumeratingWithState:&v155 objects:v175 count:16];
    if (v83)
    {
      v84 = v83;
      v85 = *v156;
      do
      {
        for (i = 0; i != v84; ++i)
        {
          if (*v156 != v85)
          {
            objc_enumerationMutation(v82);
          }

          v87 = *(*(&v155 + 1) + 8 * i);
          v88 = [v148 pathComponents];
          v89 = [v87 pathComponents];
          v90 = [v88 arrayByAddingObjectsFromArray:v89];

          v91 = MEMORY[0x277CBEBC0];
          v92 = [MEMORY[0x277CCACA8] pathWithComponents:v90];
          v93 = [v91 fileURLWithPath:v92];

          v94 = pk_Payment_log();
          LODWORD(v92) = os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT);

          if (v92)
          {
            v95 = pk_Payment_log();
            if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v169 = v93;
              _os_log_impl(&dword_25B300000, v95, OS_LOG_TYPE_DEFAULT, "Notice: Deleting file at URL %@ because it isn't in the new manifest", buf, 0xCu);
            }
          }

          _NPKDeleteFileAndRemoteAssetsAtURL(v93, v148);
        }

        v84 = [v82 countByEnumeratingWithState:&v155 objects:v175 count:16];
      }

      while (v84);
    }

    v9 = v137;
    goto LABEL_68;
  }

  v96 = pk_Payment_log();
  v97 = os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT);

  if (v97)
  {
    v82 = pk_Payment_log();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v169 = v134;
      v170 = 2112;
      v171 = v129;
      _os_log_impl(&dword_25B300000, v82, OS_LOG_TYPE_DEFAULT, "Warning: Base pass manifest (%@) or partial pass manifest (%@) is nil!", buf, 0x16u);
    }

LABEL_68:
  }

LABEL_73:
  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v7 = v132;
  v98 = v132;
  obja = [v98 countByEnumeratingWithState:&v151 objects:v174 count:16];
  if (!obja)
  {

LABEL_90:
    v150 = 0;
    v102 = [objc_alloc(MEMORY[0x277D37EE8]) initWithFileURL:v148 error:&v150];
    v115 = v150;
    v116 = v115;
    if (!v102 || v115)
    {
      if (!v115)
      {
LABEL_111:
        v11 = 0;
LABEL_112:

        goto LABEL_113;
      }

      v124 = pk_Sync_log();
      v125 = os_log_type_enabled(v124, OS_LOG_TYPE_ERROR);

      if (!v125)
      {
        goto LABEL_107;
      }

      v119 = pk_Sync_log();
      if (!os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_106;
      }

      *buf = 138412546;
      v169 = v102;
      v170 = 2112;
      v171 = v116;
      v120 = "Error: Error creating data accessor (%@). Error: %@";
    }

    else
    {
      v149 = 0;
      v11 = [MEMORY[0x277D37F98] createWithFileDataAccessor:v102 validationOptions:2 warnings:0 error:&v149];
      v116 = v149;
      if (v11)
      {
LABEL_108:
        if (a4 && v116)
        {
          v126 = v116;
          *a4 = v116;
        }

        goto LABEL_112;
      }

      v117 = pk_Sync_log();
      v118 = os_log_type_enabled(v117, OS_LOG_TYPE_ERROR);

      if (!v118)
      {
LABEL_107:
        v11 = 0;
        goto LABEL_108;
      }

      v119 = pk_Sync_log();
      if (!os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
      {
LABEL_106:

        goto LABEL_107;
      }

      *buf = 138412546;
      v169 = 0;
      v170 = 2112;
      v171 = v116;
      v120 = "Error: Unable to create a pass from this pass URL! %@. Error: %@";
    }

    _os_log_impl(&dword_25B300000, v119, OS_LOG_TYPE_ERROR, v120, buf, 0x16u);
    goto LABEL_106;
  }

  v144 = *v152;
  v142 = 1;
LABEL_75:
  v99 = 0;
  while (1)
  {
    if (*v152 != v144)
    {
      objc_enumerationMutation(v98);
    }

    v100 = *(*(&v151 + 1) + 8 * v99);
    v101 = v98;
    v102 = [v98 objectForKey:v100];
    v103 = objc_autoreleasePoolPush();
    v104 = [v148 URLByAppendingPathComponent:v100];
    v105 = [MEMORY[0x277CCAA00] defaultManager];
    v106 = [v104 path];
    v107 = [v105 fileExistsAtPath:v106];

    if (!v107)
    {
      v121 = pk_Payment_log();
      v122 = os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT);

      v7 = v132;
      v116 = v101;
      if (v122)
      {
        v123 = pk_Payment_log();
        if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v169 = v104;
          _os_log_impl(&dword_25B300000, v123, OS_LOG_TYPE_DEFAULT, "Warning: No remote asset at URL %@; rejecting partial pass update", buf, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v103);
      goto LABEL_111;
    }

    v108 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v104];
    v109 = [v108 SHA1Hash];
    v110 = [v109 hexEncoding];

    v111 = [v110 isEqualToString:v102];
    if ((v111 & 1) == 0)
    {
      v112 = pk_Payment_log();
      v113 = os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT);

      v142 = 0;
      if (v113)
      {
        v114 = pk_Payment_log();
        if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v169 = v104;
          v170 = 2112;
          v171 = v102;
          v172 = 2112;
          v173 = v110;
          _os_log_impl(&dword_25B300000, v114, OS_LOG_TYPE_DEFAULT, "Warning: Hash for file at URL %@ does not match (expected %@ vs actual %@)", buf, 0x20u);
        }

        v142 = 0;
      }
    }

    objc_autoreleasePoolPop(v103);
    v9 = v137;
    v98 = v101;
    if (!v111)
    {
      break;
    }

    if (obja == ++v99)
    {
      obja = [v101 countByEnumeratingWithState:&v151 objects:v174 count:16];
      if (obja)
      {
        goto LABEL_75;
      }

      break;
    }
  }

  v7 = v132;
  if (v142)
  {
    goto LABEL_90;
  }

  v11 = 0;
LABEL_113:

  v8 = v131;
  v10 = v134;
LABEL_114:

  v127 = *MEMORY[0x277D85DE8];

  return v11;
}

void __NPKUpdatedPassWithPartialPassData_block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = pk_Payment_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = pk_Payment_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = v3;
      }
    }

    [*(a1 + 32) removeObject:v3];
  }

  v7 = *MEMORY[0x277D85DE8];
}

id NPKShortenedNotificationHeaderString(void *a1)
{
  v1 = a1;
  v2 = PKLocalizedString(&cfstr_TransactionUse.isa);
  v3 = [v2 componentsSeparatedByString:@"%@"];
  if ([v3 count] == 2)
  {
    v4 = [v3 objectAtIndex:0];
    v5 = [v3 objectAtIndex:1];
    if ([v4 length])
    {
      v6 = [v1 hasPrefix:v4] ^ 1;
    }

    else
    {
      v6 = 0;
    }

    if ([v5 length])
    {
      v7 = [v1 hasSuffix:v5] ^ 1;
    }

    else
    {
      v7 = 0;
    }

    if (((v6 | v7) & 1) == 0)
    {
      v8 = [v1 substringWithRange:{objc_msgSend(v4, "length"), objc_msgSend(v1, "length") - (objc_msgSend(v5, "length") + objc_msgSend(v4, "length"))}];

      v1 = v8;
    }
  }

  return v1;
}

uint64_t NPKValidatePaymentWebServiceContextAgainstWatchSEIDs(void *a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v4 count];
  v6 = v5 == 0;
  if (v5)
  {
    v7 = [v3 deviceID];
    if (v7)
    {
      v8 = v7;
      v9 = [v3 deviceID];
      v10 = [v4 containsObject:v9];
    }

    else
    {
      v10 = 1;
    }

    v14 = [v3 secureElementID];
    if (v14)
    {
      v15 = v14;
      v16 = [v3 secureElementID];
      v17 = [v4 containsObject:v16];

      if (v10 & v17)
      {
        goto LABEL_10;
      }
    }

    else if (v10)
    {
      goto LABEL_10;
    }

    v19 = pk_Payment_log();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    v18 = 0;
    if (!v20)
    {
      goto LABEL_16;
    }

    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v3 deviceID];
      v24 = 138412802;
      v25 = v3;
      v26 = 2112;
      v27 = v21;
      v28 = 2112;
      v29 = v4;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Warning: Web service context (%@) is invalid because the device ID (%@) does not match the watch's SEIDs (%@)", &v24, 0x20u);
    }

LABEL_15:

    v18 = v6;
    goto LABEL_16;
  }

  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = v3;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Warning: Cannot validate web service context (%@) without paired device SEIDs", &v24, 0xCu);
    }

    goto LABEL_15;
  }

LABEL_10:
  v18 = 1;
LABEL_16:

  v22 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t NPKIsRunningInNPKCompanionAgent()
{
  if (NPKIsRunningInNPKCompanionAgent_onceToken != -1)
  {
    NPKIsRunningInNPKCompanionAgent_cold_1();
  }

  return NPKIsRunningInNPKCompanionAgent_runningInNPKCompanionAgent;
}

void __NPKIsRunningInNPKCompanionAgent_block_invoke()
{
  v0 = NPKGetMyProcessName();
  NPKIsRunningInNPKCompanionAgent_runningInNPKCompanionAgent = [v0 isEqualToString:@"NPKCompanionAgent"];
}

uint64_t NPKIsRunningInCarousel()
{
  if (NPKIsRunningInCarousel_onceToken != -1)
  {
    NPKIsRunningInCarousel_cold_1();
  }

  return NPKIsRunningInCarousel_isRunningInCarousel;
}

void __NPKIsRunningInCarousel_block_invoke()
{
  v0 = NPKGetMyProcessName();
  NPKIsRunningInCarousel_isRunningInCarousel = [v0 isEqualToString:@"Carousel"];
}

void NPKFlushCFBundleCacheAtURL(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v1;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: flush bundle at URL:%@", &v8, 0xCu);
    }
  }

  v5 = CFBundleCreate(*MEMORY[0x277CBECE8], v1);
  if (v5)
  {
    v6 = v5;
    _CFBundleFlushBundleCaches();
    CFRelease(v6);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t NPKInitiateTermsAndConditionsAcceptanceFlow()
{
  v0 = pk_General_log();
  v1 = os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);

  if (v1)
  {
    v2 = pk_General_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_25B300000, v2, OS_LOG_TYPE_DEFAULT, "Notice: posting NPKPeerPaymentTermsAndConditionsAcceptanceNeededDarwinNotification from NPKInitiateTermsAndConditionsAcceptanceFlow()", v4, 2u);
    }
  }

  return notify_post([@"NPKPeerPaymentTermsAndConditionsAcceptanceNeededDarwinNotification" UTF8String]);
}

id NPKUniqueIDsForPasses(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 uniqueID];

        if (v9)
        {
          v10 = [v8 uniqueID];
          [v2 addObject:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

uint64_t isHardwarePlatformEqualToString(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (isHardwarePlatformEqualToString_onceToken != -1)
  {
    isHardwarePlatformEqualToString_cold_1();
  }

  v2 = pk_General_log();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

  if (v3)
  {
    v4 = pk_General_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = isHardwarePlatformEqualToString_hardwarePlatform;
      _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: running platform %@", &v8, 0xCu);
    }
  }

  v5 = [isHardwarePlatformEqualToString_hardwarePlatform isEqualToString:v1];

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t NPKDoesPassRequireTransientAuthorization(void *a1)
{
  v1 = a1;
  if ([v1 passType] == 1)
  {
    v2 = [v1 secureElementPass];
    v3 = [v2 isIdentityPass] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t NPKIsGymKitEnabled()
{
  v18 = *MEMORY[0x277D85DE8];
  v0 = NPKDomainAccessorForDomain(@"com.apple.nanolifestyle.connectedgym");
  v1 = [v0 synchronize];
  v2 = [v0 objectForKey:@"ConnectedGymNFCAlwaysOn"];
  if (v2)
  {
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v2;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: NPKGymKitDetection: User did enabled:%@ GymKit detection", &v14, 0xCu);
      }
    }

    v6 = [v2 BOOLValue];
  }

  else
  {
    v7 = [v0 objectForKey:@"UserConsentGranted"];
    v8 = [v0 objectForKey:@"ConnectedGymDefaultNFCAlwaysOn"];
    v9 = pk_General_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

    if (v10)
    {
      v11 = pk_General_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412546;
        v15 = v7;
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: NPKGymKitDetection: user Accepted:%@ Gym default value:%@", &v14, 0x16u);
      }
    }

    if ([v7 BOOLValue])
    {
      v6 = [v8 BOOLValue];
    }

    else
    {
      v6 = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

void NPKUpdateDefaultsForRestrictedModeAndFailForward(char a1, char a2)
{
  v4 = dispatch_get_global_queue(9, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __NPKUpdateDefaultsForRestrictedModeAndFailForward_block_invoke;
  block[3] = &__block_descriptor_34_e5_v8__0l;
  v6 = a1;
  v7 = a2;
  dispatch_async(v4, block);
}

void __NPKUpdateDefaultsForRestrictedModeAndFailForward_block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nanopassbook"];
  v3 = [v2 BOOLForKey:@"InRestrictedMode"];
  v4 = [v2 BOOLForKey:@"InFailForward"];
  v5 = v4;
  if (*(a1 + 32) == v3)
  {
    v7 = *(a1 + 33);
    v6 = (a1 + 33);
    if (v7 == v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = pk_Payment_log();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v10 = pk_Payment_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        *buf = 67109120;
        v22 = v11;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: Setting restricted mode=%d via NanoPreferencesSync", buf, 8u);
      }
    }

    [v2 setBool:*(a1 + 32) forKey:@"InRestrictedMode"];
    v12 = *(a1 + 33);
    v6 = (a1 + 33);
    if (v12 == v5)
    {
      goto LABEL_14;
    }
  }

  v13 = pk_Payment_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v15 = pk_Payment_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *v6;
      *buf = 67109120;
      v22 = v16;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Setting fail forward=%d via NanoPreferencesSync", buf, 8u);
    }
  }

  [v2 setBool:*v6 forKey:@"InFailForward"];
LABEL_14:
  v17 = [v2 synchronize];
  v18 = objc_alloc_init(MEMORY[0x277D2BA60]);
  v19 = [MEMORY[0x277CBEB98] setWithObjects:{@"InRestrictedMode", @"InFailForward", 0}];
  [v18 synchronizeUserDefaultsDomain:@"com.apple.nanopassbook" keys:v19];

LABEL_15:
  v20 = *MEMORY[0x277D85DE8];
}

BOOL NPKDoesSessionStateRepresentAuthorizationTimeoutForPassRequiringAuthorization(void *a1)
{
  v1 = a1;
  v4 = 0;
  if ([v1 completionReason] == 2 || objc_msgSend(v1, "failureType") == 6)
  {
    v2 = [v1 currentPass];
    v3 = NPKDoesPassRequireTransientAuthorization(v2);

    if (v3)
    {
      v4 = 1;
    }
  }

  return v4;
}

id NPKCreatePowerAssertion(void *a1, void *a2, double a3)
{
  v25[5] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"NanoPassbook";
  }

  AssertionID = 0;
  v24[0] = @"AssertType";
  v24[1] = @"AssertLevel";
  v25[0] = @"PreventUserIdleSystemSleep";
  v25[1] = &unk_286CE77B0;
  v25[2] = v7;
  v24[2] = @"AssertName";
  v24[3] = @"TimeoutSeconds";
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"Unknown reason";
  }

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v24[4] = @"HumanReadableReason";
  v25[3] = v9;
  v25[4] = v8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:5];

  if (!IOPMAssertionCreateWithProperties(v10, &AssertionID))
  {
    v11 = pk_General_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v13 = pk_General_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v19 = AssertionID;
        v20 = 2112;
        v21 = v7;
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Created power assertion %lu with name %@ and reason %@", buf, 0x20u);
      }
    }
  }

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:AssertionID];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void NPKReleasePowerAssertionWithIdentifier(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 unsignedIntValue];
  if (v1)
  {
    v2 = v1;
    IOPMAssertionRelease(v1);
    v3 = pk_General_log();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (v4)
    {
      v5 = pk_General_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7[0] = 67109120;
        v7[1] = v2;
        _os_log_impl(&dword_25B300000, v5, OS_LOG_TYPE_DEFAULT, "Notice: Released power assertion %d", v7, 8u);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t NPKIsTransactionPositiveBalanceAdjustment(void *a1)
{
  v1 = a1;
  v2 = [v1 transactionType];
  v3 = [v1 peerPaymentType];
  v4 = [v1 adjustmentType];

  if (v2 == 3 && v3 == 2)
  {
    v5 = 1;
  }

  else
  {
    v6 = 0x3A9Au >> v4;
    if (v4 >= 0xE)
    {
      LOBYTE(v6) = 0;
    }

    if (v2 != 7)
    {
      LOBYTE(v6) = 0;
    }

    if (v2 == 6)
    {
      LOBYTE(v6) = 1;
    }

    if ((v2 - 8) >= 3)
    {
      v5 = v6;
    }

    else
    {
      v5 = 1;
    }
  }

  return v5 & 1;
}

BOOL NPKIsTransactionAllowedInUI(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 paymentPass];
  v5 = [v4 supportsBarcodePayment];

  if (v5)
  {
    v6 = [v3 transactionStatus] == 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

void NPKTransactionSourceCollectionWithCompletion(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc(MEMORY[0x277D382E8]);
  v6 = [v3 paymentPass];
  v7 = [v5 initWithPaymentPass:v6];

  v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v8 addObject:v7];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__26;
  v22 = __Block_byref_object_dispose__26;
  v23 = [objc_alloc(MEMORY[0x277D382F0]) initWithTransactionSource:v7];
  v9 = [v3 secureElementPass];
  v10 = [v9 isAppleCardPass];

  if (v10)
  {
    v11 = [v3 secureElementPass];
    v12 = [v11 associatedAccountServiceAccountIdentifier];

    v13 = [MEMORY[0x277D37CD0] sharedInstance];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __NPKTransactionSourceCollectionWithCompletion_block_invoke;
    v14[3] = &unk_27994B778;
    v15 = v8;
    v17 = &v18;
    v16 = v4;
    [v13 accountUsersForAccountWithIdentifier:v12 completion:v14];
  }

  else
  {
    (*(v4 + 2))(v4, v19[5]);
  }

  _Block_object_dispose(&v18, 8);
}

void sub_25B54D734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __NPKTransactionSourceCollectionWithCompletion_block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [objc_alloc(MEMORY[0x277D382E8]) initWithAccountUser:*(*(&v16 + 1) + 8 * v7)];
        [*(a1 + 32) addObject:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v9 = objc_alloc(MEMORY[0x277D382F0]);
  v10 = [*(a1 + 32) copy];
  v11 = [v9 initWithTransactionSources:v10];
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = *(*(*(a1 + 48) + 8) + 40);
  (*(*(a1 + 40) + 16))();

  v15 = *MEMORY[0x277D85DE8];
}

void NPKAccountUserCollectionWithCompletion(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__26;
  v14[4] = __Block_byref_object_dispose__26;
  v15 = 0;
  v8 = [v5 paymentPass];
  v9 = [v8 associatedAccountServiceAccountIdentifier];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __NPKAccountUserCollectionWithCompletion_block_invoke;
  v11[3] = &unk_27994B7A0;
  v13 = v14;
  v10 = v7;
  v12 = v10;
  [v6 accountUsersForAccountWithIdentifier:v9 completion:v11];

  _Block_object_dispose(v14, 8);
}

void sub_25B54DA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __NPKAccountUserCollectionWithCompletion_block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D37CD8];
  v4 = a2;
  v5 = [[v3 alloc] initWithAccountUsers:v4];

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(*(a1 + 40) + 8) + 40);
  v9 = *(*(a1 + 32) + 16);

  return v9();
}

uint64_t NPKPassTypeForPass(void *a1)
{
  v1 = a1;
  v2 = [v1 secureElementPass];
  if ([v2 isAccessPass])
  {
    v3 = qword_25B59AB58[NPKAccessPassTypeForPass(v1)];
  }

  else if ([v2 isIdentityPass])
  {
    v4 = [v2 identityType];
    if ((v4 - 1) >= 5)
    {
      v3 = 0;
    }

    else
    {
      v3 = qword_25B59AB70[v4 - 1];
    }
  }

  else
  {
    v5 = [v1 paymentPass];
    v6 = [v5 supportsBarcodePayment];

    v3 = v6;
  }

  return v3;
}

uint64_t NPKAccessPassTypeForPass(void *a1)
{
  v1 = [a1 secureElementPass];
  if ([v1 isAccessPass] && (v2 = objc_msgSend(v1, "accessType"), (v2 - 1) <= 5))
  {
    v3 = qword_25B59AB98[v2 - 1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t NPKReferredToAsAccount(void *a1)
{
  v1 = [a1 paymentPass];
  v2 = [v1 supportsBarcodePayment];

  return v2;
}

id NPKCardNumberForPass(void *a1, int a2)
{
  v3 = [a1 paymentPass];
  v4 = v3;
  if (!v3)
  {
    v12 = 0;
    goto LABEL_22;
  }

  v5 = [v3 devicePrimaryPaymentApplication];
  if ([v4 isSuicaPass])
  {
    v6 = [v5 sanitizedDPAN];
    if (v6)
    {
      v7 = v6;
      v8 = [v4 isOctopusPass];

      if ((v8 & 1) == 0)
      {
LABEL_5:
        v9 = [v4 isEMoneyPass];
        v10 = [v5 sanitizedDPAN];
        v11 = v10;
        if (v9)
        {
          goto LABEL_20;
        }

        if (v10)
        {
          v14 = [v5 appletDataFormat];
          v15 = *MEMORY[0x277D389E8];
          if (PKEqualObjects())
          {
LABEL_17:

            goto LABEL_18;
          }

          v16 = [v5 appletDataFormat];
          v17 = *MEMORY[0x277D389F8];
          if (PKEqualObjects())
          {
LABEL_16:

            goto LABEL_17;
          }

          v18 = [v5 appletDataFormat];
          v19 = *MEMORY[0x277D389F0];
          if (PKEqualObjects())
          {

            goto LABEL_16;
          }

          v21 = [v4 isSuicaPass];

          if (v21)
          {
LABEL_18:
            if (!a2)
            {
              v11 = [v5 sanitizedDPAN];
LABEL_20:
              v12 = PKFormattedSanitizedPAN();

              goto LABEL_21;
            }

            goto LABEL_31;
          }
        }

        v22 = [v4 primaryAccountNumberSuffix];
        if (v22 || ([v4 sanitizedPrimaryAccountNumber], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
        {
        }

        else
        {
          v12 = [v4 sanitizedPrimaryAccountName];

          if (!v12)
          {
            goto LABEL_21;
          }
        }

LABEL_31:
        v13 = PKSanitizedPrimaryAccountRepresentationForPass();
        goto LABEL_10;
      }
    }
  }

  else if (![v4 isOctopusPass])
  {
    goto LABEL_5;
  }

  v13 = PKSanitizedDeviceAccountNumberForPaymentApplication();
LABEL_10:
  v12 = v13;
LABEL_21:

LABEL_22:
  if (![v12 length])
  {

    v12 = 0;
  }

  return v12;
}

id NPKCardholderNameForPass(void *a1)
{
  v1 = [a1 fieldForKey:*MEMORY[0x277D388B8]];
  v2 = [v1 value];
  if (![v2 length])
  {
    v5 = 0;
    goto LABEL_7;
  }

  if (v2)
  {
    if (PKHandsOnDemoModeEnabled())
    {
      v3 = PKFakeCardholderName();
      v4 = [v3 length];

      if (v4)
      {
        v5 = PKFakeCardholderName();
LABEL_7:

        v2 = v5;
      }
    }
  }

  return v2;
}

void NPKReverseGeocodedPlacemarkTextFromLocationCoordinatesWithCompletion(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:a2 longitude:a3];
  v7 = objc_alloc_init(MEMORY[0x277CBFBE8]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __NPKReverseGeocodedPlacemarkTextFromLocationCoordinatesWithCompletion_block_invoke;
  v10[3] = &unk_27994B7C8;
  v11 = v6;
  v12 = v5;
  v8 = v6;
  v9 = v5;
  [v7 reverseGeocodeLocation:v8 completionHandler:v10];
}

void __NPKReverseGeocodedPlacemarkTextFromLocationCoordinatesWithCompletion_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (![v5 count])
    {
      goto LABEL_20;
    }

    v9 = [v5 firstObject];
    v11 = [v9 locality];
    v12 = [v9 administrativeArea];
    v13 = v12;
    if (v11 && v12)
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"RELEVANT_REVERSE_GEOCODED_PLACEMARK_TEXT" value:&stru_286C934F8 table:@"NanoPassKit"];
      v17 = [v14 stringWithFormat:v16, v11, v13];
    }

    else
    {
      if (v11)
      {
        v17 = v11;
LABEL_16:
        v20 = *(a1 + 40);
        if (v20)
        {
          (*(v20 + 16))(v20, v17);
        }

        goto LABEL_19;
      }

      v18 = [v9 subLocality];
      v15 = v18;
      if (v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v13;
      }

      v17 = v19;
    }

    goto LABEL_16;
  }

  v7 = pk_General_log();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

  if (v8)
  {
    v9 = pk_General_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138412802;
      v23 = v10;
      v24 = 2112;
      v25 = v5;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_ERROR, "Error: Error while reverse geocoding location %@ with placemarks: %@: %@", buf, 0x20u);
    }

LABEL_19:
  }

LABEL_20:

  v21 = *MEMORY[0x277D85DE8];
}

id NPKLocalizedString(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:&stru_286C934F8 table:@"NanoPassKit"];

  return v4;
}

id NPKLocalizedStringWithTableSuffix(NSString *a1, NSString *a2, NSString *a3, ...)
{
  va_start(va, a3);
  v28 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v7 = MEMORY[0x277CCA8D8];
  v8 = a2;
  v9 = [v7 bundleWithIdentifier:@"com.apple.NanoPassKit"];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"NanoPassKit", v8];

  v11 = [v9 localizedStringForKey:v5 value:&stru_286C934F8 table:v10];
  va_copy(v23, va);
  if (!v6)
  {
    v15 = 0;
LABEL_5:
    if (v11)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v12 = objc_alloc(MEMORY[0x277CCACA8]);
  v13 = [MEMORY[0x277CBEAF8] currentLocale];
  v22 = 0;
  v14 = [v12 initWithValidatedFormat:v11 validFormatSpecifiers:v6 locale:v13 arguments:v23 error:&v22];
  v15 = v22;

  v11 = v14;
  if (!v15)
  {
    goto LABEL_5;
  }

LABEL_6:
  v16 = pk_General_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

  if (v17)
  {
    v18 = pk_General_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v25 = v5;
      v26 = 2114;
      v27 = v15;
      _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_ERROR, "Error: Could not load string with key: %{public}@ error: %{public}@", buf, 0x16u);
    }
  }

  v19 = v5;

  v11 = v19;
LABEL_11:

  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

BOOL NPKNeedsLiveActivity(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 style] == 9)
  {
    v5 = 1;
  }

  else if (NPKNewFlightTicketDesignTreatment(v3))
  {
    v6 = [v4 flight];
    v5 = v6 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t NPKReadUserDefault(void *a1)
{
  v1 = a1;
  v2 = *MEMORY[0x277D38650];
  has_internal_ui = os_variant_has_internal_ui();
  v4 = 0;
  if (v1 && has_internal_ui)
  {
    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v4 = [v5 BOOLForKey:v1];
  }

  return v4;
}

Class __getBPSBridgeAppContextClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!BridgePreferencesLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __BridgePreferencesLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27994B7E8;
    v7 = 0;
    BridgePreferencesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (BridgePreferencesLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("BPSBridgeAppContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getBPSBridgeAppContextClass_block_invoke_cold_1();
  }

  getBPSBridgeAppContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __BridgePreferencesLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BridgePreferencesLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void _UpdateDemoModeValues()
{
  v13 = *MEMORY[0x277D85DE8];
  __InStoreDemoMode = CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", 0) != 0;
  __InHandsOnDemoMode = PKHandsOnDemoModeEnabled();
  __InUIOnlyDemoMode = PKUIOnlyDemoModeEnabled();
  v0 = pk_General_log();
  v1 = os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);

  if (v1)
  {
    v2 = pk_General_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = "disabled";
      if (__InStoreDemoMode)
      {
        v4 = "ENABLED";
      }

      else
      {
        v4 = "disabled";
      }

      if (__InHandsOnDemoMode)
      {
        v5 = "ENABLED";
      }

      else
      {
        v5 = "disabled";
      }

      v7 = 136315650;
      if (__InUIOnlyDemoMode)
      {
        v3 = "ENABLED";
      }

      v8 = v4;
      v9 = 2080;
      v10 = v5;
      v11 = 2080;
      v12 = v3;
      _os_log_impl(&dword_25B300000, v2, OS_LOG_TYPE_DEFAULT, "Notice: Demo mode values updated:\n\tStore demo mode is %s\n\tHands-on demo mode is %s\n\tUI-only demo mode is %s", &v7, 0x20u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

id _passdExpressPassesInformationFromDomain(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:v1];
  v3 = [v2 dataForKey:@"PDExpressPasses"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
    v4 = v3;
    v3 = 0;
LABEL_6:

    goto LABEL_7;
  }

  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v3 error:0];
    if (v4)
    {
      v5 = objc_alloc(MEMORY[0x277CBEB98]);
      v6 = objc_opt_class();
      v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
      v8 = [v4 decodeObjectOfClasses:v7 forKey:*MEMORY[0x277CCA308]];
      [v4 finishDecoding];
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_6;
  }

  v8 = 0;
LABEL_7:
  v9 = pk_General_log();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (v10)
  {
    v11 = pk_General_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v15 = v8;
      v16 = 2112;
      v17 = @"PDExpressPasses";
      v18 = 2112;
      v19 = v1;
      _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Read express pass information %@\n from key %@ domain %@", buf, 0x20u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

void ___nanopassdExpressPassesInformation_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = v10;
  if (isKindOfClass)
  {
    v6 = [v10 objectForKeyedSubscript:@"passIdentifier"];
    v7 = [v10 objectForKeyedSubscript:@"appletIdentifier"];
    v8 = [v10 objectForKeyedSubscript:@"expressPassMode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [objc_alloc(MEMORY[0x277D37E90]) initForExpressMode:v8 withPassUniqueIdentifier:v6 paymentApplicationIdentifier:v7];
          if (v9)
          {
            [*(a1 + 32) addObject:v9];
          }
        }
      }
    }

    v5 = v10;
  }
}

void __NPKPairedWatchHasApplicationWithBundleID_block_invoke(uint64_t a1, char a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = pk_General_log();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = NSStringFromBOOL();
      v12 = 138412802;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: App %@ is on gizmo: %@. Error?: %@", &v12, 0x20u);
    }
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_group_leave(*(a1 + 40));

  v11 = *MEMORY[0x277D85DE8];
}

void __isHardwarePlatformEqualToString_block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = isHardwarePlatformEqualToString_hardwarePlatform;
  isHardwarePlatformEqualToString_hardwarePlatform = v0;
}

__CFString *NSStringFromNPKExpressTransactionStatus(unint64_t a1)
{
  if (a1 >= 6)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected Express Transaction Status: %lu", a1];
  }

  else
  {
    v2 = off_27994B890[a1];
  }

  return v2;
}

uint64_t sub_25B54F0EC()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_25B54F11C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

NanoPassKit::LocalizedStringProvider __swiftcall LocalizedStringProvider.init(bundleIdentifier:table:)(Swift::String bundleIdentifier, Swift::String table)
{
  *v2 = bundleIdentifier;
  v2[1] = table;
  result.table = table;
  result.bundleIdentifier = bundleIdentifier;
  return result;
}

Swift::String __swiftcall LocalizedStringProvider.localizedString(for:)(Swift::String a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = sub_25B55ACDC();
  v7 = [objc_opt_self() bundleWithIdentifier_];

  if (v7)
  {
    v10 = sub_25B55ACDC();
    v11 = sub_25B55ACDC();
    v12 = sub_25B55ACDC();
    v13 = [v7 localizedStringForKey:v10 value:v11 table:v12];

    v14 = sub_25B55AD0C();
    v16 = v15;

    v8 = v14;
    v9 = v16;
  }

  else
  {
    __break(1u);
  }

  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

Swift::String __swiftcall LocalizedStringProvider.localizedString(for:localization:)(Swift::String a1, Swift::String localization)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = sub_25B55ACDC();
  v8 = [objc_opt_self() bundleWithIdentifier_];

  if (v8)
  {
    v11 = sub_25B55ACDC();
    v12 = sub_25B55ACDC();
    v13 = sub_25B55ACDC();
    v14 = sub_25B55ACDC();
    v15 = [v8 localizedStringForKey:v11 value:v12 table:v13 localization:v14];

    v16 = sub_25B55AD0C();
    v18 = v17;

    v9 = v16;
    v10 = v18;
  }

  else
  {
    __break(1u);
  }

  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t LocalizedStringProvider.localizedString(formatKey:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v8 = v3[2];
  v7 = v3[3];

  sub_25B54F420(a3);
  v10 = v9;

  return v10;
}

void sub_25B54F420(uint64_t a1)
{
  sub_25B55AFAC();
  v2 = swift_allocObject();
  v2[2] = 8;
  v2[3] = 0;
  v3 = v2 + 3;
  v2[4] = 0;
  v2[5] = 0;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = a1 + 32;
    while (1)
    {
      v7 = (v6 + 40 * v5);
      v8 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v7[3]);
      v9 = sub_25B55B08C();
      v10 = *v3;
      v11 = *(v9 + 16);
      v12 = __OFADD__(*v3, v11);
      v13 = *v3 + v11;
      if (v12)
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      v14 = v2[4];
      if (v14 >= v13)
      {
        goto LABEL_18;
      }

      if (v14 + 0x4000000000000000 < 0)
      {
        goto LABEL_30;
      }

      v15 = v2[5];
      if (2 * v14 > v13)
      {
        v13 = 2 * v14;
      }

      v2[4] = v13;
      if ((v13 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_31;
      }

      v16 = v9;
      v17 = swift_slowAlloc();
      v18 = v17;
      v2[5] = v17;
      if (v15)
      {
        break;
      }

      v9 = v16;
      if (!v18)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_19:
      v20 = *(v9 + 16);
      if (v20)
      {
        v21 = (v9 + 32);
        v22 = *v3;
        while (1)
        {
          v23 = *v21++;
          *&v18[8 * v22] = v23;
          v22 = *v3 + 1;
          if (__OFADD__(*v3, 1))
          {
            break;
          }

          *v3 = v22;
          if (!--v20)
          {
            goto LABEL_3;
          }
        }

        __break(1u);
        goto LABEL_29;
      }

LABEL_3:

      if (++v5 == v4)
      {
        goto LABEL_26;
      }
    }

    if (v17 != v15 || v17 >= &v15[8 * v10])
    {
      memmove(v17, v15, 8 * v10);
    }

    sub_25B55AF8C();
    v9 = v16;
LABEL_18:
    v18 = v2[5];
    if (!v18)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

LABEL_26:
  v24 = sub_25B55AF9C();
  v25 = sub_25B55ACDC();
  v26 = [objc_opt_self() bundleWithIdentifier_];

  if (!v26)
  {
    goto LABEL_32;
  }

  v27 = sub_25B55ACDC();
  v28 = sub_25B55ACDC();
  v29 = sub_25B55ACDC();
  v30 = [v26 localizedStringForKey:v27 value:v28 table:v29];

  sub_25B55AD0C();
  v31 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v32 = sub_25B55ACDC();

  v33 = [v31 initWithFormat:v32 arguments:v24];

  sub_25B55AD0C();
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25B54F718(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25B54F760(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25B54F7F4()
{
  v0 = sub_25B55AC6C();
  __swift_allocate_value_buffer(v0, qword_27FA45178);
  v1 = __swift_project_value_buffer(v0, qword_27FA45178);
  v2 = sub_25B554E18();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t Queue.init()()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D00, &qword_25B59AC30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v32 = &v29 - v2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D08, &qword_25B59AC38);
  v3 = *(v34 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v6 = &v29 - v5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D10, &qword_25B59AC40);
  v7 = *(v31 - 8);
  v8 = *(v7 + 64);
  v9 = (MEMORY[0x28223BE20])();
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D18, &qword_25B59AC48);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  v33 = v0;
  swift_defaultActor_initialize();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D20, &qword_25B59AC50);
  v20 = *(v19 - 8);
  (*(v20 + 56))(v18, 1, 1, v19);
  v35 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D28, &qword_25B59AC58);
  (*(v3 + 104))(v6, *MEMORY[0x277D85778], v34);
  sub_25B55AE1C();
  sub_25B552D1C(v18, v16, &qword_27FA44D18, &qword_25B59AC48);
  result = (*(v20 + 48))(v16, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v22 = v33;
    (*(v20 + 32))(v33 + OBJC_IVAR____TtC11NanoPassKit5Queue__streamContinuation, v16, v19);
    v23 = sub_25B55ADBC();
    v24 = v32;
    (*(*(v23 - 8) + 56))(v32, 1, 1, v23);
    v26 = v30;
    v25 = v31;
    (*(v7 + 16))(v30, v11, v31);
    v27 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0;
    (*(v7 + 32))(v28 + v27, v26, v25);
    sub_25B5504BC(0, 0, v24, &unk_25B59AC68, v28);

    (*(v7 + 8))(v11, v25);
    sub_25B552D84(v18, &qword_27FA44D18, &qword_25B59AC48);
    return v22;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25B54FD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D50, &qword_25B59AD68);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B54FE38, 0, 0);
}

uint64_t sub_25B54FE38()
{
  v1 = v0[7];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D10, &qword_25B59AC40);
  sub_25B55ADFC();
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_25B54FF04;
  v5 = v0[7];
  v6 = v0[5];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v6);
}

uint64_t sub_25B54FF04()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25B550000, 0, 0);
}

uint64_t sub_25B550000()
{
  v1 = v0[2];
  v0[9] = v1;
  if (v1)
  {
    v0[10] = v0[3];
    v6 = (v1 + *v1);
    v2 = v1[1];
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_25B550150;

    return v6();
  }

  else
  {
    (*(v0[6] + 8))(v0[7], v0[5]);

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_25B550150()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *v0;

  sub_25B552D0C(v4);
  v6 = *(MEMORY[0x277D85798] + 4);
  v7 = swift_task_alloc();
  v1[8] = v7;
  *v7 = v5;
  v7[1] = sub_25B54FF04;
  v8 = v1[7];
  v9 = v1[5];

  return MEMORY[0x2822003E8](v1 + 2, 0, 0, v9);
}

uint64_t sub_25B5502F4()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D10, &qword_25B59AC40) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25B5503C8;

  return sub_25B54FD6C(v4, v5, v6, v0 + v3);
}

uint64_t sub_25B5503C8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25B5504BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D00, &qword_25B59AC30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v26 - v10;
  sub_25B552D1C(a3, v26 - v10, &qword_27FA44D00, &qword_25B59AC30);
  v12 = sub_25B55ADBC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25B552D84(v11, &qword_27FA44D00, &qword_25B59AC30);
  }

  else
  {
    sub_25B55ADAC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_25B55AD7C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_25B55AD1C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_25B552D84(a3, &qword_27FA44D00, &qword_25B59AC30);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25B552D84(a3, &qword_27FA44D00, &qword_25B59AC30);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_25B5507FC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25B5503C8;

  return v6();
}

uint64_t sub_25B5508E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25B552F58;

  return sub_25B5507FC(a1, v5);
}

uint64_t sub_25B5509CC(void (*a1)(void))
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  a1();
  return v5;
}

uint64_t MainQueue.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D00, &qword_25B59AC30);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v38 = v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D08, &qword_25B59AC38);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v35 - v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D10, &qword_25B59AC40);
  v9 = *(v37 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v37);
  v35[1] = v12;
  v36 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D18, &qword_25B59AC48);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v35 - v20;
  v39 = v0;
  swift_defaultActor_initialize();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D20, &qword_25B59AC50);
  v23 = *(v22 - 8);
  (*(v23 + 56))(v21, 1, 1, v22);
  v40 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D28, &qword_25B59AC58);
  (*(v5 + 104))(v8, *MEMORY[0x277D85778], v4);
  v24 = v14;
  sub_25B55AE1C();
  sub_25B552D1C(v21, v19, &qword_27FA44D18, &qword_25B59AC48);
  result = (*(v23 + 48))(v19, 1, v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v26 = v39;
    (*(v23 + 32))(v39 + OBJC_IVAR____TtC11NanoPassKit9MainQueue__streamContinuation, v19, v22);
    v27 = sub_25B55ADBC();
    v28 = v38;
    (*(*(v27 - 8) + 56))(v38, 1, 1, v27);
    v29 = v36;
    v30 = v37;
    (*(v9 + 16))(v36, v24, v37);
    sub_25B55AD9C();
    v31 = sub_25B55AD8C();
    v32 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v33 = swift_allocObject();
    v34 = MEMORY[0x277D85700];
    *(v33 + 16) = v31;
    *(v33 + 24) = v34;
    (*(v9 + 32))(v33 + v32, v29, v30);
    sub_25B5504BC(0, 0, v28, &unk_25B59AC90, v33);

    (*(v9 + 8))(v24, v30);
    sub_25B552D84(v21, &qword_27FA44D18, &qword_25B59AC48);
    return v26;
  }

  return result;
}

uint64_t sub_25B550EB8(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_25B552D84(v3, &qword_27FA44D18, &qword_25B59AC48);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D20, &qword_25B59AC50);
  v7 = *(v4 - 8);
  (*(v7 + 16))(v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v3, 0, 1, v4);
}

uint64_t sub_25B550F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D50, &qword_25B59AD68);
  v4[5] = v5;
  v6 = *(v5 - 8);
  v4[6] = v6;
  v7 = *(v6 + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = sub_25B55AD9C();
  v4[9] = sub_25B55AD8C();
  v9 = sub_25B55AD7C();
  v4[10] = v9;
  v4[11] = v8;

  return MEMORY[0x2822009F8](sub_25B551098, v9, v8);
}

uint64_t sub_25B551098()
{
  v1 = v0[7];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D10, &qword_25B59AC40);
  sub_25B55ADFC();
  v3 = v0[8];
  v4 = sub_25B55AD8C();
  v0[12] = v4;
  v5 = *(MEMORY[0x277D85798] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_25B551178;
  v7 = v0[7];
  v8 = v0[5];
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 2, v4, v9, v8);
}

uint64_t sub_25B551178()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v7 = *v0;

  v4 = *(v1 + 88);
  v5 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_25B5512BC, v5, v4);
}

uint64_t sub_25B5512BC()
{
  v1 = v0[2];
  v0[14] = v1;
  if (v1)
  {
    v0[15] = v0[3];
    v7 = (v1 + *v1);
    v2 = v1[1];
    v3 = swift_task_alloc();
    v0[16] = v3;
    *v3 = v0;
    v3[1] = sub_25B551420;

    return v7();
  }

  else
  {
    v5 = v0[9];
    (*(v0[6] + 8))(v0[7], v0[5]);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_25B551420()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);
  v8 = *v0;

  sub_25B552D0C(v4);
  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_25B55157C, v6, v5);
}

uint64_t sub_25B55157C()
{
  v1 = v0[8];
  v2 = sub_25B55AD8C();
  v0[12] = v2;
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_25B551178;
  v5 = v0[7];
  v6 = v0[5];
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 2, v2, v7, v6);
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D10, &qword_25B59AC40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25B551708()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D10, &qword_25B59AC40) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25B552F58;

  return sub_25B550F94(v4, v5, v6, v0 + v3);
}

uint64_t sub_25B5517E8(uint64_t *a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D20, &qword_25B59AC50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *a1;
  (*(v5 + 16))(&v12 - v7, v3 + v9, v4);
  sub_25B55ADDC();
  v10 = *(v5 + 8);
  v10(v8, v4);
  v10((v3 + v9), v4);
  swift_defaultActor_destroy();
  return v3;
}

uint64_t sub_25B551910(uint64_t *a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D20, &qword_25B59AC50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *a1;
  (*(v5 + 16))(&v12 - v7, v3 + v9, v4);
  sub_25B55ADDC();
  v10 = *(v5 + 8);
  v10(v8, v4);
  v10((v3 + v9), v4);
  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_25B551A58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D30, &qword_25B59AC70);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v17 - v12;
  v14 = *a3;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v17[0] = a5;
  v17[1] = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D20, &qword_25B59AC50);
  sub_25B55ADCC();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_25B551B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = *(*v4 + 104);

  v10(&unk_25B59ACA8, v9);
}

uint64_t sub_25B551C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_25B55AF6C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25B551D0C, 0, 0);
}

uint64_t sub_25B551D0C()
{
  v1 = v0[8];
  sub_25B55B03C();
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_25B551DCC;
  v3 = v0[8];
  v5 = v0[2];
  v4 = v0[3];

  return sub_25B552770(v5, v4, 0, 0, 1);
}

uint64_t sub_25B551DCC()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  v2[10] = v0;

  v5 = v2[8];
  v6 = v2[7];
  v7 = v2[6];
  if (v0)
  {
    (*(v6 + 8))(v5, v7);

    return MEMORY[0x2822009F8](sub_25B552114, 0, 0);
  }

  else
  {
    v8 = v2[4];
    (*(v6 + 8))(v5, v7);
    v13 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v2[11] = v10;
    *v10 = v4;
    v10[1] = sub_25B552004;
    v11 = v2[5];

    return v13();
  }
}

uint64_t sub_25B552004()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 64);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_25B552114()
{
  if (qword_27FA45170 != -1)
  {
    swift_once();
  }

  v1 = sub_25B55AC6C();
  __swift_project_value_buffer(v1, qword_27FA45178);
  v2 = sub_25B55AC4C();
  v3 = sub_25B55AE7C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[10];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_25B300000, v2, v3, "Unable to perform work item after delay!", v6, 2u);
    MEMORY[0x25F867E80](v6, -1, -1);
  }

  v7 = v0[8];

  v8 = v0[1];

  return v8();
}

uint64_t sub_25B55223C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25B552F58;

  return sub_25B551C48(v2, v3, v5, v4);
}

void sub_25B552364()
{
  if (!qword_27FA44D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA44D28, &qword_25B59AC58);
    v0 = sub_25B55ADEC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA44D38);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25B552438(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25B552470()
{
  sub_25B552364();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_25B552580(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25B552678;

  return v7(a1);
}

uint64_t sub_25B552678()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25B552770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_25B55AF5C();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_25B552870, 0, 0);
}

uint64_t sub_25B552870()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_25B55AF6C();
  v7 = sub_25B552CC4(&qword_27FA44D40, MEMORY[0x277D85928]);
  sub_25B55B01C();
  sub_25B552CC4(&qword_27FA44D48, MEMORY[0x277D858F8]);
  sub_25B55AF7C();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_25B552A00;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_25B552A00()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25B552BBC, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_25B552BBC()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_25B552CC4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25B552D0C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25B552D1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25B552D84(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25B552DE4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25B552F58;

  return sub_25B552580(a1, v5);
}

uint64_t sub_25B552E9C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25B5503C8;

  return sub_25B552580(a1, v5);
}

id SemaphoreQueue.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SemaphoreQueue.init()()
{
  *&v0[OBJC_IVAR___NPKSemaphoreQueue_semaphore] = dispatch_semaphore_create(1);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SemaphoreQueue();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_25B55305C(void (*a1)(uint64_t))
{
  v3 = *(v1 + OBJC_IVAR___NPKSemaphoreQueue_semaphore);
  v4 = sub_25B55AEDC();
  a1(v4);
  return sub_25B55AEEC();
}

id SemaphoreQueue.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SemaphoreQueue();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static Capabilities.isInternalBuild()()
{
  v0 = sub_25B55ACDC();
  v1 = MGGetBoolAnswer();

  return v1;
}

uint64_t getEnumTagSinglePayload for Capabilities(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Capabilities(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t NanoPassBookPreferencesDomain.suiteName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NanoPassBookPreferencesDomain.suiteName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

unint64_t NanoPassBookPreferencesDomain.Key.description.getter()
{
  if (*v0)
  {
    result = 0xD00000000000001ELL;
  }

  else
  {
    result = 0xD000000000000023;
  }

  *v0;
  return result;
}

NanoPassKit::NanoPassBookPreferencesDomain::Key_optional __swiftcall NanoPassBookPreferencesDomain.Key.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25B55AFDC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25B553450(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD00000000000001ELL;
  }

  else
  {
    v4 = 0xD000000000000023;
  }

  if (v3)
  {
    v5 = "8@?16";
  }

  else
  {
    v5 = "tDestinationAddress";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD00000000000001ELL;
  }

  else
  {
    v7 = 0xD000000000000023;
  }

  if (*a2)
  {
    v8 = "tDestinationAddress";
  }

  else
  {
    v8 = "8@?16";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_25B55B00C();
  }

  return v10 & 1;
}

uint64_t sub_25B5534FC()
{
  v1 = *v0;
  sub_25B55B05C();
  sub_25B55AD2C();

  return sub_25B55B07C();
}

uint64_t sub_25B55357C()
{
  *v0;
  sub_25B55AD2C();
}

uint64_t sub_25B5535E8()
{
  v1 = *v0;
  sub_25B55B05C();
  sub_25B55AD2C();

  return sub_25B55B07C();
}

uint64_t sub_25B553664@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25B55AFDC();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_25B5536C4(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001ELL;
  }

  else
  {
    v2 = 0xD000000000000023;
  }

  if (*v1)
  {
    v3 = "tDestinationAddress";
  }

  else
  {
    v3 = "8@?16";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_25B553704()
{
  if (*v0)
  {
    result = 0xD00000000000001ELL;
  }

  else
  {
    result = 0xD000000000000023;
  }

  *v0;
  return result;
}

NanoPassKit::NanoPassBookPreferencesDomain __swiftcall NanoPassBookPreferencesDomain.init()()
{
  *v0 = 0xD000000000000016;
  v0[1] = 0x800000025B59A4C0;
  return result;
}

unint64_t sub_25B553764()
{
  result = qword_27FA44D60;
  if (!qword_27FA44D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA44D60);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25B5537C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25B55380C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NanoPassBookPreferencesDomain.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NanoPassBookPreferencesDomain.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25B553A74()
{
  v0 = sub_25B55AC6C();
  __swift_allocate_value_buffer(v0, qword_27FA454C8);
  v1 = __swift_project_value_buffer(v0, qword_27FA454C8);
  v2 = sub_25B554E18();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t Serializer.Format.hashValue.getter()
{
  sub_25B55B05C();
  MEMORY[0x25F866540](0);
  return sub_25B55B07C();
}

uint64_t sub_25B553B7C()
{
  sub_25B55B05C();
  MEMORY[0x25F866540](0);
  return sub_25B55B07C();
}

uint64_t sub_25B553BE8()
{
  sub_25B55B05C();
  MEMORY[0x25F866540](0);
  return sub_25B55B07C();
}

uint64_t static Serializer.data(from:format:)(void *a1)
{
  v1 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = sub_25B55AC0C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_25B55ABFC();
  v5 = sub_25B55ABEC();

  return v5;
}

uint64_t static Serializer.value<A>(from:format:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = sub_25B55ABDC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_25B55ABCC();
  sub_25B55ABBC();

  v7 = *(*(a1 - 8) + 56);

  return v7(a2, 0, 1, a1);
}

uint64_t sub_25B55408C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D68, &qword_25B59AF20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25B5540F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25B554148(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25B55419C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25B554334(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25B554440(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_25B5542B8()
{
  result = qword_27FA44D70;
  if (!qword_27FA44D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA44D70);
  }

  return result;
}

unint64_t sub_25B554334(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25B55449C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25B55AF4C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_25B554440(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25B55449C(uint64_t a1, unint64_t a2)
{
  v4 = sub_25B5544E8(a1, a2);
  sub_25B554618(&unk_286C92710);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_25B5544E8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25B554704(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25B55AF4C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25B55AD3C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25B554704(v10, 0);
        result = sub_25B55AF3C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25B554618(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_25B554778(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25B554704(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D78, &qword_25B59AFB8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25B554778(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D78, &qword_25B59AFB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_25B554884(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t Preferences.init(domain:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_25B554884(a1, (a2 + 1));
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 16))(v4, v5);
  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = sub_25B55ACDC();

  v8 = [v6 initWithSuiteName_];

  *a2 = v8;

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void Preferences.storeValue<A>(for:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25B55AEFC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - v11;
  v13 = *v4;
  if (*v4)
  {
    (*(v10 + 16))(v12, a2);
    v14 = *(a4 - 8);
    if ((*(v14 + 48))(v12, 1, a4) == 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = sub_25B55AFFC();
      (*(v14 + 8))(v12, a4);
    }

    v16 = *(a3 + 16);
    v17 = *(a3 + 24);
    sub_25B55AFEC();
    v18 = sub_25B55ACDC();

    [v13 setObject:v15 forKey:v18];
    swift_unknownObjectRelease();
  }
}

uint64_t Preferences.value<A>(for:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *v3;
  if (*v3)
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    sub_25B55AFEC();
    v9 = sub_25B55ACDC();

    v10 = [v6 valueForKey_];

    if (v10)
    {
      sub_25B55AF0C();
      swift_unknownObjectRelease();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D80, &qword_25B59AFC0);
  v11 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v11 ^ 1u, 1, a2);
}

uint64_t sub_25B554C98()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_25B554CF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25B554D3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25B554E60()
{
  v0 = sub_25B55AC6C();
  __swift_allocate_value_buffer(v0, qword_27FA45690);
  __swift_project_value_buffer(v0, qword_27FA45690);
  return sub_25B55AC5C();
}

uint64_t sub_25B554F24()
{
  v0 = sub_25B55AC6C();
  __swift_allocate_value_buffer(v0, qword_27FA456B0);
  __swift_project_value_buffer(v0, qword_27FA456B0);
  return sub_25B55AC5C();
}

uint64_t sub_25B554FEC()
{
  v0 = sub_25B55AC6C();
  __swift_allocate_value_buffer(v0, qword_27FA456D0);
  __swift_project_value_buffer(v0, qword_27FA456D0);
  return sub_25B55AC5C();
}

uint64_t sub_25B55514C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_25B55AC6C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_25B55AC5C();
}

uint64_t sub_25B5551E8(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_25B55AC6C();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_25B555260@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_25B55AC6C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_25B555378()
{
  v0 = sub_25B55AC6C();
  __swift_allocate_value_buffer(v0, qword_27FA45738);
  v1 = __swift_project_value_buffer(v0, qword_27FA45738);
  v2 = sub_25B554E18();
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_25B555404()
{
  v10 = sub_25B55AEAC();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25B55AE9C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_25B55ACAC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9[1] = sub_25B559250();
  sub_25B55AC8C();
  v11 = MEMORY[0x277D84F90];
  sub_25B558DD4(&qword_27FA44DB8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44DC0, &qword_25B59B0E0);
  sub_25B55929C(&qword_27FA44DC8, &qword_27FA44DC0, &qword_25B59B0E0);
  sub_25B55AF1C();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  result = sub_25B55AECC();
  qword_27FA45758 = result;
  return result;
}

uint64_t *sub_25B555654()
{
  if (qword_27FA45750 != -1)
  {
    swift_once();
  }

  return &qword_27FA45758;
}

id static AnalyticsReporter.queue.getter()
{
  if (qword_27FA45750 != -1)
  {
    swift_once();
  }

  v1 = qword_27FA45758;

  return v1;
}

BOOL static AnalyticsReporter.isSessionStarted(for:)(uint64_t a1)
{
  v1 = [objc_opt_self() reporterForSubject_];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t sub_25B555D3C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44DA8, &unk_25B59B0D0);
    v1 = sub_25B55AFBC();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v12 = __clz(__rbit64(v4)) | (v8 << 6);
    v13 = *(*(a1 + 48) + 8 * v12);
    v14 = (*(a1 + 56) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    type metadata accessor for PKAnalyticsKey(0);
    v17 = v13;

    swift_dynamicCast();
    *&v35[0] = v15;
    *(&v35[0] + 1) = v16;
    swift_dynamicCast();
    v31 = v27;
    v32 = v28;
    v33 = v29;
    sub_25B558E1C(&v30, v34);
    v27 = v31;
    v28 = v32;
    v29 = v33;
    sub_25B558E1C(v34, v35);
    v18 = *(v1 + 40);
    result = sub_25B55AF2C();
    v19 = -1 << *(v1 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v6 + 8 * (v20 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *(v6 + 8 * v21);
        if (v25 != -1)
        {
          v9 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v20) & ~*(v6 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v4 &= v4 - 1;
    *(v6 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v1 + 48) + 40 * v9;
    *v10 = v27;
    *(v10 + 16) = v28;
    *(v10 + 32) = v29;
    result = sub_25B558E1C(v35, (*(v1 + 56) + 32 * v9));
    ++*(v1 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v4)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t static AnalyticsReporter.sessionToken(for:)(uint64_t a1)
{
  v1 = [objc_opt_self() archivedSessionTokenForSubject_];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_25B55AC3C();

  return v3;
}

id AnalyticsReporter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AnalyticsReporter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalyticsReporter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AnalyticsReporter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalyticsReporter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_25B5562AC(char a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    v7 = objc_opt_self();
    v8 = [v7 reporterForSubject_];
    if (v8)
    {

      if (qword_27FA45730 != -1)
      {
        swift_once();
      }

      v9 = sub_25B55AC6C();
      __swift_project_value_buffer(v9, qword_27FA45738);
      v10 = a2;
      v11 = sub_25B55AC4C();
      v12 = sub_25B55AE8C();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v35 = a3;
        v36 = swift_slowAlloc();
        v14 = v36;
        *v13 = 136315138;
        v15 = sub_25B55AD0C();
        v17 = v7;
        v18 = sub_25B55419C(v15, v16, &v36);

        *(v13 + 4) = v18;
        v7 = v17;
        _os_log_impl(&dword_25B300000, v11, v12, "Closing existing Analytics subject: %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        v19 = v14;
        a3 = v35;
        MEMORY[0x25F867E80](v19, -1, -1);
        MEMORY[0x25F867E80](v13, -1, -1);
      }

      [v7 endSubjectReporting_];
    }
  }

  if (qword_27FA45730 != -1)
  {
    swift_once();
  }

  v20 = sub_25B55AC6C();
  __swift_project_value_buffer(v20, qword_27FA45738);
  sub_25B559228(a3, a4);
  v21 = a2;
  sub_25B559228(a3, a4);
  v22 = sub_25B55AC4C();
  v23 = sub_25B55AE8C();

  v24 = a4 >> 60;
  if (os_log_type_enabled(v22, v23))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v36 = v26;
    *v25 = 136315394;
    v27 = sub_25B55AD0C();
    v29 = a3;
    v30 = sub_25B55419C(v27, v28, &v36);

    *(v25 + 4) = v30;
    a3 = v29;
    v24 = a4 >> 60;
    *(v25 + 12) = 1024;
    sub_25B55923C(a3, a4);
    *(v25 + 14) = a4 >> 60 != 15;
    sub_25B55923C(a3, a4);
    _os_log_impl(&dword_25B300000, v22, v23, "Requested to begin Analytics subject: %s sessionToken: %{BOOL}d", v25, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x25F867E80](v26, -1, -1);
    MEMORY[0x25F867E80](v25, -1, -1);
  }

  else
  {
    sub_25B55923C(a3, a4);
    sub_25B55923C(a3, a4);
  }

  v31 = objc_opt_self();
  if (v24 < 0xF)
  {
    v33 = v31;
    sub_25B5540F4(a3, a4);
    v34 = sub_25B55AC2C();
    [v33 beginSubjectReporting:v21 withArchivedParent:v34];

    return sub_25B55923C(a3, a4);
  }

  else
  {

    return [v31 beginSubjectReporting_];
  }
}

uint64_t sub_25B5566AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_25B5566F0(uint64_t a1, id *a2)
{
  result = sub_25B55ACEC();
  *a2 = 0;
  return result;
}

uint64_t sub_25B556768(uint64_t a1, id *a2)
{
  v3 = sub_25B55ACFC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25B5567E8@<X0>(uint64_t *a1@<X8>)
{
  sub_25B55AD0C();
  v2 = sub_25B55ACDC();

  *a1 = v2;
  return result;
}

uint64_t sub_25B556834(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x25F866310](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_25B556888(uint64_t a1, uint64_t a2)
{
  v3 = sub_25B55AE4C();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_25B5568E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25B55AE5C();
  *a1 = result;
  return result;
}

uint64_t sub_25B556908()
{
  sub_25B558DD4(&qword_27FA44E40, type metadata accessor for PKAnalyticsSubject);
  sub_25B558DD4(&qword_27FA44E48, type metadata accessor for PKAnalyticsSubject);

  return sub_25B55AFCC();
}

uint64_t sub_25B5569C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25B55ACDC();

  *a2 = v5;
  return result;
}

uint64_t sub_25B556A0C()
{
  sub_25B558DD4(&qword_27FA44D88, type metadata accessor for PKAnalyticsKey);
  sub_25B558DD4(&unk_27FA44E50, type metadata accessor for PKAnalyticsKey);

  return sub_25B55AFCC();
}

void *sub_25B556AC8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_25B556AE4()
{
  v2 = *v0;
  sub_25B558DD4(&qword_27FA44E30, type metadata accessor for PKAnalyticsCategory);
  sub_25B558DD4(&qword_27FA44E38, type metadata accessor for PKAnalyticsCategory);
  return sub_25B55AFCC();
}

uint64_t sub_25B556BA0()
{
  v1 = *v0;
  v2 = sub_25B55AD0C();
  v3 = MEMORY[0x25F866220](v2);

  return v3;
}

uint64_t sub_25B556BDC()
{
  v1 = *v0;
  sub_25B55AD0C();
  sub_25B55AD2C();
}

uint64_t sub_25B556C30()
{
  v1 = *v0;
  sub_25B55AD0C();
  sub_25B55B05C();
  sub_25B55AD2C();
  v2 = sub_25B55B07C();

  return v2;
}

uint64_t sub_25B556CE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_25B55AD0C();
  v6 = v5;
  if (v4 == sub_25B55AD0C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25B55B00C();
  }

  return v9 & 1;
}

uint64_t _s11NanoPassKit17AnalyticsReporterC5begin_12sessionToken20closePreviousSessionySo18PKAnalyticsSubjecta_10Foundation4DataVSbtFZ_0(void *a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = sub_25B55AC7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25B55ACAC();
  v32 = *(v12 - 8);
  v13 = *(v32 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  v17 = a1;
  sub_25B559228(a2, a3);
  v18 = NPKCurrentQueueLabel();
  if (v18)
  {
    v19 = v18;
    v29 = v15;
    v30 = v12;
    v31 = v9;
    v20 = sub_25B55AD0C();
    v22 = v21;

    if (v20 == 0xD000000000000027 && 0x800000025B59A730 == v22)
    {

LABEL_6:
      sub_25B5562AC(a4 & 1, v17, a2, a3);
    }

    v23 = sub_25B55B00C();

    v12 = v30;
    v9 = v31;
    v15 = v29;
    if (v23)
    {
      goto LABEL_6;
    }
  }

  if (qword_27FA45750 != -1)
  {
    swift_once();
  }

  v31 = qword_27FA45758;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_25B559218;
  *(v25 + 24) = v16;
  aBlock[4] = sub_25B559614;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25B5566AC;
  aBlock[3] = &block_descriptor_64;
  v26 = _Block_copy(aBlock);

  sub_25B55AC9C();
  v34 = MEMORY[0x277D84F90];
  sub_25B558DD4(&qword_27FA44D90, MEMORY[0x277D85198]);
  v27 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D98, &qword_25B59B0C8);
  sub_25B55929C(&qword_27FA44DA0, &qword_27FA44D98, &qword_25B59B0C8);
  v28 = v33;
  sub_25B55AF1C();
  MEMORY[0x25F866390](0, v27, v28, v26);
  _Block_release(v26);

  (*(v9 + 8))(v28, v8);
  (*(v32 + 8))(v27, v12);
}

uint64_t _s11NanoPassKit17AnalyticsReporterC3endyySo18PKAnalyticsSubjectaFZ_0(void *a1)
{
  v2 = sub_25B55AC7C();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_25B55ACAC();
  v6 = *(v24 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v24);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = a1;
  v12 = NPKCurrentQueueLabel();
  if (v12)
  {
    v13 = v12;
    v14 = sub_25B55AD0C();
    v16 = v15;

    if (v14 == 0xD000000000000027 && 0x800000025B59A730 == v16)
    {

LABEL_6:
      v18 = objc_opt_self();
      v19 = [v18 reporterForSubject_];
      if (v19)
      {

        [v18 endSubjectReporting_];
      }
    }

    v17 = sub_25B55B00C();

    if (v17)
    {
      goto LABEL_6;
    }
  }

  if (qword_27FA45750 != -1)
  {
    swift_once();
  }

  v23 = qword_27FA45758;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_25B55919C;
  *(v21 + 24) = v10;
  aBlock[4] = sub_25B559614;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25B5566AC;
  aBlock[3] = &block_descriptor_54;
  v22 = _Block_copy(aBlock);

  sub_25B55AC9C();
  v26 = MEMORY[0x277D84F90];
  sub_25B558DD4(&qword_27FA44D90, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D98, &qword_25B59B0C8);
  sub_25B55929C(&qword_27FA44DA0, &qword_27FA44D98, &qword_25B59B0C8);
  sub_25B55AF1C();
  MEMORY[0x25F866390](0, v9, v5, v22);
  _Block_release(v22);

  (*(v25 + 8))(v5, v2);
  (*(v6 + 8))(v9, v24);
}

void _s11NanoPassKit17AnalyticsReporterC4send_5eventySo18PKAnalyticsSubjecta_SDySo0H3KeyaSSGtFZ_0(void *a1, uint64_t a2)
{
  v4 = sub_25B55AC7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25B55ACAC();
  v26 = *(v9 - 8);
  v27 = v9;
  v10 = *(v26 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;

  v14 = a1;
  v15 = NPKCurrentQueueLabel();
  if (v15)
  {
    v25 = v8;
    v16 = v15;
    v17 = sub_25B55AD0C();
    v19 = v18;

    if (v17 == 0xD000000000000027 && 0x800000025B59A730 == v19)
    {

LABEL_6:
      v21 = objc_opt_self();
      type metadata accessor for PKAnalyticsKey(0);
      sub_25B558DD4(&qword_27FA44D88, type metadata accessor for PKAnalyticsKey);
      v27 = sub_25B55ACBC();
      [v21 subject:v14 sendEvent:v27];

      v22 = v27;

      return;
    }

    v20 = sub_25B55B00C();

    v8 = v25;
    if (v20)
    {
      goto LABEL_6;
    }
  }

  if (qword_27FA45750 != -1)
  {
    swift_once();
  }

  v25 = qword_27FA45758;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_25B5590D4;
  *(v23 + 24) = v13;
  aBlock[4] = sub_25B559614;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25B5566AC;
  aBlock[3] = &block_descriptor_44;
  v24 = _Block_copy(aBlock);

  sub_25B55AC9C();
  v28 = MEMORY[0x277D84F90];
  sub_25B558DD4(&qword_27FA44D90, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D98, &qword_25B59B0C8);
  sub_25B55929C(&qword_27FA44DA0, &qword_27FA44D98, &qword_25B59B0C8);
  sub_25B55AF1C();
  MEMORY[0x25F866390](0, v12, v8, v24);
  _Block_release(v24);

  (*(v5 + 8))(v8, v4);
  (*(v26 + 8))(v12, v27);
}

void _s11NanoPassKit17AnalyticsReporterC4send_5event8categoryySo18PKAnalyticsSubjecta_SDySo0I3KeyaSSGSo0I8CategoryatFZ_0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25B55AC7C();
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25B55ACAC();
  v28 = *(v10 - 8);
  v29 = v10;
  v11 = *(v28 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a3;
  v14[4] = a2;

  v15 = a1;
  v16 = NPKCurrentQueueLabel();
  if (v16)
  {
    v27 = v9;
    v17 = v16;
    v18 = sub_25B55AD0C();
    v20 = v19;

    if (v18 == 0xD000000000000027 && 0x800000025B59A730 == v20)
    {

LABEL_6:
      v22 = objc_opt_self();
      type metadata accessor for PKAnalyticsKey(0);
      sub_25B558DD4(&qword_27FA44D88, type metadata accessor for PKAnalyticsKey);
      v30 = sub_25B55ACBC();
      [v22 subject:v15 category:a3 sendEvent:v30];

      v23 = v30;

      return;
    }

    v21 = sub_25B55B00C();

    v9 = v27;
    if (v21)
    {
      goto LABEL_6;
    }
  }

  if (qword_27FA45750 != -1)
  {
    swift_once();
  }

  v24 = swift_allocObject();
  *(v24 + 16) = sub_25B558FFC;
  *(v24 + 24) = v14;
  aBlock[4] = sub_25B559614;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25B5566AC;
  aBlock[3] = &block_descriptor_34;
  v25 = _Block_copy(aBlock);

  sub_25B55AC9C();
  v31 = MEMORY[0x277D84F90];
  sub_25B558DD4(&qword_27FA44D90, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D98, &qword_25B59B0C8);
  sub_25B55929C(&qword_27FA44DA0, &qword_27FA44D98, &qword_25B59B0C8);
  sub_25B55AF1C();
  MEMORY[0x25F866390](0, v13, v9, v25);
  _Block_release(v25);

  (*(v30 + 8))(v9, v6);
  (*(v28 + 8))(v13, v29);
}

void _s11NanoPassKit17AnalyticsReporterC4send_5eventySaySo18PKAnalyticsSubjectaG_SDySo0H3KeyaSSGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25B55AC7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25B55ACAC();
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v13 = NPKCurrentQueueLabel();
  if (v13)
  {
    v25 = v8;
    v14 = v13;
    v15 = sub_25B55AD0C();
    v17 = v16;

    if (v15 == 0xD000000000000027 && 0x800000025B59A730 == v17)
    {

LABEL_6:
      v19 = objc_opt_self();
      type metadata accessor for PKAnalyticsSubject(0);
      v20 = sub_25B55AD5C();
      type metadata accessor for PKAnalyticsKey(0);
      sub_25B558DD4(&qword_27FA44D88, type metadata accessor for PKAnalyticsKey);
      v27 = sub_25B55ACBC();
      [v19 subjects:v20 sendEvent:v27];

      v21 = v27;

      return;
    }

    v18 = sub_25B55B00C();

    v8 = v25;
    if (v18)
    {
      goto LABEL_6;
    }
  }

  if (qword_27FA45750 != -1)
  {
    swift_once();
  }

  v25 = qword_27FA45758;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_25B558F18;
  *(v22 + 24) = v12;
  aBlock[4] = sub_25B559614;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25B5566AC;
  aBlock[3] = &block_descriptor_24;
  v23 = _Block_copy(aBlock);

  sub_25B55AC9C();
  v28 = MEMORY[0x277D84F90];
  sub_25B558DD4(&qword_27FA44D90, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D98, &qword_25B59B0C8);
  sub_25B55929C(&qword_27FA44DA0, &qword_27FA44D98, &qword_25B59B0C8);
  v24 = v27;
  sub_25B55AF1C();
  MEMORY[0x25F866390](0, v11, v24, v23);
  _Block_release(v23);

  (*(v5 + 8))(v24, v4);
  (*(v26 + 8))(v11, v8);
}

void _s11NanoPassKit17AnalyticsReporterC4send_5event8categoryySaySo18PKAnalyticsSubjectaG_SDySo0I3KeyaSSGSo0I8CategoryatFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25B55AC7C();
  v30 = *(v6 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25B55ACAC();
  v28 = *(v10 - 8);
  v29 = v10;
  v11 = *(v28 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a3;
  v14[4] = a2;

  v15 = NPKCurrentQueueLabel();
  if (v15)
  {
    v27 = v13;
    v16 = v15;
    v17 = sub_25B55AD0C();
    v19 = v18;

    if (v17 == 0xD000000000000027 && 0x800000025B59A730 == v19)
    {

LABEL_6:
      v21 = objc_opt_self();
      type metadata accessor for PKAnalyticsSubject(0);
      v22 = sub_25B55AD5C();
      type metadata accessor for PKAnalyticsKey(0);
      sub_25B558DD4(&qword_27FA44D88, type metadata accessor for PKAnalyticsKey);
      v30 = sub_25B55ACBC();
      [v21 subjects:v22 category:a3 sendEvent:v30];

      v23 = v30;

      return;
    }

    v20 = sub_25B55B00C();

    v13 = v27;
    if (v20)
    {
      goto LABEL_6;
    }
  }

  if (qword_27FA45750 != -1)
  {
    swift_once();
  }

  v24 = swift_allocObject();
  *(v24 + 16) = sub_25B558E2C;
  *(v24 + 24) = v14;
  aBlock[4] = sub_25B559614;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25B5566AC;
  aBlock[3] = &block_descriptor_14;
  v25 = _Block_copy(aBlock);

  sub_25B55AC9C();
  v31 = MEMORY[0x277D84F90];
  sub_25B558DD4(&qword_27FA44D90, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D98, &qword_25B59B0C8);
  sub_25B55929C(&qword_27FA44DA0, &qword_27FA44D98, &qword_25B59B0C8);
  sub_25B55AF1C();
  MEMORY[0x25F866390](0, v13, v9, v25);
  _Block_release(v25);

  (*(v30 + 8))(v9, v6);
  (*(v28 + 8))(v13, v29);
}

void _s11NanoPassKit17AnalyticsReporterC4send13singularEventySDySo14PKAnalyticsKeyaSSG_tFZ_0(uint64_t a1)
{
  v2 = sub_25B55AC7C();
  v23 = *(v2 - 8);
  v3 = *(v23 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_25B55ACAC();
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v22);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;

  v11 = NPKCurrentQueueLabel();
  if (v11)
  {
    v12 = v11;
    v13 = sub_25B55AD0C();
    v15 = v14;

    if (v13 == 0xD000000000000027 && 0x800000025B59A730 == v15)
    {

LABEL_6:
      v17 = objc_opt_self();
      sub_25B555D3C(a1);
      v23 = sub_25B55ACBC();

      [v17 sendSingularEvent_];

      v18 = v23;

      return;
    }

    v16 = sub_25B55B00C();

    if (v16)
    {
      goto LABEL_6;
    }
  }

  if (qword_27FA45750 != -1)
  {
    swift_once();
  }

  v21 = qword_27FA45758;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_25B558CFC;
  *(v19 + 24) = v10;
  aBlock[4] = sub_25B558D94;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25B5566AC;
  aBlock[3] = &block_descriptor;
  v20 = _Block_copy(aBlock);

  sub_25B55AC9C();
  v24 = MEMORY[0x277D84F90];
  sub_25B558DD4(&qword_27FA44D90, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA44D98, &qword_25B59B0C8);
  sub_25B55929C(&qword_27FA44DA0, &qword_27FA44D98, &qword_25B59B0C8);
  sub_25B55AF1C();
  MEMORY[0x25F866390](0, v9, v5, v20);
  _Block_release(v20);

  (*(v23 + 8))(v5, v2);
  (*(v6 + 8))(v9, v22);
}

void sub_25B558CFC()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  sub_25B555D3C(v1);
  v3 = sub_25B55ACBC();

  [v2 sendSingularEvent_];
}

uint64_t sub_25B558D94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25B558DD4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_25B558E1C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_25B558E2C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = objc_opt_self();
  type metadata accessor for PKAnalyticsSubject(0);
  v6 = sub_25B55AD5C();
  type metadata accessor for PKAnalyticsKey(0);
  sub_25B558DD4(&qword_27FA44D88, type metadata accessor for PKAnalyticsKey);
  v5 = sub_25B55ACBC();
  [v4 subjects:v6 category:v2 sendEvent:v5];
}

void sub_25B558F18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = objc_opt_self();
  type metadata accessor for PKAnalyticsSubject(0);
  v5 = sub_25B55AD5C();
  type metadata accessor for PKAnalyticsKey(0);
  sub_25B558DD4(&qword_27FA44D88, type metadata accessor for PKAnalyticsKey);
  v4 = sub_25B55ACBC();
  [v3 subjects:v5 sendEvent:v4];
}

void sub_25B558FFC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_25B558DD4(&qword_27FA44D88, type metadata accessor for PKAnalyticsKey);
  v5 = sub_25B55ACBC();
  [v4 subject:v1 category:v2 sendEvent:v5];
}

void sub_25B5590D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_25B558DD4(&qword_27FA44D88, type metadata accessor for PKAnalyticsKey);
  v4 = sub_25B55ACBC();
  [v3 subject:v1 sendEvent:v4];
}

id sub_25B55919C()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  result = [v2 reporterForSubject_];
  if (result)
  {

    return [v2 endSubjectReporting_];
  }

  return result;
}

uint64_t sub_25B559228(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25B5540F4(a1, a2);
  }

  return a1;
}

uint64_t sub_25B55923C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25B554148(a1, a2);
  }

  return a1;
}

unint64_t sub_25B559250()
{
  result = qword_27FA44DB0;
  if (!qword_27FA44DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FA44DB0);
  }

  return result;
}

uint64_t sub_25B55929C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_25B559304(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}