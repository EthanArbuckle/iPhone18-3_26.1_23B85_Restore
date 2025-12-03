@interface NSError(NPHCellularError)
+ (id)NPHCellularErrorWithCode:()NPHCellularError forSubscriptionContext:;
+ (id)NPHCellularSanitizedError:()NPHCellularError forSubscriptionContext:;
+ (id)_titleAndMessageDictForError:()NPHCellularError forSubscriptionContext:;
+ (uint64_t)_canControlLTEVoiceOptionsSeparately;
@end

@implementation NSError(NPHCellularError)

+ (id)NPHCellularErrorWithCode:()NPHCellularError forSubscriptionContext:
{
  v6 = a4;
  v7 = 0;
  if (a3 <= 3)
  {
    if (a3 != 2)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      if (a3 != 3)
      {
        goto LABEL_26;
      }

      v11 = 0x277CCA000uLL;
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v10 = [v12 localizedStringForKey:@"NPHCELLULARERROR_NOT_SUPPORTED_BY_CARRIER_TITLE" value:&stru_285611AE0 table:0];

      v13 = +[NPHCellularBridgeUIManager sharedInstance];
      v14 = [v13 carrierNameForSubscription:v6];

      if ([v14 length])
      {
        if (+[NPHSharedUtilities isActiveDeviceTinker])
        {
          v15 = 1;
LABEL_18:
          v35 = +[NPHCellularBridgeUIManager sharedInstance];
          tinkerFamilyMemberFirstName = [v35 tinkerFamilyMemberFirstName];

          v37 = MEMORY[0x277CCACA8];
          v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v39 = v38;
          if (v15)
          {
            v40 = [v38 localizedStringForKey:@"NPHCELLULARERROR_NOT_SUPPORTED_BY_CARRIER_MESSAGE_CROSS_CARRIER" value:&stru_285611AE0 table:0];
            [v37 stringWithFormat:v40, v14, tinkerFamilyMemberFirstName];
          }

          else
          {
            v40 = [v38 localizedStringForKey:@"NPHCELLULARERROR_NOT_SUPPORTED_BY_CARRIER_MESSAGE_CROSS_CARRIER_NO_NAME" value:&stru_285611AE0 table:0];
            [v37 stringWithFormat:v40, tinkerFamilyMemberFirstName, v47];
          }
          v9 = ;

          v11 = 0x277CCA000;
          goto LABEL_24;
        }
      }

      else
      {
        v34 = [v14 caseInsensitiveCompare:@"Carrier"];
        v15 = v34 != 0;
        if (+[NPHSharedUtilities isActiveDeviceTinker])
        {
          goto LABEL_18;
        }

        if (!v34)
        {
          tinkerFamilyMemberFirstName = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v9 = [tinkerFamilyMemberFirstName localizedStringForKey:@"NPHCELLULARERROR_NOT_SUPPORTED_BY_CARRIER_MESSAGE_NO_NAME" value:&stru_285611AE0 table:0];
          goto LABEL_24;
        }
      }

      v41 = MEMORY[0x277CCACA8];
      tinkerFamilyMemberFirstName = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v42 = [tinkerFamilyMemberFirstName localizedStringForKey:@"NPHCELLULARERROR_NOT_SUPPORTED_BY_CARRIER_MESSAGE" value:&stru_285611AE0 table:0];
      v9 = [v41 stringWithFormat:v42, v14];

LABEL_24:
      v43 = [*(v11 + 2264) bundleForClass:objc_opt_class()];
      v8 = [v43 localizedStringForKey:@"NPHCELLULARERROR_NOT_SUPPORTED_BY_CARRIER_URL" value:&stru_285611AE0 table:0];

      v7 = 0;
      goto LABEL_25;
    }

    v28 = +[NPHSharedUtilities isActiveDeviceTinker];
    v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v30 = v29;
    if (v28)
    {
      v10 = [v29 localizedStringForKey:@"NPHCELLULARERROR_NO_SIM_IN_COMPANION_TITLE_TINKER" value:&stru_285611AE0 table:0];

      v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = v31;
      v32 = @"NPHCELLULARERROR_NO_SIM_IN_COMPANION_NO_PLAN_MESSAGE_TINKER";
    }

    else
    {
      v10 = [v29 localizedStringForKey:@"NPHCELLULARERROR_NO_SIM_IN_COMPANION_TITLE" value:&stru_285611AE0 table:0];

      v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = v31;
      v32 = @"NPHCELLULARERROR_NO_SIM_IN_COMPANION_NO_PLAN_MESSAGE";
    }

    goto LABEL_16;
  }

  if (a3 == 4)
  {
    v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v33 localizedStringForKey:@"NPHCELLULARERROR_NOT_SET_UP_TITLE" value:&stru_285611AE0 table:0];

    v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = v31;
    v32 = @"NPHCELLULARERROR_NOT_SET_UP_MESSAGE";
LABEL_16:
    v9 = [v31 localizedStringForKey:v32 value:&stru_285611AE0 table:0];
    v7 = 0;
    v8 = 0;
    goto LABEL_25;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (a3 != 5)
  {
    goto LABEL_26;
  }

  v16 = +[NPHCellularBridgeUIManager sharedInstance];
  v14 = [v16 lteOverrideForSubscription:v6];

  v48 = v6;
  v17 = MEMORY[0x277CCACA8];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"NPHCELLULARERROR_LTE_IMPACTING_SERVICE_TITLE" value:&stru_285611AE0 table:0];
  v10 = [v17 stringWithFormat:v19, v14];

  _canControlLTEVoiceOptionsSeparately = [self _canControlLTEVoiceOptionsSeparately];
  v21 = @"NPHCELLULARERROR_LTE_IMPACTING_SERVICE_MESSAGE";
  if (_canControlLTEVoiceOptionsSeparately)
  {
    v21 = @"NPHCELLULARERROR_LTE_VOICE_IMPACTING_SERVICE_MESSAGE";
  }

  v22 = MEMORY[0x277CCACA8];
  v23 = MEMORY[0x277CCA8D8];
  v24 = v21;
  v25 = [v23 bundleForClass:objc_opt_class()];
  v26 = [v25 localizedStringForKey:v24 value:&stru_285611AE0 table:0];

  v6 = v48;
  v9 = [v22 stringWithFormat:v26, v14, v14];

  v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v27 localizedStringForKey:@"NPHCELLULARERROR_LTE_IMPACTING_SERVICE_LINK_TEXT" value:&stru_285611AE0 table:0];

  v8 = @"prefs:root=MOBILE_DATA_SETTINGS_ID&path=CELLULAR_DATA_OPTIONS";
LABEL_25:

LABEL_26:
  v44 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
  [v44 setObject:v10 forKeyedSubscript:NPHCellularErrorTitleKey];
  [v44 setObject:v9 forKeyedSubscript:*MEMORY[0x277CCA450]];
  [v44 setObject:v8 forKeyedSubscript:NPHCellularErrorLinkKey];
  [v44 setObject:v7 forKeyedSubscript:NPHCellularErrorLinkTextKey];
  v45 = [MEMORY[0x277CCA9B8] errorWithDomain:NPHCellularErrorDomain code:a3 userInfo:v44];

  return v45;
}

+ (id)_titleAndMessageDictForError:()NPHCellularError forSubscriptionContext:
{
  v73[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  domain = [v5 domain];
  v8 = [domain isEqualToString:*MEMORY[0x277CF9680]];

  if (v8)
  {
    v9 = +[NPHCellularBridgeUIManager sharedInstance];
    v10 = [v9 carrierNameForSubscription:v6];

    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    switch([v5 code])
    {
      case 2:
        v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v14 = [v15 localizedStringForKey:@"CTCELLULARPLANERROR_PARSE_TITLE" value:&stru_285611AE0 table:0];

        v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v17 = v16;
        v18 = @"CTCELLULARPLANERROR_PARSE_MESSAGE";
        goto LABEL_28;
      case 5:
        v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v14 = [v39 localizedStringForKey:@"CTCELLULARPLANERROR_FAILED_ACTION_TITLE" value:&stru_285611AE0 table:0];

        v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v17 = v16;
        v18 = @"CTCELLULARPLANERROR_FAILED_ACTION_MESSAGE";
        goto LABEL_28;
      case 6:
        v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v36 = v35;
        v37 = @"CTCELLULARPLANERROR_INVALID_ARGUMENT_TITLE";
        goto LABEL_19;
      case 13:
        v51 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v14 = [v51 localizedStringForKey:@"CTCELLULARPLANERROR_BUSY_TITLE" value:&stru_285611AE0 table:0];

        v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v17 = v16;
        v18 = @"CTCELLULARPLANERROR_BUSY_MESSAGE";
        goto LABEL_28;
      case 14:
        v52 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v14 = [v52 localizedStringForKey:@"CTCELLULARPLANERROR_ROAMING_UNSUPPORTED_TITLE" value:&stru_285611AE0 table:0];

        if (+[NPHSharedUtilities isActiveDeviceTinker])
        {
          if ([v10 length])
          {
            v42 = MEMORY[0x277CCACA8];
            v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v26 = v43;
            v44 = @"CTCELLULARPLANERROR_ROAMING_UNSUPPORTED_MESSAGE_TINKER";
            goto LABEL_32;
          }

          v65 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v26 = v65;
          v66 = @"CTCELLULARPLANERROR_ROAMING_UNSUPPORTED_MESSAGE_TINKER_NO_NAME";
        }

        else
        {
          v65 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v26 = v65;
          v66 = @"CTCELLULARPLANERROR_ROAMING_UNSUPPORTED_MESSAGE";
        }

        goto LABEL_51;
      case 17:
        v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v36 = v35;
        v37 = @"CTCELLULARPLANERROR_UNSUPPORTED_ACTION_TITLE";
        goto LABEL_19;
      case 18:
        v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v36 = v35;
        v37 = @"CTCELLULARPLANERROR_GENERAL_TITLE";
LABEL_19:
        v14 = [v35 localizedStringForKey:v37 value:&stru_285611AE0 table:0];

        v11 = 0;
        v12 = 0;
        v13 = 0;
        goto LABEL_54;
      case 20:
        v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v14 = [v40 localizedStringForKey:@"CTCELLULARPLANERROR_INSTALL_REQUIRES_DELETE_TITLE" value:&stru_285611AE0 table:0];

        v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v17 = v16;
        v18 = @"CTCELLULARPLANERROR_INSTALL_REQUIRES_DELETE_MESSAGE";
        goto LABEL_28;
      case 21:
        v55 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v14 = [v55 localizedStringForKey:@"CTCELLULARPLANERROR_SKU_MISMATCH_TITLE" value:&stru_285611AE0 table:0];

        if ([v10 length])
        {
          v56 = MEMORY[0x277CCACA8];
          v57 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v58 = [v57 localizedStringForKey:@"CTCELLULARPLANERROR_SKU_MISMATCH_MESSAGE" value:&stru_285611AE0 table:0];
          v13 = [v56 stringWithFormat:v58, v10];
        }

        else
        {
          v57 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v13 = [v57 localizedStringForKey:@"CTCELLULARPLANERROR_SKU_MISMATCH_MESSAGE_NO_NAME" value:&stru_285611AE0 table:0];
        }

        v67 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = [v67 localizedStringForKey:@"CTCELLULARPLANERROR_SKU_MISMATCH_URL" value:&stru_285611AE0 table:0];

        v11 = 0;
        goto LABEL_54;
      case 22:
        v26 = [MEMORY[0x277CCA9B8] NPHCellularErrorWithCode:3 forSubscriptionContext:v6];
        userInfo = [v26 userInfo];
        v14 = [userInfo objectForKeyedSubscript:NPHCellularErrorTitleKey];

        userInfo2 = [v26 userInfo];
        v53 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CCA450]];
        goto LABEL_35;
      case 25:
        v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v14 = [v24 localizedStringForKey:@"CTCELLULARPLANERROR_INVALID_PPR_TITLE" value:&stru_285611AE0 table:0];

        if ([v10 length])
        {
          v25 = MEMORY[0x277CCACA8];
          v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          userInfo2 = [v26 localizedStringForKey:@"CTCELLULARPLANERROR_INVALID_PPR_MESSAGE" value:&stru_285611AE0 table:0];
          [v25 stringWithFormat:userInfo2, v10, v10];
          goto LABEL_33;
        }

        v65 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v26 = v65;
        v66 = @"CTCELLULARPLANERROR_INVALID_PPR_MESSAGE_NO_NAME";
        goto LABEL_51;
      case 26:
        v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v14 = [v38 localizedStringForKey:@"CTCELLULARPLANERROR_INVALID_FAUX_CARD_TITLE" value:&stru_285611AE0 table:0];

        v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v17 = v16;
        v18 = @"CTCELLULARPLANERROR_INVALID_FAUX_CARD_MESSAGE";
        goto LABEL_28;
      case 27:
        v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v14 = [v28 localizedStringForKey:@"CTCELLULARPLANERROR_MULTI_SIM_TITLE" value:&stru_285611AE0 table:0];

        v29 = +[NPHCellularBridgeUIManager sharedInstance];
        v30 = [v29 carrierPhoneNumberForSubscription:v6];

        if ([v10 length] && objc_msgSend(v30, "length"))
        {
          v31 = MEMORY[0x277CCACA8];
          v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v33 = [v32 localizedStringForKey:@"CTCELLULARPLANERROR_MULTI_SIM_MESSAGE_PHONE_NUMBER" value:&stru_285611AE0 table:0];
          v73[0] = v10;
          v73[1] = v30;
          v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:2];
          v13 = [v31 stringWithPositionalSpecifiersFormat:v33 arguments:v34];

          v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"tel://%@", v30];
          v11 = v30;
        }

        else
        {
          if ([v10 length])
          {
            v59 = MEMORY[0x277CCACA8];
            v60 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v61 = [v60 localizedStringForKey:@"CTCELLULARPLANERROR_MULTI_SIM_MESSAGE_NAME" value:&stru_285611AE0 table:0];
            v72 = v10;
            v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
            v13 = [v59 stringWithPositionalSpecifiersFormat:v61 arguments:v62];
          }

          else
          {
            v60 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v13 = [v60 localizedStringForKey:@"CTCELLULARPLANERROR_MULTI_SIM_MESSAGE" value:&stru_285611AE0 table:0];
          }

          v11 = 0;
          v12 = 0;
        }

        goto LABEL_54;
      case 30:
        v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v14 = [v23 localizedStringForKey:@"CTCELLULARPLANERROR_WATCH_LOCKED_TITLE" value:&stru_285611AE0 table:0];

        v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v17 = v16;
        v18 = @"CTCELLULARPLANERROR_WATCH_LOCKED_MESSAGE";
LABEL_28:
        v13 = [v16 localizedStringForKey:v18 value:&stru_285611AE0 table:0];

        goto LABEL_53;
      case 31:
        v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v14 = [v41 localizedStringForKey:@"CTCELLULARPLANERROR_LOCKED_SIM_IN_COMPANION_TITLE" value:&stru_285611AE0 table:0];

        if ([v10 length])
        {
          v42 = MEMORY[0x277CCACA8];
          v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v26 = v43;
          v44 = @"CTCELLULARPLANERROR_LOCKED_SIM_IN_COMPANION_MESSAGE";
          goto LABEL_32;
        }

        v65 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v26 = v65;
        v66 = @"CTCELLULARPLANERROR_LOCKED_SIM_IN_COMPANION_MESSAGE_NO_NAME";
        goto LABEL_51;
      case 32:
        v45 = +[NPHCellularBridgeUIManager sharedInstance];
        v46 = [v45 _minMajorWatchOSVersionForSubscription:v6];

        activeDevice = [MEMORY[0x277D37B48] activeDevice];
        isCellularSeries3 = [activeDevice isCellularSeries3];

        v49 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v50 = v49;
        if (v46 >= 9 && isCellularSeries3)
        {
          v14 = [v49 localizedStringForKey:@"CTCELLULARPLANERROR_CANNOT_SOFTWARE_UPDATE_TITLE" value:&stru_285611AE0 table:0];

          if ([v10 length])
          {
            v42 = MEMORY[0x277CCACA8];
            v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v26 = v43;
            v44 = @"CTCELLULARPLANERROR_CANNOT_SOFTWARE_UPDATE_MESSAGE";
LABEL_32:
            userInfo2 = [v43 localizedStringForKey:v44 value:&stru_285611AE0 table:0];
            [v42 stringWithFormat:userInfo2, v10, v71];
            v53 = LABEL_33:;
LABEL_35:
            v13 = v53;
          }

          else
          {
            v65 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v26 = v65;
            v66 = @"CTCELLULARPLANERROR_CANNOT_SOFTWARE_UPDATE_MESSAGE_NO_NAME";
LABEL_51:
            v13 = [v65 localizedStringForKey:v66 value:&stru_285611AE0 table:0];
          }

LABEL_53:
          v11 = 0;
          v12 = 0;
        }

        else
        {
          v14 = [v49 localizedStringForKey:@"CTCELLULARPLANERROR_REQUIRES_SOFTWARE_UPDATE_TITLE" value:&stru_285611AE0 table:0];

          v63 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v13 = [v63 localizedStringForKey:@"CTCELLULARPLANERROR_REQUIRES_SOFTWARE_UPDATE_MESSAGE" value:&stru_285611AE0 table:0];

          v64 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v11 = [v64 localizedStringForKey:@"CTCELLULARPLANERROR_REQUIRES_SOFTWARE_UPDATE_MESSAGE_LINK_TEXT" value:&stru_285611AE0 table:0];

          v12 = @"bridge:root=GENERAL_LINK&path=SOFTWARE_UPDATE_LINK";
        }

LABEL_54:

        break;
      default:
        goto LABEL_54;
    }
  }

  else
  {
    domain2 = [v5 domain];
    v20 = [domain2 isEqualToString:*MEMORY[0x277CCA050]];

    if (v20 && [v5 code] == 4097)
    {
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v21 localizedStringForKey:@"NSERROR_XPC_CONNECTION_TITLE" value:&stru_285611AE0 table:0];

      v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v22 localizedStringForKey:@"NSERROR_XPC_CONNECTION_MESSAGE" value:&stru_285611AE0 table:0];

      v11 = 0;
      v12 = 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }
  }

  if ([v14 length] || objc_msgSend(v13, "length"))
  {
    v68 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
    [v68 setObject:v14 forKeyedSubscript:NPHCellularErrorTitleKey];
    [v68 setObject:v13 forKeyedSubscript:*MEMORY[0x277CCA450]];
    [v68 setObject:v12 forKeyedSubscript:NPHCellularErrorLinkKey];
    [v68 setObject:v11 forKeyedSubscript:NPHCellularErrorLinkTextKey];
  }

  else
  {
    v68 = 0;
  }

  v69 = *MEMORY[0x277D85DE8];

  return v68;
}

+ (id)NPHCellularSanitizedError:()NPHCellularError forSubscriptionContext:
{
  v34[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  domain = [v8 domain];
  if ([domain isEqualToString:*MEMORY[0x277CF9680]])
  {
  }

  else
  {
    domain2 = [v8 domain];
    v11 = [domain2 isEqualToString:*MEMORY[0x277CCA050]];

    v12 = v8;
    if (!v11)
    {
      goto LABEL_16;
    }
  }

  v13 = [self _titleAndMessageDictForError:v8 forSubscriptionContext:v7];
  v12 = v8;
  if (v13)
  {
    v14 = objc_opt_new();
    userInfo = [v8 userInfo];

    if (userInfo)
    {
      userInfo2 = [v8 userInfo];
      [v14 addEntriesFromDictionary:userInfo2];
    }

    v17 = *MEMORY[0x277CCA450];
    v34[0] = NPHCellularErrorTitleKey;
    v34[1] = v17;
    v34[2] = NPHCellularErrorLinkKey;
    v34[3] = NPHCellularErrorLinkTextKey;
    [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = v32 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v30;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v29 + 1) + 8 * i);
          v24 = [v13 objectForKeyedSubscript:{v23, v29}];
          [v14 setObject:v24 forKeyedSubscript:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v20);
    }

    v25 = MEMORY[0x277CCA9B8];
    domain3 = [v8 domain];
    v12 = [v25 errorWithDomain:domain3 code:objc_msgSend(v8 userInfo:{"code"), v14}];
  }

LABEL_16:
  v27 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (uint64_t)_canControlLTEVoiceOptionsSeparately
{
  v13 = *MEMORY[0x277D85DE8];
  result = CTSUServerConnectionRef();
  if (result)
  {
    v1 = *MEMORY[0x277CC37F8];
    CanSetCapabilityExtended = _CTServerConnectionCanSetCapabilityExtended();
    v3 = HIDWORD(CanSetCapabilityExtended);
    if (HIDWORD(CanSetCapabilityExtended))
    {
      v4 = CanSetCapabilityExtended;
      v5 = nph_general_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v8 = "+[NSError(NPHCellularError) _canControlLTEVoiceOptionsSeparately]";
        v9 = 1024;
        v10 = v4;
        v11 = 1024;
        v12 = v3;
        _os_log_impl(&dword_243333000, v5, OS_LOG_TYPE_DEFAULT, "%s - Failed to check VoLTE availability error domain:%d error:%d", buf, 0x18u);
      }
    }

    result = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

@end