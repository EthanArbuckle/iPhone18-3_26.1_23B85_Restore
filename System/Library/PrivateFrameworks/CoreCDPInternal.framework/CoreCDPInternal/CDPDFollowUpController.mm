@interface CDPDFollowUpController
+ (id)_identifiersAllowedForTelemetry;
+ (id)analyticsEventWithEventName:(id)name context:(id)context identifier:(id)identifier;
+ (id)sharedInstance;
- (BOOL)_clearFollowUpForContext:(id)context error:(id *)error;
- (BOOL)_postFollowUpItem:(id)item context:(id)context error:(id *)error;
- (BOOL)clearFollowUpWithContext:(id)context error:(id *)error;
- (BOOL)hasPendingFollowUpWithUniqueIdentifier:(id)identifier;
- (BOOL)postFollowUpItemForContext:(id)context error:(id *)error;
- (CDPDFollowUpController)init;
- (id)_cdpRepairContext:(id)context;
- (id)_followUpControllerForContext:(id)context;
- (id)_hasSOSActiveDeviceForAltDSID:(id)d;
- (id)_makeAAFLFollowUpController;
- (id)_rkMismatchHealingContext:(id)context;
- (id)_sosCompatibilityModeContext:(id)context;
- (id)informativeText;
- (void)dealloc;
- (void)securityLevelChangedForAccountContext:(id)context;
@end

@implementation CDPDFollowUpController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[CDPDFollowUpController sharedInstance];
  }

  v3 = sharedInstance_instance_0;

  return v3;
}

uint64_t __40__CDPDFollowUpController_sharedInstance__block_invoke()
{
  sharedInstance_instance_0 = objc_alloc_init(CDPDFollowUpController);

  return MEMORY[0x2821F96F8]();
}

- (CDPDFollowUpController)init
{
  v6.receiver = self;
  v6.super_class = CDPDFollowUpController;
  v2 = [(CDPDFollowUpController *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:@"com.apple.corecdp"];
    [(CDPDFollowUpController *)v2 setFollowUpController:v3];

    v4 = objc_alloc_init(CDPDFollowUpFactory);
    [(CDPDFollowUpController *)v2 setFollowUpFactory:v4];
  }

  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CDPDFollowUpController;
  [(CDPDFollowUpController *)&v2 dealloc];
}

+ (id)_identifiersAllowedForTelemetry
{
  if (_identifiersAllowedForTelemetry_onceToken != -1)
  {
    +[CDPDFollowUpController _identifiersAllowedForTelemetry];
  }

  v3 = _identifiersAllowedForTelemetry_allowlistedFollowUpIdentifiers;

  return v3;
}

uint64_t __57__CDPDFollowUpController__identifiersAllowedForTelemetry__block_invoke()
{
  _identifiersAllowedForTelemetry_allowlistedFollowUpIdentifiers = [MEMORY[0x277CBEB98] setWithArray:&unk_285822378];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)_postFollowUpItem:(id)item context:(id)context error:(id *)error
{
  itemCopy = item;
  contextCopy = context;
  v10 = objc_opt_class();
  v11 = *MEMORY[0x277CE45D0];
  uniqueIdentifier = [itemCopy uniqueIdentifier];
  v13 = [v10 analyticsEventWithEventName:v11 context:contextCopy identifier:uniqueIdentifier];

  _identifiersAllowedForTelemetry = [objc_opt_class() _identifiersAllowedForTelemetry];
  uniqueIdentifier2 = [itemCopy uniqueIdentifier];
  v16 = [_identifiersAllowedForTelemetry containsObject:uniqueIdentifier2];

  if (v16)
  {
    uniqueIdentifier3 = [itemCopy uniqueIdentifier];
    [v13 setObject:uniqueIdentifier3 forKeyedSubscript:*MEMORY[0x277CFD680]];
  }

  else
  {
    uniqueIdentifier3 = _CDPLogSystem();
    if (os_log_type_enabled(uniqueIdentifier3, OS_LOG_TYPE_FAULT))
    {
      [CDPDFollowUpController _postFollowUpItem:itemCopy context:uniqueIdentifier3 error:?];
    }
  }

  v18 = [(CDPDFollowUpController *)self _followUpControllerForContext:contextCopy];
  v25 = 0;
  v19 = [v18 postFollowUpItem:itemCopy error:&v25];
  v20 = v25;

  v21 = [MEMORY[0x277CCABB0] numberWithBool:v19];
  [v13 setObject:v21 forKeyedSubscript:*MEMORY[0x277CFD6C0]];

  [v13 populateUnderlyingErrorsStartingWithRootError:v20];
  rtcAnalyticsReporter = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [rtcAnalyticsReporter sendEvent:v13];

  if (error)
  {
    v23 = v20;
    *error = v20;
  }

  return v19;
}

- (BOOL)_clearFollowUpForContext:(id)context error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = [(CDPDFollowUpFactory *)self->_followUpFactory identifierForContext:contextCopy];
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = v7;
    v25 = 2112;
    v26 = contextCopy;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Clearing a follow up: (%@) - %@", buf, 0x16u);
  }

  if (v7)
  {
    v9 = [objc_opt_class() analyticsEventWithEventName:*MEMORY[0x277CE4568] context:contextCopy identifier:v7];
    v10 = [(CDPDFollowUpController *)self _followUpControllerForContext:contextCopy];
    v22 = v7;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    v21 = 0;
    v12 = [v10 clearPendingFollowUpItemsWithUniqueIdentifiers:v11 error:&v21];
    v13 = v21;

    if (error)
    {
      v14 = v13;
      *error = v13;
    }

    v15 = [MEMORY[0x277CCABB0] numberWithBool:v12];
    [v9 setObject:v15 forKeyedSubscript:*MEMORY[0x277CFD6C0]];

    _identifiersAllowedForTelemetry = [objc_opt_class() _identifiersAllowedForTelemetry];
    LODWORD(v15) = [_identifiersAllowedForTelemetry containsObject:v7];

    if (v15)
    {
      [v9 setObject:v7 forKeyedSubscript:*MEMORY[0x277CFD680]];
    }

    else
    {
      v17 = _CDPLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [CDPDFollowUpController _clearFollowUpForContext:error:];
      }
    }

    [v9 populateUnderlyingErrorsStartingWithRootError:v13];
    rtcAnalyticsReporter = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
    [rtcAnalyticsReporter sendEvent:v9];
  }

  else if (error)
  {
    _CDPStateError();
    *error = LOBYTE(v12) = 0;
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)postFollowUpItemForContext:(id)context error:(id *)error
{
  v101 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if ([MEMORY[0x277CFD560] hasFullCDPSupport] && -[CDPDFollowUpController _isNotAudioAccessory](self, "_isNotAudioAccessory"))
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v100 = contextCopy;
      _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Processing request for context: %@", buf, 0xCu);
    }

    followUpFactory = [(CDPDFollowUpController *)self followUpFactory];
    v9 = [followUpFactory followUpItemWithContext:contextCopy];

    if (v9)
    {
      followUpType = [contextCopy followUpType];
      if ([followUpType isEqualToString:*MEMORY[0x277CFD438]])
      {
      }

      else
      {
        followUpType2 = [contextCopy followUpType];
        v15 = [followUpType2 isEqualToString:*MEMORY[0x277CFD440]];

        if (!v15)
        {
          goto LABEL_16;
        }
      }

      mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
      hasLocalSecret = [mEMORY[0x277CFD4F8] hasLocalSecret];

      if (hasLocalSecret)
      {
LABEL_16:
        if ([MEMORY[0x277CFD560] isInternalBuild])
        {
          informativeText = [(CDPDFollowUpController *)self informativeText];
          informativeText2 = [v9 informativeText];
          v20 = [informativeText2 stringByAppendingString:informativeText];
          [v9 setInformativeText:v20];

          notification = [v9 notification];
          informativeText3 = [notification informativeText];
          v23 = [informativeText3 stringByAppendingString:informativeText];
          notification2 = [v9 notification];
          [notification2 setInformativeText:v23];
        }

        followUpController = [(CDPDFollowUpController *)self followUpController];
        v98 = @"RepairCDPState";
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v98 count:1];
        [followUpController clearPendingFollowUpItemsWithUniqueIdentifiers:v26 error:error];

        if (([contextCopy isDefaultRepairOrSOSCompatibilityFollowUp] & 1) == 0)
        {
          v11 = [(CDPDFollowUpController *)self _postFollowUpItem:v9 context:contextCopy error:error];
          goto LABEL_11;
        }

        v85 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v81 = objc_alloc_init(MEMORY[0x277CBEB18]);
        altDSID = [contextCopy altDSID];

        if (!altDSID)
        {
          contextForPrimaryAccount = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
          altDSID2 = [contextForPrimaryAccount altDSID];
          [contextCopy setAltDSID:altDSID2];
        }

        v30 = MEMORY[0x277CFD498];
        altDSID3 = [contextCopy altDSID];
        v32 = [v30 syncingStatusForAltDSID:altDSID3];

        v33 = MEMORY[0x277CFD540];
        altDSID4 = [contextCopy altDSID];
        v35 = [v33 syncingStatusForAltDSID:altDSID4];

        altDSID5 = [contextCopy altDSID];
        v83 = [(CDPDFollowUpController *)self _hasSOSActiveDeviceForAltDSID:altDSID5];

        altDSID6 = [contextCopy altDSID];
        v38 = [(CDPDFollowUpController *)self _sosCompatibilityModeContext:altDSID6];

        altDSID7 = [contextCopy altDSID];
        v40 = [(CDPDFollowUpController *)self _cdpRepairContext:altDSID7];

        v84 = v40;
        v80 = v35;
        if (v32 == 1)
        {
          if (v35 == 1)
          {
LABEL_38:
            v52 = _CDPLogSystem();
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
            {
              [CDPDFollowUpController postFollowUpItemForContext:error:];
            }

            v91[0] = v40;
            v91[1] = v38;
            v42 = MEMORY[0x277CBEA60];
            v43 = v91;
            goto LABEL_41;
          }

          if (!v35)
          {
            v41 = _CDPLogSystem();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
            {
              [CDPDFollowUpController postFollowUpItemForContext:error:];
            }

            v95[0] = v40;
            v95[1] = v38;
            v42 = MEMORY[0x277CBEA60];
            v43 = v95;
LABEL_41:
            v50 = [v42 arrayWithObjects:v43 count:2];
            v47 = v81;
            [v81 addObjectsFromArray:v50];
            v51 = v85;
LABEL_42:

            if ([v51 count])
            {
              v53 = _CDPLogSystem();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_24510B000, v53, OS_LOG_TYPE_DEFAULT, "_handleCDPRepairCFUPosting - tearing down RK Mismatch healing CFU to post CDP Repair CFU", buf, 2u);
              }

              altDSID8 = [contextCopy altDSID];
              v55 = [(CDPDFollowUpController *)self _rkMismatchHealingContext:altDSID8];

              [v47 addObject:v55];
            }

            v82 = v38;
            v88 = 0u;
            v89 = 0u;
            v86 = 0u;
            v87 = 0u;
            v56 = v47;
            v57 = [v56 countByEnumeratingWithState:&v86 objects:v90 count:16];
            if (v57)
            {
              v58 = v57;
              v59 = *v87;
              do
              {
                for (i = 0; i != v58; ++i)
                {
                  if (*v87 != v59)
                  {
                    objc_enumerationMutation(v56);
                  }

                  v61 = *(*(&v86 + 1) + 8 * i);
                  telemetryFlowID = [contextCopy telemetryFlowID];
                  [v61 setTelemetryFlowID:telemetryFlowID];

                  telemetryDeviceSessionID = [contextCopy telemetryDeviceSessionID];
                  [v61 setTelemetryDeviceSessionID:telemetryDeviceSessionID];

                  [(CDPDFollowUpController *)self clearFollowUpWithContext:v61 error:0];
                }

                v58 = [v56 countByEnumeratingWithState:&v86 objects:v90 count:16];
              }

              while (v58);
            }

            v64 = v85;
            firstObject = [v85 firstObject];

            if (firstObject)
            {
              firstObject2 = [v85 firstObject];
              followUpFactory2 = [(CDPDFollowUpController *)self followUpFactory];
              v68 = [followUpFactory2 followUpItemWithContext:firstObject2];

              followUpType3 = [firstObject2 followUpType];
              v70 = *MEMORY[0x277CFD468];
              if ([followUpType3 isEqualToString:*MEMORY[0x277CFD468]])
              {
                v71 = +[CDPDOctagonTrustProxyImpl octagonIsSOSFeatureEnabled];

                if (!v71)
                {
                  v72 = _CDPLogSystem();
                  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
                  {
                    [CDPDFollowUpController postFollowUpItemForContext:error:];
                  }

                  v73 = 0;
                  v11 = 0;
                  v64 = v85;
                  goto LABEL_66;
                }
              }

              else
              {
              }

              v11 = [(CDPDFollowUpController *)self _postFollowUpItem:v68 context:firstObject2 error:error];

              v64 = v85;
            }

            else
            {
              v11 = 0;
              v70 = *MEMORY[0x277CFD468];
            }

            followUpType4 = [contextCopy followUpType];
            if ([followUpType4 isEqualToString:v70] && v80 != 1)
            {
              v75 = v83;
              bOOLValue = [v83 BOOLValue];

              v11 |= bOOLValue ^ 1;
              v73 = 1;
              goto LABEL_67;
            }

            v73 = 1;
LABEL_66:
            v75 = v83;
LABEL_67:

            if (v73)
            {
              goto LABEL_11;
            }

            goto LABEL_10;
          }

          if (([v83 BOOLValue] & 1) == 0 && v83)
          {
            if (([v83 BOOLValue] & 1) == 0)
            {
              v79 = _CDPLogSystem();
              if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
              {
                [CDPDFollowUpController postFollowUpItemForContext:error:];
              }

              v92[0] = v40;
              v92[1] = v38;
              v42 = MEMORY[0x277CBEA60];
              v43 = v92;
              goto LABEL_41;
            }

            goto LABEL_38;
          }

          v77 = _CDPLogSystem();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
          {
            [CDPDFollowUpController postFollowUpItemForContext:error:];
          }

          v94 = v40;
          v78 = [MEMORY[0x277CBEA60] arrayWithObjects:&v94 count:1];
          v47 = v81;
          [v81 addObjectsFromArray:v78];

          v93 = v38;
          v48 = MEMORY[0x277CBEA60];
          v49 = &v93;
        }

        else
        {
          v45 = _CDPLogSystem();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            [CDPDFollowUpController postFollowUpItemForContext:error:];
          }

          v97 = v38;
          v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v97 count:1];
          v47 = v81;
          [v81 addObjectsFromArray:v46];

          v96 = v40;
          v48 = MEMORY[0x277CBEA60];
          v49 = &v96;
        }

        v50 = [v48 arrayWithObjects:v49 count:1];
        v51 = v85;
        [v85 addObjectsFromArray:v50];
        goto LABEL_42;
      }

      v44 = _CDPLogSystem();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        [CDPDFollowUpController postFollowUpItemForContext:error:];
      }
    }

    else if (error)
    {
      _CDPStateError();
      *error = v11 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v9 = _CDPLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_24510B000, v9, OS_LOG_TYPE_DEFAULT, "posting followup is not supported in current configuration", buf, 2u);
    }
  }

LABEL_10:
  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

- (id)_makeAAFLFollowUpController
{
  v2 = objc_alloc(MEMORY[0x277CFE500]);
  v3 = [v2 initWithClientIdentifier:*MEMORY[0x277CEC6C8]];

  return v3;
}

- (id)_sosCompatibilityModeContext:(id)context
{
  v3 = MEMORY[0x277CFD4D8];
  contextCopy = context;
  contextForSOSCompatibilityMode = [v3 contextForSOSCompatibilityMode];
  [contextForSOSCompatibilityMode setAltDSID:contextCopy];

  return contextForSOSCompatibilityMode;
}

- (id)_cdpRepairContext:(id)context
{
  v3 = MEMORY[0x277CFD4D8];
  contextCopy = context;
  contextForStateRepair = [v3 contextForStateRepair];
  [contextForStateRepair setAltDSID:contextCopy];

  return contextForStateRepair;
}

- (id)_rkMismatchHealingContext:(id)context
{
  v3 = MEMORY[0x277CFD4D8];
  contextCopy = context;
  contextForRecoveryKeyMismatchHealing = [v3 contextForRecoveryKeyMismatchHealing];
  [contextForRecoveryKeyMismatchHealing setAltDSID:contextCopy];

  return contextForRecoveryKeyMismatchHealing;
}

- (id)_hasSOSActiveDeviceForAltDSID:(id)d
{
  v3 = MEMORY[0x277CF0130];
  dCopy = d;
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance authKitAccountWithAltDSID:dCopy];

  v7 = [sharedInstance hasSOSActiveDeviceForAccount:v6];

  return v7;
}

- (BOOL)clearFollowUpWithContext:(id)context error:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  followUpType = [contextCopy followUpType];

  if (followUpType)
  {
    followUpType2 = [contextCopy followUpType];
    v9 = [followUpType2 isEqualToString:*MEMORY[0x277CFD470]];

    v10 = [(CDPDFollowUpController *)self _clearFollowUpForContext:contextCopy error:error];
    if (v9)
    {
      followUpController = [(CDPDFollowUpController *)self followUpController];
      v16[0] = @"RepairCDPState";
      v12 = 1;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
      [followUpController clearPendingFollowUpItemsWithUniqueIdentifiers:v13 error:error];
    }

    else
    {
      v12 = v10;
    }
  }

  else if (error)
  {
    _CDPStateError();
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)informativeText
{
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  if (currentConnection)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CFD508] builderForKey:@"KEYCHAIN_FOLLOWUP_INTERNAL_BLAME"];
    localizedString = [v4 localizedString];
    processName = [currentConnection processName];
    v7 = [v3 stringWithValidatedFormat:localizedString validFormatSpecifiers:@"%@" error:0, processName];
  }

  else
  {
    v7 = &stru_285812168;
  }

  return v7;
}

- (void)securityLevelChangedForAccountContext:(id)context
{
  contextCopy = context;
  if ([contextCopy isSharediPad])
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "CDPDFollowUpController: Manatee is not available on Shared iPad - no CFU needed", v8, 2u);
    }
  }

  else if ([contextCopy isHSA2Account])
  {
    contextForStateRepair = [MEMORY[0x277CFD4D8] contextForStateRepair];
    [contextForStateRepair setRepairType:1];
    altDSID = [contextCopy altDSID];
    [contextForStateRepair setAltDSID:altDSID];

    [(CDPDFollowUpController *)self postFollowUpItemForContext:contextForStateRepair error:0];
  }
}

- (id)_followUpControllerForContext:(id)context
{
  contextCopy = context;
  followUpType = [contextCopy followUpType];
  v6 = [followUpType isEqualToString:*MEMORY[0x277CFD460]];

  if (v6)
  {
    _makeAAFLFollowUpController = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:@"com.apple.purplebuddy"];
    goto LABEL_8;
  }

  followUpType2 = [contextCopy followUpType];
  if ([followUpType2 isEqualToString:*MEMORY[0x277CFD470]])
  {

LABEL_6:
    _makeAAFLFollowUpController = [(CDPDFollowUpController *)self _makeAAFLFollowUpController];
    goto LABEL_8;
  }

  followUpType3 = [contextCopy followUpType];
  v10 = [followUpType3 isEqualToString:*MEMORY[0x277CFD448]];

  if (v10)
  {
    goto LABEL_6;
  }

  _makeAAFLFollowUpController = [(CDPDFollowUpController *)self followUpController];
LABEL_8:
  v11 = _makeAAFLFollowUpController;

  return v11;
}

- (BOOL)hasPendingFollowUpWithUniqueIdentifier:(id)identifier
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  followUpController = self->_followUpController;
  v22 = 0;
  v6 = [(FLFollowUpController *)followUpController pendingFollowUpItems:&v22];
  v7 = v22;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v6;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v25 count:16];
    if (v11)
    {
      v12 = *v19;
      while (2)
      {
        for (i = 0; i != v11; i = (i + 1))
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v10);
          }

          uniqueIdentifier = [*(*(&v18 + 1) + 8 * i) uniqueIdentifier];
          v15 = [identifierCopy isEqualToString:uniqueIdentifier];

          if (v15)
          {
            v11 = _CDPLogSystem();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v24 = identifierCopy;
              _os_log_impl(&dword_24510B000, v11, OS_LOG_TYPE_DEFAULT, "Found CFU with uniqueIdentifier %@", buf, 0xCu);
            }

            LOBYTE(v11) = 1;
            goto LABEL_20;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v18 objects:v25 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    v10 = _CDPLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CDPDFollowUpController hasPendingFollowUpWithUniqueIdentifier:];
    }

    LOBYTE(v11) = 0;
  }

LABEL_20:

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)analyticsEventWithEventName:(id)name context:(id)context identifier:(id)identifier
{
  contextCopy = context;
  identifierCopy = identifier;
  v9 = MEMORY[0x277CE44C8];
  nameCopy = name;
  v11 = objc_alloc_init(v9);
  telemetryFlowID = [contextCopy telemetryFlowID];
  [v11 setFlowID:telemetryFlowID];

  _identifiersAllowedForTelemetry = [objc_opt_class() _identifiersAllowedForTelemetry];
  LODWORD(telemetryFlowID) = [_identifiersAllowedForTelemetry containsObject:identifierCopy];

  if (telemetryFlowID)
  {
    [v11 setCfuType:identifierCopy];
  }

  else
  {
    v14 = _CDPLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      +[CDPDFollowUpController analyticsEventWithEventName:context:identifier:];
    }
  }

  v15 = MEMORY[0x277CE44D8];
  v16 = *MEMORY[0x277CFD930];
  altDSID = [contextCopy altDSID];
  v18 = [v15 analyticsEventWithName:nameCopy eventCategory:v16 followupAnalyticsData:v11 altDSID:altDSID];

  return v18;
}

- (void)_postFollowUpItem:(void *)a1 context:(NSObject *)a2 error:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 uniqueIdentifier];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_24510B000, a2, OS_LOG_TYPE_FAULT, "CDP was requested to post a non-allowed CFU: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_clearFollowUpForContext:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_24510B000, v0, OS_LOG_TYPE_FAULT, "CDP was requested to clear a non-allowed CFU: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)postFollowUpItemForContext:error:.cold.6()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_24510B000, v0, OS_LOG_TYPE_DEBUG, "_handleCDPRepairCFUPosting - In OT but not in SOS circle, with hasSOSActiveDevice = %@, clear CDP Repair CFU and posting SOS Compatibility Mode CFU", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)hasPendingFollowUpWithUniqueIdentifier:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_24510B000, v0, OS_LOG_TYPE_ERROR, "Failed to fetch any pending CFUs, error: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)analyticsEventWithEventName:context:identifier:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_24510B000, v0, OS_LOG_TYPE_FAULT, "CDP was requested to process a non-allowed CFU: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end