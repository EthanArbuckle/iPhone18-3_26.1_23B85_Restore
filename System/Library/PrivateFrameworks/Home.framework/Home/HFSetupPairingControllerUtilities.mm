@interface HFSetupPairingControllerUtilities
+ (BOOL)_context:(id)_context requiresUserConsentToReplaceInHome:(id)home;
+ (id)_accessoryNotFoundStatusDescriptionSuffixForSetupResult:(id)result;
+ (id)descriptionForPairingPhase:(unint64_t)phase;
+ (id)urlComponentHomeSettingsForAccessory:(id)accessory forHome:(id)home;
+ (unint64_t)processSetupAccessoryProgressChange:(int64_t)change currentPhase:(unint64_t)phase context:(id)context discoveredAccessory:(id)accessory setupResult:(id)result home:(id)home callerClass:(Class)aClass thirdParty:(BOOL)self0;
+ (void)getStatusTitle:(id *)title statusDescription:(id *)description forPairingPhase:(unint64_t)phase phaseStartDate:(id)date discoveredAccessory:(id)accessory setupResult:(id)result context:(id)context setupError:(id)self0;
@end

@implementation HFSetupPairingControllerUtilities

+ (id)descriptionForPairingPhase:(unint64_t)phase
{
  if (phase > 0xA)
  {
    return 0;
  }

  else
  {
    return off_277DF7490[phase];
  }
}

+ (id)_accessoryNotFoundStatusDescriptionSuffixForSetupResult:(id)result
{
  setupPayload = [result setupPayload];
  hf_requiresEthernet = [setupPayload hf_requiresEthernet];

  if (hf_requiresEthernet)
  {
    return @"Ethernet";
  }

  else
  {
    return @"Generic";
  }
}

+ (void)getStatusTitle:(id *)title statusDescription:(id *)description forPairingPhase:(unint64_t)phase phaseStartDate:(id)date discoveredAccessory:(id)accessory setupResult:(id)result context:(id)context setupError:(id)self0
{
  v98 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  resultCopy = result;
  contextCopy = context;
  errorCopy = error;
  v19 = MEMORY[0x277CBEAA8];
  dateCopy = date;
  date = [v19 date];
  [date timeIntervalSinceDate:dateCopy];
  v23 = v22;

  error = [resultCopy error];

  v25 = resultCopy;
  if (error || ([accessoryCopy error], v26 = objc_claimAutoreleasedReturnValue(), v26, v25 = accessoryCopy, v26))
  {
    error2 = [v25 error];

    errorCopy = error2;
  }

  if (errorCopy)
  {
    v28 = phase == 1;
  }

  else
  {
    v28 = 0;
  }

  if (v28)
  {
    phaseCopy = 9;
  }

  else
  {
    phaseCopy = phase;
  }

  v30 = _HFLocalizedStringWithDefaultValue(@"HFSetupPairingControllerStatusDescriptionFailureGeneric", @"HFSetupPairingControllerStatusDescriptionFailureGeneric", 1);
  v31 = 0;
  if (phaseCopy <= 5)
  {
    if (phaseCopy <= 2)
    {
      if (phaseCopy < 2)
      {
        v32 = _HFLocalizedStringWithDefaultValue(@"HFSetupPairingControllerStatusDescriptionNotStarted", @"HFSetupPairingControllerStatusDescriptionNotStarted", 1);

        v31 = @"HFSetupPairingControllerStatusTitleNotStarted";
        goto LABEL_25;
      }

      if (phaseCopy == 2)
      {
        [objc_opt_class() accessoryDiscoverySoftTimeout];
        if (v23 >= v50)
        {
          v31 = @"HFSetupPairingControllerStatusTitleWaitingToDiscoverAccessorySoftTimeout";
        }

        else
        {
          v31 = @"HFSetupPairingControllerStatusTitleWaitingToDiscoverAccessory";
        }

        v51 = [self _accessoryNotFoundStatusDescriptionSuffixForSetupResult:resultCopy];
        v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFSetupPairingControllerStatusDescriptionWaitingToDiscoverAccessory_%@", v51];
        v32 = _HFLocalizedStringWithDefaultValue(v52, v52, 1);

        goto LABEL_25;
      }

LABEL_81:
      v32 = v30;
      goto LABEL_25;
    }

    if ((phaseCopy - 3) >= 2)
    {
      if (phaseCopy != 5)
      {
        goto LABEL_81;
      }

      v41 = @"HFSetupPairingControllerStatusDescriptionAddingToHome";
LABEL_24:
      v32 = _HFLocalizedStringWithDefaultValue(v41, v41, 1);

      v31 = 0;
      goto LABEL_25;
    }

LABEL_23:
    v41 = @"HFSetupPairingControllerStatusDescriptionSettingUp";
    goto LABEL_24;
  }

  if (phaseCopy > 8)
  {
    if (phaseCopy != 9)
    {
      if (phaseCopy == 10)
      {
        v32 = _HFLocalizedStringWithDefaultValue(@"HFSetupPairingControllerStatusDescriptionSuccess", @"HFSetupPairingControllerStatusDescriptionSuccess", 1);

        v31 = @"HFSetupPairingControllerStatusTitleSuccess";
        goto LABEL_25;
      }

      goto LABEL_81;
    }

    userInfo = [errorCopy userInfo];
    v54 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA450]];
    if (v54)
    {
      [errorCopy localizedDescription];
    }

    else
    {
      _HFLocalizedStringWithDefaultValue(@"HFSetupPairingControllerStatusDescriptionFailureGeneric", @"HFSetupPairingControllerStatusDescriptionFailureGeneric", 1);
    }
    v32 = ;

    domain = [errorCopy domain];
    v56 = [domain isEqualToString:*MEMORY[0x277CCFD28]];

    if (v56)
    {
      code = [errorCopy code];
      if (code > 96)
      {
        if (code <= 104)
        {
          if (code <= 98)
          {
            if (code == 97)
            {
              v81 = MEMORY[0x277CD1650];
              setupPayload = [resultCopy setupPayload];
              category = [setupPayload category];
              categoryType = [category categoryType];
              v85 = [v81 hf_userFriendlyLocalizedCapitalizedDescription:categoryType];

              if (v85)
              {
                HFLocalizedStringWithFormat(@"HFSetupPairingControllerStatusDescriptionFailureMaximumAccessoriesOfTypeInHome", @"%@", v86, v87, v88, v89, v90, v91, v85);
              }

              else
              {
                _HFLocalizedStringWithDefaultValue(@"HFSetupPairingControllerStatusDescriptionFailureMaximumAccessoriesOfTypeInHome_Generic", @"HFSetupPairingControllerStatusDescriptionFailureMaximumAccessoriesOfTypeInHome_Generic", 1);
              }
              v61 = ;

              v31 = @"HFSetupPairingControllerStatusTitleFailureMaximumAccessoriesOfTypeInHome";
              goto LABEL_116;
            }

            v62 = @"HFSetupPairingControllerStatusDescriptionFailureWifiCredentialGenerationFailed";
          }

          else
          {
            if (code != 99)
            {
              if (code != 100 && code != 102)
              {
                goto LABEL_110;
              }

              goto LABEL_89;
            }

            v62 = @"HFSetupPairingControllerStatusDescriptionFailureEnterpriseNetworkNotSupported";
          }

          goto LABEL_114;
        }

        if (code > 2003)
        {
          switch(code)
          {
            case 2004:
              v61 = _HFLocalizedStringWithDefaultValue(@"HFSetupPairingControllerStatusDescriptionFailureUnsupportedSetupPayload", @"HFSetupPairingControllerStatusDescriptionFailureUnsupportedSetupPayload", 1);

              v31 = @"HFSetupPairingControllerStatusTitleFailureUnsupportedSetupPayload";
              goto LABEL_116;
            case 2015:
              v77 = [self _accessoryNotFoundStatusDescriptionSuffixForSetupResult:resultCopy];
              v78 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFSetupPairingControllerStatusDescriptionWaitingToDiscoverAccessory_%@", v77];
              v79 = _HFLocalizedStringWithDefaultValue(v78, v78, 1);

              v31 = @"HFSetupPairingControllerStatusTitleFailureAccessoryConnectionFailed";
              v32 = v79;
              goto LABEL_25;
            case 2016:
              v61 = _HFLocalizedStringWithDefaultValue(@"HFSetupPairingControllerStatusDescriptionFailureAccessoryFailedToJoinNetwork", @"HFSetupPairingControllerStatusDescriptionFailureAccessoryFailedToJoinNetwork", 1);

              v31 = @"HFSetupPairingControllerStatusTitleFailureAccessoryFailedToJoinNetwork";
              goto LABEL_116;
          }

LABEL_110:
          v71 = HFLogForCategory(0x3FuLL);
          if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_111;
          }

          goto LABEL_119;
        }

        if (code != 105)
        {
          if (code != 2002)
          {
            goto LABEL_110;
          }

          v62 = @"HFSetupPairingControllerStatusDescriptionFailureIncorrectSetupCode";
          goto LABEL_114;
        }

        v61 = _HFLocalizedStringWithDefaultValue(@"HFHomeHubUpgradeRequiredSubtitle", @"HFHomeHubUpgradeRequiredSubtitle", 1);

        v31 = @"HFAppleHomeUpdateRequiredTitle";
LABEL_116:
        v32 = v61;
        goto LABEL_25;
      }

      if (code > 77)
      {
        if (code <= 90)
        {
          if (code == 78)
          {
            v72 = @"HFSetupPairingControllerStatusDescriptionFailureInternetConnectionRequired";
            goto LABEL_104;
          }

          if (code != 90)
          {
            goto LABEL_110;
          }

          if (+[HFUtilities useWLANInsteadOfWiFi])
          {
            v62 = @"HFSetupPairingControllerStatusDescriptionFailureIncompatibleNetwork_WLAN";
          }

          else
          {
            v62 = @"HFSetupPairingControllerStatusDescriptionFailureIncompatibleNetwork_WIFI";
          }

          goto LABEL_114;
        }

        if (code == 91)
        {
          goto LABEL_101;
        }

        if (code != 92)
        {
          if (code != 96)
          {
            goto LABEL_110;
          }

          v62 = @"HFSetupPairingControllerStatusDescriptionFailureOwnershipFailure";
          goto LABEL_114;
        }

        accessory = [accessoryCopy accessory];
        home = [accessory home];
        residentDevices = [home residentDevices];
        v76 = [residentDevices count];

        if (!v76)
        {
LABEL_101:
          v61 = _HFLocalizedStringWithDefaultValue(@"HFSetupPairingControllerStatusDescriptionFailureNoHomeHub", @"HFSetupPairingControllerStatusDescriptionFailureNoHomeHub", 1);

          v31 = @"HFSetupPairingControllerStatusTitleFailureNoHomeHub";
        }

        else
        {
          v61 = _HFLocalizedStringWithDefaultValue(@"HFSetupPairingControllerStatusDescriptionFailureNoCompatibleHomeHub", @"HFSetupPairingControllerStatusDescriptionFailureNoCompatibleHomeHub", 1);

          v31 = @"HFSetupPairingControllerStatusTitleFailureNoCompatibleHomeHub";
        }

        goto LABEL_116;
      }

      if (code > 53)
      {
        if (code == 54)
        {
LABEL_89:
          v72 = @"HFSetupPairingControllerStatusDescriptionFailureGenericNetwork";
LABEL_104:
          v80 = HFLocalizedWiFiString(v72);
LABEL_115:
          v61 = v80;

          v31 = @"HFSetupPairingControllerStatusTitleFailureGeneric";
          goto LABEL_116;
        }

        if (code != 55)
        {
          goto LABEL_110;
        }

        v62 = @"HFSetupPairingControllerStatusDescriptionFailureAuthenticationFailed";
LABEL_114:
        v80 = _HFLocalizedStringWithDefaultValue(v62, v62, 1);
        goto LABEL_115;
      }

      if (code != 3)
      {
        if (code == 13)
        {
          name = [accessoryCopy name];
          accessoryName = name;
          if (!name)
          {
            self = [contextCopy setupAccessoryDescription];
            accessoryName = [self accessoryName];
          }

          v30 = HFLocalizedStringWithFormat(@"HFSetupPairingControllerStatusDescriptionFailureAlreadyPaired", @"%@", v63, v64, v65, v66, v67, v68, accessoryName);

          if (!name)
          {
          }

          v31 = @"HFSetupPairingControllerStatusTitleFailureAlreadyPaired";
          goto LABEL_81;
        }

        goto LABEL_110;
      }
    }

    else
    {
      domain2 = [errorCopy domain];
      v59 = [domain2 isEqualToString:@"HFErrorDomain"];

      if (!v59)
      {
LABEL_112:
        v31 = @"HFSetupPairingControllerStatusTitleFailureGeneric";
        goto LABEL_25;
      }

      code2 = [errorCopy code];
      if (code2 != 33)
      {
        if (code2 == 22)
        {
          v61 = _HFLocalizedStringWithDefaultValue(@"HFSetupPairingControllerStatusDescriptionFailureAccessoryNotInPairingMode", @"HFSetupPairingControllerStatusDescriptionFailureAccessoryNotInPairingMode", 1);

          v31 = @"HFSetupPairingControllerStatusTitleFailureAccessoryNotInPairingMode";
        }

        else
        {
          if (code2 != 6)
          {
            v71 = HFLogForCategory(0x3FuLL);
            if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
LABEL_111:

              goto LABEL_112;
            }

LABEL_119:
            domain3 = [errorCopy domain];
            *buf = 138412546;
            v95 = domain3;
            v96 = 2112;
            v97 = errorCopy;
            _os_log_error_impl(&dword_20D9BF000, v71, OS_LOG_TYPE_ERROR, "Unexpected accessory %@ setup error %@", buf, 0x16u);

            goto LABEL_111;
          }

          v61 = _HFLocalizedStringWithDefaultValue(@"HFSetupPairingControllerStatusDescriptionFailureAccessoryNotFound", @"HFSetupPairingControllerStatusDescriptionFailureAccessoryNotFound", 1);

          v31 = @"HFSetupPairingControllerStatusTitleFailureAccessoryNotFound";
        }

        goto LABEL_116;
      }
    }

    v61 = _HFLocalizedStringWithDefaultValue(@"HFSetupPairingControllerStatusDescriptionFailureInvalidCode", @"HFSetupPairingControllerStatusDescriptionFailureInvalidCode", 1);

    v31 = @"HFSetupPairingControllerStatusTitleFailureInvalidCode";
    goto LABEL_116;
  }

  if ((phaseCopy - 6) < 2)
  {
    goto LABEL_23;
  }

  if (phaseCopy != 8)
  {
    goto LABEL_81;
  }

  name2 = [accessoryCopy name];
  accessoryName2 = name2;
  if (!name2)
  {
    self = [contextCopy setupAccessoryDescription];
    accessoryName2 = [self accessoryName];
  }

  v32 = HFLocalizedStringWithFormat(@"HFSetupPairingControllerStatusDescriptionFailureAlreadyPaired", @"%@", v33, v34, v35, v36, v37, v38, accessoryName2);

  if (!name2)
  {
  }

  v31 = @"HFSetupPairingControllerStatusTitleFailureAlreadyPaired";
LABEL_25:
  v42 = HFLocalizedWiFiStringKeyForKey(v31);
  v43 = _HFLocalizedStringWithDefaultValue(v42, 0, 0);

  if (v43)
  {
    v43 = HFLocalizedWiFiString(v31);
  }

  v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_withoutName", v31];
  v45 = _HFLocalizedStringWithDefaultValue(v44, 0, 0);

  if (v45)
  {
    v46 = _HFLocalizedStringWithDefaultValue(v44, v44, 1);

    v43 = v46;
  }

  if (!v43)
  {
    v43 = _HFLocalizedStringWithDefaultValue(v31, 0, 0);
  }

  if (title)
  {
    v47 = v43;
    *title = v43;
  }

  if (description)
  {
    v48 = v32;
    *description = v32;
  }

  v49 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)processSetupAccessoryProgressChange:(int64_t)change currentPhase:(unint64_t)phase context:(id)context discoveredAccessory:(id)accessory setupResult:(id)result home:(id)home callerClass:(Class)aClass thirdParty:(BOOL)self0
{
  v52 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  accessoryCopy = accessory;
  homeCopy = home;
  setupAccessoryDescription = [contextCopy setupAccessoryDescription];
  v19 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = NSStringFromClass(aClass);
    HMSetupAccessoryProgressAsString();
    v38 = accessoryCopy;
    v21 = setupAccessoryDescription;
    v22 = contextCopy;
    resultCopy = result;
    v25 = v24 = homeCopy;
    v26 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:phase];
    *buf = 138413570;
    selfCopy = self;
    v42 = 2112;
    v43 = v20;
    v44 = 2112;
    v45 = v25;
    v46 = 2048;
    changeCopy = change;
    v48 = 2112;
    v49 = v26;
    v50 = 2048;
    phaseCopy = phase;
    _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "%@ [%@] didUpdateProgress: %@ [%ld] with currentPhase: %@ [%lu]", buf, 0x3Eu);

    homeCopy = v24;
    result = resultCopy;
    contextCopy = v22;
    setupAccessoryDescription = v21;
    accessoryCopy = v38;
  }

  if (phase == 9)
  {
    v27 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v27, OS_LOG_TYPE_DEFAULT, "...but we're already in a 'failed' state, so ignoring the progress update", buf, 2u);
    }

    phase = 9;
    goto LABEL_30;
  }

  [accessoryCopy setCertificationStatus:{objc_msgSend(setupAccessoryDescription, "certificationStatus")}];
  if ([accessoryCopy certificationStatus])
  {
    accessoryName = [setupAccessoryDescription accessoryName];
    [accessoryCopy setName:accessoryName];

    category = [setupAccessoryDescription category];
    [accessoryCopy setCategory:category];

    manufacturerName = [setupAccessoryDescription manufacturerName];
    [accessoryCopy setManufacturer:manufacturerName];
  }

  if (phase != 6)
  {
    if (change <= 6)
    {
      if (change < 3)
      {
        if (phase == 4)
        {
          phase = 4;
        }

        else
        {
          phase = 3;
        }

        goto LABEL_30;
      }

      if (change == 3)
      {
        phase = 5;
        goto LABEL_30;
      }

      if (change == 6)
      {
        if (!party)
        {
          [homeCopy userDidRespondToConsentRequestForSetupAccessoryDescription:setupAccessoryDescription withResponse:1];
        }

        v31 = phase == 1;
        goto LABEL_27;
      }
    }

    else if (change <= 0x18)
    {
      if (((1 << change) & 0x1200080) == 0)
      {
        if (((1 << change) & 0x500) != 0)
        {
          phase = 6;
          goto LABEL_30;
        }

        if (change == 9)
        {
          v34 = [objc_opt_class() _context:contextCopy requiresUserConsentToReplaceInHome:homeCopy];
          phaseCopy3 = 7;
          if (!v34)
          {
            phaseCopy3 = phase;
          }

          if ((v34 & 1) == 0 && !party)
          {
            [homeCopy userDidRespondToConsentRequestForSetupAccessoryDescription:setupAccessoryDescription withResponse:3];
            phaseCopy3 = phase;
          }

          if (phase == 1)
          {
            phase = phaseCopy3;
          }

          else
          {
            phase = 4;
          }

          goto LABEL_30;
        }

        goto LABEL_41;
      }

      if (result)
      {
        v31 = phase == 1;
      }

      else
      {
        v31 = 1;
      }

LABEL_27:
      if (v31)
      {
        phase = 1;
      }

      else
      {
        phase = 4;
      }

      goto LABEL_30;
    }

LABEL_41:
    v36 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMSetupAccessoryProgressAsString();
      *buf = 138412290;
      selfCopy = v37;
      _os_log_error_impl(&dword_20D9BF000, v36, OS_LOG_TYPE_ERROR, "Unexpected accessory setup progress %@", buf, 0xCu);
    }
  }

LABEL_30:

  v32 = *MEMORY[0x277D85DE8];
  return phase;
}

+ (BOOL)_context:(id)_context requiresUserConsentToReplaceInHome:(id)home
{
  setupAccessoryDescription = [_context setupAccessoryDescription];
  category = [setupAccessoryDescription category];
  categoryType = [category categoryType];
  v7 = [categoryType isEqualToString:*MEMORY[0x277CCE950]];

  return v7;
}

+ (id)urlComponentHomeSettingsForAccessory:(id)accessory forHome:(id)home
{
  accessoryCopy = accessory;
  homeCopy = home;
  cameraProfiles = [accessoryCopy cameraProfiles];
  v8 = [cameraProfiles count];

  if (v8)
  {
    cameraProfiles2 = [accessoryCopy cameraProfiles];
    firstObject = [cameraProfiles2 firstObject];
    v11 = [HFURLComponents cameraProfileDetailsURLForCameraProfile:firstObject home:homeCopy];

LABEL_3:
    goto LABEL_11;
  }

  if ([accessoryCopy hf_isNetworkRouter])
  {
    v12 = [HFURLComponents networkRouterSettingsURLForHome:homeCopy];
  }

  else
  {
    hf_irrigationSystemServices = [accessoryCopy hf_irrigationSystemServices];
    v14 = [hf_irrigationSystemServices count];

    if (!v14)
    {
      if ([accessoryCopy hf_isCategorizedAsBridge])
      {
        v12 = [HFURLComponents bridgeSettingsURLForAccessory:accessoryCopy home:homeCopy];
        goto LABEL_10;
      }

      if ([accessoryCopy hf_isSingleServiceAccessory])
      {
        cameraProfiles2 = [accessoryCopy hf_primaryService];
        v11 = [HFURLComponents serviceDetailsURLForService:cameraProfiles2 home:homeCopy];
        goto LABEL_3;
      }
    }

    v12 = [HFURLComponents accessoryDetailsURLForAccessory:accessoryCopy home:homeCopy];
  }

LABEL_10:
  v11 = v12;
LABEL_11:
  v15 = [MEMORY[0x277CCACE0] componentsWithURL:v11 resolvingAgainstBaseURL:1];
  queryItems = [v15 queryItems];
  v17 = MEMORY[0x277CCAD18];
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", MEMORY[0x277CBEC38]];
  v19 = [v17 queryItemWithName:@"HFURLComponentsFromHUIS" value:v18];
  v20 = [queryItems arrayByAddingObject:v19];
  [v15 setQueryItems:v20];

  return v15;
}

@end