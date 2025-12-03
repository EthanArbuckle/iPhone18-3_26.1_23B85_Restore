@interface HFErrorResultComponent
+ (BOOL)_shouldShowWifiPickerFixButtonWithSymptom:(id)symptom;
+ (BOOL)isDateInCurrentYear:(id)year asLastSeenDate:(id)date;
+ (id)_lastSeenDataForDate:(id)date batteryStatus:(unint64_t)status;
+ (id)_lastSeenDataOnHeaderForDate:(id)date;
+ (id)_lastSeenDataOnTileForDate:(id)date;
+ (id)_noResponseErrorMsgTitleStringWithDate:(id)date batteryStatus:(unint64_t)status;
+ (id)componentForAccessoryReprovisionState:(unint64_t)state;
+ (id)componentForDisplayError:(id)error symptomContextProvider:(id)provider;
+ (id)componentForSymptom:(id)symptom contextProvider:(id)provider;
+ (id)componentForUnreachableAccessoryWithContextProvider:(id)provider symptomContextProvider:(id)contextProvider;
+ (id)componentForWriteErrorForCharacteristics:(id)characteristics valueSource:(id)source;
+ (id)noResponseErrorDescriptionString:(id)string;
+ (id)noResponseErrorDetailedDescriptionString:(id)string;
+ (int64_t)_displayPriorityForSymptom:(id)symptom;
- (HFErrorResultComponent)init;
- (HFErrorResultComponent)initWithCategory:(unint64_t)category;
- (id)description;
- (id)results;
- (int64_t)componentPriority;
- (void)_addAccountSymptomMessageForAccountName:(id)name symptom:(id)symptom;
@end

@implementation HFErrorResultComponent

- (HFErrorResultComponent)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithCategory_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFErrorResultComponent.m" lineNumber:38 description:{@"%s is unavailable; use %@ instead", "-[HFErrorResultComponent init]", v5}];

  return 0;
}

- (HFErrorResultComponent)initWithCategory:(unint64_t)category
{
  v5.receiver = self;
  v5.super_class = HFErrorResultComponent;
  result = [(HFErrorResultComponent *)&v5 init];
  if (result)
  {
    result->_category = category;
    result->_badgeType = 1;
    result->_descriptionBadgeType = 0;
  }

  return result;
}

- (int64_t)componentPriority
{
  v3 = objc_opt_class();
  category = [(HFErrorResultComponent *)self category];

  return [v3 priorityForCategory:category];
}

- (id)results
{
  v3 = objc_opt_new();
  underlyingSymptom = [(HFErrorResultComponent *)self underlyingSymptom];
  [v3 setObject:underlyingSymptom forKeyedSubscript:@"symptom"];

  if (_os_feature_enabled_impl())
  {
    symptomName = [(HFErrorResultComponent *)self symptomName];
    [v3 setObject:symptomName forKeyedSubscript:@"symptomName"];

    symptomDescription = [(HFErrorResultComponent *)self symptomDescription];
    [v3 setObject:symptomDescription forKeyedSubscript:@"symptomDescription"];

    symptomURL = [(HFErrorResultComponent *)self symptomURL];
    [v3 setObject:symptomURL forKeyedSubscript:@"symptomURL"];
  }

  errorDescription = [(HFErrorResultComponent *)self errorDescription];
  [v3 setObject:errorDescription forKeyedSubscript:@"errorDescription"];

  detailedErrorDescription = [(HFErrorResultComponent *)self detailedErrorDescription];
  [v3 setObject:detailedErrorDescription forKeyedSubscript:@"longErrorDescription"];

  errorMessageTitle = [(HFErrorResultComponent *)self errorMessageTitle];
  [v3 setObject:errorMessageTitle forKeyedSubscript:@"errorMessageTitle"];

  errorMessageButtonTitle = [(HFErrorResultComponent *)self errorMessageButtonTitle];
  [v3 setObject:errorMessageButtonTitle forKeyedSubscript:@"errorMessageButtonTitle"];

  errorHandlerURL = [(HFErrorResultComponent *)self errorHandlerURL];
  [v3 setObject:errorHandlerURL forKeyedSubscript:@"errorHandlerURL"];

  errorHandlerURLText = [(HFErrorResultComponent *)self errorHandlerURLText];
  [v3 setObject:errorHandlerURLText forKeyedSubscript:@"errorHandlerURLText"];

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

  errorDescription = [(HFErrorResultComponent *)self errorDescription];
  [v3 appendString:errorDescription withName:@"description"];

  underlyingSymptom = [(HFErrorResultComponent *)self underlyingSymptom];
  v8 = [v3 appendObject:underlyingSymptom withName:@"symptom" skipIfNil:1];

  errorHandlerURL = [(HFErrorResultComponent *)self errorHandlerURL];
  v10 = [v3 appendObject:errorHandlerURL withName:@"handler" skipIfNil:1];

  build = [v3 build];

  return build;
}

+ (id)componentForDisplayError:(id)error symptomContextProvider:(id)provider
{
  errorCopy = error;
  providerCopy = provider;
  if (!errorCopy)
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

  switch([errorCopy category])
  {
    case 0:
    case 1:
      contextProvider = [errorCopy contextProvider];
      v9 = [self componentForUnreachableAccessoryWithContextProvider:contextProvider symptomContextProvider:providerCopy];
      goto LABEL_22;
    case 2:
      contextProvider2 = [errorCopy contextProvider];
      v10 = [self componentForUnreachableAccessoryWithContextProvider:contextProvider2 symptomContextProvider:providerCopy];

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

      hf_homeHubRequiredLearnMoreURL = [MEMORY[0x277CBEBC0] hf_homeHubRequiredLearnMoreURL];
      [(HFErrorResultComponent *)v10 setErrorHandlerURL:hf_homeHubRequiredLearnMoreURL];

      contextProvider = _HFLocalizedStringWithDefaultValue(@"HFServiceErrorNoThreadNetworkLearnMoreTitle", @"HFServiceErrorNoThreadNetworkLearnMoreTitle", 1);
      [(HFErrorResultComponent *)v10 setErrorHandlerURLText:contextProvider];
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
      contextProvider = [errorCopy underlyingSymptom];
      v9 = [self componentForSymptom:contextProvider contextProvider:providerCopy];
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
      contextProvider = _HFLocalizedStringWithDefaultValue(v11, v26, 1);
      [(HFErrorResultComponent *)v10 setDetailedErrorDescription:contextProvider];
LABEL_23:

      break;
    default:
      goto LABEL_6;
  }

LABEL_24:

  return v10;
}

+ (id)componentForUnreachableAccessoryWithContextProvider:(id)provider symptomContextProvider:(id)contextProvider
{
  providerCopy = provider;
  contextProviderCopy = contextProvider;
  v8 = [[HFErrorResultComponent alloc] initWithCategory:1];
  hf_remoteAccessState = [providerCopy hf_remoteAccessState];
  if (hf_remoteAccessState)
  {
    v10 = hf_remoteAccessState;
  }

  else
  {
    v10 = 3;
  }

  v49 = MEMORY[0x277D85DD0];
  v50 = 3221225472;
  v51 = __120__HFErrorResultComponent_HFServiceLikeItem__componentForUnreachableAccessoryWithContextProvider_symptomContextProvider___block_invoke;
  v52 = &unk_277E00298;
  v11 = providerCopy;
  v53 = v11;
  v54 = v10;
  hf_isUserAtHome = [v11 hf_isUserAtHome];
  if ((v10 - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    v13 = 1;
  }

  else
  {
    v13 = hf_isUserAtHome;
  }

  [(HFErrorResultComponent *)v8 setDisplayPriority:v13];
  lastSeenDate = [contextProviderCopy lastSeenDate];
  lastSeenBatteryStatus = [contextProviderCopy lastSeenBatteryStatus];

  if (_os_feature_enabled_impl() && lastSeenBatteryStatus == 1)
  {
    [(HFErrorResultComponent *)v8 setDescriptionBadgeType:8];
  }

  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __120__HFErrorResultComponent_HFServiceLikeItem__componentForUnreachableAccessoryWithContextProvider_symptomContextProvider___block_invoke_2;
  v44[3] = &unk_277E002C0;
  v16 = v11;
  v45 = v16;
  selfCopy = self;
  v17 = lastSeenDate;
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
  selfCopy2 = self;
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
  selfCopy3 = self;
  v37 = lastSeenBatteryStatus;
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

+ (id)componentForWriteErrorForCharacteristics:(id)characteristics valueSource:(id)source
{
  v32 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  sourceCopy = source;
  if ((objc_opt_respondsToSelector() & 1) != 0 && !+[HFUtilities shouldSuppressAllErrorsForDemo])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = characteristicsCopy;
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
          v12 = [sourceCopy cachedErrorForWriteToCharacteristic:{v11, v23}];
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

+ (id)componentForAccessoryReprovisionState:(unint64_t)state
{
  if (state)
  {
    v4 = [[HFErrorResultComponent alloc] initWithCategory:0];
    [(HFErrorResultComponent *)v4 setDisplayPriority:1];
    v5 = _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionAccessoryConnectionError", @"HFServiceDescriptionAccessoryConnectionError", 1);
    [(HFErrorResultComponent *)v4 setErrorDescription:v5];

    v6 = HFLocalizedWiFiString(@"HFServiceLongFormPersistentWarngingHomeKitReWAC");
    [(HFErrorResultComponent *)v4 setErrorMessageTitle:v6];

    if (state == 2)
    {
      [(HFErrorResultComponent *)v4 setUpdateInProgress:1];
    }

    else if (state == 1)
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

+ (id)componentForSymptom:(id)symptom contextProvider:(id)provider
{
  v155 = *MEMORY[0x277D85DE8];
  symptomCopy = symptom;
  providerCopy = provider;
  if (!symptomCopy)
  {
    NSLog(&cfstr_SWithoutASympt.isa, "+[HFErrorResultComponent(HFServiceLikeItem) componentForSymptom:contextProvider:]");
  }

  v9 = HFLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = NSStringFromHMSymptomType([symptomCopy type]);
    *buf = 138412290;
    selfCopy = v10;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_INFO, "HFErrorResultComponent processing HMSymptom: %@", buf, 0xCu);
  }

  if ([self _requiresManualFixOptionToDisplaySymptom:symptomCopy] && !objc_msgSend(providerCopy, "shouldDisplayManualFixOptionForSymptom:", symptomCopy))
  {
    self = 0;
    goto LABEL_137;
  }

  v11 = [[HFErrorResultComponent alloc] initWithCategory:3];
  [(HFErrorResultComponent *)v11 setUnderlyingSymptom:symptomCopy];
  -[HFErrorResultComponent setDisplayPriority:](v11, "setDisplayPriority:", [self _displayPriorityForSymptom:symptomCopy]);
  type = [symptomCopy type];
  if (type <= 99)
  {
    self = 0;
    switch(type)
    {
      case 1:
      case 20:
        detailedErrorDescriptionForiCloudSymptom = [providerCopy detailedErrorDescriptionForiCloudSymptom];
        [(HFErrorResultComponent *)v11 setDetailedErrorDescription:detailedErrorDescriptionForiCloudSymptom];

        [(HFErrorResultComponent *)v11 setDescriptionBadgeType:5];
        currentUserID = [providerCopy currentUserID];
        goto LABEL_70;
      case 2:
        v57 = _HFLocalizedStringWithDefaultValue(@"HFSymptomLongDescriptionNeediTunesCredential", @"HFSymptomLongDescriptionNeediTunesCredential", 1);
        [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v57];

        [(HFErrorResultComponent *)v11 setDescriptionBadgeType:5];
        currentUserID = [providerCopy currentAppleMusicAccountName];
LABEL_70:
        accessoryName = currentUserID;
        [(HFErrorResultComponent *)v11 _addAccountSymptomMessageForAccountName:currentUserID symptom:symptomCopy];
        goto LABEL_120;
      case 3:
        accessoryName = [providerCopy accessoryName];
        HFLocalizedStringWithFormat(@"HFSymptomLongDescriptionHomekitProblem", @"%@", v68, v69, v70, v71, v72, v73, accessoryName);
        goto LABEL_89;
      case 4:
        if (+[HFUtilities isInternalInstall])
        {
          currentDeviceNetworkSSID = [providerCopy currentDeviceNetworkSSID];
          v85 = [currentDeviceNetworkSSID isEqualToString:@"AppleWiFi"];

          if (v85)
          {
            v86 = MEMORY[0x277CCACA8];
            v40 = HFLocalizedWiFiString(@"HFSymptomLongDescriptionWifiUnsupportedNetwork");
            v148 = 0;
            homeKitObjectName = [providerCopy homeKitObjectName];
            currentDeviceNetworkSSID2 = [providerCopy currentDeviceNetworkSSID];
            v89 = [v86 stringWithValidatedFormat:v40 validFormatSpecifiers:@"%@ %@" error:&v148, homeKitObjectName, currentDeviceNetworkSSID2];
            accessoryName = v148;
            [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v89];
            goto LABEL_116;
          }
        }

        v112 = MEMORY[0x277CCACA8];
        v40 = HFLocalizedWiFiString(@"HFSymptomLongDescriptionWifiConnectionProblem");
        v147 = 0;
        homeKitObjectName = [providerCopy homeKitObjectName];
        currentDeviceNetworkSSID2 = [v112 stringWithValidatedFormat:v40 validFormatSpecifiers:@"%@" error:&v147, homeKitObjectName];
        v98 = v147;
LABEL_94:
        accessoryName = v98;
        [(HFErrorResultComponent *)v11 setDetailedErrorDescription:currentDeviceNetworkSSID2];
        goto LABEL_117;
      case 5:
        v90 = HFLocalizedWiFiString(@"HFSymptomStatusTextWiFiLostConnection");
        goto LABEL_107;
      case 6:
      case 15:
        goto LABEL_136;
      case 7:
        accessoryName2 = [providerCopy accessoryName];
        v53 = HFLocalizedStringWithFormat(@"HFSymptomLongDescriptionHardwareFailure", @"%@", v47, v48, v49, v50, v51, v52, accessoryName2);
        [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v53];

        v54 = _HFLocalizedStringWithDefaultValue(@"HFSymptomLongDescriptionHardwareFailureContactSupport", @"HFSymptomLongDescriptionHardwareFailureContactSupport", 1);
        [(HFErrorResultComponent *)v11 setErrorMessageTitle:v54];

        v55 = _HFLocalizedStringWithDefaultValue(@"HFSymptomLongDescriptionHardwareFailureContactSupport", @"HFSymptomLongDescriptionHardwareFailureContactSupport", 1);
        goto LABEL_67;
      case 8:
        accessoryName = [providerCopy homeKitObjectName];
        HFLocalizedStringWithFormat(@"HFSymptomDetailedDescriptionStereoVersionMismatch", @"%@", v91, v92, v93, v94, v95, v96, accessoryName);
        goto LABEL_89;
      case 9:
        v15 = @"HFSymptomDetailedDescriptionStereoNotFound";
        goto LABEL_106;
      case 10:
        v97 = MEMORY[0x277CCACA8];
        v40 = HFLocalizedWiFiString(@"HFSymptomDetailedDescriptionStereoError");
        v144 = 0;
        homeKitObjectName = [providerCopy homeKitObjectName];
        currentDeviceNetworkSSID2 = [v97 stringWithValidatedFormat:v40 validFormatSpecifiers:@"%@" error:&v144, homeKitObjectName];
        v98 = v144;
        goto LABEL_94;
      case 11:
        currentDeviceNetworkSSID3 = [providerCopy currentDeviceNetworkSSID];
        if (currentDeviceNetworkSSID3)
        {
          accessoryName = currentDeviceNetworkSSID3;
          v40 = HFLocalizedWiFiString(@"HFSymptomLongDescriptionProblemWifiMismatch");
          accessoryNetworkSSID = [providerCopy accessoryNetworkSSID];

          if (accessoryNetworkSSID)
          {
            v42 = MEMORY[0x277CCACA8];
            v146 = 0;
            accessoryNetworkSSID2 = [providerCopy accessoryNetworkSSID];
            v44 = [v42 stringWithValidatedFormat:v40 validFormatSpecifiers:@"%@" error:&v146, accessoryNetworkSSID2];
            v45 = v146;
            [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v44];
          }

          else
          {
            v45 = HFLocalizedWiFiString(@"HFSymptomLongDescriptionProblemWifiMismatchNone");
            [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v45];
          }

          accessoryUUID = [providerCopy accessoryUUID];

          if (accessoryUUID)
          {
            accessoryUUID2 = [providerCopy accessoryUUID];
            v124 = [HFURLComponents fixSymptomURLForAccessoryWithUUID:accessoryUUID2 symptom:symptomCopy];
            [(HFErrorResultComponent *)v11 setErrorHandlerURL:v124];
          }

          homeKitObjectName = HFLocalizedStringWithFormat(@"HFSymptomLongDescriptionProblemWifiMisMatchLinkString", @"%@", v117, v118, v119, v120, v121, v122, accessoryName);
          [(HFErrorResultComponent *)v11 setErrorHandlerURLText:homeKitObjectName];
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
        accessoryName = v55;
        [(HFErrorResultComponent *)v11 setErrorMessageButtonTitle:v55];
        goto LABEL_120;
      case 16:
        accessoryNetworkSSID3 = [providerCopy accessoryNetworkSSID];
        v104 = [accessoryNetworkSSID3 length];

        if (!v104)
        {
          v15 = @"HFSymptomLongDescriptionNetworkProfileFixProblem";
          goto LABEL_106;
        }

        accessoryName = [providerCopy accessoryNetworkSSID];
        HFLocalizedStringWithFormat(@"HFSymptomLongDescriptionNetworkProfileFixProblemWithName", @"%@", v105, v106, v107, v108, v109, v110, accessoryName);
        v40 = LABEL_89:;
        [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v40];
        goto LABEL_119;
      case 17:
        accessoryNetworkSSID4 = [providerCopy accessoryNetworkSSID];
        v59 = [accessoryNetworkSSID4 length];

        if (v59)
        {
          accessoryNetworkSSID5 = [providerCopy accessoryNetworkSSID];
          v67 = HFLocalizedStringWithFormat(@"HFSymptomLongDescriptionNetworkProfileInstallProblemWithName", @"%@", v61, v62, v63, v64, v65, v66, accessoryNetworkSSID5);
          [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v67];
        }

        else
        {
          accessoryNetworkSSID5 = _HFLocalizedStringWithDefaultValue(@"HFSymptomLongDescriptionNetworkProfileInstallProblem", @"HFSymptomLongDescriptionNetworkProfileInstallProblem", 1);
          [(HFErrorResultComponent *)v11 setDetailedErrorDescription:accessoryNetworkSSID5];
        }

        hf_learnAboutNetworksRequiringProfilesURL = [MEMORY[0x277CBEBC0] hf_learnAboutNetworksRequiringProfilesURL];
        goto LABEL_101;
      case 18:
        accessoryNetworkSSID6 = [providerCopy accessoryNetworkSSID];
        v75 = [accessoryNetworkSSID6 length];

        if (v75)
        {
          accessoryNetworkSSID7 = [providerCopy accessoryNetworkSSID];
          v83 = HFLocalizedStringWithFormat(@"HFSymptomLongDescriptionNetworkNotShareableProblemWithName", @"%@", v77, v78, v79, v80, v81, v82, accessoryNetworkSSID7);
          [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v83];
        }

        else
        {
          accessoryNetworkSSID7 = _HFLocalizedStringWithDefaultValue(@"HFSymptomLongDescriptionNetworkNotShareableProblem", @"HFSymptomLongDescriptionNetworkNotShareableProblem", 1);
          [(HFErrorResultComponent *)v11 setDetailedErrorDescription:accessoryNetworkSSID7];
        }

        hf_learnAboutNetworksRequiringProfilesURL = [MEMORY[0x277CBEBC0] hf_learnAboutUnshareableNetworksURL];
LABEL_101:
        v115 = hf_learnAboutNetworksRequiringProfilesURL;
        [(HFErrorResultComponent *)v11 setErrorHandlerURL:hf_learnAboutNetworksRequiringProfilesURL];

        accessoryName = _HFLocalizedStringWithDefaultValue(@"HFSymptomDescriptionLearnMore", @"HFSymptomDescriptionLearnMore", 1);
        [(HFErrorResultComponent *)v11 setErrorHandlerURLText:accessoryName];
        goto LABEL_120;
      case 19:
        currentDeviceNetworkSSID4 = [providerCopy currentDeviceNetworkSSID];
        if (!currentDeviceNetworkSSID4)
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

        v40 = currentDeviceNetworkSSID4;
        accessoryNetworkSSID8 = [providerCopy accessoryNetworkSSID];
        v101 = accessoryNetworkSSID8;
        if (accessoryNetworkSSID8)
        {
          currentDeviceNetworkSSID5 = accessoryNetworkSSID8;
        }

        else
        {
          currentDeviceNetworkSSID5 = [providerCopy currentDeviceNetworkSSID];
        }

        homeKitObjectName = currentDeviceNetworkSSID5;

        currentDeviceNetworkSSID2 = HFLocalizedWiFiString(@"HFSymptomLongDescriptionProblemNeedCaptiveLeaseRenewal");
        v145 = 0;
        v125 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:currentDeviceNetworkSSID2 validFormatSpecifiers:@"%@" error:&v145, homeKitObjectName];
        accessoryName = v145;
        [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v125];

        accessoryUUID3 = [providerCopy accessoryUUID];

        if (accessoryUUID3)
        {
          accessoryUUID4 = [providerCopy accessoryUUID];
          v134 = [HFURLComponents fixSymptomURLForAccessoryWithUUID:accessoryUUID4 symptom:symptomCopy];
          [(HFErrorResultComponent *)v11 setErrorHandlerURL:v134];
        }

        v89 = HFLocalizedStringWithFormat(@"HFSymptomLongDescriptionProblemNeedCaptiveLeaseRenewalLinkString", @"%@", v127, v128, v129, v130, v131, v132, homeKitObjectName);
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

  if (type <= 111)
  {
    if (type <= 101)
    {
      if (type == 100)
      {
        if ([providerCopy contextSupportsNetworkDiagnostics] && _os_feature_enabled_impl())
        {
          if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
          {
            -[HFErrorResultComponent setShouldShowWifiPickerFixButton:](v11, "setShouldShowWifiPickerFixButton:", [self _shouldShowWifiPickerFixButtonWithSymptom:symptomCopy]);
          }

          [(HFErrorResultComponent *)v11 setDescriptionBadgeType:7];
          v26 = _HFLocalizedStringWithDefaultValue(@"HFSymptomDescriptionProblemNetworkIssue", @"HFSymptomDescriptionProblemNetworkIssue", 1);
          [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v26];

          v27 = _HFLocalizedStringWithDefaultValue(@"HFSymptomLongDescriptionNetworkMisconfiguredUnknown", @"HFSymptomLongDescriptionNetworkMisconfiguredUnknown", 1);
          [(HFErrorResultComponent *)v11 setSymptomDescription:v27];

          v28 = _HFLocalizedStringWithDefaultValue(@"HFSymptomTitleNoHomeHubCommunication", @"HFSymptomTitleNoHomeHubCommunication", 1);
          [(HFErrorResultComponent *)v11 setSymptomName:v28];

          hf_homePodNetworkMisconfigurationUnknownLearnMoreURL = [MEMORY[0x277CBEBC0] hf_homePodNetworkMisconfigurationUnknownLearnMoreURL];
          goto LABEL_60;
        }
      }

      else if ([providerCopy contextSupportsNetworkDiagnostics] && _os_feature_enabled_impl())
      {
        if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
        {
          -[HFErrorResultComponent setShouldShowWifiPickerFixButton:](v11, "setShouldShowWifiPickerFixButton:", [self _shouldShowWifiPickerFixButtonWithSymptom:symptomCopy]);
        }

        [(HFErrorResultComponent *)v11 setDescriptionBadgeType:7];
        v16 = _HFLocalizedStringWithDefaultValue(@"HFSymptomDescriptionProblemNetworkIssue", @"HFSymptomDescriptionProblemNetworkIssue", 1);
        [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v16];

        v17 = _HFLocalizedStringWithDefaultValue(@"HFSymptomLongDescriptionPeerToPeer", @"HFSymptomLongDescriptionPeerToPeer", 1);
        [(HFErrorResultComponent *)v11 setSymptomDescription:v17];

        v18 = _HFLocalizedStringWithDefaultValue(@"HFSymptomTitleNoHomeHubCommunication", @"HFSymptomTitleNoHomeHubCommunication", 1);
        [(HFErrorResultComponent *)v11 setSymptomName:v18];

        hf_homePodNetworkMisconfigurationUnknownLearnMoreURL = [MEMORY[0x277CBEBC0] hf_homePodNetworkIssuePeerToPeerLearnMoreURL];
        goto LABEL_60;
      }

      goto LABEL_121;
    }

    if (type == 102)
    {
      if ([providerCopy contextSupportsNetworkDiagnostics] && _os_feature_enabled_impl())
      {
        if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
        {
          -[HFErrorResultComponent setShouldShowWifiPickerFixButton:](v11, "setShouldShowWifiPickerFixButton:", [self _shouldShowWifiPickerFixButtonWithSymptom:symptomCopy]);
        }

        [(HFErrorResultComponent *)v11 setDescriptionBadgeType:7];
        v29 = _HFLocalizedStringWithDefaultValue(@"HFSymptomDescriptionProblemNetworkIssue", @"HFSymptomDescriptionProblemNetworkIssue", 1);
        [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v29];

        v30 = _HFLocalizedStringWithDefaultValue(@"HFSymptomLongDescriptionDoubleNAT", @"HFSymptomLongDescriptionDoubleNAT", 1);
        [(HFErrorResultComponent *)v11 setSymptomDescription:v30];

        v31 = _HFLocalizedStringWithDefaultValue(@"HFSymptomTitleNoHomeHubCommunication", @"HFSymptomTitleNoHomeHubCommunication", 1);
        [(HFErrorResultComponent *)v11 setSymptomName:v31];

        hf_homePodNetworkMisconfigurationUnknownLearnMoreURL = [MEMORY[0x277CBEBC0] hf_homePodNetworkIssueDoubleNATLearnMoreURL];
        goto LABEL_60;
      }

      goto LABEL_121;
    }

    if (type == 103)
    {
      if ([providerCopy contextSupportsNetworkDiagnostics] && _os_feature_enabled_impl())
      {
        if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
        {
          -[HFErrorResultComponent setShouldShowWifiPickerFixButton:](v11, "setShouldShowWifiPickerFixButton:", [self _shouldShowWifiPickerFixButtonWithSymptom:symptomCopy]);
        }

        [(HFErrorResultComponent *)v11 setDescriptionBadgeType:7];
        v20 = _HFLocalizedStringWithDefaultValue(@"HFSymptomDescriptionProblemNetworkIssue", @"HFSymptomDescriptionProblemNetworkIssue", 1);
        [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v20];

        v21 = _HFLocalizedStringWithDefaultValue(@"HFSymptomLongDescriptionMultipleNetworks", @"HFSymptomLongDescriptionMultipleNetworks", 1);
        [(HFErrorResultComponent *)v11 setSymptomDescription:v21];

        v22 = _HFLocalizedStringWithDefaultValue(@"HFSymptomTitleNoHomeHubCommunication", @"HFSymptomTitleNoHomeHubCommunication", 1);
        [(HFErrorResultComponent *)v11 setSymptomName:v22];

        hf_homePodNetworkMisconfigurationUnknownLearnMoreURL = [MEMORY[0x277CBEBC0] hf_homePodNetworkIssueMultipleNetworksLearnMoreURL];
        goto LABEL_60;
      }

      goto LABEL_121;
    }

    goto LABEL_90;
  }

  if (type <= 114)
  {
    if (type == 112)
    {
      if (![providerCopy contextSupportsNetworkDiagnostics] || !_os_feature_enabled_impl())
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

      hf_homePodNetworkMisconfigurationUnknownLearnMoreURL = [MEMORY[0x277CBEBC0] hf_homePodNetworkIssueDNSServerOutageLearnMoreURL];
LABEL_60:
      accessoryName = hf_homePodNetworkMisconfigurationUnknownLearnMoreURL;
      [(HFErrorResultComponent *)v11 setSymptomURL:hf_homePodNetworkMisconfigurationUnknownLearnMoreURL];
LABEL_120:

      goto LABEL_121;
    }

    if (type == 113)
    {
      if (![providerCopy contextSupportsNetworkDiagnostics] || !_os_feature_enabled_impl())
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

      hf_homePodNetworkMisconfigurationUnknownLearnMoreURL = [MEMORY[0x277CBEBC0] hf_homePodNetworkIssueDHCPAcquisitionFailureLearnMoreURL];
      goto LABEL_60;
    }

LABEL_90:
    v111 = HFLogForCategory(0);
    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
    {
      v142 = NSStringFromSelector(a2);
      type2 = [symptomCopy type];
      *buf = 138412802;
      selfCopy = self;
      v151 = 2112;
      v152 = v142;
      v153 = 2048;
      v154 = type2;
      _os_log_error_impl(&dword_20D9BF000, v111, OS_LOG_TYPE_ERROR, "%@:%@ Unhandled symptom type: %ld", buf, 0x20u);
    }

    goto LABEL_104;
  }

  if (type == 115)
  {
    if ([providerCopy contextSupportsNetworkDiagnostics] && _os_feature_enabled_impl())
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

      hf_homePodNetworkMisconfigurationUnknownLearnMoreURL = [MEMORY[0x277CBEBC0] hf_homePodNetworkIssueWifiDisassociationLearnMoreURL];
      goto LABEL_60;
    }

LABEL_121:
    detailedErrorDescription = [(HFErrorResultComponent *)v11 detailedErrorDescription];

    if (detailedErrorDescription)
    {
      hf_shortDescription = [symptomCopy hf_shortDescription];
      [(HFErrorResultComponent *)v11 setErrorDescription:hf_shortDescription];
    }

    if ([providerCopy fixStateForSymptom:symptomCopy] != 1)
    {
      goto LABEL_135;
    }

    if ([symptomCopy type] == 11)
    {
      v137 = @"HFServiceDescriptionUpdatingNetwork";
    }

    else
    {
      if ([symptomCopy type] != 19)
      {
        if ([symptomCopy type] == 1 || objc_msgSend(symptomCopy, "type") == 2 || objc_msgSend(symptomCopy, "type") == 20)
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
    self = v11;
    goto LABEL_136;
  }

  if (type != 1000)
  {
    if (type == 999)
    {
      v15 = @"HMSymptomLongDescriptionSharedUserErrorNotification";
LABEL_106:
      v90 = _HFLocalizedStringWithDefaultValue(v15, v15, 1);
LABEL_107:
      accessoryName = v90;
      [(HFErrorResultComponent *)v11 setDetailedErrorDescription:v90];
      goto LABEL_120;
    }

    goto LABEL_90;
  }

  NSLog(&cfstr_SymptomTypeHms.isa);
LABEL_104:
  self = 0;
LABEL_136:

LABEL_137:
  v140 = *MEMORY[0x277D85DE8];

  return self;
}

+ (BOOL)_shouldShowWifiPickerFixButtonWithSymptom:(id)symptom
{
  symptomCopy = symptom;
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    infoDictionary = [symptomCopy infoDictionary];
    v5 = [infoDictionary hmf_BOOLForKey:*MEMORY[0x277CD11C0]];
    v6 = [infoDictionary hmf_BOOLForKey:*MEMORY[0x277CD11B0]];
    v7 = [infoDictionary hmf_BOOLForKey:*MEMORY[0x277CD11B8]];
    type = [symptomCopy type];
    if (type == 103)
    {
      if (v6 & 1 | ((v5 & 1) == 0) | v7 & 1)
      {
        v10 = v5 | v6 | v7;
        goto LABEL_15;
      }
    }

    else
    {
      if (type != 102)
      {
        if (type == 101 && (v5 & v7 & 1) == 0)
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

+ (int64_t)_displayPriorityForSymptom:(id)symptom
{
  type = [symptom type];
  if ((type - 1) > 0x13)
  {
    return 0;
  }

  else
  {
    return qword_20DD97738[type - 1];
  }
}

- (void)_addAccountSymptomMessageForAccountName:(id)name symptom:(id)symptom
{
  v25 = *MEMORY[0x277D85DE8];
  symptomCopy = symptom;
  v8 = [name length];
  type = [symptomCopy type];
  if (type != 20)
  {
    if (type == 2)
    {
      if (v8)
      {
        v10 = @"HFAppleMusicAccountIncorrectCredentials";
        goto LABEL_8;
      }

      v14 = @"HFAppleMusicAccountNoCredentials";
      goto LABEL_15;
    }

    if (type != 1)
    {
      v12 = HFLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v18 = NSStringFromSelector(a2);
        v19 = 138412802;
        selfCopy = self;
        v21 = 2112;
        v22 = v18;
        v23 = 2048;
        type2 = [symptomCopy type];
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

+ (id)noResponseErrorDescriptionString:(id)string
{
  stringCopy = string;
  if (_os_feature_enabled_impl())
  {
    [self _lastSeenDataOnTileForDate:stringCopy];
  }

  else
  {
    _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionNoResponse", @"HFServiceDescriptionNoResponse", 1);
  }
  v5 = ;

  return v5;
}

+ (id)noResponseErrorDetailedDescriptionString:(id)string
{
  stringCopy = string;
  if (_os_feature_enabled_impl())
  {
    [self _lastSeenDataOnHeaderForDate:stringCopy];
  }

  else
  {
    _HFLocalizedStringWithDefaultValue(@"HFServiceDescriptionNoResponse", @"HFServiceDescriptionNoResponse", 1);
  }
  v5 = ;

  return v5;
}

+ (id)_noResponseErrorMsgTitleStringWithDate:(id)date batteryStatus:(unint64_t)status
{
  dateCopy = date;
  if (_os_feature_enabled_impl())
  {
    [self _lastSeenDataForDate:dateCopy batteryStatus:status];
  }

  else
  {
    _HFLocalizedStringWithDefaultValue(@"HFServiceLongFormErrorNotReachable", @"HFServiceLongFormErrorNotReachable", 1);
  }
  v7 = ;

  return v7;
}

+ (id)_lastSeenDataOnTileForDate:(id)date
{
  dateCopy = date;
  if (!dateCopy)
  {
    goto LABEL_7;
  }

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  if (![dateCopy compare:distantPast])
  {

    goto LABEL_7;
  }

  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v6 = [dateCopy compare:distantFuture];

  if (!v6)
  {
LABEL_7:
    v16 = @"HFServiceDescriptionNoResponse";
    goto LABEL_8;
  }

  [dateCopy timeIntervalSinceNow];
  if (v7 < -60.0)
  {
    v8 = [MEMORY[0x277CD1940] hf_localizedAgeForCaptureDate:dateCopy];
    v15 = HFLocalizedStringWithFormat(@"HFTitleLastSeenTile", @"%@", v9, v10, v11, v12, v13, v14, v8);

    goto LABEL_9;
  }

  v16 = @"HFTitleLastSeenJustNowTile";
LABEL_8:
  v15 = _HFLocalizedStringWithDefaultValue(v16, v16, 1);
LABEL_9:

  return v15;
}

+ (BOOL)isDateInCurrentYear:(id)year asLastSeenDate:(id)date
{
  v5 = MEMORY[0x277CBEA80];
  dateCopy = date;
  yearCopy = year;
  currentCalendar = [v5 currentCalendar];
  v9 = [currentCalendar compareDate:yearCopy toDate:dateCopy toUnitGranularity:4];

  return v9 == 0;
}

+ (id)_lastSeenDataOnHeaderForDate:(id)date
{
  dateCopy = date;
  if (!dateCopy)
  {
    goto LABEL_8;
  }

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  if (![dateCopy compare:distantPast])
  {

    goto LABEL_8;
  }

  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v6 = [dateCopy compare:distantFuture];

  if (!v6)
  {
LABEL_8:
    v19 = @"HFServiceDescriptionNoResponse";
LABEL_9:
    v18 = _HFLocalizedStringWithDefaultValue(v19, v19, 1);
    goto LABEL_10;
  }

  [dateCopy timeIntervalSinceNow];
  v8 = v7;
  if (v7 >= -60.0)
  {
    v19 = @"HFTitleLastSeenDetailsHeaderJustNow";
    goto LABEL_9;
  }

  hf_sharedCalendar = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
  v10 = [hf_sharedCalendar isDateInToday:dateCopy];

  if (v10)
  {
    v11 = [MEMORY[0x277CD1940] hf_localizedAgeForCaptureDate:dateCopy];
    v18 = HFLocalizedStringWithFormat(@"HFTitleLastSeenDetailsHeader", @"%@", v12, v13, v14, v15, v16, v17, v11);

    goto LABEL_10;
  }

  hf_sharedCalendar2 = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
  v22 = [hf_sharedCalendar2 isDateInYesterday:dateCopy];

  if (v22)
  {
    v19 = @"HFTitleLastSeenDetailsHeaderYesterday";
    goto LABEL_9;
  }

  if (v8 >= -604800.0)
  {
    v27 = +[HFFormatterManager sharedInstance];
    v28 = [v27 weekdayNameFormatter:0];

    v29 = [v28 stringFromDate:dateCopy];
    HFLocalizedStringWithFormat(@"HFTitleLastSeenDetailsHeaderWeek", @"%@", v30, v31, v32, v33, v34, v35, v29);
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    v24 = [HFErrorResultComponent isDateInCurrentYear:date asLastSeenDate:dateCopy];

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

    v29 = [v28 stringFromDate:dateCopy];
    HFLocalizedStringWithFormat(@"HFTitleLastSeenDetailsHeaderPast", @"%@", v36, v37, v38, v39, v40, v41, v29);
  }
  v18 = ;

LABEL_10:

  return v18;
}

+ (id)_lastSeenDataForDate:(id)date batteryStatus:(unint64_t)status
{
  dateCopy = date;
  if (!dateCopy)
  {
    goto LABEL_7;
  }

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  if (![dateCopy compare:distantPast])
  {

    goto LABEL_7;
  }

  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v8 = [dateCopy compare:distantFuture];

  if (!v8)
  {
LABEL_7:
    v10 = _HFLocalizedStringWithDefaultValue(@"HFServiceLongFormErrorNotReachable", @"HFServiceLongFormErrorNotReachable", 1);
    v11 = @"HFServiceLongFormErrorLastSeen";
    goto LABEL_15;
  }

  if (status == 1)
  {
    v9 = [@"HFServiceLongFormErrorLastSeen" stringByAppendingString:@"LowBattery"];
  }

  else
  {
    v9 = @"HFServiceLongFormErrorLastSeen";
  }

  hf_sharedCalendar = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
  v13 = [hf_sharedCalendar isDateInToday:dateCopy];

  hf_sharedCalendar2 = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
  v15 = [hf_sharedCalendar2 isDateInYesterday:dateCopy];

  date = [MEMORY[0x277CBEAA8] date];
  v17 = [HFErrorResultComponent isDateInCurrentYear:date asLastSeenDate:dateCopy];

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
      timeFormatter = ;
      goto LABEL_14;
    }

    v18 = @"Yesterday";
  }

  v11 = [(__CFString *)v9 stringByAppendingString:v18];

  v19 = +[HFFormatterManager sharedInstance];
  timeFormatter = [v19 timeFormatter];
LABEL_14:
  v21 = timeFormatter;

  v22 = [v21 stringFromDate:dateCopy];
  v29 = HFLocalizedStringWithFormat(v11, @"%@", v23, v24, v25, v26, v27, v28, v22);

  v10 = v29;
LABEL_15:

  return v10;
}

@end