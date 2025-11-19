@interface HUTriggerBuilderItem
+ (id)_detailedErrorDescriptionForForceDisableReasons:(unint64_t)a3 inHome:(id)a4;
+ (id)settingsURLForForceDisableReasons:(unint64_t)a3;
- (HUTriggerBuilderItem)init;
- (HUTriggerBuilderItem)initWithTriggerBuilder:(id)a3 nameType:(unint64_t)a4;
- (id)_forceDisableReasons;
- (id)_resultsForTriggerConditions;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)_triggerType;
@end

@implementation HUTriggerBuilderItem

- (HUTriggerBuilderItem)initWithTriggerBuilder:(id)a3 nameType:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HUTriggerBuilderItem;
  v8 = [(HUTriggerBuilderItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_triggerBuilder, a3);
    v9->_naturalLanguageNameType = a4;
  }

  return v9;
}

- (HUTriggerBuilderItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithTriggerBuilder_nameType_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUTriggerBuilderItem.m" lineNumber:41 description:{@"%s is unavailable; use %@ instead", "-[HUTriggerBuilderItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HUTriggerBuilderItem *)self triggerBuilder];
  v6 = [v4 initWithTriggerBuilder:v5 nameType:{-[HUTriggerBuilderItem naturalLanguageNameType](self, "naturalLanguageNameType")}];

  return v6;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v53[2] = *MEMORY[0x277D85DE8];
  v4 = [(HUTriggerBuilderItem *)self triggerBuilder];

  if (!v4)
  {
    NSLog(&cfstr_Triggerbuilder_0.isa);
  }

  v5 = [(HUTriggerBuilderItem *)self triggerBuilder];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    objc_opt_class();
    v7 = [(HUTriggerBuilderItem *)self triggerBuilder];
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = objc_alloc(MEMORY[0x277D14C78]);
    v11 = [(HUTriggerBuilderItem *)self triggerBuilder];
    v12 = [v11 trigger];
    v13 = [(HUTriggerBuilderItem *)self triggerBuilder];
    v14 = [v13 home];
    v15 = [v10 initWithTrigger:v12 inHome:v14 forceDisabled:0 ignoringDisabled:1];

    v16 = [(HUTriggerBuilderItem *)self triggerBuilder];
    v17 = [v16 naturalLanguageNameOfType:{-[HUTriggerBuilderItem naturalLanguageNameType](self, "naturalLanguageNameType")}];

    if ([(HUTriggerBuilderItem *)self naturalLanguageNameType]== 3)
    {
      v18 = [v15 triggerDisplayTitle];
    }

    else
    {
      v22 = [(HUTriggerBuilderItem *)self triggerBuilder];
      v18 = [v22 naturalLanguageNameOfType:{-[HUTriggerBuilderItem naturalLanguageNameType](self, "naturalLanguageNameType")}];

      v17 = v22;
    }

    if (v18)
    {
      v23 = v18;
    }

    else
    {
      v23 = MEMORY[0x277CBEC38];
    }

    v24 = MEMORY[0x277D13FB8];
    if (v18)
    {
      v24 = MEMORY[0x277D13F60];
    }

    [v6 setObject:v23 forKeyedSubscript:*v24];
    v25 = [MEMORY[0x277D14C58] iconDescriptorForTriggerType:{-[HUTriggerBuilderItem _triggerType](self, "_triggerType")}];
    [v6 setObject:v25 forKeyedSubscript:*MEMORY[0x277D13E88]];

    v26 = [(HUTriggerBuilderItem *)self triggerBuilder];
    v27 = [v26 home];
    v28 = [v27 hf_currentUserIsAdministrator];
    v29 = v28 ^ 1u;

    if (v9)
    {
      v30 = [v9 locationInterface];
      v31 = [v30 locationEventBuilder];

      if (v31)
      {
        if (v28)
        {
          v32 = [v9 locationInterface];
          v33 = [v32 locationEventBuilder];
          v34 = [v33 eventType];
          v29 = v34 == 0;
        }

        else
        {
          v29 = 1;
        }

        objc_opt_class();
        v35 = [v9 locationInterface];
        v36 = [v35 locationEventBuilder];
        v37 = (objc_opt_isKindOfClass() & 1) != 0 ? v36 : 0;

        if (v37)
        {
          v38 = [v9 trigger];
          v39 = [v38 creator];

          if (v29)
          {
            v29 = 1;
          }

          else
          {
            v40 = [(HUTriggerBuilderItem *)self triggerBuilder];
            v41 = [v40 home];
            v42 = [v41 currentUser];
            v29 = v39 != v42;
          }
        }
      }
    }

    v43 = [MEMORY[0x277CCABB0] numberWithBool:v29];
    [v6 setObject:v43 forKeyedSubscript:*MEMORY[0x277D13EA8]];

    v44 = MEMORY[0x277D2C900];
    v45 = [(HUTriggerBuilderItem *)self _resultsForTriggerConditions];
    v53[0] = v45;
    v46 = [(HUTriggerBuilderItem *)self _forceDisableReasons];
    v53[1] = v46;
    v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
    v48 = [v44 combineAllFutures:v47];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __52__HUTriggerBuilderItem__subclass_updateWithOptions___block_invoke;
    v51[3] = &unk_277DB7A90;
    v52 = v6;
    v49 = v6;
    v21 = [v48 flatMap:v51];
  }

  else
  {
    v19 = MEMORY[0x277D2C900];
    v20 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v21 = [v19 futureWithError:v20];
  }

  return v21;
}

id __52__HUTriggerBuilderItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__HUTriggerBuilderItem__subclass_updateWithOptions___block_invoke_2;
  v8[3] = &unk_277DBB8D8;
  v9 = *(a1 + 32);
  [a2 na_each:v8];
  v4 = MEMORY[0x277D2C900];
  v5 = [MEMORY[0x277D14780] outcomeWithResults:*(a1 + 32)];
  v6 = [v4 futureWithResult:v5];

  return v6;
}

- (id)_resultsForTriggerConditions
{
  v3 = [HUTriggerConditionSummaryItem alloc];
  v4 = [(HUTriggerBuilderItem *)self triggerBuilder];
  v5 = [v4 conditionCollection];
  v6 = [v5 conditions];
  v7 = [(HUTriggerBuilderItem *)self triggerBuilder];
  v8 = [v7 home];
  v9 = [(HUTriggerConditionSummaryItem *)v3 initWithConditions:v6 home:v8];

  v10 = [(HUTriggerConditionSummaryItem *)v9 updateWithOptions:MEMORY[0x277CBEC10]];
  v11 = [v10 flatMap:&__block_literal_global_72];

  return v11;
}

id __52__HUTriggerBuilderItem__resultsForTriggerConditions__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x277D13E20]];
  v5 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v5;
}

- (id)_forceDisableReasons
{
  v3 = MEMORY[0x277D2C900];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v5 = [v3 futureWithResult:v4];

  if (([MEMORY[0x277D14CE8] isAMac] & 1) == 0)
  {
    v6 = [MEMORY[0x277D14CB0] sharedInstance];
    v7 = [v6 notificationSettings];
    v8 = [v7 flatMap:&__block_literal_global_33];
    v9 = [v8 recover:&__block_literal_global_36];

    v5 = v9;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__HUTriggerBuilderItem__forceDisableReasons__block_invoke_3;
  v12[3] = &unk_277DB7AB8;
  v12[4] = self;
  v10 = [v5 flatMap:v12];

  return v10;
}

id __44__HUTriggerBuilderItem__forceDisableReasons__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 authorizationStatus] != 2;
  v3 = MEMORY[0x277D2C900];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v2];
  v5 = [v3 futureWithResult:v4];

  return v5;
}

id __44__HUTriggerBuilderItem__forceDisableReasons__block_invoke_2()
{
  v0 = MEMORY[0x277D2C900];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v2 = [v0 futureWithResult:v1];

  return v2;
}

id __44__HUTriggerBuilderItem__forceDisableReasons__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [v3 unsignedIntegerValue];

  if ([MEMORY[0x277D14CE8] isAMac] & 1) != 0 || (objc_msgSend(MEMORY[0x277D14CE8], "isAVisionPro"))
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v7 = [MEMORY[0x277D146E8] sharedDispatcher];
    v8 = [v7 homeManager];
    v9 = [v8 isAccessAllowedWhenLocked];

    if (v9)
    {
      v10 = v5;
    }

    else
    {
      v10 = v5 | 2;
    }

    v11 = [*(a1 + 32) triggerBuilder];
    v6 = [v11 requiresLocationServicesAuthorization];

    if (v6)
    {
      v5 = v10 | 0x10;
    }

    else
    {
      v5 = v10;
    }
  }

  v12 = [*(a1 + 32) triggerBuilder];
  v13 = [v12 requiresUpdatedHomeHub];

  if (v13)
  {
    v14 = v5 | 8;
  }

  else
  {
    v14 = v5;
  }

  v15 = [*(a1 + 32) triggerBuilder];
  v16 = [v15 requiresHomeHub];

  if (v16)
  {
    v17 = v14 | 4;
  }

  else
  {
    v17 = v14;
  }

  v18 = v16 | v13 | v6;
  v19 = [*(a1 + 32) triggerBuilder];
  v20 = [v19 requiresFMFDeviceToRun];

  if (v20)
  {
    v21 = [*(a1 + 32) triggerBuilder];
    v22 = [v21 home];

    v23 = [v22 currentUser];
    v24 = [v22 homeAccessControlForUser:v23];
    v25 = [v24 presenceComputationStatus];

    if (v25 == 3)
    {
      v17 |= 0x20uLL;
    }

    v18 |= v25 == 3;
  }

  v26 = [*(a1 + 32) triggerBuilder];
  v27 = [v26 requiresConfirmationToRun];

  if ((v18 & 1) != 0 || v27)
  {
    v29 = objc_opt_class();
    v30 = [*(a1 + 32) triggerBuilder];
    v31 = [v30 home];
    v32 = [v29 _detailedErrorDescriptionForForceDisableReasons:v17 inHome:v31];
    [v4 setObject:v32 forKeyedSubscript:*MEMORY[0x277D13E40]];

    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
    [v4 setObject:v33 forKeyedSubscript:@"activeForceDisableReasons"];

    v28 = v17 == 0;
  }

  else
  {
    v28 = 1;
  }

  v34 = [*(a1 + 32) triggerBuilder];
  v35 = [v34 secureActionsRequireConfirmationToRun];

  if (v35)
  {
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
    [v4 setObject:v36 forKeyedSubscript:@"forceDisableReasonsForSecureCharacteristicControl"];
  }

  v37 = [*(a1 + 32) triggerBuilder];
  v38 = [v37 enabled];

  if ((v38 & v28) != 0)
  {
    v39 = 2;
  }

  else
  {
    v39 = 1;
  }

  v40 = [MEMORY[0x277CCABB0] numberWithInteger:v39];
  [v4 setObject:v40 forKeyedSubscript:*MEMORY[0x277D14068]];

  v41 = MEMORY[0x277CBEC38];
  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13F88]];
  [v4 setObject:v41 forKeyedSubscript:*MEMORY[0x277D13FB0]];
  v42 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v42;
}

- (unint64_t)_triggerType
{
  objc_opt_class();
  v3 = [(HUTriggerBuilderItem *)self triggerBuilder];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [(HUTriggerBuilderItem *)self triggerBuilder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = 1;
  }

  else if (v5)
  {
    v9 = [v5 eventTypes];
    v10 = [v9 count];

    if (v10 <= 1)
    {
      v13 = [v5 eventTypes];
      v14 = [v13 containsObject:*MEMORY[0x277D13890]];

      if (v14)
      {
        v15 = [v5 locationInterface];
        v16 = [v15 locationEventBuilder];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = 2;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v16 locationEventType] == 2)
            {
              v8 = 4;
            }

            else
            {
              v8 = 3;
            }
          }

          else
          {
            v8 = 0;
          }
        }
      }

      else
      {
        v17 = [v5 eventTypes];
        v18 = [v17 containsObject:*MEMORY[0x277D13888]];

        if (!v18)
        {
          v8 = 0;
          goto LABEL_27;
        }

        v19 = [MEMORY[0x277CD1970] hf_sensingCharacteristicTypes];
        v20 = [v5 characteristics];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __36__HUTriggerBuilderItem__triggerType__block_invoke;
        v23[3] = &unk_277DB9538;
        v24 = v19;
        v16 = v19;
        v21 = [v20 na_any:v23];

        if (v21)
        {
          v8 = 6;
        }

        else
        {
          v8 = 5;
        }
      }

      goto LABEL_27;
    }

    v8 = 8;
  }

  else
  {
    v11 = [(HUTriggerBuilderItem *)self triggerBuilder];
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();

    if (v12)
    {
      v8 = 7;
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_27:

  return v8;
}

uint64_t __36__HUTriggerBuilderItem__triggerType__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 characteristicType];
  v4 = [v2 containsObject:v3];

  return v4;
}

+ (id)_detailedErrorDescriptionForForceDisableReasons:(unint64_t)a3 inHome:(id)a4
{
  v5 = a4;
  v6 = v5;
  if ((a3 & 8) != 0)
  {
    v8 = [v5 hf_primaryResidentDevice];
    v9 = [v8 name];

    if (v9)
    {
      HULocalizedStringWithFormat(@"HUTriggerRequiresUpdatedHomeHub", @"%@", v10, v11, v12, v13, v14, v15, v9);
    }

    else
    {
      _HULocalizedStringWithDefaultValue(@"HUTriggerRequiresUpdatedHomeHubGenericName", @"HUTriggerRequiresUpdatedHomeHubGenericName", 1);
    }
    v16 = ;

    goto LABEL_21;
  }

  if ((a3 & 4) != 0)
  {
    v7 = @"HUTriggerRequiresHomeHub";
    goto LABEL_14;
  }

  if ((a3 & 0x10) != 0)
  {
    v7 = @"HUTriggerRequiresLocationServicesAuthorization";
    goto LABEL_14;
  }

  if (a3)
  {
    v17 = @"RequiresConfirmationToRunButNotificationsAreDisabled";
  }

  else if ((a3 & 2) != 0)
  {
    v17 = @"RequiresConfirmationToRunButAccessWhileLockedIsDisabled";
  }

  else
  {
    if ((a3 & 0x20) == 0)
    {
      v7 = @"HUTriggerRequiresConfirmationToRunWarning";
LABEL_14:
      v16 = _HULocalizedStringWithDefaultValue(v7, v7, 1);
      goto LABEL_21;
    }

    v17 = @"RequiresFMFDevice";
  }

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"HUTrigger%@SettingsLinkTitle", v17];
  v19 = _HULocalizedStringWithDefaultValue(v18, v18, 1);
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"HUTrigger%@WarningFormat", v17];
  v27 = HULocalizedStringWithFormat(v20, @"%@", v21, v22, v23, v24, v25, v26, v19);
  v16 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v27];
  v28 = [v27 rangeOfString:v19 options:4];
  if (v28 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = v28;
    v34 = v29;
    v31 = [MEMORY[0x277CBEB38] dictionary];
    v32 = [objc_opt_class() settingsURLForForceDisableReasons:a3];
    [v31 na_safeSetObject:v32 forKey:*MEMORY[0x277D740E8]];

    [v16 addAttributes:v31 range:{v30, v34}];
  }

LABEL_21:

  return v16;
}

+ (id)settingsURLForForceDisableReasons:(unint64_t)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x277CBEBC0] hf_notificationSettingsURL];
  }

  else if ((a3 & 2) != 0)
  {
    v3 = [MEMORY[0x277CBEBC0] hf_allowAccessWhileLockedSettingsURL];
  }

  else if ((a3 & 0x20) != 0)
  {
    v3 = [MEMORY[0x277CBEBC0] hf_locationDeviceSettingsURL];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end