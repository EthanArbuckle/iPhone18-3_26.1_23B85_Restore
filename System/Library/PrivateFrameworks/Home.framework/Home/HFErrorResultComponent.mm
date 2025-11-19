@interface HFErrorResultComponent
+ (BOOL)_shouldShowWifiPickerFixButtonWithSymptom:(id)a3;
+ (BOOL)isDateInCurrentYear:(id)a3 asLastSeenDate:(id)a4;
+ (id)_lastSeenDataForDate:(id)a3 batteryStatus:(unint64_t)a4;
+ (id)_lastSeenDataOnHeaderForDate:(id)a3;
+ (id)_lastSeenDataOnTileForDate:(id)a3;
+ (id)_noResponseErrorMsgTitleStringWithDate:(id)a3 batteryStatus:(unint64_t)a4;
+ (id)componentForAccessoryReprovisionState:(unint64_t)a3;
+ (id)componentForDisplayError:(id)a3 symptomContextProvider:(id)a4;
+ (id)componentForSymptom:(id)a3 contextProvider:(id)a4;
+ (id)componentForUnreachableAccessoryWithContextProvider:(id)a3 symptomContextProvider:(id)a4;
+ (id)componentForWriteErrorForCharacteristics:(id)a3 valueSource:(id)a4;
+ (id)noResponseErrorDescriptionString:(id)a3;
+ (id)noResponseErrorDetailedDescriptionString:(id)a3;
+ (int64_t)_displayPriorityForSymptom:(id)a3;
- (HFErrorResultComponent)init;
- (HFErrorResultComponent)initWithCategory:(unint64_t)a3;
- (id)description;
- (id)results;
- (int64_t)componentPriority;
- (void)_addAccountSymptomMessageForAccountName:(id)a3 symptom:(id)a4;
@end

@implementation HFErrorResultComponent

- (HFErrorResultComponent)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithCategory_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFErrorResultComponent.m" lineNumber:38 description:{@"%s is unavailable; use %@ instead", "-[HFErrorResultComponent init]", v5}];

  return 0;
}

- (HFErrorResultComponent)initWithCategory:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HFErrorResultComponent;
  result = [(HFErrorResultComponent *)&v5 init];
  if (result)
  {
    result->_category = a3;
    result->_badgeType = 1;
    result->_descriptionBadgeType = 0;
  }

  return result;
}

- (int64_t)componentPriority
{
  v3 = objc_opt_class();
  v4 = [(HFErrorResultComponent *)self category];

  return [v3 priorityForCategory:v4];
}

- (id)results
{
  v3 = objc_opt_new();
  v4 = [(HFErrorResultComponent *)self underlyingSymptom];
  [v3 setObject:v4 forKeyedSubscript:@"symptom"];

  if (_os_feature_enabled_impl())
  {
    v5 = [(HFErrorResultComponent *)self symptomName];
    [v3 setObject:v5 forKeyedSubscript:@"symptomName"];

    v6 = [(HFErrorResultComponent *)self symptomDescription];
    [v3 setObject:v6 forKeyedSubscript:@"symptomDescription"];

    v7 = [(HFErrorResultComponent *)self symptomURL];
    [v3 setObject:v7 forKeyedSubscript:@"symptomURL"];
  }

  v8 = [(HFErrorResultComponent *)self errorDescription];
  [v3 setObject:v8 forKeyedSubscript:@"errorDescription"];

  v9 = [(HFErrorResultComponent *)self detailedErrorDescription];
  [v3 setObject:v9 forKeyedSubscript:@"longErrorDescription"];

  v10 = [(HFErrorResultComponent *)self errorMessageTitle];
  [v3 setObject:v10 forKeyedSubscript:@"errorMessageTitle"];

  v11 = [(HFErrorResultComponent *)self errorMessageButtonTitle];
  [v3 setObject:v11 forKeyedSubscript:@"errorMessageButtonTitle"];

  v12 = [(HFErrorResultComponent *)self errorHandlerURL];
  [v3 setObject:v12 forKeyedSubscript:@"errorHandlerURL"];

  v13 = [(HFErrorResultComponent *)self errorHandlerURLText];
  [v3 setObject:v13 forKeyedSubscript:@"errorHandlerURLText"];

  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFErrorResultComponent shouldShowWifiPickerFixButton](self, "shouldShowWifiPickerFixButton")}];
    [v3 setObject:v14 forKeyedSubscript:@"showWifiPickerButton"];
  }

  if ([(HFErrorResultComponent *)self displayPriority])
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HFErrorResultComponent displayPriority](self, "displayPriority")}];
    [v3 setObject:v15 forKeyedSubscript:@"priority"];
  }

  if ([(HFErrorResultComponent *)self badgeType])
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFErrorResultComponent badgeType](self, "badgeType")}];
    [v3 setObject:v16 forKeyedSubscript:@"badge"];
  }

  if ([(HFErrorResultComponent *)self descriptionBadgeType])
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFErrorResultComponent descriptionBadgeType](self, "descriptionBadgeType")}];
    [v3 setObject:v17 forKeyedSubscript:@"descriptionBadge"];
  }

  if ([(HFErrorResultComponent *)self updateInProgress])
  {
    v18 = MEMORY[0x277CBEC38];
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"updateInProgress"];
    [v3 setObject:v18 forKeyedSubscript:@"isInStateTransition"];
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFErrorResultComponent category](self, "category")}];
  v5 = [v3 appendObject:v4 withName:@"category"];

  v6 = [(HFErrorResultComponent *)self errorDescription];
  [v3 appendString:v6 withName:@"description"];

  v7 = [(HFErrorResultComponent *)self underlyingSymptom];
  v8 = [v3 appendObject:v7 withName:@"symptom" skipIfNil:1];

  v9 = [(HFErrorResultComponent *)self errorHandlerURL];
  v10 = [v3 appendObject:v9 withName:@"handler" skipIfNil:1];

  v11 = [v3 build];

  return v11;
}

+ (id)componentForDisplayError:(id)a3 symptomContextProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    NSLog(&cfstr_SCalledWithout.isa, "+[HFErrorResultComponent(HFServiceLikeItem) componentForDisplayError:symptomContextProvider:]");
    goto LABEL_6;
  }

  if (+[HFUtilities shouldSuppressAllErrorsForDemo])
  {
LABEL_6:
    v10 = 0;
    goto LABEL_24;
  }

  switch([v6 category])
  {
    case 0:
    case 1:
      v8 = [v6 contextProvider];
      v9 = [a1 componentForUnreachableAccessoryWithContextProvider:v8 symptomContextProvider:v7];
      goto LABEL_22;
    case 2:
      v17 = [v6 contextProvider];
      v10 = [a1 componentForUnreachableAccessoryWithContextProvider:v17 symptomContextProvider:v7];

      v11 = @"HFError_HMErrorCodeBridgedAccessoryNotReachable_description";
      goto LABEL_18;
    case 3:
      v10 = [[HFErrorResultComponent alloc] initWithCategory:1];
      v18 = _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionUnavailable", @"HFServiceDescriptionUnavailable", 1);
      [(HFErrorResultComponent *)v10 setErrorDescription:v18];

      v19 = _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionAccessoryUnavailable", @"HFServiceDescriptionAccessoryUnavailable", 1);
      [(HFErrorResultComponent *)v10 setDetailedErrorDescription:v19];

      v14 = @"HFServiceLongFormErrorNoThreadNetworkNoResident";
      goto LABEL_15;
    case 4:
      v10 = [[HFErrorResultComponent alloc] initWithCategory:1];
      v12 = _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionUnavailable", @"HFServiceDescriptionUnavailable", 1);
      [(HFErrorResultComponent *)v10 setErrorDescription:v12];

      v13 = _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionAccessoryUnavailable", @"HFServiceDescriptionAccessoryUnavailable", 1);
      [(HFErrorResultComponent *)v10 setDetailedErrorDescription:v13];

      v14 = @"HFServiceLongFormErrorNoThreadNetworkResidentWithoutThread";
      goto LABEL_15;
    case 5:
      v10 = [[HFErrorResultComponent alloc] initWithCategory:1];
      v21 = _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionUnavailable", @"HFServiceDescriptionUnavailable", 1);
      [(HFErrorResultComponent *)v10 setErrorDescription:v21];

      v22 = _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionAccessoryUnavailable", @"HFServiceDescriptionAccessoryUnavailable", 1);
      [(HFErrorResultComponent *)v10 setDetailedErrorDescription:v22];

      v14 = @"HFServiceLongFormErrorNoThreadNetworkLocal";
LABEL_15:
      v23 = _HFLocalizedStringWithDefaultValue(v14, v14, 1);
      [(HFErrorResultComponent *)v10 setErrorMessageTitle:v23];

      v24 = [MEMORY[0x277CBEBC0] hf_homeHubRequiredLearnMoreURL];
      [(HFErrorResultComponent *)v10 setErrorHandlerURL:v24];

      v8 = _HFLocalizedStringWithDefaultValue(@"HFServiceErrorNoThreadNetworkLearnMoreTitle", @"HFServiceErrorNoThreadNetworkLearnMoreTitle", 1);
      [(HFErrorResultComponent *)v10 setErrorHandlerURLText:v8];
      goto LABEL_23;
    case 6:
      v10 = [[HFErrorResultComponent alloc] initWithCategory:2];
      v25 = _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionAccessoryNotSupported", @"HFServiceDescriptionAccessoryNotSupported", 1);
      [(HFErrorResultComponent *)v10 setErrorDescription:v25];

      v11 = @"HFServiceLongFormErrorDoesNotSupportNotifications";
      goto LABEL_18;
    case 7:
      v10 = [[HFErrorResultComponent alloc] initWithCategory:4];
      v20 = _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionActionRequiredInManufacturerApp", @"HFServiceDescriptionActionRequiredInManufacturerApp", 1);
      [(HFErrorResultComponent *)v10 setErrorDescription:v20];

      v11 = @"HFServiceLongFormErrorActionRequiredInManufacturerApp";
      goto LABEL_18;
    case 8:
      v8 = [v6 underlyingSymptom];
      v9 = [a1 componentForSymptom:v8 contextProvider:v7];
LABEL_22:
      v10 = v9;
      goto LABEL_23;
    case 9:
      v10 = [[HFErrorResultComponent alloc] initWithCategory:3];
      v15 = _HFLocalizedStringWithDefaultValue(@"HFMediaAccessorySplitMediaAccountErrorDescription", @"HFMediaAccessorySplitMediaAccountErrorDescription", 1);
      [(HFErrorResultComponent *)v10 setErrorDescription:v15];

      v16 = _HFLocalizedStringWithDefaultValue(@"HFMediaAccessorySplitMediaAccountErrorDescription", @"HFMediaAccessorySplitMediaAccountErrorDescription", 1);
      [(HFErrorResultComponent *)v10 setDetailedErrorDescription:v16];

      [(HFErrorResultComponent *)v10 setDescriptionBadgeType:5];
      [(HFErrorResultComponent *)v10 setDisplayPriority:1];
      break;
    case 10:
      v10 = [[HFErrorResultComponent alloc] initWithCategory:3];
      v27 = _HFLocalizedStringWithDefaultValue(@"HFMediaAccessoryStateDescriptionCurrentlyRestartingAccessory", @"HFMediaAccessoryStateDescriptionCurrentlyRestartingAccessory", 1);
      [(HFErrorResultComponent *)v10 setErrorDescription:v27];

      v11 = @"HFMediaAccessoryStateDescriptionCurrentlyRestartingAccessory";
      v26 = @"HFMediaAccessoryStateDescriptionCurrentlyRestartingAccessory";
      goto LABEL_19;
    case 11:
      v10 = [[HFErrorResultComponent alloc] initWithCategory:3];
      v11 = @"HFSiriEndpointAccessoryRequestingSessionErrorDescription";
      goto LABEL_18;
    case 12:
      v10 = [[HFErrorResultComponent alloc] initWithCategory:3];
      v11 = @"HFSiriEndpointAccessorySessionDroppedErrorDescription";
      goto LABEL_18;
    case 13:
      v10 = [[HFErrorResultComponent alloc] initWithCategory:3];
      v11 = @"HFSiriEndpointAccessorySiriDisabledErrorDescription";
LABEL_18:
      v26 = v11;
LABEL_19:
      v8 = _HFLocalizedStringWithDefaultValue(v11, v26, 1);
      [(HFErrorResultComponent *)v10 setDetailedErrorDescription:v8];
LABEL_23:

      break;
    default:
      goto LABEL_6;
  }

LABEL_24:

  return v10;
}

+ (id)componentForUnreachableAccessoryWithContextProvider:(id)a3 symptomContextProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[HFErrorResultComponent alloc] initWithCategory:1];
  v9 = [v6 hf_remoteAccessState];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = 3;
  }

  v49 = MEMORY[0x277D85DD0];
  v50 = 3221225472;
  v51 = __120__HFErrorResultComponent_HFServiceLikeItem__componentForUnreachableAccessoryWithContextProvider_symptomContextProvider___block_invoke;
  v52 = &unk_277E00298;
  v11 = v6;
  v53 = v11;
  v54 = v10;
  v12 = [v11 hf_isUserAtHome];
  if ((v10 - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  [(HFErrorResultComponent *)v8 setDisplayPriority:v13];
  v14 = [v7 lastSeenDate];
  v15 = [v7 lastSeenBatteryStatus];

  if (_os_feature_enabled_impl() && v15 == 1)
  {
    [(HFErrorResultComponent *)v8 setDescriptionBadgeType:8];
  }

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __120__HFErrorResultComponent_HFServiceLikeItem__componentForUnreachableAccessoryWithContextProvider_symptomContextProvider___block_invoke_2;
  v44[3] = &unk_277E002C0;
  v16 = v11;
  v45 = v16;
  v47 = a1;
  v17 = v14;
  v46 = v17;
  v48 = v10;
  v18 = __120__HFErrorResultComponent_HFServiceLikeItem__componentForUnreachableAccessoryWithContextProvider_symptomContextProvider___block_invoke_2(v44);
  [(HFErrorResultComponent *)v8 setErrorDescription:v18];

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __120__HFErrorResultComponent_HFServiceLikeItem__componentForUnreachableAccessoryWithContextProvider_symptomContextProvider___block_invoke_3;
  v39[3] = &unk_277E002C0;
  v19 = v16;
  v40 = v19;
  v42 = a1;
  v20 = v17;
  v41 = v20;
  v43 = v10;
  v21 = __120__HFErrorResultComponent_HFServiceLikeItem__componentForUnreachableAccessoryWithContextProvider_symptomContextProvider___block_invoke_3(v39);
  [(HFErrorResultComponent *)v8 setDetailedErrorDescription:v21];

  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __120__HFErrorResultComponent_HFServiceLikeItem__componentForUnreachableAccessoryWithContextProvider_symptomContextProvider___block_invoke_4;
  v32 = &unk_277E002E8;
  v33 = v19;
  v22 = v8;
  v34 = v22;
  v35 = v20;
  v36 = a1;
  v37 = v15;
  v38 = v10;
  v23 = v20;
  v24 = v19;
  v25 = __120__HFErrorResultComponent_HFServiceLikeItem__componentForUnreachableAccessoryWithContextProvider_symptomContextProvider___block_invoke_4(&v29);
  [(HFErrorResultComponent *)v22 setErrorMessageTitle:v25, v29, v30, v31, v32];

  v26 = v35;
  v27 = v22;

  return v22;
}

id __120__HFErrorResultComponent_HFServiceLikeItem__componentForUnreachableAccessoryWithContextProvider_symptomContextProvider___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) hf_isUserAtHome];
  if (v2)
  {
LABEL_8:
    v2 = [*(a1 + 48) noResponseErrorDescriptionString:*(a1 + 40)];
    goto LABEL_10;
  }

  v3 = *(a1 + 56);
  if ((v3 - 1) >= 2)
  {
    if (v3 != 3 && v3 != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v2 = _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionUnavailable", @"HFServiceDescriptionUnavailable", 1);
LABEL_10:

  return v2;
}

id __120__HFErrorResultComponent_HFServiceLikeItem__componentForUnreachableAccessoryWithContextProvider_symptomContextProvider___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) hf_isUserAtHome];
  if (v2)
  {
LABEL_8:
    v2 = [*(a1 + 48) noResponseErrorDetailedDescriptionString:*(a1 + 40)];
    goto LABEL_10;
  }

  v3 = *(a1 + 56);
  if ((v3 - 1) >= 2)
  {
    if (v3 != 3 && v3 != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v2 = _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionUnavailable", @"HFServiceDescriptionUnavailable", 1);
LABEL_10:

  return v2;
}

id __120__HFErrorResultComponent_HFServiceLikeItem__componentForUnreachableAccessoryWithContextProvider_symptomContextProvider___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) hf_isUserAtHome];
  if (v2)
  {
    goto LABEL_2;
  }

  v3 = *(a1 + 72);
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v3 != 3)
      {
        goto LABEL_14;
      }

      goto LABEL_2;
    }

    v4 = @"HFServiceLongFormErrorResidentDeviceNotReachable";
LABEL_13:
    v2 = _HFLocalizedStringWithDefaultValue(v4, v4, 1);
    goto LABEL_14;
  }

  if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    v4 = @"HFServiceLongFormErrorNoResidentDevice";
    goto LABEL_13;
  }

LABEL_2:
  if (_os_feature_enabled_impl())
  {
    [*(a1 + 40) setDescriptionBadgeType:8];
  }

  v2 = [*(a1 + 56) _noResponseErrorMsgTitleStringWithDate:*(a1 + 48) batteryStatus:*(a1 + 64)];
LABEL_14:

  return v2;
}

+ (id)componentForWriteErrorForCharacteristics:(id)a3 valueSource:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ((objc_opt_respondsToSelector() & 1) != 0 && !+[HFUtilities shouldSuppressAllErrorsForDemo])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v5;
    v7 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v7)
    {
      v9 = *v24;
      while (2)
      {
        for (i = 0; i != v7; i = (i + 1))
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v8);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          v12 = [v6 cachedErrorForWriteToCharacteristic:{v11, v23}];
          if (v12)
          {
            v13 = v12;
            v14 = HFLogForCategory(0x3DuLL);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v28 = v13;
              v29 = 2112;
              v30 = v11;
              _os_log_error_impl(&dword_20D9BF000, v14, OS_LOG_TYPE_ERROR, "Displaying cached write error %@ for characteristic %@", buf, 0x16u);
            }

            v7 = [[HFErrorResultComponent alloc] initWithCategory:6];
            v15 = [v13 hf_isHMErrorWithCode:87];
            v16 = v15 == 0;
            if (v15)
            {
              v17 = @"HFServiceDescriptionActionRequiredInManufacturerApp";
            }

            else
            {
              v17 = @"HFServiceItemDescriptionFailure";
            }

            if (v16)
            {
              v18 = @"HFServiceItemDescriptionFailure";
            }

            else
            {
              v18 = @"HFServiceLongFormErrorActionRequiredInManufacturerApp";
            }

            v19 = _HFLocalizedStringWithDefaultValue(v17, v17, 1);
            [(HFErrorResultComponent *)v7 setErrorDescription:v19];

            v20 = _HFLocalizedStringWithDefaultValue(v18, v18, 1);
            [(HFErrorResultComponent *)v7 setDetailedErrorDescription:v20];

            goto LABEL_22;
          }
        }

        v7 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }

  else
  {
    v7 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)componentForAccessoryReprovisionState:(unint64_t)a3
{
  if (a3)
  {
    v4 = [[HFErrorResultComponent alloc] initWithCategory:0];
    [(HFErrorResultComponent *)v4 setDisplayPriority:1];
    v5 = _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionAccessoryConnectionError", @"HFServiceDescriptionAccessoryConnectionError", 1);
    [(HFErrorResultComponent *)v4 setErrorDescription:v5];

    v6 = HFLocalizedWiFiString(@"HFServiceLongFormPersistentWarngingHomeKitReWAC");
    [(HFErrorResultComponent *)v4 setErrorMessageTitle:v6];

    if (a3 == 2)
    {
      [(HFErrorResultComponent *)v4 setUpdateInProgress:1];
    }

    else if (a3 == 1)
    {
      v7 = HFLocalizedWiFiString(@"HFServiceActionMessageReWAC");
      [(HFErrorResultComponent *)v4 setErrorMessageButtonTitle:v7];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)componentForSymptom:(id)a3 contextProvider:(id)a4
{
  v155 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    NSLog(&cfstr_SWithoutASympt.isa, "+[HFErrorResultComponent(HFServiceLikeItem) componentForSymptom:contextProvider:]");
  }

  v9 = HFLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = NSStringFromHMSymptomType([v7 type]);
    *buf = 138412290;
    v150 = v10;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_INFO, "HFErrorResultComponent processing HMSymptom: %@", buf, 0xCu);
  }

  if ([a1 _requiresManualFixOptionToDisplaySymptom:v7] && !objc_msgSend(v8, "shouldDisplayManualFixOptionForSymptom:", v7))
  {
    a1 = 0;
    goto LABEL_137;
  }

  v11 = [[HFErrorResultComponent alloc] initWithCategory:3];
  [(HFErrorResultComponent *)v11 setUnderlyingSymptom:v7];
  -[HFErrorResultComponent setDisplayPriority:](v11, "setDisplayPriority:", [a1 _displayPriorityForSymptom:v7]);
  v12 = [v7 type];
  if (v12 <= 99)
  {
    a1 = 0;
    switch(v12)
    {
      case 1:
      case 20:
        v13 = [v8 detailedErrorDescriptionForiCloudSymptom];
        [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v13];

        [(HFErrorResultComponent *)v11 setDescriptionBadgeType:5];
        v14 = [v8 currentUserID];
        goto LABEL_70;
      case 2:
        v57 = _HFLocalizedStringWithDefaultValue(@"HFSymptomLongDescriptionNeediTunesCredential", @"HFSymptomLongDescriptionNeediTunesCredential", 1);
        [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v57];

        [(HFErrorResultComponent *)v11 setDescriptionBadgeType:5];
        v14 = [v8 currentAppleMusicAccountName];
LABEL_70:
        v38 = v14;
        [(HFErrorResultComponent *)v11 _addAccountSymptomMessageForAccountName:v14 symptom:v7];
        goto LABEL_120;
      case 3:
        v38 = [v8 accessoryName];
        HFLocalizedStringWithFormat(@"HFSymptomLongDescriptionHomekitProblem", @"%@", v68, v69, v70, v71, v72, v73, v38);
        goto LABEL_89;
      case 4:
        if (+[HFUtilities isInternalInstall])
        {
          v84 = [v8 currentDeviceNetworkSSID];
          v85 = [v84 isEqualToString:@"AppleWiFi"];

          if (v85)
          {
            v86 = MEMORY[0x277CCACA8];
            v40 = HFLocalizedWiFiString(@"HFSymptomLongDescriptionWifiUnsupportedNetwork");
            v148 = 0;
            v87 = [v8 homeKitObjectName];
            v88 = [v8 currentDeviceNetworkSSID];
            v89 = [v86 stringWithValidatedFormat:v40 validFormatSpecifiers:@"%@ %@" error:&v148, v87, v88];
            v38 = v148;
            [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v89];
            goto LABEL_116;
          }
        }

        v112 = MEMORY[0x277CCACA8];
        v40 = HFLocalizedWiFiString(@"HFSymptomLongDescriptionWifiConnectionProblem");
        v147 = 0;
        v87 = [v8 homeKitObjectName];
        v88 = [v112 stringWithValidatedFormat:v40 validFormatSpecifiers:@"%@" error:&v147, v87];
        v98 = v147;
LABEL_94:
        v38 = v98;
        [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v88];
        goto LABEL_117;
      case 5:
        v90 = HFLocalizedWiFiString(@"HFSymptomStatusTextWiFiLostConnection");
        goto LABEL_107;
      case 6:
      case 15:
        goto LABEL_136;
      case 7:
        v46 = [v8 accessoryName];
        v53 = HFLocalizedStringWithFormat(@"HFSymptomLongDescriptionHardwareFailure", @"%@", v47, v48, v49, v50, v51, v52, v46);
        [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v53];

        v54 = _HFLocalizedStringWithDefaultValue(@"HFSymptomLongDescriptionHardwareFailureContactSupport", @"HFSymptomLongDescriptionHardwareFailureContactSupport", 1);
        [(HFErrorResultComponent *)v11 setErrorMessageTitle:v54];

        v55 = _HFLocalizedStringWithDefaultValue(@"HFSymptomLongDescriptionHardwareFailureContactSupport", @"HFSymptomLongDescriptionHardwareFailureContactSupport", 1);
        goto LABEL_67;
      case 8:
        v38 = [v8 homeKitObjectName];
        HFLocalizedStringWithFormat(@"HFSymptomDetailedDescriptionStereoVersionMismatch", @"%@", v91, v92, v93, v94, v95, v96, v38);
        goto LABEL_89;
      case 9:
        v15 = @"HFSymptomDetailedDescriptionStereoNotFound";
        goto LABEL_106;
      case 10:
        v97 = MEMORY[0x277CCACA8];
        v40 = HFLocalizedWiFiString(@"HFSymptomDetailedDescriptionStereoError");
        v144 = 0;
        v87 = [v8 homeKitObjectName];
        v88 = [v97 stringWithValidatedFormat:v40 validFormatSpecifiers:@"%@" error:&v144, v87];
        v98 = v144;
        goto LABEL_94;
      case 11:
        v39 = [v8 currentDeviceNetworkSSID];
        if (v39)
        {
          v38 = v39;
          v40 = HFLocalizedWiFiString(@"HFSymptomLongDescriptionProblemWifiMismatch");
          v41 = [v8 accessoryNetworkSSID];

          if (v41)
          {
            v42 = MEMORY[0x277CCACA8];
            v146 = 0;
            v43 = [v8 accessoryNetworkSSID];
            v44 = [v42 stringWithValidatedFormat:v40 validFormatSpecifiers:@"%@" error:&v146, v43];
            v45 = v146;
            [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v44];
          }

          else
          {
            v45 = HFLocalizedWiFiString(@"HFSymptomLongDescriptionProblemWifiMismatchNone");
            [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v45];
          }

          v116 = [v8 accessoryUUID];

          if (v116)
          {
            v123 = [v8 accessoryUUID];
            v124 = [HFURLComponents fixSymptomURLForAccessoryWithUUID:v123 symptom:v7];
            [(HFErrorResultComponent *)v11 setErrorHandlerURL:v124];
          }

          v87 = HFLocalizedStringWithFormat(@"HFSymptomLongDescriptionProblemWifiMisMatchLinkString", @"%@", v117, v118, v119, v120, v121, v122, v38);
          [(HFErrorResultComponent *)v11 setErrorHandlerURLText:v87];
          goto LABEL_118;
        }

        v113 = HFLogForCategory(0);
        if (!os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_103;
        }

        *buf = 0;
        goto LABEL_141;
      case 12:
        v15 = @"HFSymptomDetailedDescriptionTargetControlMissing";
        goto LABEL_106;
      case 13:
        v15 = @"HFSymptomLongDescriptionVPNProfileExpired";
        goto LABEL_106;
      case 14:
        v56 = HFLocalizedWiFiString(@"HFSymptomLongDescription8021xNetworkProblem");
        [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v56];

        if (+[HFUtilities isAMac])
        {
          goto LABEL_121;
        }

        v55 = HFLocalizedWiFiString(@"HFSymptomActionMessageWifiSettings");
LABEL_67:
        v38 = v55;
        [(HFErrorResultComponent *)v11 setErrorMessageButtonTitle:v55];
        goto LABEL_120;
      case 16:
        v103 = [v8 accessoryNetworkSSID];
        v104 = [v103 length];

        if (!v104)
        {
          v15 = @"HFSymptomLongDescriptionNetworkProfileFixProblem";
          goto LABEL_106;
        }

        v38 = [v8 accessoryNetworkSSID];
        HFLocalizedStringWithFormat(@"HFSymptomLongDescriptionNetworkProfileFixProblemWithName", @"%@", v105, v106, v107, v108, v109, v110, v38);
        v40 = LABEL_89:;
        [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v40];
        goto LABEL_119;
      case 17:
        v58 = [v8 accessoryNetworkSSID];
        v59 = [v58 length];

        if (v59)
        {
          v60 = [v8 accessoryNetworkSSID];
          v67 = HFLocalizedStringWithFormat(@"HFSymptomLongDescriptionNetworkProfileInstallProblemWithName", @"%@", v61, v62, v63, v64, v65, v66, v60);
          [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v67];
        }

        else
        {
          v60 = _HFLocalizedStringWithDefaultValue(@"HFSymptomLongDescriptionNetworkProfileInstallProblem", @"HFSymptomLongDescriptionNetworkProfileInstallProblem", 1);
          [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v60];
        }

        v114 = [MEMORY[0x277CBEBC0] hf_learnAboutNetworksRequiringProfilesURL];
        goto LABEL_101;
      case 18:
        v74 = [v8 accessoryNetworkSSID];
        v75 = [v74 length];

        if (v75)
        {
          v76 = [v8 accessoryNetworkSSID];
          v83 = HFLocalizedStringWithFormat(@"HFSymptomLongDescriptionNetworkNotShareableProblemWithName", @"%@", v77, v78, v79, v80, v81, v82, v76);
          [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v83];
        }

        else
        {
          v76 = _HFLocalizedStringWithDefaultValue(@"HFSymptomLongDescriptionNetworkNotShareableProblem", @"HFSymptomLongDescriptionNetworkNotShareableProblem", 1);
          [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v76];
        }

        v114 = [MEMORY[0x277CBEBC0] hf_learnAboutUnshareableNetworksURL];
LABEL_101:
        v115 = v114;
        [(HFErrorResultComponent *)v11 setErrorHandlerURL:v114];

        v38 = _HFLocalizedStringWithDefaultValue(@"HFSymptomDescriptionLearnMore", @"HFSymptomDescriptionLearnMore", 1);
        [(HFErrorResultComponent *)v11 setErrorHandlerURLText:v38];
        goto LABEL_120;
      case 19:
        v99 = [v8 currentDeviceNetworkSSID];
        if (!v99)
        {
          v113 = HFLogForCategory(0);
          if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
LABEL_141:
            _os_log_error_impl(&dword_20D9BF000, v113, OS_LOG_TYPE_ERROR, "Skipping WiFi Network Mismatch symptom; We aren't connected to a WiFi network, so that doesn't make any sense.", buf, 2u);
          }

LABEL_103:

          goto LABEL_104;
        }

        v40 = v99;
        v100 = [v8 accessoryNetworkSSID];
        v101 = v100;
        if (v100)
        {
          v102 = v100;
        }

        else
        {
          v102 = [v8 currentDeviceNetworkSSID];
        }

        v87 = v102;

        v88 = HFLocalizedWiFiString(@"HFSymptomLongDescriptionProblemNeedCaptiveLeaseRenewal");
        v145 = 0;
        v125 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v88 validFormatSpecifiers:@"%@" error:&v145, v87];
        v38 = v145;
        [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v125];

        v126 = [v8 accessoryUUID];

        if (v126)
        {
          v133 = [v8 accessoryUUID];
          v134 = [HFURLComponents fixSymptomURLForAccessoryWithUUID:v133 symptom:v7];
          [(HFErrorResultComponent *)v11 setErrorHandlerURL:v134];
        }

        v89 = HFLocalizedStringWithFormat(@"HFSymptomLongDescriptionProblemNeedCaptiveLeaseRenewalLinkString", @"%@", v127, v128, v129, v130, v131, v132, v87);
        [(HFErrorResultComponent *)v11 setErrorHandlerURLText:v89];
LABEL_116:

LABEL_117:
LABEL_118:

LABEL_119:
        break;
      default:
        goto LABEL_90;
    }

    goto LABEL_120;
  }

  if (v12 <= 111)
  {
    if (v12 <= 101)
    {
      if (v12 == 100)
      {
        if ([v8 contextSupportsNetworkDiagnostics] && _os_feature_enabled_impl())
        {
          if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
          {
            -[HFErrorResultComponent setShouldShowWifiPickerFixButton:](v11, "setShouldShowWifiPickerFixButton:", [a1 _shouldShowWifiPickerFixButtonWithSymptom:v7]);
          }

          [(HFErrorResultComponent *)v11 setDescriptionBadgeType:7];
          v26 = _HFLocalizedStringWithDefaultValue(@"HFSymptomDescriptionProblemNetworkIssue", @"HFSymptomDescriptionProblemNetworkIssue", 1);
          [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v26];

          v27 = _HFLocalizedStringWithDefaultValue(@"HFSymptomLongDescriptionNetworkMisconfiguredUnknown", @"HFSymptomLongDescriptionNetworkMisconfiguredUnknown", 1);
          [(HFErrorResultComponent *)v11 setSymptomDescription:v27];

          v28 = _HFLocalizedStringWithDefaultValue(@"HFSymptomTitleNoHomeHubCommunication", @"HFSymptomTitleNoHomeHubCommunication", 1);
          [(HFErrorResultComponent *)v11 setSymptomName:v28];

          v19 = [MEMORY[0x277CBEBC0] hf_homePodNetworkMisconfigurationUnknownLearnMoreURL];
          goto LABEL_60;
        }
      }

      else if ([v8 contextSupportsNetworkDiagnostics] && _os_feature_enabled_impl())
      {
        if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
        {
          -[HFErrorResultComponent setShouldShowWifiPickerFixButton:](v11, "setShouldShowWifiPickerFixButton:", [a1 _shouldShowWifiPickerFixButtonWithSymptom:v7]);
        }

        [(HFErrorResultComponent *)v11 setDescriptionBadgeType:7];
        v16 = _HFLocalizedStringWithDefaultValue(@"HFSymptomDescriptionProblemNetworkIssue", @"HFSymptomDescriptionProblemNetworkIssue", 1);
        [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v16];

        v17 = _HFLocalizedStringWithDefaultValue(@"HFSymptomLongDescriptionPeerToPeer", @"HFSymptomLongDescriptionPeerToPeer", 1);
        [(HFErrorResultComponent *)v11 setSymptomDescription:v17];

        v18 = _HFLocalizedStringWithDefaultValue(@"HFSymptomTitleNoHomeHubCommunication", @"HFSymptomTitleNoHomeHubCommunication", 1);
        [(HFErrorResultComponent *)v11 setSymptomName:v18];

        v19 = [MEMORY[0x277CBEBC0] hf_homePodNetworkIssuePeerToPeerLearnMoreURL];
        goto LABEL_60;
      }

      goto LABEL_121;
    }

    if (v12 == 102)
    {
      if ([v8 contextSupportsNetworkDiagnostics] && _os_feature_enabled_impl())
      {
        if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
        {
          -[HFErrorResultComponent setShouldShowWifiPickerFixButton:](v11, "setShouldShowWifiPickerFixButton:", [a1 _shouldShowWifiPickerFixButtonWithSymptom:v7]);
        }

        [(HFErrorResultComponent *)v11 setDescriptionBadgeType:7];
        v29 = _HFLocalizedStringWithDefaultValue(@"HFSymptomDescriptionProblemNetworkIssue", @"HFSymptomDescriptionProblemNetworkIssue", 1);
        [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v29];

        v30 = _HFLocalizedStringWithDefaultValue(@"HFSymptomLongDescriptionDoubleNAT", @"HFSymptomLongDescriptionDoubleNAT", 1);
        [(HFErrorResultComponent *)v11 setSymptomDescription:v30];

        v31 = _HFLocalizedStringWithDefaultValue(@"HFSymptomTitleNoHomeHubCommunication", @"HFSymptomTitleNoHomeHubCommunication", 1);
        [(HFErrorResultComponent *)v11 setSymptomName:v31];

        v19 = [MEMORY[0x277CBEBC0] hf_homePodNetworkIssueDoubleNATLearnMoreURL];
        goto LABEL_60;
      }

      goto LABEL_121;
    }

    if (v12 == 103)
    {
      if ([v8 contextSupportsNetworkDiagnostics] && _os_feature_enabled_impl())
      {
        if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
        {
          -[HFErrorResultComponent setShouldShowWifiPickerFixButton:](v11, "setShouldShowWifiPickerFixButton:", [a1 _shouldShowWifiPickerFixButtonWithSymptom:v7]);
        }

        [(HFErrorResultComponent *)v11 setDescriptionBadgeType:7];
        v20 = _HFLocalizedStringWithDefaultValue(@"HFSymptomDescriptionProblemNetworkIssue", @"HFSymptomDescriptionProblemNetworkIssue", 1);
        [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v20];

        v21 = _HFLocalizedStringWithDefaultValue(@"HFSymptomLongDescriptionMultipleNetworks", @"HFSymptomLongDescriptionMultipleNetworks", 1);
        [(HFErrorResultComponent *)v11 setSymptomDescription:v21];

        v22 = _HFLocalizedStringWithDefaultValue(@"HFSymptomTitleNoHomeHubCommunication", @"HFSymptomTitleNoHomeHubCommunication", 1);
        [(HFErrorResultComponent *)v11 setSymptomName:v22];

        v19 = [MEMORY[0x277CBEBC0] hf_homePodNetworkIssueMultipleNetworksLearnMoreURL];
        goto LABEL_60;
      }

      goto LABEL_121;
    }

    goto LABEL_90;
  }

  if (v12 <= 114)
  {
    if (v12 == 112)
    {
      if (![v8 contextSupportsNetworkDiagnostics] || !_os_feature_enabled_impl())
      {
        goto LABEL_121;
      }

      [(HFErrorResultComponent *)v11 setDescriptionBadgeType:7];
      v35 = _HFLocalizedStringWithDefaultValue(@"HFSymptomDescriptionProblemNetworkIssue", @"HFSymptomDescriptionProblemNetworkIssue", 1);
      [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v35];

      v36 = _HFLocalizedStringWithDefaultValue(@"HFSymptomLongDescriptionDNSServerOutage", @"HFSymptomLongDescriptionDNSServerOutage", 1);
      [(HFErrorResultComponent *)v11 setSymptomDescription:v36];

      v37 = _HFLocalizedStringWithDefaultValue(@"HFSymptomTitleNoNetworkCommunication", @"HFSymptomTitleNoNetworkCommunication", 1);
      [(HFErrorResultComponent *)v11 setSymptomName:v37];

      v19 = [MEMORY[0x277CBEBC0] hf_homePodNetworkIssueDNSServerOutageLearnMoreURL];
LABEL_60:
      v38 = v19;
      [(HFErrorResultComponent *)v11 setSymptomURL:v19];
LABEL_120:

      goto LABEL_121;
    }

    if (v12 == 113)
    {
      if (![v8 contextSupportsNetworkDiagnostics] || !_os_feature_enabled_impl())
      {
        goto LABEL_121;
      }

      [(HFErrorResultComponent *)v11 setDescriptionBadgeType:7];
      v23 = _HFLocalizedStringWithDefaultValue(@"HFSymptomDescriptionProblemNetworkIssue", @"HFSymptomDescriptionProblemNetworkIssue", 1);
      [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v23];

      v24 = _HFLocalizedStringWithDefaultValue(@"HFSymptomLongDescriptionDHCPAcquisitionFailure", @"HFSymptomLongDescriptionDHCPAcquisitionFailure", 1);
      [(HFErrorResultComponent *)v11 setSymptomDescription:v24];

      v25 = _HFLocalizedStringWithDefaultValue(@"HFSymptomTitleNoNetworkCommunication", @"HFSymptomTitleNoNetworkCommunication", 1);
      [(HFErrorResultComponent *)v11 setSymptomName:v25];

      v19 = [MEMORY[0x277CBEBC0] hf_homePodNetworkIssueDHCPAcquisitionFailureLearnMoreURL];
      goto LABEL_60;
    }

LABEL_90:
    v111 = HFLogForCategory(0);
    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
    {
      v142 = NSStringFromSelector(a2);
      v143 = [v7 type];
      *buf = 138412802;
      v150 = a1;
      v151 = 2112;
      v152 = v142;
      v153 = 2048;
      v154 = v143;
      _os_log_error_impl(&dword_20D9BF000, v111, OS_LOG_TYPE_ERROR, "%@:%@ Unhandled symptom type: %ld", buf, 0x20u);
    }

    goto LABEL_104;
  }

  if (v12 == 115)
  {
    if ([v8 contextSupportsNetworkDiagnostics] && _os_feature_enabled_impl())
    {
      if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
      {
        [(HFErrorResultComponent *)v11 setShouldShowWifiPickerFixButton:1];
      }

      [(HFErrorResultComponent *)v11 setDescriptionBadgeType:7];
      v32 = _HFLocalizedStringWithDefaultValue(@"HFSymptomDescriptionProblemNetworkIssue", @"HFSymptomDescriptionProblemNetworkIssue", 1);
      [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v32];

      v33 = _HFLocalizedStringWithDefaultValue(@"HFSymptomLongDescriptionWiFiDisassociation", @"HFSymptomLongDescriptionWiFiDisassociation", 1);
      [(HFErrorResultComponent *)v11 setSymptomDescription:v33];

      v34 = _HFLocalizedStringWithDefaultValue(@"HFSymptomTitleNoNetworkCommunication", @"HFSymptomTitleNoNetworkCommunication", 1);
      [(HFErrorResultComponent *)v11 setSymptomName:v34];

      v19 = [MEMORY[0x277CBEBC0] hf_homePodNetworkIssueWifiDisassociationLearnMoreURL];
      goto LABEL_60;
    }

LABEL_121:
    v135 = [(HFErrorResultComponent *)v11 detailedErrorDescription];

    if (v135)
    {
      v136 = [v7 hf_shortDescription];
      [(HFErrorResultComponent *)v11 setErrorDescription:v136];
    }

    if ([v8 fixStateForSymptom:v7] != 1)
    {
      goto LABEL_135;
    }

    if ([v7 type] == 11)
    {
      v137 = @"HFServiceDescriptionUpdatingNetwork";
    }

    else
    {
      if ([v7 type] != 19)
      {
        if ([v7 type] == 1 || objc_msgSend(v7, "type") == 2 || objc_msgSend(v7, "type") == 20)
        {
          v139 = _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionAuthenticatingAccount", @"HFServiceDescriptionAuthenticatingAccount", 1);
          [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v139];

          [(HFErrorResultComponent *)v11 setErrorHandlerURL:0];
          [(HFErrorResultComponent *)v11 setErrorHandlerURLText:0];
        }

        [(HFErrorResultComponent *)v11 setUpdateInProgress:1];
        goto LABEL_134;
      }

      v137 = @"HFServiceDescriptionJoiningCaptive";
    }

    v138 = HFLocalizedWiFiString(v137);
    [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v138];

    [(HFErrorResultComponent *)v11 setErrorHandlerURL:0];
    [(HFErrorResultComponent *)v11 setErrorHandlerURLText:0];
LABEL_134:
    [(HFErrorResultComponent *)v11 setBadgeType:0];
LABEL_135:
    a1 = v11;
    goto LABEL_136;
  }

  if (v12 != 1000)
  {
    if (v12 == 999)
    {
      v15 = @"HMSymptomLongDescriptionSharedUserErrorNotification";
LABEL_106:
      v90 = _HFLocalizedStringWithDefaultValue(v15, v15, 1);
LABEL_107:
      v38 = v90;
      [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v90];
      goto LABEL_120;
    }

    goto LABEL_90;
  }

  NSLog(&cfstr_SymptomTypeHms.isa);
LABEL_104:
  a1 = 0;
LABEL_136:

LABEL_137:
  v140 = *MEMORY[0x277D85DE8];

  return a1;
}

+ (BOOL)_shouldShowWifiPickerFixButtonWithSymptom:(id)a3
{
  v3 = a3;
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    v4 = [v3 infoDictionary];
    v5 = [v4 hmf_BOOLForKey:*MEMORY[0x277CD11C0]];
    v6 = [v4 hmf_BOOLForKey:*MEMORY[0x277CD11B0]];
    v7 = [v4 hmf_BOOLForKey:*MEMORY[0x277CD11B8]];
    v8 = [v3 type];
    if (v8 == 103)
    {
      if (v6 & 1 | ((v5 & 1) == 0) | v7 & 1)
      {
        v10 = v5 | v6 | v7;
        goto LABEL_15;
      }
    }

    else
    {
      if (v8 != 102)
      {
        if (v8 == 101 && (v5 & v7 & 1) == 0)
        {
          if (v5 & 1 | ((v6 & 1) == 0) || v7 != 1)
          {
            v9 = ((v5 | v6) ^ 1) & v7;
          }

          else
          {
            v9 = 1;
          }

          goto LABEL_17;
        }

        goto LABEL_16;
      }

      if (v7 & 1 | ((v5 & v6 & 1) == 0))
      {
        v10 = v5 | v7 | v6 ^ 1;
LABEL_15:
        v9 = v10 ^ 1;
LABEL_17:

        goto LABEL_18;
      }
    }

LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  v9 = 0;
LABEL_18:

  return v9 & 1;
}

+ (int64_t)_displayPriorityForSymptom:(id)a3
{
  v3 = [a3 type];
  if ((v3 - 1) > 0x13)
  {
    return 0;
  }

  else
  {
    return qword_20DD97738[v3 - 1];
  }
}

- (void)_addAccountSymptomMessageForAccountName:(id)a3 symptom:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [a3 length];
  v9 = [v7 type];
  if (v9 != 20)
  {
    if (v9 == 2)
    {
      if (v8)
      {
        v10 = @"HFAppleMusicAccountIncorrectCredentials";
        goto LABEL_8;
      }

      v14 = @"HFAppleMusicAccountNoCredentials";
      goto LABEL_15;
    }

    if (v9 != 1)
    {
      v12 = HFLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v18 = NSStringFromSelector(a2);
        v19 = 138412802;
        v20 = self;
        v21 = 2112;
        v22 = v18;
        v23 = 2048;
        v24 = [v7 type];
        _os_log_error_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_ERROR, "%@:%@ Unhandled symptom type: %ld", &v19, 0x20u);
      }

      if (v8)
      {
        goto LABEL_12;
      }

LABEL_16:
      v13 = @"HFAppleMusicSignIn";
      goto LABEL_17;
    }
  }

  if (!v8)
  {
    v14 = @"HFAppleiCloudAccountNoCredentials";
LABEL_15:
    v15 = _HFLocalizedStringWithDefaultValue(v14, v14, 1);
    [(HFErrorResultComponent *)self setErrorMessageTitle:v15];

    goto LABEL_16;
  }

  v10 = @"HFAppleiCloudAccountIncorrectCredentials";
LABEL_8:
  v11 = _HFLocalizedStringWithDefaultValue(v10, v10, 1);
  [(HFErrorResultComponent *)self setErrorMessageTitle:v11];

LABEL_12:
  v13 = @"HFEnterPassword";
LABEL_17:
  v16 = _HFLocalizedStringWithDefaultValue(v13, v13, 1);
  [(HFErrorResultComponent *)self setErrorMessageButtonTitle:v16];

  v17 = *MEMORY[0x277D85DE8];
}

+ (id)noResponseErrorDescriptionString:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    [a1 _lastSeenDataOnTileForDate:v4];
  }

  else
  {
    _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionNoResponse", @"HFServiceDescriptionNoResponse", 1);
  }
  v5 = ;

  return v5;
}

+ (id)noResponseErrorDetailedDescriptionString:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    [a1 _lastSeenDataOnHeaderForDate:v4];
  }

  else
  {
    _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionNoResponse", @"HFServiceDescriptionNoResponse", 1);
  }
  v5 = ;

  return v5;
}

+ (id)_noResponseErrorMsgTitleStringWithDate:(id)a3 batteryStatus:(unint64_t)a4
{
  v6 = a3;
  if (_os_feature_enabled_impl())
  {
    [a1 _lastSeenDataForDate:v6 batteryStatus:a4];
  }

  else
  {
    _HFLocalizedStringWithDefaultValue(@"HFServiceLongFormErrorNotReachable", @"HFServiceLongFormErrorNotReachable", 1);
  }
  v7 = ;

  return v7;
}

+ (id)_lastSeenDataOnTileForDate:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = [MEMORY[0x277CBEAA8] distantPast];
  if (![v3 compare:v4])
  {

    goto LABEL_7;
  }

  v5 = [MEMORY[0x277CBEAA8] distantFuture];
  v6 = [v3 compare:v5];

  if (!v6)
  {
LABEL_7:
    v16 = @"HFServiceDescriptionNoResponse";
    goto LABEL_8;
  }

  [v3 timeIntervalSinceNow];
  if (v7 < -60.0)
  {
    v8 = [MEMORY[0x277CD1940] hf_localizedAgeForCaptureDate:v3];
    v15 = HFLocalizedStringWithFormat(@"HFTitleLastSeenTile", @"%@", v9, v10, v11, v12, v13, v14, v8);

    goto LABEL_9;
  }

  v16 = @"HFTitleLastSeenJustNowTile";
LABEL_8:
  v15 = _HFLocalizedStringWithDefaultValue(v16, v16, 1);
LABEL_9:

  return v15;
}

+ (BOOL)isDateInCurrentYear:(id)a3 asLastSeenDate:(id)a4
{
  v5 = MEMORY[0x277CBEA80];
  v6 = a4;
  v7 = a3;
  v8 = [v5 currentCalendar];
  v9 = [v8 compareDate:v7 toDate:v6 toUnitGranularity:4];

  return v9 == 0;
}

+ (id)_lastSeenDataOnHeaderForDate:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = [MEMORY[0x277CBEAA8] distantPast];
  if (![v3 compare:v4])
  {

    goto LABEL_8;
  }

  v5 = [MEMORY[0x277CBEAA8] distantFuture];
  v6 = [v3 compare:v5];

  if (!v6)
  {
LABEL_8:
    v19 = @"HFServiceDescriptionNoResponse";
LABEL_9:
    v18 = _HFLocalizedStringWithDefaultValue(v19, v19, 1);
    goto LABEL_10;
  }

  [v3 timeIntervalSinceNow];
  v8 = v7;
  if (v7 >= -60.0)
  {
    v19 = @"HFTitleLastSeenDetailsHeaderJustNow";
    goto LABEL_9;
  }

  v9 = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
  v10 = [v9 isDateInToday:v3];

  if (v10)
  {
    v11 = [MEMORY[0x277CD1940] hf_localizedAgeForCaptureDate:v3];
    v18 = HFLocalizedStringWithFormat(@"HFTitleLastSeenDetailsHeader", @"%@", v12, v13, v14, v15, v16, v17, v11);

    goto LABEL_10;
  }

  v21 = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
  v22 = [v21 isDateInYesterday:v3];

  if (v22)
  {
    v19 = @"HFTitleLastSeenDetailsHeaderYesterday";
    goto LABEL_9;
  }

  if (v8 >= -604800.0)
  {
    v27 = +[HFFormatterManager sharedInstance];
    v28 = [v27 weekdayNameFormatter:0];

    v29 = [v28 stringFromDate:v3];
    HFLocalizedStringWithFormat(@"HFTitleLastSeenDetailsHeaderWeek", @"%@", v30, v31, v32, v33, v34, v35, v29);
  }

  else
  {
    v23 = [MEMORY[0x277CBEAA8] date];
    v24 = [HFErrorResultComponent isDateInCurrentYear:v23 asLastSeenDate:v3];

    v25 = +[HFFormatterManager sharedInstance];
    v26 = v25;
    if (v24)
    {
      [v25 monthDayFormatter];
    }

    else
    {
      [v25 monthDayYearFormatter];
    }
    v28 = ;

    v29 = [v28 stringFromDate:v3];
    HFLocalizedStringWithFormat(@"HFTitleLastSeenDetailsHeaderPast", @"%@", v36, v37, v38, v39, v40, v41, v29);
  }
  v18 = ;

LABEL_10:

  return v18;
}

+ (id)_lastSeenDataForDate:(id)a3 batteryStatus:(unint64_t)a4
{
  v5 = a3;
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = [MEMORY[0x277CBEAA8] distantPast];
  if (![v5 compare:v6])
  {

    goto LABEL_7;
  }

  v7 = [MEMORY[0x277CBEAA8] distantFuture];
  v8 = [v5 compare:v7];

  if (!v8)
  {
LABEL_7:
    v10 = _HFLocalizedStringWithDefaultValue(@"HFServiceLongFormErrorNotReachable", @"HFServiceLongFormErrorNotReachable", 1);
    v11 = @"HFServiceLongFormErrorLastSeen";
    goto LABEL_15;
  }

  if (a4 == 1)
  {
    v9 = [@"HFServiceLongFormErrorLastSeen" stringByAppendingString:@"LowBattery"];
  }

  else
  {
    v9 = @"HFServiceLongFormErrorLastSeen";
  }

  v12 = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
  v13 = [v12 isDateInToday:v5];

  v14 = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
  v15 = [v14 isDateInYesterday:v5];

  v16 = [MEMORY[0x277CBEAA8] date];
  v17 = [HFErrorResultComponent isDateInCurrentYear:v16 asLastSeenDate:v5];

  if (v13)
  {
    v18 = @"Current";
  }

  else
  {
    if (!v15)
    {
      if (v17)
      {
        v11 = [(__CFString *)v9 stringByAppendingString:@"Past"];

        v19 = +[HFFormatterManager sharedInstance];
        [v19 monthDayTimeFormatter];
      }

      else
      {
        v11 = [(__CFString *)v9 stringByAppendingString:@"PastYear"];

        v19 = +[HFFormatterManager sharedInstance];
        [v19 monthDayYearFormatter];
      }
      v20 = ;
      goto LABEL_14;
    }

    v18 = @"Yesterday";
  }

  v11 = [(__CFString *)v9 stringByAppendingString:v18];

  v19 = +[HFFormatterManager sharedInstance];
  v20 = [v19 timeFormatter];
LABEL_14:
  v21 = v20;

  v22 = [v21 stringFromDate:v5];
  v29 = HFLocalizedStringWithFormat(v11, @"%@", v23, v24, v25, v26, v27, v28, v22);

  v10 = v29;
LABEL_15:

  return v10;
}

@end