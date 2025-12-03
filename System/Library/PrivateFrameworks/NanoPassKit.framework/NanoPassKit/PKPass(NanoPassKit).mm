@interface PKPass(NanoPassKit)
+ (void)npkClearTransitValuePendingStateIfNecessaryForPassWithID:()NanoPassKit withBalanceFields:commutePlanFields:;
+ (void)npkHandleTransitValuePendingAmount:()NanoPassKit forBalanceField:passWithUniqueID:;
+ (void)npkHandleTransitValuePendingExpiryDate:()NanoPassKit forCommutePlanField:passWithUniqueID:;
- (BOOL)_hasPlanUpdatedWithFieldIdentifier:()NanoPassKit fieldInfo:renewalDate:expiryDate:rawCountValue:;
- (BOOL)npkCanUseDynamicMotionView;
- (BOOL)npkIsAddValuePending;
- (BOOL)npkSupportsHidingAccessory;
- (__CFString)npkUWBLocalizationKey;
- (id)npkCompleteHashForWatchOSVersion:()NanoPassKit;
- (id)npkPendingAddValueStateExpireDateForBalanceFieldWithIdentifier:()NanoPassKit currentBalance:;
- (id)npkPendingAddValueStateExpireDateForCommutePlanFieldWithIdentifier:()NanoPassKit expiryDate:rawCountValue:;
- (uint64_t)npkAccessoryType;
- (uint64_t)npkCanUseDynamicMaterialView;
- (uint64_t)npkCanUseDynamicTransactionView;
- (uint64_t)npkHasValidNFCPayload;
- (uint64_t)npkIsDefaultPassEligible;
- (uint64_t)npkIsHomeKeyUWB;
- (uint64_t)npkIsLiveRenderEnabled;
- (uint64_t)npkUsesDynamicView;
@end

@implementation PKPass(NanoPassKit)

- (uint64_t)npkAccessoryType
{
  if ([self style] == 7)
  {
    return 2;
  }

  barcode = [self barcode];
  messageData = [barcode messageData];
  if (messageData)
  {
    v5 = messageData;
    barcode2 = [self barcode];
    messageData2 = [barcode2 messageData];
    v2 = [messageData2 length] != 0;
  }

  else
  {

    return 0;
  }

  return v2;
}

- (BOOL)npkSupportsHidingAccessory
{
  if (NPKShowRedesignedUI())
  {
    return 1;
  }

  if ([self npkAccessoryType] != 1)
  {
    return [self npkAccessoryType] != 2;
  }

  nfcPayload = [self nfcPayload];
  v2 = nfcPayload != 0;

  return v2;
}

- (id)npkCompleteHashForWatchOSVersion:()NanoPassKit
{
  v26 = *MEMORY[0x277D85DE8];
  if ((a3 - 1) >= 2)
  {
    v5 = pk_General_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

    if (v6)
    {
      v7 = pk_General_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v19 = 136446978;
        *&v19[4] = "[PKPass(NanoPassKit) npkCompleteHashForWatchOSVersion:]";
        v20 = 2082;
        v21 = "/Library/Caches/com.apple.xbs/Sources/NanoPassbook_Frameworks/NanoPassKit/PKPass+NanoPassKit.m";
        v22 = 2048;
        v23 = 120;
        v24 = 2048;
        v25 = a3;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_ERROR, "Error: *** NPKAssertion failure in %{public}s, %{public}s:%ld (reason: Cannot calculate npk complete hash for version %llu)", v19, 0x2Au);
      }
    }

    _NPKAssertAbort();
  }

  manifestHash = [self manifestHash];

  if (manifestHash)
  {
    v9 = MEMORY[0x277CBEB28];
    manifestHash2 = [self manifestHash];
    v11 = [v9 dataWithData:manifestHash2];

    if (a3 == 1)
    {
      v19[0] = [self settings] & 1;
      v12 = v11;
      v13 = 1;
    }

    else
    {
      settings = [self settings];
      v16 = [self settings] & 0x20 | settings & 1;
      *v19 = v16 | [self settings] & 0x10;
      v12 = v11;
      v13 = 2;
    }

    [v12 appendBytes:v19 length:{v13, *v19}];
    v14 = [MEMORY[0x277CBEA90] dataWithData:v11];
  }

  else
  {
    v14 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (uint64_t)npkUsesDynamicView
{
  if ([self npkCanUseDynamicTransactionView] & 1) != 0 || (objc_msgSend(self, "npkCanUseDynamicMaterialView") & 1) != 0 || (objc_msgSend(self, "npkCanUseDynamicMotionView"))
  {
    return 1;
  }

  return [self npkIsLiveRenderEnabled];
}

- (uint64_t)npkCanUseDynamicTransactionView
{
  v18 = *MEMORY[0x277D85DE8];
  paymentPass = [self paymentPass];
  isAppleCardPass = [paymentPass isAppleCardPass];

  if (isAppleCardPass)
  {
    paymentPass2 = [self paymentPass];
    supportsCategoryVisualization = [paymentPass2 supportsCategoryVisualization];

    v6 = pk_ui_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

    if (v7)
    {
      v8 = pk_ui_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID = [self uniqueID];
        v10 = uniqueID;
        v11 = @"NO";
        if (supportsCategoryVisualization)
        {
          v11 = @"YES";
        }

        v14 = 138412546;
        v15 = uniqueID;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Checking dynamic view setup for account account pass id %@ supportsCategoryVisualization %@", &v14, 0x16u);
      }
    }
  }

  else
  {
    supportsCategoryVisualization = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return supportsCategoryVisualization;
}

- (uint64_t)npkCanUseDynamicMaterialView
{
  if (isM8() & 1) != 0 || (isM8p())
  {
    return 0;
  }

  liveRenderType = [self liveRenderType];
  if ((liveRenderType - 1) < 3)
  {
    return 1;
  }

  if (liveRenderType != 5)
  {
    return 0;
  }

  return [self npkIsLiveRenderEnabled];
}

- (BOOL)npkCanUseDynamicMotionView
{
  paymentPass = [self paymentPass];
  dynamicLayerConfiguration = [paymentPass dynamicLayerConfiguration];
  if (dynamicLayerConfiguration)
  {
    v4 = [self passType] == 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)npkIsLiveRenderEnabled
{
  npkPassDynamicState = [self npkPassDynamicState];
  liveRender = [npkPassDynamicState liveRender];
  if (liveRender)
  {
    npkPassDynamicState2 = [self npkPassDynamicState];
    liveRender2 = [npkPassDynamicState2 liveRender];
    enabled = [liveRender2 enabled];
  }

  else
  {
    enabled = 0;
  }

  return enabled;
}

- (uint64_t)npkHasValidNFCPayload
{
  nfcPayload = [self nfcPayload];
  message = [nfcPayload message];
  if (message)
  {
    encryptionPublicKeyData = [nfcPayload encryptionPublicKeyData];
    if (encryptionPublicKeyData)
    {
      v4 = 1;
    }

    else
    {
      v4 = PKNFCPassKeyOptional();
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)npkIsDefaultPassEligible
{
  secureElementPass = [self secureElementPass];
  v2 = secureElementPass;
  if (secureElementPass && ![secureElementPass contactlessActivationState] && objc_msgSend(v2, "supportsDefaultCardSelection") && (objc_msgSend(v2, "effectiveContactlessPaymentApplicationState"), PKPaymentApplicationStateIsPersonalized()) && (objc_msgSend(v2, "isAccessPass") & 1) == 0)
  {
    v3 = [v2 isIdentityPass] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)npkIsHomeKeyUWB
{
  secureElementPass = [self secureElementPass];
  if (([secureElementPass npkSupportsBluetooth] & 1) != 0 || NPKMockUWBHomeKey())
  {
    secureElementPass2 = [self secureElementPass];
    isHomeKeyPass = [secureElementPass2 isHomeKeyPass];
  }

  else
  {
    isHomeKeyPass = 0;
  }

  return isHomeKeyPass;
}

- (__CFString)npkUWBLocalizationKey
{
  secureElementPass = [self secureElementPass];
  npkSupportsBluetooth = [secureElementPass npkSupportsBluetooth];

  if (npkSupportsBluetooth)
  {
    npkIsHomeKeyUWB = [self npkIsHomeKeyUWB];
    v5 = @"PASSIVE_ENTRY";
    if (npkIsHomeKeyUWB)
    {
      v5 = @"UNLOCK_ON_APPROACH";
    }

    v6 = v5;
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
        v11[0] = 0;
        _os_log_impl(&dword_25B300000, v9, OS_LOG_TYPE_DEFAULT, "Warning: No valid UWB localization key for a pass that does not support bluetooth.", v11, 2u);
      }
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)npkIsAddValuePending
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.nanopassbook"];
  v3 = [v2 objectForKey:@"TransitValuePending"];
  uniqueID = [self uniqueID];
  v5 = [v3 objectForKeyedSubscript:uniqueID];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (__isLegacyPassInfo(v5))
    {
      v6 = [v5 objectForKeyedSubscript:@"date"];
      v7 = v6 != 0;
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      allValues = [v5 allValues];
      v9 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        while (2)
        {
          v12 = 0;
          do
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(allValues);
            }

            v13 = [*(*(&v16 + 1) + 8 * v12) objectForKeyedSubscript:@"date"];

            if (v13)
            {
              v7 = 1;
              goto LABEL_15;
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      v7 = 0;
LABEL_15:
    }
  }

  else
  {
    v7 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)npkPendingAddValueStateExpireDateForBalanceFieldWithIdentifier:()NanoPassKit currentBalance:
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  uniqueID = [self uniqueID];
  v9 = __pendingFieldValueInfo(uniqueID, v6);

  v10 = [v9 objectForKey:@"date"];
  v11 = [v9 objectForKey:@"balance"];
  v12 = v11;
  v13 = 0;
  v14 = 1;
  if (v7 && v11)
  {
    v15 = [v11 compare:v7];
    v14 = v15 != -1;
    v13 = v15 == -1;
  }

  v16 = 0;
  if (v14 && v10)
  {
    v16 = [v10 dateByAddingTimeInterval:600.0];
  }

  v17 = pk_Payment_log();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

  if (v18)
  {
    v19 = pk_Payment_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID2 = [self uniqueID];
      v23 = 138413058;
      v24 = v16;
      v25 = 2112;
      v26 = uniqueID2;
      v27 = 2112;
      v28 = v6;
      v29 = 1024;
      v30 = v13;
      _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: PendingAddValueStateExpireDate: %@ for pass %@ field:%@ balanceUpdated:%d", &v23, 0x26u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)npkPendingAddValueStateExpireDateForCommutePlanFieldWithIdentifier:()NanoPassKit expiryDate:rawCountValue:
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  uniqueID = [self uniqueID];
  v12 = __pendingFieldValueInfo(uniqueID, v8);

  v13 = [v12 objectForKey:@"date"];
  v14 = [self _hasPlanUpdatedWithFieldIdentifier:v8 fieldInfo:v12 renewalDate:v13 expiryDate:v10 rawCountValue:v9];

  v15 = 0;
  if (v13 && (v14 & 1) == 0)
  {
    v15 = [v13 dateByAddingTimeInterval:600.0];
  }

  v16 = pk_Payment_log();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

  if (v17)
  {
    v18 = pk_Payment_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID2 = [self uniqueID];
      v22 = 138413314;
      v23 = v15;
      v24 = 2112;
      v25 = uniqueID2;
      v26 = 2112;
      v27 = v8;
      v28 = 1024;
      v29 = v14;
      v30 = 2112;
      v31 = v13;
      _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: PendingAddValueStateExpireDate: %@ for pass %@ field:%@ planUpdated:%d renewalDate: %@", &v22, 0x30u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)_hasPlanUpdatedWithFieldIdentifier:()NanoPassKit fieldInfo:renewalDate:expiryDate:rawCountValue:
{
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = a7;
  v13 = a4;
  v14 = [v13 objectForKey:@"planExpiry"];
  v15 = [v13 objectForKey:@"planTripCount"];

  v16 = 0;
  if (v11 && v14)
  {
    v16 = [v14 compare:v11] == -1;
  }

  v17 = 0;
  if (v12 && v15)
  {
    v17 = [v15 compare:v12] == -1;
  }

  v18 = pk_Payment_log();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);

  if (v19)
  {
    v20 = pk_Payment_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412802;
      v24 = v10;
      v25 = 1024;
      v26 = v16;
      v27 = 1024;
      v28 = v17;
      _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: PendingAddValueStateExpireDate for field:%@ expiryDateDidUpdate:%d tripCountDidUpdate: %d", &v23, 0x18u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v16 || v17;
}

+ (void)npkHandleTransitValuePendingAmount:()NanoPassKit forBalanceField:passWithUniqueID:
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = pk_Payment_log();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

  if (v11)
  {
    v12 = pk_Payment_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412802;
      v20 = v7;
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Notice: addValuePending: npkHandleTransitValuePendingAmount %@ withField:%@ forPassWithID %@", &v19, 0x20u);
    }
  }

  balance = [v8 balance];
  value = [balance value];

  if (v9)
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    date = [MEMORY[0x277CBEAA8] date];
    [v15 setObject:date forKey:@"date"];

    if (v7)
    {
      [v15 setObject:v7 forKey:@"amount"];
    }

    if (value)
    {
      [v15 setObject:value forKey:@"balance"];
    }

    identifier = [v8 identifier];
    __setPendingFieldValueInfo(v15, v9, identifier);
  }

  v18 = *MEMORY[0x277D85DE8];
}

+ (void)npkHandleTransitValuePendingExpiryDate:()NanoPassKit forCommutePlanField:passWithUniqueID:
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  usageDateRange = [v8 usageDateRange];
  expiryDate = [usageDateRange expiryDate];

  rawCountValue = [v8 rawCountValue];
  v13 = pk_Payment_log();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

  if (v14)
  {
    v15 = pk_Payment_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138413314;
      v21 = v7;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = expiryDate;
      v28 = 2112;
      v29 = rawCountValue;
      _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: addValuePending: npkHandleTransitValuePendingExpiryDate %@ withField:%@ forPassWithID %@ currentExpiry: %@, tripCount: %@", &v20, 0x34u);
    }
  }

  if (v9)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    date = [MEMORY[0x277CBEAA8] date];
    [v16 setObject:date forKey:@"date"];

    if (expiryDate)
    {
      [v16 setObject:expiryDate forKey:@"planExpiry"];
    }

    if (rawCountValue)
    {
      [v16 setObject:rawCountValue forKey:@"planTripCount"];
    }

    identifier = [v8 identifier];
    __setPendingFieldValueInfo(v16, v9, identifier);
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (void)npkClearTransitValuePendingStateIfNecessaryForPassWithID:()NanoPassKit withBalanceFields:commutePlanFields:
{
  v73 = *MEMORY[0x277D85DE8];
  v58 = a3;
  v7 = a4;
  v8 = a5;
  v9 = pk_Payment_log();
  LODWORD(a4) = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

  if (a4)
  {
    v10 = pk_Payment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v70 = v58;
      v71 = 2112;
      v72 = v7;
      _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_DEFAULT, "Notice: addValuePending: npkClearTransitValuePendingStateIfNecessaryForPassWithID %@ fields %@", buf, 0x16u);
    }
  }

  if (v58)
  {
    v53 = v7;
    v54 = v8;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v63 objects:v68 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v64;
      v15 = @"balance";
      obj = v11;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v64 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v63 + 1) + 8 * i);
          identifier = [v17 identifier];
          v19 = __pendingFieldValueInfo(v58, identifier);

          if (v19)
          {
            v20 = [v19 objectForKey:v15];
            balance = [v17 balance];
            value = [balance value];

            if (v20)
            {
              v23 = value == 0;
            }

            else
            {
              v23 = 1;
            }

            if (!v23 && [v20 compare:value] == -1)
            {
              v24 = v15;
              v25 = pk_Payment_log();
              v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);

              if (v26)
              {
                v27 = pk_Payment_log();
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_DEFAULT, "Notice: addValuePending: Balance is greater than before pending top up, clearing value pending state", buf, 2u);
                }
              }

              v28 = [v19 mutableCopy];
              [v28 removeObjectForKey:@"date"];
              [v28 removeObjectForKey:v24];
              identifier2 = [v17 identifier];
              __setPendingFieldValueInfo(v28, v58, identifier2);

              v15 = v24;
              v11 = obj;
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v63 objects:v68 count:16];
      }

      while (v13);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    obja = v54;
    v30 = [obja countByEnumeratingWithState:&v59 objects:v67 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v60;
      do
      {
        v33 = 0;
        v55 = v31;
        do
        {
          if (*v60 != v32)
          {
            objc_enumerationMutation(obja);
          }

          v34 = *(*(&v59 + 1) + 8 * v33);
          identifier3 = [v34 identifier];
          v36 = __pendingFieldValueInfo(v58, identifier3);

          if (v36)
          {
            v37 = [v36 objectForKey:@"planExpiry"];
            usageDateRange = [v34 usageDateRange];
            expiryDate = [usageDateRange expiryDate];

            v40 = [v36 objectForKey:@"planTripCount"];
            rawCountValue = [v34 rawCountValue];
            if (v37)
            {
              v42 = expiryDate == 0;
            }

            else
            {
              v42 = 1;
            }

            v43 = !v42 && [v37 compare:expiryDate] == -1;
            if (v40)
            {
              v44 = rawCountValue == 0;
            }

            else
            {
              v44 = 1;
            }

            v45 = !v44 && [v40 compare:rawCountValue] == -1;
            if (v43 || v45)
            {
              v46 = v32;
              v47 = pk_Payment_log();
              v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);

              if (v48)
              {
                v49 = pk_Payment_log();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_25B300000, v49, OS_LOG_TYPE_DEFAULT, "Notice: addValuePending: expiration date or trip count is greater than before pending renew, clearing value pending state", buf, 2u);
                }
              }

              v50 = [v36 mutableCopy];
              [v50 removeObjectForKey:@"date"];
              [v50 removeObjectForKey:@"planExpiry"];
              [v50 removeObjectForKey:@"planTripCount"];
              identifier4 = [v34 identifier];
              __setPendingFieldValueInfo(v50, v58, identifier4);

              v32 = v46;
              v31 = v55;
            }
          }

          ++v33;
        }

        while (v31 != v33);
        v31 = [obja countByEnumeratingWithState:&v59 objects:v67 count:16];
      }

      while (v31);
    }

    v7 = v53;
    v8 = v54;
  }

  v52 = *MEMORY[0x277D85DE8];
}

@end