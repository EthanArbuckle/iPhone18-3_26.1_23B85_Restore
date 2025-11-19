void sub_25B302B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id pk_General_log()
{
  if (pk_General_log_onceToken != -1)
  {
    pk_General_log_cold_1();
  }

  v1 = pk_General_log___logger;

  return v1;
}

id NPKCompanionServerProtocolInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286D44E68];
  v1 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_paymentPassUniqueIDsExcludingDeactivated_reply_ argumentIndex:0 ofReply:1];

  v4 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v4 forSelector:sel_paymentPassWithUniqueID_reply_ argumentIndex:0 ofReply:1];

  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  [v0 setClasses:v7 forSelector:sel_paymentPassesWithPrimaryAccountIdentifier_completion_ argumentIndex:0 ofReply:1];

  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  [v0 setClasses:v10 forSelector:sel_transactionsForTransactionSourceIdentifiers_withTransactionSource_withBackingData_startDate_endDate_orderedByDate_limit_completion_ argumentIndex:0 ofReply:1];

  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  [v0 setClasses:v13 forSelector:sel_balancesForPaymentPassWithUniqueIdentifier_completion_ argumentIndex:0 ofReply:1];

  v14 = MEMORY[0x277CBEB98];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  [v0 setClasses:v16 forSelector:sel_passesWithCompletion_ argumentIndex:0 ofReply:1];

  v17 = MEMORY[0x277CBEB98];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  [v0 setClasses:v19 forSelector:sel_passesWithReaderIdentifier_completion_ argumentIndex:0 ofReply:1];

  v20 = MEMORY[0x277CBEB98];
  v21 = objc_opt_class();
  v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
  [v0 setClasses:v22 forSelector:sel_beginProvisioningFromWatchOfferForPaymentPasses_withCompletion_ argumentIndex:0 ofReply:0];

  v23 = MEMORY[0x277CBEB98];
  v24 = objc_opt_class();
  v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
  [v0 setClasses:v25 forSelector:sel_updateCredentials_forUniqueID_paymentApplicationIdentifier_completion_ argumentIndex:0 ofReply:0];

  v26 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v0 setClasses:v26 forSelector:sel_updateCredentials_forUniqueID_paymentApplicationIdentifier_completion_ argumentIndex:0 ofReply:1];

  v41 = MEMORY[0x277CBEB98];
  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v36 = [v41 setWithObjects:{v27, v28, v29, v30, v31, v32, v33, v34, v35, objc_opt_class(), 0}];
  [v0 setClasses:v36 forSelector:sel_addPendingProvisionings_identityTargetDeviceIdentifier_completion_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_addPendingProvisionings_identityTargetDeviceIdentifier_completion_ argumentIndex:0 ofReply:1];
  v37 = MEMORY[0x277CBEB98];
  v38 = objc_opt_class();
  v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
  [v0 setClasses:v39 forSelector:sel_allPaymentApplicationUsageSummaries_ argumentIndex:0 ofReply:1];

  return v0;
}

id NPKCompanionClientProtocolInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286D20DC0];
  v1 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_paymentPassWithUniqueIdentifier_didUpdateWithBalances_ argumentIndex:1 ofReply:0];

  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:sel_paymentPassWithUniqueIdentifier_didUpdateWithCredentials_forPaymentApplicationIdentifier_ argumentIndex:1 ofReply:0];

  return v0;
}

id NPKPairedOrPairingDevice()
{
  v28 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D2BCF8] sharedInstance];
  v1 = [MEMORY[0x277D2BCF8] activeDeviceSelectorBlock];
  v2 = [v0 getAllDevicesWithArchivedAltAccountDevicesMatching:v1];
  v3 = [v2 firstObject];

  v4 = [v3 valueForProperty:*MEMORY[0x277D2BB30]];
  if ([v4 BOOLValue])
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = v6;
  if (__IsDeviceDifferentFromLastReturnedDevice_onceToken != -1)
  {
    NPKPairedOrPairingDevice_cold_1();
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v8 = __LastReturnedDeviceQueue;
  *&block = MEMORY[0x277D85DD0];
  *(&block + 1) = 3221225472;
  v24 = ____IsDeviceDifferentFromLastReturnedDevice_block_invoke_2;
  v25 = &unk_279948400;
  v26 = v7;
  v27 = &v19;
  v9 = v7;
  dispatch_sync(v8, &block);
  LODWORD(v8) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  if (v8 == 1)
  {
    v10 = pk_General_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v12 = pk_General_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v9 valueForProperty:*MEMORY[0x277D2BA78]];
        LODWORD(block) = 138412290;
        *(&block + 4) = v13;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: Paired or pairing device has advertised name %@", &block, 0xCu);
      }
    }
  }

  if (!v9)
  {
    v14 = pk_General_log();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

    if (v15)
    {
      v16 = pk_General_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(block) = 0;
        _os_log_impl(&dword_25B300000, v16, OS_LOG_TYPE_DEFAULT, "Warning: no paried or pairing device", &block, 2u);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t NPKPairedOrPairingDeviceIsTinker()
{
  v0 = NPKPairedOrPairingDevice();
  v1 = NPKIsTinkerDevice(v0);

  return v1;
}

uint64_t NPKPairedOrPairingDeviceCanProvisionSecureElementPasses()
{
  if (!NPKPairedOrPairingDeviceIsTinker())
  {
    return 1;
  }

  v0 = NPKPairedOrPairingDevice();
  v1 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"79770938-0C49-40BD-B593-4E04E7557E01"];
  v2 = [v0 supportsCapability:v1];

  return v2;
}

uint64_t NPKIsTinkerDevice(void *a1)
{
  v1 = [a1 valueForProperty:*MEMORY[0x277D2BB28]];
  v2 = [v1 BOOLValue];

  return v2;
}

id NPKDeviceRegion()
{
  v0 = NPKDomainAccessorForDomain(@".GlobalPreferences");
  v1 = [v0 objectForKey:@"AppleLocale"];
  if (!v1 || ([MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v1], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "regionCode"), v3 = objc_claimAutoreleasedReturnValue(), v2, !v3))
  {
    v4 = pk_Payment_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (v5)
    {
      v6 = pk_Payment_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Warning: Not able to determine watch device region; falling back to companion region", v8, 2u);
      }
    }

    v3 = PKCurrentRegion();
  }

  return v3;
}

id pk_Payment_log()
{
  if (pk_Payment_log_onceToken != -1)
  {
    pk_Payment_log_cold_1();
  }

  v1 = pk_Payment_log___logger;

  return v1;
}

id NPKDomainAccessorForDomain(void *a1)
{
  v1 = a1;
  v2 = NPKPairedOrPairingDevice();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 valueForProperty:*MEMORY[0x277D2BBB8]];
    v5 = [v3 valueForProperty:*MEMORY[0x277D2BB60]];
    v6 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:v1 pairingID:v4 pairingDataStore:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _NPKManifestForURL(void *a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [*MEMORY[0x277D38688] stringByAppendingPathExtension:@"json"];
  v6 = [v4 URLByAppendingPathComponent:v5 isDirectory:0];

  v7 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v6];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__26;
  v35 = __Block_byref_object_dispose__26;
  v36 = 0;
  if (v7)
  {
    v30 = 0;
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:1 error:&v30];
    v9 = v30;
    v10 = v32[5];
    v32[5] = v8;

    if (v32[5])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v32[5];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = ___NPKManifestForURL_block_invoke;
        v27[3] = &unk_279949528;
        v28 = v3;
        v29 = &v31;
        [v11 enumerateKeysAndObjectsUsingBlock:v27];
        v12 = v28;
      }

      else
      {
        v18 = pk_Payment_log();
        v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

        if (v19)
        {
          v20 = pk_Payment_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = v32[5];
            v22 = objc_opt_class();
            *buf = 138412546;
            v38 = v3;
            v39 = 2112;
            v40 = v22;
            v23 = v22;
            _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Warning: manifest.json for unique ID %@ must be a dictionary -- instead found an object of class %@", buf, 0x16u);
          }
        }

        v12 = v32[5];
        v32[5] = 0;
      }

LABEL_16:

      goto LABEL_17;
    }

    v15 = pk_Payment_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

    if (v16)
    {
      v12 = pk_Payment_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v9 localizedDescription];
        *buf = 138412546;
        v38 = v3;
        v39 = 2112;
        v40 = v17;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Warning: Manifest JSON for unique ID %@ didn't parse: %@", buf, 0x16u);
      }

      goto LABEL_16;
    }
  }

  else
  {
    v13 = pk_Payment_log();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

    if (!v14)
    {
      goto LABEL_18;
    }

    v9 = pk_Payment_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v38 = v3;
      v39 = 2112;
      v40 = v6;
      _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Warning: Manifest for unique ID %@ is missing; expected at URL %@", buf, 0x16u);
    }
  }

LABEL_17:

LABEL_18:
  v24 = v32[5];
  _Block_object_dispose(&v31, 8);

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

void sub_25B30422C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t NPKShouldUseStandaloneSyncForPassWithDevice(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = v7;
  if (!v7)
  {
    v9 = pk_General_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v10)
    {
      v11 = pk_General_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v28 = "NPKShouldUseStandaloneSyncForPassWithDevice";
        v29 = 2082;
        v30 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKPassSyncConstants.m";
        v31 = 2048;
        v32 = 111;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Pass can't be nil)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  if (NPKPassSyncMethodsForPassWithStateVersion(v7, a4) == 1)
  {
    v12 = [v8 passType];
    v13 = v12 == 1;
    if (v12 != 1 && (a2 & 1) == 0)
    {
      v13 = a3;
      if ([v8 style] != 8)
      {
        v14 = NPKURLForPass(v8);
        v15 = PKObjectDictionary();
        v16 = v15;
        if (v14 && v15)
        {
          v13 = PKValidatePassWithOptions();
          v17 = 0;
          v18 = 0;
          if ((v13 & 1) == 0)
          {
            v19 = pk_General_log();
            v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

            if (v20)
            {
              v21 = pk_General_log();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = [v8 uniqueID];
                *buf = 138412802;
                v28 = v22;
                v29 = 2112;
                v30 = v17;
                v31 = 2112;
                v32 = v18;
                _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_DEFAULT, "Warning: Fail to validate signature of pass with uniqueID::%@ error:%@ warnings:%@. We will not sync it.", buf, 0x20u);
              }
            }
          }
        }

        else
        {
          v25 = pk_General_log();
          v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

          if (!v26)
          {
            v13 = 0;
            goto LABEL_27;
          }

          v17 = pk_General_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_25B300000, v17, OS_LOG_TYPE_ERROR, "Error: We fail to verify pass signature rejecting to sync the pass", buf, 2u);
          }

          v13 = 0;
        }

LABEL_27:
      }
    }
  }

  else
  {
    v13 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t NPKPassSyncMethodsForPassWithStateVersion(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v6 = pk_General_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

    if (v7)
    {
      v8 = pk_General_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = 136446722;
        v12 = "NPKPassSyncMethodsForPassWithStateVersion";
        v13 = 2082;
        v14 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKPassSyncConstants.m";
        v15 = 2048;
        v16 = 78;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Pass can't be nil)", &v11, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  if (a2)
  {
    if ([v3 supportsSyncing])
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

id NPKURLForPass(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 uniqueID];
  v3 = [v1 dataAccessor];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 fileURL];
  }

  else if (v2)
  {
    v5 = PKCardsDirectoryURL();
    v6 = [v2 stringByAppendingPathExtension:*MEMORY[0x277D38980]];
    v4 = [v5 URLByAppendingPathComponent:v6 isDirectory:1];
  }

  else
  {
    v7 = pk_General_log();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);

    if (v8)
    {
      v9 = pk_General_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v1 passTypeIdentifier];
        v11 = [v1 serialNumber];
        v14 = 138412802;
        v15 = v1;
        v16 = 2112;
        v17 = v10;
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Warning: No unique ID for pass %@ %@ %@!", &v14, 0x20u);
      }
    }

    v4 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

id pk_Relevance_log()
{
  if (pk_Relevance_log_onceToken != -1)
  {
    pk_Relevance_log_cold_1();
  }

  v1 = pk_Relevance_log___logger;

  return v1;
}

id NPKManifestHashForPass(void *a1)
{
  v1 = a1;
  v2 = NPKURLForPass(v1);
  v3 = [v1 manifestHash];

  if (v2 && !v3)
  {
    v3 = PKManifestHash();
  }

  return v3;
}

id NPKManifestForPass(void *a1)
{
  v1 = a1;
  v2 = [v1 uniqueID];
  v3 = NPKURLForPass(v1);

  if (v3)
  {
    v4 = _NPKManifestForURL(v2, v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id NPKSecureUnarchiveObjectWithClassNameForClass(void *a1, uint64_t a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v30 = a3;
  v29 = v4;
  if ([v4 length])
  {
    v35 = 0;
    v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v4 error:&v35];
    v6 = v35;
    if (v30)
    {
      v27 = v6;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v7 = v30;
      v8 = [v7 countByEnumeratingWithState:&v31 objects:v40 count:16];
      if (v8)
      {
        v9 = *v32;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v32 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v31 + 1) + 8 * i);
            v12 = [v7 objectForKeyedSubscript:{v11, v27}];
            [v5 setClass:v12 forClassName:v11];
            v13 = pk_General_log();
            v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

            if (v14)
            {
              v15 = pk_General_log();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                v16 = [v5 classForClassName:v11];
                *buf = 138412546;
                v37 = v12;
                v38 = 2112;
                v39 = v16;
                v17 = v16;
                _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: The coder will decode class %@ as class %@", buf, 0x16u);
              }
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v31 objects:v40 count:16];
        }

        while (v8);
      }

      v6 = v27;
    }

    v18 = v6;
    if (v6)
    {
      v19 = pk_Payment_log();
      v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

      if (v20)
      {
        v21 = pk_Payment_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v37 = v18;
          _os_log_impl(&dword_25B300000, v21, OS_LOG_TYPE_DEFAULT, "Warning: Found error while unarchive: %@", buf, 0xCu);
        }
      }
    }

    v22 = [v5 decodeObjectOfClass:a2 forKey:{*MEMORY[0x277CCA308], v27}];
    [v5 finishDecoding];

LABEL_25:
    goto LABEL_26;
  }

  v23 = pk_Payment_log();
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);

  if (v24)
  {
    v18 = pk_Payment_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v37 = a2;
      v38 = 2112;
      v39 = v29;
      _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Warning: Attempt to unarchive %@ from empty data:%@", buf, 0x16u);
    }

    v22 = 0;
    goto LABEL_25;
  }

  v22 = 0;
LABEL_26:

  v25 = *MEMORY[0x277D85DE8];

  return v22;
}

id NPKPairedDeviceSecureElementIdentifiers()
{
  v0 = NPKPairedOrPairingDevice();
  v1 = [MEMORY[0x277CBEB18] array];
  v2 = [v0 valueForProperty:*MEMORY[0x277D2BBE0]];
  if (v2)
  {
    [v1 addObject:v2];
  }

  v3 = [v0 valueForProperty:*MEMORY[0x277D2BA70]];
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v1 addObjectsFromArray:v3];
    }
  }

  v4 = [v1 copy];

  return v4;
}

void NPKIdentifyDevicePaymentApplicationsForPass(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (NPKIsRunningInDemoMode())
  {
    v5 = [v3 paymentApplications];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __NPKIdentifyDevicePaymentApplicationsForPass_block_invoke;
    v10[3] = &unk_27994B648;
    v11 = v4;
    [v5 enumerateObjectsUsingBlock:v10];
  }

  [v3 updateDevicePaymentApplicationsWithSecureElementIdentifiers:v4];
  if (NPKIsRunningInDemoMode())
  {
    v6 = [v3 devicePrimaryPaymentApplication];

    if (!v6)
    {
      v7 = [v4 firstObject];
      v8 = NPKGenerateDemoPaymentApplicationForSEID(v7);

      v9 = [MEMORY[0x277CBEB98] setWithObject:v8];
      [v3 setDevicePaymentApplications:v9];

      [v3 setDevicePrimaryPaymentApplication:v8];
      [v3 setDevicePrimaryContactlessPaymentApplication:v8];
      [v3 setDevicePrimaryInAppPaymentApplication:v8];
    }
  }
}

uint64_t NPKIsRunningInDemoMode()
{
  if (_InitializeDemoModeValuesIfNecessary_onceToken != -1)
  {
    NPKIsRunningInDemoMode_cold_1();
  }

  if (__InStoreDemoMode & 1) != 0 || (__InUIOnlyDemoMode)
  {
    v0 = 1;
  }

  else
  {
    v0 = __InHandsOnDemoMode;
  }

  return v0 & 1;
}

id NPKStorePathForPaymentPassWithUniqueID(void *a1)
{
  v1 = a1;
  v2 = NPKPaymentPassDirectoryPath();
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v1, *MEMORY[0x277D38980]];

  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

id NPKPaymentPassDirectoryPath()
{
  v0 = NPKHomeDirectoryPath();
  v1 = [v0 stringByAppendingPathComponent:@"PaymentCards"];

  return v1;
}

id NPKHomeDirectoryPath()
{
  v15 = *MEMORY[0x277D85DE8];
  if (NPKHomeDirectoryPath_onceToken != -1)
  {
    NPKHomeDirectoryPath_cold_1();
  }

  v0 = NPKPairedOrPairingDevice();
  v1 = [v0 pairingID];
  os_unfair_lock_lock(&NPKHomeDirectoryPath__lock);
  v2 = [_lastDevicePairingID isEqual:v1];
  if (!_lastDeviceHomeDirectoryPath || !((v1 == 0) | v2 & 1))
  {
    objc_storeStrong(&_lastDevicePairingID, v1);
    v3 = NPKHomeDirectoryPathForDevice(v0);
    v4 = _lastDeviceHomeDirectoryPath;
    _lastDeviceHomeDirectoryPath = v3;

    v5 = pk_General_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_General_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412546;
        v12 = _lastDeviceHomeDirectoryPath;
        v13 = 2112;
        v14 = v1;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: Updated Home directory:%@ for deviceParingID:%@", &v11, 0x16u);
      }
    }
  }

  v8 = _lastDeviceHomeDirectoryPath;
  os_unfair_lock_unlock(&NPKHomeDirectoryPath__lock);

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t sub_25B305780()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25B3057B8()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25B305828@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_25B55AD0C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_25B305854()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25B30588C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25B3058CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25B30590C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25B305944()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25B305984()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25B3059C4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25B3059FC()
{
  v1 = *(v0 + 40);
  if (v1 >> 60 != 15)
  {
    sub_25B554148(*(v0 + 32), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t NPKTranslateCardType(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_25B59A790[a1 - 1];
  }
}

void NPKTrackSETransactionDetails(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:a4];
  v6 = v8;
  v7 = v5;
  AnalyticsSendEventLazy();
}

id __NPKTrackSETransactionDetails_block_invoke(void *a1)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"transactionOrigin";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
  v10[0] = v2;
  v9[1] = @"transactionType";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[7]];
  v4 = a1[4];
  v5 = a1[5];
  v10[1] = v3;
  v10[2] = v4;
  v9[2] = @"lowPowerModeEnabled";
  v9[3] = @"familySetupMode";
  v10[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

void NPKTrackQRTransactionDetails(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:a4];
  v6 = v8;
  v7 = v5;
  AnalyticsSendEventLazy();
}

id __NPKTrackQRTransactionDetails_block_invoke(void *a1)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"transactionOrigin";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
  v10[0] = v2;
  v9[1] = @"passStyle";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1[7]];
  v4 = a1[4];
  v5 = a1[5];
  v10[1] = v3;
  v10[2] = v4;
  v9[2] = @"lowPowerModeEnabled";
  v9[3] = @"familySetupMode";
  v10[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

void NPKTrackTruthOnCard(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:a1];
  v1 = v2;
  AnalyticsSendEventLazy();
}

id __NPKTrackTruthOnCard_block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = @"truthOnCardAdded";
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id __NPKTrackPassIngestionType_block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"ingestionType";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id __NPKTrackPaymentRequested_block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"requestType";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id __NPKTrackPaymentProvisioningWebServicesCheck_block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"webServicesCheck";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id __NPKTrackPassAction_block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"passAction";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

void NPKTrackPeerPaymentAction(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (!v4)
  {
    v6 = pk_General_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

    if (v7)
    {
      v8 = pk_General_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v18 = "NPKTrackPeerPaymentAction";
        v19 = 2082;
        v20 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKCoreAnalytics.m";
        v21 = 2048;
        v22 = 85;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Attempting to send analytics event with nil amount)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  if (!v5)
  {
    v9 = pk_General_log();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

    if (v10)
    {
      v11 = pk_General_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v18 = "NPKTrackPeerPaymentAction";
        v19 = 2082;
        v20 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/NPKCoreAnalytics.m";
        v21 = 2048;
        v22 = 86;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Attempting to send analytics event with nil currency)", buf, 0x20u);
      }
    }

    _NPKAssertAbort();
  }

  v16 = v5;
  v15 = v4;
  v12 = v5;
  v13 = v4;
  AnalyticsSendEventLazy();

  v14 = *MEMORY[0x277D85DE8];
}

id __NPKTrackPeerPaymentAction_block_invoke(void *a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"actionType";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
  v3 = a1[4];
  v4 = a1[5];
  v9[0] = v2;
  v9[1] = v3;
  v8[1] = @"amount";
  v8[2] = @"currency";
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

id __NPKTrackUWBRangingStatus_block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"rangingStatus";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id __NPKTrackWatchProvisioningEvent_block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"watchProvisioningEvent";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

uint64_t NPKProtoCheckTLKsMissingRequestReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoAssertionRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v34 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v34 & 0x7F) << v23;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            LOBYTE(v29) = 0;
            goto LABEL_46;
          }
        }

        v29 = (v25 != 0) & ~[a2 hasError];
LABEL_46:
        *(a1 + 24) = v29;
      }

      else if (v13 == 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v33 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v33 & 0x7F) << v16;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_44;
          }
        }

        v22 = [a2 hasError] ? 0 : v18;
LABEL_44:
        *(a1 + 8) = v22;
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoCarKeyAcceptInvitationResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            LOBYTE(v21) = 0;
            goto LABEL_32;
          }
        }

        v21 = (v17 != 0) & ~[a2 hasError];
LABEL_32:
        *(a1 + 16) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoPasscodeUpgradeFlowPresentationRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKIDVRemoteDeviceProtoCredentialPropertiesResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___NPKIDVRemoteDeviceProtoCredentialPropertiesResponse__errorData;
LABEL_21:
        v14 = PBReaderReadData();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___NPKIDVRemoteDeviceProtoCredentialPropertiesResponse__credentialPropertiesData;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoRemoveExpressPassWithUniqueIdentifierRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKIDVRemoteDeviceProtoGeneratePresentmentKeysRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v27 = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v27 & 0x7F) << v17;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_38;
          }
        }

        v23 = [a2 hasError] ? 0 : v19;
LABEL_38:
        *(a1 + 24) = v23;
      }

      else if (v13 == 2)
      {
        v16 = PBReaderReadString();
        if (v16)
        {
          [a1 addConfiguredPartitionsIdentifiers:v16];
        }
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoProvisionPassForRemoteCredentialWithTypeAndIdentifierResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v27 = PBReaderReadData();
        v28 = *(a1 + 8);
        *(a1 + 8) = v27;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 20) |= 2u;
          while (1)
          {
            v33 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v33 & 0x7F) << v21;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_42;
            }
          }

          v20 = (v23 != 0) & ~[a2 hasError];
LABEL_42:
          v30 = 17;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_46;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 20) |= 1u;
          while (1)
          {
            v34 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v34 & 0x7F) << v14;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_44;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_44:
          v30 = 16;
        }

        *(a1 + v30) = v20;
      }

LABEL_46:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoRelevantPassesRequestReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(NPKProtoRelevantPassTuple);
        [a1 addPassRelevancyTuples:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !NPKProtoRelevantPassTupleReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoStandalonePaymentProvisioningFlowTermsAndConditionsStepContextReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 120)
      {
        v23 = objc_alloc_init(NPKProtoStandalonePaymentSetupProduct);
        objc_storeStrong((a1 + 8), v23);
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentSetupProductReadFrom(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 110)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v26[0] & 0x7F) << v16;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_36;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_36:
        *(a1 + 24) = v22;
      }

      else if (v13 == 100)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoCarKeyHandleRecipientMessageResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKIDVRemoteDeviceProtoCreateCredentialResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = &OBJC_IVAR___NPKIDVRemoteDeviceProtoCreateCredentialResponse__credentialIdentifier;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadData();
    v14 = &OBJC_IVAR___NPKIDVRemoteDeviceProtoCreateCredentialResponse__errorData;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoCanAddSecureElementPassWithConfigurationResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadData();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_32;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_32:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoRetrievePaymentTransactionsResponseReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    if ((v13 >> 3) == 2)
    {
      v14 = PBReaderReadString();
      if (v14)
      {
        [a1 addTransactionPassIDs:v14];
      }

      goto LABEL_24;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadData();
      if (v14)
      {
        [a1 addTransactionsBytes:v14];
      }

LABEL_24:

      continue;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      break;
    }
  }

  return 0;
}

void sub_25B30E99C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromNPKNanoPassbookUserNotificationType(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_279944F70[a1];
  }
}

uint64_t NPKProtoCatalogReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *NSStringFromNPKLockStatusChangeEvent(uint64_t a1)
{
  if (a1)
  {
    return @"NPKLockStatusChangeEventLock";
  }

  else
  {
    return @"NPKLockStatusChangeEventUnlock";
  }
}

void sub_25B30FBDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t NPKProtoRegisterSubcredentialsResponseReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    if ((v13 >> 3) == 2)
    {
      v14 = PBReaderReadData();
      if (v14)
      {
        [a1 addErrorsData:v14];
      }

      goto LABEL_24;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadData();
      if (v14)
      {
        [a1 addPassesData:v14];
      }

LABEL_24:

      continue;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      break;
    }
  }

  return 0;
}

uint64_t NPKProtoStandalonePaymentProvisioningFlowProvisioningProgressStepContextReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 110)
      {
        break;
      }

      if ((v12 >> 3) == 100)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(NPKProtoStandalonePaymentSetupProduct);
    objc_storeStrong((a1 + 16), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentSetupProductReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoStandalonePaymentProvisioningFlowHandleManualEntryFieldsRequestReadFrom(id *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 110)
      {
        break;
      }

      if ((v12 >> 3) == 100)
      {
        v13 = objc_alloc_init(NPKProtoStandaloneRequestHeader);
        objc_storeStrong(a1 + 2, v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !NPKProtoStandaloneRequestHeaderReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(NPKProtoStandalonePaymentSetupField);
    [a1 addManualEntryFields:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentSetupFieldReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoCarKeyRoutingInformationRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___NPKProtoCarKeyRoutingInformationRequest__transportIdentifier;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___NPKProtoCarKeyRoutingInformationRequest__invitationIdentifier;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_25B312F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id NSStringFromNPKAssociatedPassData(uint64_t a1)
{
  if (!a1)
  {
    v3 = &unk_286CE7528;
    goto LABEL_10;
  }

  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = v2;
  if (a1)
  {
    [v2 safelyAddObject:@"NPKAssociatedPassDataBalance"];
    if ((a1 & 2) == 0)
    {
LABEL_4:
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_4;
  }

  [v3 safelyAddObject:@"NPKAssociatedPassDataAppletState"];
  if ((a1 & 4) == 0)
  {
LABEL_5:
    if ((a1 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_15:
  [v3 safelyAddObject:@"NPKAssociatedPassDataTransaction"];
  if ((a1 & 8) != 0)
  {
LABEL_6:
    [v3 safelyAddObject:@"NPKAssociatedPassDataPreferencesSettings"];
  }

LABEL_7:
  if ((a1 & 0xFFFFFFFFFFFFFFF0) != 0)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"NPKAssociatedPassDataNoneUnknown (%lu)", a1 & 0xFFFFFFFFFFFFFFF0];
    [v3 addObject:v4];
  }

LABEL_10:

  return v3;
}

uint64_t sub_25B3141C8()
{
  v1 = *(v0 - 24);
  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t sub_25B3142BC()
{
  v1 = *(v0 - 24);
  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t sub_25B314590()
{
  v1 = *(v0 - 24);
  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t sub_25B314684()
{
  v1 = *(v0 - 24);
  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t sub_25B317544()
{
  v1 = *(v0 - 24);
  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t sub_25B317638()
{
  v1 = *(v0 - 24);
  v2 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t NPKProtoInsertBridgeNotificationRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 > 5)
      {
        if (v13 == 6)
        {
          v21 = PBReaderReadString();
          v22 = 32;
        }

        else
        {
          if (v13 != 7)
          {
LABEL_38:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_44;
          }

          v21 = PBReaderReadData();
          v22 = 16;
        }

        goto LABEL_43;
      }

      if (v13 == 4)
      {
        v21 = PBReaderReadString();
        v22 = 40;
LABEL_43:
        v24 = *(a1 + v22);
        *(a1 + v22) = v21;

        goto LABEL_44;
      }

      if (v13 != 5)
      {
        goto LABEL_38;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 60) |= 1u;
      while (1)
      {
        v27 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v27 & 0x7F) << v14;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          LOBYTE(v20) = 0;
          goto LABEL_47;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_47:
      *(a1 + 56) = v20;
LABEL_44:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v21 = PBReaderReadString();
        v22 = 48;
        break;
      case 2:
        v21 = PBReaderReadString();
        v22 = 24;
        break;
      case 3:
        v21 = PBReaderReadString();
        v22 = 8;
        break;
      default:
        goto LABEL_38;
    }

    goto LABEL_43;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoPerformDeviceCheckInRequestReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoPhotosForFamilyMembersWithDSIDsRequestReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadData();
      if (v14)
      {
        [a1 addRequestDSIDs:v14];
      }
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoAcceptCarKeyShareForMessageWithActivationCodeRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = &OBJC_IVAR___NPKProtoAcceptCarKeyShareForMessageWithActivationCodeRequest__sharingMessageData;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadString();
    v14 = &OBJC_IVAR___NPKProtoAcceptCarKeyShareForMessageWithActivationCodeRequest__activationCode;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoAddPendingProvisioningResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKIDVRemoteDeviceProtoPartitionsCredentialIdentifiersResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___NPKIDVRemoteDeviceProtoPartitionsCredentialIdentifiersResponse__errorData;
LABEL_21:
        v14 = PBReaderReadData();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___NPKIDVRemoteDeviceProtoPartitionsCredentialIdentifiersResponse__partitionsCredentialIdentifiersData;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoCheckCompanionPeerPaymentRegistrationStateRequestReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoGenerateISOEncryptionCertificateForSubCredentialIdRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoRemoteDevicePasscodeStateResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v27 = PBReaderReadData();
        v28 = *(a1 + 8);
        *(a1 + 8) = v27;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 20) |= 2u;
          while (1)
          {
            v33 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v33 & 0x7F) << v21;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_42;
            }
          }

          v20 = (v23 != 0) & ~[a2 hasError];
LABEL_42:
          v30 = 17;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_46;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 20) |= 1u;
          while (1)
          {
            v34 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v34 & 0x7F) << v14;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_44;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_44:
          v30 = 16;
        }

        *(a1 + v30) = v20;
      }

LABEL_46:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryProgressStepContextReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 100)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_30;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_30:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoRemoveExpressPassWithUniqueIdentifierResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v35 = 0;
            v27 = [a2 position] + 1;
            if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
            {
              v29 = [a2 data];
              [v29 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v26 |= (v35 & 0x7F) << v24;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v11 = v25++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_50;
            }
          }

          v21 = (v26 != 0) & ~[a2 hasError];
LABEL_50:
          v31 = 32;
        }

        else
        {
          if (v13 != 2)
          {
LABEL_47:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_54;
          }

          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v34 = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v34 & 0x7F) << v15;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              LOBYTE(v21) = 0;
              goto LABEL_52;
            }
          }

          v21 = (v17 != 0) & ~[a2 hasError];
LABEL_52:
          v31 = 33;
        }

        *(a1 + v31) = v21;
      }

      else if (v13 == 3)
      {
        v22 = PBReaderReadData();
        v23 = *(a1 + 8);
        *(a1 + 8) = v22;
      }

      else
      {
        if (v13 == 4)
        {
          v14 = PBReaderReadData();
          if (v14)
          {
            [a1 addCurrentExpressPassesInformation:v14];
          }
        }

        else
        {
          if (v13 != 5)
          {
            goto LABEL_47;
          }

          v14 = PBReaderReadData();
          if (v14)
          {
            [a1 addExpressPassConfigurations:v14];
          }
        }
      }

LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_25B3224F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B322A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B323DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B324550(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25B3251B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_25B3255A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_25B3258A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t NPKProtoConfigurationDataResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadData();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_32;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_32:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoDeclineRelatedInvitationsIfNecessaryRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKIDVRemoteDeviceProtoEstablishPrearmTrustV2RequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoRemoteAdminPerformRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = &OBJC_IVAR___NPKProtoRemoteAdminPerformRequest__command;
          goto LABEL_28;
        }

        if (v13 == 4)
        {
          v14 = PBReaderReadData();
          v15 = &OBJC_IVAR___NPKProtoRemoteAdminPerformRequest__infoDictionary;
          goto LABEL_28;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadData();
          v15 = &OBJC_IVAR___NPKProtoRemoteAdminPerformRequest__url;
          goto LABEL_28;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = &OBJC_IVAR___NPKProtoRemoteAdminPerformRequest__seid;
LABEL_28:
          v16 = *v15;
          v17 = *(a1 + v16);
          *(a1 + v16) = v14;

          goto LABEL_29;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoStandalonePaymentProvisioningFlowChooseFlowRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 200)
      {
        break;
      }

      if ((v12 >> 3) == 100)
      {
        v13 = objc_alloc_init(NPKProtoStandaloneRequestHeader);
        objc_storeStrong((a1 + 16), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !NPKProtoStandaloneRequestHeaderReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v13 = *(a1 + 8);
    *(a1 + 8) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoCommutePlanReminderForCommutePlanAndPassRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = &OBJC_IVAR___NPKProtoCommutePlanReminderForCommutePlanAndPassRequest__uniqueID;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadData();
    v14 = &OBJC_IVAR___NPKProtoCommutePlanReminderForCommutePlanAndPassRequest__commutePlanBytes;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoCanAcceptInvitationRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoAvailableProductsResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v21 = PBReaderReadData();
        v22 = 16;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 28) |= 1u;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_35;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_35:
            *(a1 + 24) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_36;
        }

        v21 = PBReaderReadData();
        v22 = 8;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_36:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoPerformDeviceCheckInResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v27 = PBReaderReadData();
        v28 = *(a1 + 8);
        *(a1 + 8) = v27;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 20) |= 2u;
          while (1)
          {
            v33 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v33 & 0x7F) << v21;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_42;
            }
          }

          v20 = (v23 != 0) & ~[a2 hasError];
LABEL_42:
          v30 = 17;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_46;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 20) |= 1u;
          while (1)
          {
            v34 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v34 & 0x7F) << v14;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_44;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_44:
          v30 = 16;
        }

        *(a1 + v30) = v20;
      }

LABEL_46:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoGenerateAuxiliaryCapabilitiesResponseReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v18 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18 & 0x7F) << v5;
        if ((v18 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = PBReaderReadData();
        if (v14)
        {
          [a1 addKeyMaterialValues:v14];
        }

        goto LABEL_25;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadData();
        if (v14)
        {
          [a1 addRequirementKeys:v14];
        }

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v16 = [a2 position];
      if (v16 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v15 = PBReaderReadData();
    v14 = a1[1];
    a1[1] = v15;
LABEL_25:

    goto LABEL_27;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoCarKeyGetPretrackRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoHasActiveExternallySharedPassesRequestReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoAddISO18013BlobsRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_39;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_39:
        *(a1 + 8) = v21;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadData();
          if (v14)
          {
            [a1 addIsoblobs:v14];
          }
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_40;
          }

          v14 = PBReaderReadData();
          if (v14)
          {
            [a1 addSubcredentialData:v14];
          }
        }
      }

LABEL_40:
      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoStandalonePaymentProvisioningMethodMetadataDictionaryEntryReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 110)
      {
        break;
      }

      if ((v12 >> 3) == 100)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningMethodMetadata);
    objc_storeStrong((a1 + 8), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentProvisioningMethodMetadataReadFrom(&v14->super.super.isa, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

BOOL __isLegacyPassInfo(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    v2 = [v1 objectForKeyedSubscript:@"date"];
    if (v2)
    {
      v3 = 1;
    }

    else
    {
      v4 = [v1 objectForKeyedSubscript:@"amount"];
      if (v4)
      {
        v3 = 1;
      }

      else
      {
        v5 = [v1 objectForKeyedSubscript:@"balance"];
        v3 = v5 != 0;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __pendingFieldValueInfo(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v6 = MEMORY[0x277D2BA58];
    v7 = a1;
    v8 = [[v6 alloc] initWithDomain:@"com.apple.nanopassbook"];
    v9 = [v8 objectForKey:@"TransitValuePending"];
    v10 = [v9 objectForKeyedSubscript:v7];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (__isLegacyPassInfo(v10))
      {
        v11 = v10;
      }

      else
      {
        v11 = [v10 objectForKeyedSubscript:v4];
      }

      v5 = v11;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

void __setPendingFieldValueInfo(void *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nanopassbook"];
    v9 = [v8 objectForKey:@"TransitValuePending"];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 mutableCopy];
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v14 = [v11 objectForKeyedSubscript:v6];
    v15 = v14;
    if (v14 && !__isLegacyPassInfo(v14))
    {
      v16 = [v15 mutableCopy];
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v17 = v16;
    if (v5)
    {
      [v16 setObject:v5 forKeyedSubscript:v7];
    }

    else
    {
      [v16 removeObjectForKey:v7];
    }

    [v11 setObject:v17 forKey:v6];
    [v8 setObject:v11 forKey:@"TransitValuePending"];

LABEL_16:
    goto LABEL_17;
  }

  v12 = pk_General_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

  if (v13)
  {
    v8 = pk_General_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412546;
      v20 = v6;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: missing required value: passUniqueID:%@ fieldIdentifier:%@", &v19, 0x16u);
    }

    goto LABEL_16;
  }

LABEL_17:

  v18 = *MEMORY[0x277D85DE8];
}

void sub_25B33048C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t NPKProtoStandalonePaymentProvisioningFlowStepContextReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 149)
      {
        if (v13 <= 169)
        {
          if (v13 == 150)
          {
            v14 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowProvisioningProgressStepContext);
            objc_storeStrong((a1 + 128), v14);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentProvisioningFlowProvisioningProgressStepContextReadFrom(v14, a2))
            {
LABEL_112:

              return 0;
            }

            goto LABEL_106;
          }

          if (v13 == 160)
          {
            v14 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowProvisioningResultStepContext);
            objc_storeStrong((a1 + 136), v14);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentProvisioningFlowProvisioningResultStepContextReadFrom(v14, a2))
            {
              goto LABEL_112;
            }

            goto LABEL_106;
          }
        }

        else
        {
          switch(v13)
          {
            case 0xAA:
              v14 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationChannelsStepContext);
              objc_storeStrong((a1 + 56), v14);
              v27 = 0;
              v28 = 0;
              if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationChannelsStepContextReadFrom(&v14->super.super.isa, a2))
              {
                goto LABEL_112;
              }

              goto LABEL_106;
            case 0xB4:
              v14 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationFieldsStepContext);
              objc_storeStrong((a1 + 72), v14);
              v27 = 0;
              v28 = 0;
              if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationFieldsStepContextReadFrom(v14, a2))
              {
                goto LABEL_112;
              }

              goto LABEL_106;
            case 0xBE:
              v14 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationCodeStepContext);
              objc_storeStrong((a1 + 64), v14);
              v27 = 0;
              v28 = 0;
              if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationCodeStepContextReadFrom(v14, a2))
              {
                goto LABEL_112;
              }

LABEL_106:
              PBReaderRecallMark();

              goto LABEL_107;
          }
        }
      }

      else
      {
        if (v13 > 99)
        {
          switch(v13)
          {
            case 104:
              v14 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowChooseFlowStepContext);
              objc_storeStrong((a1 + 24), v14);
              v27 = 0;
              v28 = 0;
              if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentProvisioningFlowChooseFlowStepContextReadFrom(v14, a2))
              {
                goto LABEL_112;
              }

              goto LABEL_106;
            case 105:
            case 107:
            case 108:
            case 109:
            case 111:
            case 113:
            case 117:
            case 119:
            case 121:
            case 122:
            case 123:
            case 124:
            case 125:
            case 126:
            case 127:
            case 128:
            case 129:
            case 131:
            case 134:
            case 136:
            case 138:
            case 139:
              goto LABEL_54;
            case 106:
              v14 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowChooseProductStepContext);
              objc_storeStrong((a1 + 32), v14);
              v27 = 0;
              v28 = 0;
              if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentProvisioningFlowChooseProductStepContextReadFrom(v14, a2))
              {
                goto LABEL_112;
              }

              goto LABEL_106;
            case 110:
              v14 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsStepContext);
              objc_storeStrong((a1 + 16), v14);
              v27 = 0;
              v28 = 0;
              if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsStepContextReadFrom(v14, a2))
              {
                goto LABEL_112;
              }

              goto LABEL_106;
            case 112:
              v14 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuanceAmountStepContext);
              objc_storeStrong((a1 + 40), v14);
              v27 = 0;
              v28 = 0;
              if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentProvisioningFlowDigitalIssuanceAmountStepContextReadFrom(v14, a2))
              {
                goto LABEL_112;
              }

              goto LABEL_106;
            case 114:
              v14 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuancePaymentStepContext);
              objc_storeStrong((a1 + 48), v14);
              v27 = 0;
              v28 = 0;
              if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentProvisioningFlowDigitalIssuancePaymentStepContextReadFrom(v14, a2))
              {
                goto LABEL_112;
              }

              goto LABEL_106;
            case 115:
              v14 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowMoreInformationStepContext);
              objc_storeStrong((a1 + 104), v14);
              v27 = 0;
              v28 = 0;
              if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentProvisioningFlowMoreInformationStepContextReadFrom(&v14->super.super.isa, a2))
              {
                goto LABEL_112;
              }

              goto LABEL_106;
            case 116:
              v14 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowReaderModeEntryStepContext);
              objc_storeStrong((a1 + 144), v14);
              v27 = 0;
              v28 = 0;
              if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentProvisioningFlowReaderModeEntryStepContextReadFrom(&v14->super.super.isa, a2))
              {
                goto LABEL_112;
              }

              goto LABEL_106;
            case 118:
              v14 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowReaderModeIngestionStepContext);
              objc_storeStrong((a1 + 152), v14);
              v27 = 0;
              v28 = 0;
              if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentProvisioningFlowReaderModeIngestionStepContextReadFrom(v14, a2))
              {
                goto LABEL_112;
              }

              goto LABEL_106;
            case 120:
              v14 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext);
              objc_storeStrong((a1 + 96), v14);
              v27 = 0;
              v28 = 0;
              if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentProvisioningFlowManualEntryStepContextReadFrom(v14, a2))
              {
                goto LABEL_112;
              }

              goto LABEL_106;
            case 130:
              v14 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext);
              objc_storeStrong((a1 + 160), v14);
              v27 = 0;
              v28 = 0;
              if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContextReadFrom(v14, a2))
              {
                goto LABEL_112;
              }

              goto LABEL_106;
            case 132:
              v14 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryStepContext);
              objc_storeStrong((a1 + 88), v14);
              v27 = 0;
              v28 = 0;
              if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryStepContextReadFrom(v14, a2))
              {
                goto LABEL_112;
              }

              goto LABEL_106;
            case 133:
              v14 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryProgressStepContext);
              objc_storeStrong((a1 + 80), v14);
              v27 = 0;
              v28 = 0;
              if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryProgressStepContextReadFrom(v14, a2))
              {
                goto LABEL_112;
              }

              goto LABEL_106;
            case 135:
              v14 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowProductDisambiguationStepContext);
              objc_storeStrong((a1 + 120), v14);
              v27 = 0;
              v28 = 0;
              if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentProvisioningFlowProductDisambiguationStepContextReadFrom(v14, a2))
              {
                goto LABEL_112;
              }

              goto LABEL_106;
            case 137:
              v14 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowPasscodeUpgradeStepContext);
              objc_storeStrong((a1 + 112), v14);
              v27 = 0;
              v28 = 0;
              if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentProvisioningFlowPasscodeUpgradeStepContextReadFrom(v14, a2))
              {
                goto LABEL_112;
              }

              goto LABEL_106;
            case 140:
              v14 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowTermsAndConditionsStepContext);
              objc_storeStrong((a1 + 176), v14);
              v27 = 0;
              v28 = 0;
              if (PBReaderPlaceMark() && NPKProtoStandalonePaymentProvisioningFlowTermsAndConditionsStepContextReadFrom(v14, a2))
              {
                goto LABEL_106;
              }

              goto LABEL_112;
            default:
              if (v13 != 100)
              {
                goto LABEL_54;
              }

              v14 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowWelcomeStepContext);
              objc_storeStrong((a1 + 184), v14);
              v27 = 0;
              v28 = 0;
              if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentProvisioningFlowWelcomeStepContextReadFrom(v14, a2))
              {
                goto LABEL_112;
              }

              goto LABEL_106;
          }
        }

        switch(v13)
        {
          case 0xA:
            v22 = PBReaderReadString();
            v23 = 168;
LABEL_49:
            v24 = *(a1 + v23);
            *(a1 + v23) = v22;

            goto LABEL_107;
          case 0x14:
            v22 = PBReaderReadString();
            v23 = 8;
            goto LABEL_49;
          case 0x1E:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *(a1 + 196) |= 1u;
            while (1)
            {
              LOBYTE(v27) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v27 & 0x7F) << v15;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                LOBYTE(v21) = 0;
                goto LABEL_110;
              }
            }

            v21 = (v17 != 0) & ~[a2 hasError];
LABEL_110:
            *(a1 + 192) = v21;
            goto LABEL_107;
        }
      }

LABEL_54:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_107:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void append4Bytes(void *a1, unsigned __int8 *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = (v2 >> 4) + 87;
  if (v2 < 0xA0)
  {
    LOBYTE(v3) = (*a2 >> 4) | 0x30;
  }

  bytes[0] = v3;
  v4 = v2 & 0xF;
  v5 = v2 & 0xF | 0x30;
  v6 = (v2 & 0xF) + 87;
  if (v4 < 0xA)
  {
    v6 = v5;
  }

  bytes[1] = v6;
  v7 = a2[1];
  v8 = (v7 >> 4) + 87;
  if (v7 < 0xA0)
  {
    LOBYTE(v8) = (a2[1] >> 4) | 0x30;
  }

  bytes[2] = v8;
  v9 = v7 & 0xF;
  v10 = v7 & 0xF | 0x30;
  v11 = (v7 & 0xF) + 87;
  if (v9 < 0xA)
  {
    v11 = v10;
  }

  bytes[3] = v11;
  v12 = a2[2];
  v13 = (v12 >> 4) + 87;
  if (v12 < 0xA0)
  {
    LOBYTE(v13) = (a2[2] >> 4) | 0x30;
  }

  bytes[4] = v13;
  v14 = v12 & 0xF;
  v15 = v12 & 0xF | 0x30;
  v16 = (v12 & 0xF) + 87;
  if (v14 < 0xA)
  {
    v16 = v15;
  }

  bytes[5] = v16;
  v17 = a2[3];
  v18 = (v17 >> 4) + 87;
  if (v17 < 0xA0)
  {
    LOBYTE(v18) = (a2[3] >> 4) | 0x30;
  }

  bytes[6] = v18;
  v19 = v17 & 0xF;
  v20 = v17 & 0xF | 0x30;
  v21 = (v17 & 0xF) + 87;
  if (v19 < 0xA)
  {
    v21 = v20;
  }

  bytes[7] = v21;
  bytes[8] = 32;
  v22 = a1;
  v23 = CFStringCreateWithBytes(0, bytes, 9, 0x600u, 0);
  [v22 appendString:v23];

  CFRelease(v23);
  v24 = *MEMORY[0x277D85DE8];
}

uint64_t NPKProtoStandalonePaymentProvisioningFlowAcknowledgeMoreInformationRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 100)
      {
        v13 = objc_alloc_init(NPKProtoStandaloneRequestHeader);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !NPKProtoStandaloneRequestHeaderReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKIDVRemoteDeviceProtoNotificationRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        break;
      }

      if (v13 != 3)
      {
        if (v13 != 2)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_50;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          v33 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v33 & 0x7F) << v14;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_48:
        v30 = 8;
        goto LABEL_49;
      }

      v21 = PBReaderReadString();
      v22 = *(a1 + 16);
      *(a1 + 16) = v21;

LABEL_50:
      v31 = [a2 position];
      if (v31 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    while (1)
    {
      v34 = 0;
      v26 = [a2 position] + 1;
      if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
      {
        v28 = [a2 data];
        [v28 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v25 |= (v34 & 0x7F) << v23;
      if ((v34 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v11 = v24++ >= 9;
      if (v11)
      {
        v20 = 0;
        goto LABEL_44;
      }
    }

    if ([a2 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v25;
    }

LABEL_44:
    v30 = 24;
LABEL_49:
    *(a1 + v30) = v20;
    goto LABEL_50;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoStatusForShareableCredentialsResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v22 = PBReaderReadData();
        v23 = *(a1 + 16);
        *(a1 + 16) = v22;
      }

      else if (v13 == 2)
      {
        v21 = PBReaderReadData();
        if (v21)
        {
          [a1 addUpdatedCredentialsData:v21];
        }
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          v27 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v27 & 0x7F) << v14;
          if ((v27 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_38;
          }
        }

        v20 = [a2 hasError] ? 0 : v16;
LABEL_38:
        *(a1 + 8) = v20;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoPeerPaymentWebServiceContextDidChangeRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___NPKProtoPeerPaymentWebServiceContextDidChangeRequest__peerPaymentAccountData;
LABEL_21:
        v14 = PBReaderReadData();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___NPKProtoPeerPaymentWebServiceContextDidChangeRequest__peerPaymentWebServiceContextData;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoSetCommutePlanReminderForCommutePlanAndPassRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v23 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        *(a1 + 32) |= 1u;
        v22 = 0;
        v17 = [a2 position] + 8;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 8, v18 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:&v22 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v22;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadData();
          v15 = 16;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_30;
          }

          v14 = PBReaderReadString();
          v15 = 24;
        }

        v16 = *(a1 + v15);
        *(a1 + v15) = v14;
      }

LABEL_30:
      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoStandalonePaymentApplicationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 100)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoStandalonePaymentPassReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 129)
      {
        switch(v13)
        {
          case 'd':
            v16 = objc_alloc_init(NPKProtoStandalonePass);
            objc_storeStrong((a1 + 40), v16);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !NPKProtoStandalonePassReadFrom(v16, a2))
            {
LABEL_55:

              return 0;
            }

            goto LABEL_33;
          case 'n':
            v14 = PBReaderReadString();
            v15 = 48;
            goto LABEL_47;
          case 'x':
            v14 = PBReaderReadString();
            v15 = 56;
            goto LABEL_47;
        }
      }

      else if (v13 > 149)
      {
        if (v13 == 150)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 64) |= 1u;
          while (1)
          {
            LOBYTE(v27) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v27 & 0x7F) << v17;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_53;
            }
          }

          if ([a2 hasError])
          {
            v23 = 0;
          }

          else
          {
            v23 = v19;
          }

LABEL_53:
          *(a1 + 8) = v23;
          goto LABEL_48;
        }

        if (v13 == 160)
        {
          v16 = objc_alloc_init(NPKProtoStandalonePaymentApplication);
          objc_storeStrong((a1 + 32), v16);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentApplicationReadFrom(v16, a2))
          {
            goto LABEL_55;
          }

LABEL_33:
          PBReaderRecallMark();

          goto LABEL_48;
        }
      }

      else
      {
        if (v13 == 130)
        {
          v14 = PBReaderReadString();
          v15 = 16;
          goto LABEL_47;
        }

        if (v13 == 140)
        {
          v14 = PBReaderReadString();
          v15 = 24;
LABEL_47:
          v24 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_48;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_48:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void NPKCardBalanceAdjustedLoadAmountsForBalanceField(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 balance];
  if (v4)
  {
    v5 = [v3 balance];
    v6 = [v5 value];
  }

  else
  {
    v6 = [MEMORY[0x277CCA980] zero];
  }

  v7 = [v3 action];
  v8 = [v7 enteredValueItem];
  v9 = [v8 minLoadAmount];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x277CCA980] zero];
  }

  v12 = v11;

  v13 = [v7 enteredValueItem];
  v14 = [v13 minLoadedBalance];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [MEMORY[0x277CCA980] zero];
  }

  v17 = v16;

  v18 = [v6 decimalNumberByAdding:v12];
  if ([v17 compare:v18] == 1)
  {
    v19 = [v17 decimalNumberBySubtracting:v6];

    v12 = v19;
  }

  v20 = [v7 enteredValueItem];
  v21 = [v20 maxLoadAmount];

  v22 = [v7 enteredValueItem];
  v23 = [v22 maxLoadedBalance];

  if (v23)
  {
    if (v21)
    {
      v24 = [v6 decimalNumberByAdding:v21];
      if ([v23 compare:v24] != -1)
      {
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      v24 = v6;
    }

    v25 = [v23 decimalNumberBySubtracting:v6];

    v21 = v25;
    goto LABEL_18;
  }

LABEL_19:
  v26 = pk_General_log();
  v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

  if (v27)
  {
    v28 = pk_General_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v36 = v12;
      v37 = 2112;
      v38 = v21;
      _os_log_impl(&dword_25B300000, v28, OS_LOG_TYPE_DEFAULT, "Notice: Card balance adjustedMinLoadAmount: %@, adjustedMaxLoadAmount: %@", buf, 0x16u);
    }
  }

  if (v33)
  {
    v29 = v12;
    *v33 = v12;
  }

  if (a2)
  {
    v30 = v21;
    *a2 = v21;
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t NPKProtoConfigurationDataRequestReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoCarKeySetEncryptedProductPlanIdentifierContainerRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = &OBJC_IVAR___NPKProtoCarKeySetEncryptedProductPlanIdentifierContainerRequest__containerData;
LABEL_21:
        v15 = *v14;
        v16 = *(a1 + v15);
        *(a1 + v15) = v13;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadString();
    v14 = &OBJC_IVAR___NPKProtoCarKeySetEncryptedProductPlanIdentifierContainerRequest__invitationIdentifier;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

id NPKIDVRemoteDeviceServiceSessionServerProtocolInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286CEC3B8];
  v1 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_configureWithPartition_ackHandler_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:sel_credentialIdentifiersInPartitions_completion_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v9 = getDCCredentialCryptoKeyClass_softClass;
  v17 = getDCCredentialCryptoKeyClass_softClass;
  if (!getDCCredentialCryptoKeyClass_softClass)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __getDCCredentialCryptoKeyClass_block_invoke;
    v13[3] = &unk_2799457C8;
    v13[4] = &v14;
    __getDCCredentialCryptoKeyClass_block_invoke(v13);
    v9 = v15[3];
  }

  v10 = v9;
  _Block_object_dispose(&v14, 8);
  v11 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v0 setClasses:v11 forSelector:sel_generatePresentmentKeysForCredential_numKeys_completion_ argumentIndex:0 ofReply:1];

  return v0;
}

void sub_25B33CDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getDCCredentialCryptoKeyClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CoreIDCredLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CoreIDCredLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2799457E8;
    v7 = 0;
    CoreIDCredLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (CoreIDCredLibraryCore_frameworkLibrary)
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
  result = objc_getClass("DCCredentialCryptoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDCCredentialCryptoKeyClass_block_invoke_cold_1();
  }

  getDCCredentialCryptoKeyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CoreIDCredLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreIDCredLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t NPKProtoListSubcredentialInvitationsResponseReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadData();
      if (v14)
      {
        [a1 addSubcredentialInvitationsData:v14];
      }
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoStandaloneErrorReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 10)
      {
        v22 = PBReaderReadString();
        v23 = a1[2];
        a1[2] = v22;
      }

      else if (v13 == 30)
      {
        v21 = objc_alloc_init(NPKProtoStandaloneUserInfo);
        [a1 addUserInfos:v21];
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !NPKProtoStandaloneUserInfoReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 20)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v26[0] & 0x7F) << v14;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_38;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_38:
        a1[1] = v20;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id getDCCredentialCryptoKeyClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getDCCredentialCryptoKeyClass_softClass_0;
  v7 = getDCCredentialCryptoKeyClass_softClass_0;
  if (!getDCCredentialCryptoKeyClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getDCCredentialCryptoKeyClass_block_invoke_0;
    v3[3] = &unk_2799457C8;
    v3[4] = &v4;
    __getDCCredentialCryptoKeyClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_25B33FE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B34624C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

Class __getDCCredentialCryptoKeyClass_block_invoke_0(uint64_t a1)
{
  CoreIDCredLibrary();
  result = objc_getClass("DCCredentialCryptoKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDCCredentialCryptoKeyClass_block_invoke_cold_1();
  }

  getDCCredentialCryptoKeyClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void CoreIDCredLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!CoreIDCredLibraryCore_frameworkLibrary_0)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __CoreIDCredLibraryCore_block_invoke_0;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_2799458F0;
    v4 = 0;
    CoreIDCredLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v2[0];
  if (!CoreIDCredLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __CoreIDCredLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreIDCredLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getDCCredentialPropertiesClass_block_invoke(uint64_t a1)
{
  CoreIDCredLibrary();
  result = objc_getClass("DCCredentialProperties");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDCCredentialPropertiesClass_block_invoke_cold_1();
  }

  getDCCredentialPropertiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getDCCredentialNonceClass_block_invoke(uint64_t a1)
{
  CoreIDCredLibrary();
  result = objc_getClass("DCCredentialNonce");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDCCredentialNonceClass_block_invoke_cold_1();
  }

  getDCCredentialNonceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getDCCredentialAttestationClass_block_invoke(uint64_t a1)
{
  CoreIDCredLibrary();
  result = objc_getClass("DCCredentialAttestation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDCCredentialAttestationClass_block_invoke_cold_1();
  }

  getDCCredentialAttestationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t NPKProtoOwnershipTokenRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoCheckFidoKeyPresenceResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_30;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_30:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_25B348114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v25 - 104));
  _Unwind_Resume(a1);
}

uint64_t NPKIDVRemoteDeviceProtoNotificationResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKIDVRemoteDeviceProtoPrearmCredentialResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKIDVRemoteDeviceProtoDeleteCredentialRequestReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = a1[2];
        a1[2] = v13;
LABEL_22:

        goto LABEL_24;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_24:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    if (v14)
    {
      [a1 addConfiguredPartitionsIdentifiers:v14];
    }

    goto LABEL_22;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoInitializeCloudStoreIfNecessaryWithHandlerRequestReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

BOOL NPKNewFlightTicketDesignTreatment(void *a1)
{
  v1 = a1;
  v2 = PKBoardingPassEnhancementsEnabled() && [v1 style] == 10 && objc_msgSend(v1, "transitType") == 1;

  return v2;
}

id NPKCreateFlightCode(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [v4 uppercaseString];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", a2];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v5, v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t NPKProtoRemotePassActionSelectItemResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 24;
LABEL_44:
        v30 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_55;
      }

      if (v13 != 2)
      {
LABEL_45:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_55;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        v34 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v34 & 0x7F) << v16;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_54;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v18;
      }

LABEL_54:
      *(a1 + 32) = v22;
LABEL_55:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v14 = PBReaderReadString();
        v15 = 16;
        break;
      case 4:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          v35 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v35 & 0x7F) << v23;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_50;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

LABEL_50:
        *(a1 + 8) = -(v29 & 1) ^ (v29 >> 1);
        goto LABEL_55;
      case 5:
        v14 = PBReaderReadData();
        v15 = 40;
        break;
      default:
        goto LABEL_45;
    }

    goto LABEL_44;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKPeerPaymentStatusWithPKPeerPaymentStatusAndActions(uint64_t a1, void *a2)
{
  v4 = 11;
  if (a1 > 4)
  {
    v6 = 6;
    if (a1 == 7)
    {
      v4 = 10;
    }

    if (a1 == 6)
    {
      v4 = 9;
    }

    v5 = a1 == 5;
    goto LABEL_10;
  }

  if (a1 == -1)
  {
    return 0;
  }

  if (a1)
  {
    v5 = a1 == 1;
    v6 = 8;
LABEL_10:
    if (v5)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  if ([a2 containsObject:{*MEMORY[0x277D38960], v2, v3}])
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t NPKPeerPaymentStatusWithNumber(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 unsignedIntegerValue];
  if (!v1 || (v3 = v2, v2 >= 0xC))
  {
    v4 = pk_General_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v5)
    {
      v6 = pk_General_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v9 = 138412290;
        v10 = v1;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: Request create NPKPeerPaymentStatus with unexpected number:%@", &v9, 0xCu);
      }
    }

    v3 = 2;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t NPKPeerPaymentStatusWithNSString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_7;
  }

  if ([v1 isEqualToString:@"Expired"])
  {
LABEL_3:
    v3 = 2;
    goto LABEL_8;
  }

  if ([v2 isEqualToString:@"Rejected"])
  {
    v3 = 9;
    goto LABEL_8;
  }

  if ([v2 isEqualToString:@"Complete"])
  {
LABEL_7:
    v3 = 8;
    goto LABEL_8;
  }

  if ([v2 isEqualToString:@"Pending"])
  {
    goto LABEL_3;
  }

  if ([v2 isEqualToString:@"Failed"])
  {
    v3 = 11;
  }

  else if ([v2 isEqualToString:@"Accepting"])
  {
    v3 = 4;
  }

  else if ([v2 isEqualToString:@"Rejecting"])
  {
    v3 = 5;
  }

  else if ([v2 isEqualToString:@"Canceling"])
  {
    v3 = 7;
  }

  else if ([v2 isEqualToString:@"Cancelled"])
  {
    v3 = 6;
  }

  else if ([v2 isEqualToString:@"NeedAccept"])
  {
    v3 = 3;
  }

  else if ([v2 isEqualToString:@"Disabled"])
  {
    v3 = 1;
  }

  else
  {
    v3 = 8;
  }

LABEL_8:

  return v3;
}