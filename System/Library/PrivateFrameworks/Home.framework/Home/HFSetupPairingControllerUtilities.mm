@interface HFSetupPairingControllerUtilities
+ (BOOL)_context:(id)a3 requiresUserConsentToReplaceInHome:(id)a4;
+ (id)_accessoryNotFoundStatusDescriptionSuffixForSetupResult:(id)a3;
+ (id)descriptionForPairingPhase:(unint64_t)a3;
+ (id)urlComponentHomeSettingsForAccessory:(id)a3 forHome:(id)a4;
+ (unint64_t)processSetupAccessoryProgressChange:(int64_t)a3 currentPhase:(unint64_t)a4 context:(id)a5 discoveredAccessory:(id)a6 setupResult:(id)a7 home:(id)a8 callerClass:(Class)aClass thirdParty:(BOOL)a10;
+ (void)getStatusTitle:(id *)a3 statusDescription:(id *)a4 forPairingPhase:(unint64_t)a5 phaseStartDate:(id)a6 discoveredAccessory:(id)a7 setupResult:(id)a8 context:(id)a9 setupError:(id)a10;
@end

@implementation HFSetupPairingControllerUtilities

+ (id)descriptionForPairingPhase:(unint64_t)a3
{
  if (a3 > 0xA)
  {
    return 0;
  }

  else
  {
    return off_277DF7490[a3];
  }
}

+ (id)_accessoryNotFoundStatusDescriptionSuffixForSetupResult:(id)a3
{
  v3 = [a3 setupPayload];
  v4 = [v3 hf_requiresEthernet];

  if (v4)
  {
    return @"Ethernet";
  }

  else
  {
    return @"Generic";
  }
}

+ (void)getStatusTitle:(id *)a3 statusDescription:(id *)a4 forPairingPhase:(unint64_t)a5 phaseStartDate:(id)a6 discoveredAccessory:(id)a7 setupResult:(id)a8 context:(id)a9 setupError:(id)a10
{
  v98 = *MEMORY[0x277D85DE8];
  v16 = a7;
  v17 = a8;
  v93 = a9;
  v18 = a10;
  v19 = MEMORY[0x277CBEAA8];
  v20 = a6;
  v21 = [v19 date];
  [v21 timeIntervalSinceDate:v20];
  v23 = v22;

  v24 = [v17 error];

  v25 = v17;
  if (v24 || ([v16 error], v26 = objc_claimAutoreleasedReturnValue(), v26, v25 = v16, v26))
  {
    v27 = [v25 error];

    v18 = v27;
  }

  if (v18)
  {
    v28 = a5 == 1;
  }

  else
  {
    v28 = 0;
  }

  if (v28)
  {
    v29 = 9;
  }

  else
  {
    v29 = a5;
  }

  v30 = _HFLocalizedStringWithDefaultValue(@"HFSetupPairingControllerStatusDescriptionFailureGeneric", @"HFSetupPairingControllerStatusDescriptionFailureGeneric", 1);
  v31 = 0;
  if (v29 <= 5)
  {
    if (v29 <= 2)
    {
      if (v29 < 2)
      {
        v32 = _HFLocalizedStringWithDefaultValue(@"HFSetupPairingControllerStatusDescriptionNotStarted", @"HFSetupPairingControllerStatusDescriptionNotStarted", 1);

        v31 = @"HFSetupPairingControllerStatusTitleNotStarted";
        goto LABEL_25;
      }

      if (v29 == 2)
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

        v51 = [a1 _accessoryNotFoundStatusDescriptionSuffixForSetupResult:v17];
        v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"HFSetupPairingControllerStatusDescriptionWaitingToDiscoverAccessory_%@", v51];
        v32 = _HFLocalizedStringWithDefaultValue(v52, v52, 1);

        goto LABEL_25;
      }

LABEL_81:
      v32 = v30;
      goto LABEL_25;
    }

    if ((v29 - 3) >= 2)
    {
      if (v29 != 5)
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

  if (v29 > 8)
  {
    if (v29 != 9)
    {
      if (v29 == 10)
      {
        v32 = _HFLocalizedStringWithDefaultValue(@"HFSetupPairingControllerStatusDescriptionSuccess", @"HFSetupPairingControllerStatusDescriptionSuccess", 1);

        v31 = @"HFSetupPairingControllerStatusTitleSuccess";
        goto LABEL_25;
      }

      goto LABEL_81;
    }

    v53 = [v18 userInfo];
    v54 = [v53 objectForKeyedSubscript:*MEMORY[0x277CCA450]];
    if (v54)
    {
      [v18 localizedDescription];
    }

    else
    {
      _HFLocalizedStringWithDefaultValue(@"HFSetupPairingControllerStatusDescriptionFailureGeneric", @"HFSetupPairingControllerStatusDescriptionFailureGeneric", 1);
    }
    v32 = ;

    v55 = [v18 domain];
    v56 = [v55 isEqualToString:*MEMORY[0x277CCFD28]];

    if (v56)
    {
      v57 = [v18 code];
      if (v57 > 96)
      {
        if (v57 <= 104)
        {
          if (v57 <= 98)
          {
            if (v57 == 97)
            {
              v81 = MEMORY[0x277CD1650];
              v82 = [v17 setupPayload];
              v83 = [v82 category];
              v84 = [v83 categoryType];
              v85 = [v81 hf_userFriendlyLocalizedCapitalizedDescription:v84];

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
            if (v57 != 99)
            {
              if (v57 != 100 && v57 != 102)
              {
                goto LABEL_110;
              }

              goto LABEL_89;
            }

            v62 = @"HFSetupPairingControllerStatusDescriptionFailureEnterpriseNetworkNotSupported";
          }

          goto LABEL_114;
        }

        if (v57 > 2003)
        {
          switch(v57)
          {
            case 2004:
              v61 = _HFLocalizedStringWithDefaultValue(@"HFSetupPairingControllerStatusDescriptionFailureUnsupportedSetupPayload", @"HFSetupPairingControllerStatusDescriptionFailureUnsupportedSetupPayload", 1);

              v31 = @"HFSetupPairingControllerStatusTitleFailureUnsupportedSetupPayload";
              goto LABEL_116;
            case 2015:
              v77 = [a1 _accessoryNotFoundStatusDescriptionSuffixForSetupResult:v17];
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

        if (v57 != 105)
        {
          if (v57 != 2002)
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

      if (v57 > 77)
      {
        if (v57 <= 90)
        {
          if (v57 == 78)
          {
            v72 = @"HFSetupPairingControllerStatusDescriptionFailureInternetConnectionRequired";
            goto LABEL_104;
          }

          if (v57 != 90)
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

        if (v57 == 91)
        {
          goto LABEL_101;
        }

        if (v57 != 92)
        {
          if (v57 != 96)
          {
            goto LABEL_110;
          }

          v62 = @"HFSetupPairingControllerStatusDescriptionFailureOwnershipFailure";
          goto LABEL_114;
        }

        v73 = [v16 accessory];
        v74 = [v73 home];
        v75 = [v74 residentDevices];
        v76 = [v75 count];

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

      if (v57 > 53)
      {
        if (v57 == 54)
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

        if (v57 != 55)
        {
          goto LABEL_110;
        }

        v62 = @"HFSetupPairingControllerStatusDescriptionFailureAuthenticationFailed";
LABEL_114:
        v80 = _HFLocalizedStringWithDefaultValue(v62, v62, 1);
        goto LABEL_115;
      }

      if (v57 != 3)
      {
        if (v57 == 13)
        {
          v69 = [v16 name];
          v70 = v69;
          if (!v69)
          {
            a1 = [v93 setupAccessoryDescription];
            v70 = [a1 accessoryName];
          }

          v30 = HFLocalizedStringWithFormat(@"HFSetupPairingControllerStatusDescriptionFailureAlreadyPaired", @"%@", v63, v64, v65, v66, v67, v68, v70);

          if (!v69)
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
      v58 = [v18 domain];
      v59 = [v58 isEqualToString:@"HFErrorDomain"];

      if (!v59)
      {
LABEL_112:
        v31 = @"HFSetupPairingControllerStatusTitleFailureGeneric";
        goto LABEL_25;
      }

      v60 = [v18 code];
      if (v60 != 33)
      {
        if (v60 == 22)
        {
          v61 = _HFLocalizedStringWithDefaultValue(@"HFSetupPairingControllerStatusDescriptionFailureAccessoryNotInPairingMode", @"HFSetupPairingControllerStatusDescriptionFailureAccessoryNotInPairingMode", 1);

          v31 = @"HFSetupPairingControllerStatusTitleFailureAccessoryNotInPairingMode";
        }

        else
        {
          if (v60 != 6)
          {
            v71 = HFLogForCategory(0x3FuLL);
            if (!os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
LABEL_111:

              goto LABEL_112;
            }

LABEL_119:
            v92 = [v18 domain];
            *buf = 138412546;
            v95 = v92;
            v96 = 2112;
            v97 = v18;
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

  if ((v29 - 6) < 2)
  {
    goto LABEL_23;
  }

  if (v29 != 8)
  {
    goto LABEL_81;
  }

  v39 = [v16 name];
  v40 = v39;
  if (!v39)
  {
    a1 = [v93 setupAccessoryDescription];
    v40 = [a1 accessoryName];
  }

  v32 = HFLocalizedStringWithFormat(@"HFSetupPairingControllerStatusDescriptionFailureAlreadyPaired", @"%@", v33, v34, v35, v36, v37, v38, v40);

  if (!v39)
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

  if (a3)
  {
    v47 = v43;
    *a3 = v43;
  }

  if (a4)
  {
    v48 = v32;
    *a4 = v32;
  }

  v49 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)processSetupAccessoryProgressChange:(int64_t)a3 currentPhase:(unint64_t)a4 context:(id)a5 discoveredAccessory:(id)a6 setupResult:(id)a7 home:(id)a8 callerClass:(Class)aClass thirdParty:(BOOL)a10
{
  v52 = *MEMORY[0x277D85DE8];
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = [v15 setupAccessoryDescription];
  v19 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = NSStringFromClass(aClass);
    HMSetupAccessoryProgressAsString();
    v38 = v16;
    v21 = v18;
    v22 = v15;
    v23 = a7;
    v25 = v24 = v17;
    v26 = [HFSetupPairingControllerUtilities descriptionForPairingPhase:a4];
    *buf = 138413570;
    v41 = a1;
    v42 = 2112;
    v43 = v20;
    v44 = 2112;
    v45 = v25;
    v46 = 2048;
    v47 = a3;
    v48 = 2112;
    v49 = v26;
    v50 = 2048;
    v51 = a4;
    _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "%@ [%@] didUpdateProgress: %@ [%ld] with currentPhase: %@ [%lu]", buf, 0x3Eu);

    v17 = v24;
    a7 = v23;
    v15 = v22;
    v18 = v21;
    v16 = v38;
  }

  if (a4 == 9)
  {
    v27 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v27, OS_LOG_TYPE_DEFAULT, "...but we're already in a 'failed' state, so ignoring the progress update", buf, 2u);
    }

    a4 = 9;
    goto LABEL_30;
  }

  [v16 setCertificationStatus:{objc_msgSend(v18, "certificationStatus")}];
  if ([v16 certificationStatus])
  {
    v28 = [v18 accessoryName];
    [v16 setName:v28];

    v29 = [v18 category];
    [v16 setCategory:v29];

    v30 = [v18 manufacturerName];
    [v16 setManufacturer:v30];
  }

  if (a4 != 6)
  {
    if (a3 <= 6)
    {
      if (a3 < 3)
      {
        if (a4 == 4)
        {
          a4 = 4;
        }

        else
        {
          a4 = 3;
        }

        goto LABEL_30;
      }

      if (a3 == 3)
      {
        a4 = 5;
        goto LABEL_30;
      }

      if (a3 == 6)
      {
        if (!a10)
        {
          [v17 userDidRespondToConsentRequestForSetupAccessoryDescription:v18 withResponse:1];
        }

        v31 = a4 == 1;
        goto LABEL_27;
      }
    }

    else if (a3 <= 0x18)
    {
      if (((1 << a3) & 0x1200080) == 0)
      {
        if (((1 << a3) & 0x500) != 0)
        {
          a4 = 6;
          goto LABEL_30;
        }

        if (a3 == 9)
        {
          v34 = [objc_opt_class() _context:v15 requiresUserConsentToReplaceInHome:v17];
          v35 = 7;
          if (!v34)
          {
            v35 = a4;
          }

          if ((v34 & 1) == 0 && !a10)
          {
            [v17 userDidRespondToConsentRequestForSetupAccessoryDescription:v18 withResponse:3];
            v35 = a4;
          }

          if (a4 == 1)
          {
            a4 = v35;
          }

          else
          {
            a4 = 4;
          }

          goto LABEL_30;
        }

        goto LABEL_41;
      }

      if (a7)
      {
        v31 = a4 == 1;
      }

      else
      {
        v31 = 1;
      }

LABEL_27:
      if (v31)
      {
        a4 = 1;
      }

      else
      {
        a4 = 4;
      }

      goto LABEL_30;
    }

LABEL_41:
    v36 = HFLogForCategory(0x3FuLL);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMSetupAccessoryProgressAsString();
      *buf = 138412290;
      v41 = v37;
      _os_log_error_impl(&dword_20D9BF000, v36, OS_LOG_TYPE_ERROR, "Unexpected accessory setup progress %@", buf, 0xCu);
    }
  }

LABEL_30:

  v32 = *MEMORY[0x277D85DE8];
  return a4;
}

+ (BOOL)_context:(id)a3 requiresUserConsentToReplaceInHome:(id)a4
{
  v4 = [a3 setupAccessoryDescription];
  v5 = [v4 category];
  v6 = [v5 categoryType];
  v7 = [v6 isEqualToString:*MEMORY[0x277CCE950]];

  return v7;
}

+ (id)urlComponentHomeSettingsForAccessory:(id)a3 forHome:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 cameraProfiles];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [v5 cameraProfiles];
    v10 = [v9 firstObject];
    v11 = [HFURLComponents cameraProfileDetailsURLForCameraProfile:v10 home:v6];

LABEL_3:
    goto LABEL_11;
  }

  if ([v5 hf_isNetworkRouter])
  {
    v12 = [HFURLComponents networkRouterSettingsURLForHome:v6];
  }

  else
  {
    v13 = [v5 hf_irrigationSystemServices];
    v14 = [v13 count];

    if (!v14)
    {
      if ([v5 hf_isCategorizedAsBridge])
      {
        v12 = [HFURLComponents bridgeSettingsURLForAccessory:v5 home:v6];
        goto LABEL_10;
      }

      if ([v5 hf_isSingleServiceAccessory])
      {
        v9 = [v5 hf_primaryService];
        v11 = [HFURLComponents serviceDetailsURLForService:v9 home:v6];
        goto LABEL_3;
      }
    }

    v12 = [HFURLComponents accessoryDetailsURLForAccessory:v5 home:v6];
  }

LABEL_10:
  v11 = v12;
LABEL_11:
  v15 = [MEMORY[0x277CCACE0] componentsWithURL:v11 resolvingAgainstBaseURL:1];
  v16 = [v15 queryItems];
  v17 = MEMORY[0x277CCAD18];
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", MEMORY[0x277CBEC38]];
  v19 = [v17 queryItemWithName:@"HFURLComponentsFromHUIS" value:v18];
  v20 = [v16 arrayByAddingObject:v19];
  [v15 setQueryItems:v20];

  return v15;
}

@end