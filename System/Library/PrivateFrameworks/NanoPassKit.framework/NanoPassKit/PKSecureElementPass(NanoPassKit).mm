@interface PKSecureElementPass(NanoPassKit)
- (BOOL)npkIsBankConnectEligible;
- (BOOL)npkSupportUWBSecureRanging;
- (id)npkBluetoothCapableSubcredential;
- (id)npkSubcredentials;
- (uint64_t)allSupportedTechnologies;
- (uint64_t)npkExclusivelyTransactsOverBluetooth;
- (uint64_t)npkExclusivelyTransactsOverNFC;
- (uint64_t)npkIsPrecursorPass;
- (uint64_t)npkLinkedAccountFeatureIdentifier;
@end

@implementation PKSecureElementPass(NanoPassKit)

- (uint64_t)npkExclusivelyTransactsOverBluetooth
{
  result = [self npkSupportsBluetooth];
  if (result)
  {
    return [self npkSupportsMultipleRadioTypes] ^ 1;
  }

  return result;
}

- (uint64_t)npkExclusivelyTransactsOverNFC
{
  result = [self npkSupportsNFC];
  if (result)
  {
    return [self npkSupportsMultipleRadioTypes] ^ 1;
  }

  return result;
}

- (id)npkSubcredentials
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  devicePaymentApplications = [self devicePaymentApplications];
  v4 = [devicePaymentApplications countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(devicePaymentApplications);
        }

        subcredentials = [*(*(&v11 + 1) + 8 * i) subcredentials];
        [v2 unionSet:subcredentials];
      }

      v5 = [devicePaymentApplications countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)npkBluetoothCapableSubcredential
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  npkSubcredentials = [self npkSubcredentials];
  v2 = [npkSubcredentials countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(npkSubcredentials);
        }

        v5 = *(*(&v8 + 1) + 8 * i);
        if (([v5 supportedRadioTechnologies] & 2) != 0)
        {
          v2 = v5;
          goto LABEL_11;
        }
      }

      v2 = [npkSubcredentials countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

- (BOOL)npkSupportUWBSecureRanging
{
  devicePrimaryContactlessPaymentApplication = [self devicePrimaryContactlessPaymentApplication];
  if (devicePrimaryContactlessPaymentApplication && [self npkSupportsBluetooth])
  {
    [devicePrimaryContactlessPaymentApplication state];
    v3 = PKPaymentApplicationStateIsPersonalized() != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)allSupportedTechnologies
{
  v41 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  devicePaymentApplications = [self devicePaymentApplications];
  v3 = [devicePaymentApplications countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v32;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(devicePaymentApplications);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        subcredentials = [v8 subcredentials];
        v10 = [subcredentials countByEnumeratingWithState:&v27 objects:v39 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v28;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v28 != v12)
              {
                objc_enumerationMutation(subcredentials);
              }

              v5 |= [*(*(&v27 + 1) + 8 * j) supportedRadioTechnologies];
            }

            v11 = [subcredentials countByEnumeratingWithState:&v27 objects:v39 count:16];
          }

          while (v11);
        }
      }

      v4 = [devicePaymentApplications countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_lock(&oneTimeLoggingLock);
  v14 = oneTimeIdentifiers;
  if (!oneTimeIdentifiers)
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v16 = oneTimeIdentifiers;
    oneTimeIdentifiers = v15;

    v14 = oneTimeIdentifiers;
  }

  uniqueID = [self uniqueID];
  v18 = [v14 objectForKeyedSubscript:uniqueID];
  if (v18)
  {

LABEL_27:
    goto LABEL_28;
  }

  uniqueID2 = [self uniqueID];

  if (uniqueID2)
  {
    v20 = pk_General_log();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);

    if (v21)
    {
      v22 = pk_General_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID3 = [self uniqueID];
        *buf = 138412546;
        v36 = uniqueID3;
        v37 = 2048;
        v38 = v5;
        _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Notice: pass %@ has allSupportedTechnologies %lu", buf, 0x16u);
      }
    }

    v24 = oneTimeIdentifiers;
    uniqueID = [self uniqueID];
    [v24 setObject:&unk_286CE7600 forKeyedSubscript:uniqueID];
    goto LABEL_27;
  }

LABEL_28:
  os_unfair_lock_unlock(&oneTimeLoggingLock);
  v25 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)npkIsBankConnectEligible
{
  paymentPass = [self paymentPass];
  if (PKBankConnectAvailableForPass())
  {
    primaryAccountIdentifier = [self primaryAccountIdentifier];
    v4 = [primaryAccountIdentifier length] != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)npkLinkedAccountFeatureIdentifier
{
  secureElementPass = [self secureElementPass];
  isAppleCardPass = [secureElementPass isAppleCardPass];

  if (isAppleCardPass)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)npkIsPrecursorPass
{
  secureElementIdentifiers = [MEMORY[0x277D38248] secureElementIdentifiers];
  v3 = [self isPrecursorPass:secureElementIdentifiers];

  return v3;
}

@end