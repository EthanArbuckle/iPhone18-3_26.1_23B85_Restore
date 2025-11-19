@interface CDPDFollowUpController
+ (id)_identifiersAllowedForTelemetry;
+ (id)analyticsEventWithEventName:(id)a3 context:(id)a4 identifier:(id)a5;
+ (id)sharedInstance;
- (BOOL)_clearFollowUpForContext:(id)a3 error:(id *)a4;
- (BOOL)_postFollowUpItem:(id)a3 context:(id)a4 error:(id *)a5;
- (BOOL)clearFollowUpWithContext:(id)a3 error:(id *)a4;
- (BOOL)hasPendingFollowUpWithUniqueIdentifier:(id)a3;
- (BOOL)postFollowUpItemForContext:(id)a3 error:(id *)a4;
- (CDPDFollowUpController)init;
- (id)_cdpRepairContext:(id)a3;
- (id)_followUpControllerForContext:(id)a3;
- (id)_hasSOSActiveDeviceForAltDSID:(id)a3;
- (id)_makeAAFLFollowUpController;
- (id)_rkMismatchHealingContext:(id)a3;
- (id)_sosCompatibilityModeContext:(id)a3;
- (id)informativeText;
- (void)dealloc;
- (void)securityLevelChangedForAccountContext:(id)a3;
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

- (BOOL)_postFollowUpItem:(id)a3 context:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_class();
  v11 = *MEMORY[0x277CE45D0];
  v12 = [v8 uniqueIdentifier];
  v13 = [v10 analyticsEventWithEventName:v11 context:v9 identifier:v12];

  v14 = [objc_opt_class() _identifiersAllowedForTelemetry];
  v15 = [v8 uniqueIdentifier];
  v16 = [v14 containsObject:v15];

  if (v16)
  {
    v17 = [v8 uniqueIdentifier];
    [v13 setObject:v17 forKeyedSubscript:*MEMORY[0x277CFD680]];
  }

  else
  {
    v17 = _CDPLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [CDPDFollowUpController _postFollowUpItem:v8 context:v17 error:?];
    }
  }

  v18 = [(CDPDFollowUpController *)self _followUpControllerForContext:v9];
  v25 = 0;
  v19 = [v18 postFollowUpItem:v8 error:&v25];
  v20 = v25;

  v21 = [MEMORY[0x277CCABB0] numberWithBool:v19];
  [v13 setObject:v21 forKeyedSubscript:*MEMORY[0x277CFD6C0]];

  [v13 populateUnderlyingErrorsStartingWithRootError:v20];
  v22 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
  [v22 sendEvent:v13];

  if (a5)
  {
    v23 = v20;
    *a5 = v20;
  }

  return v19;
}

- (BOOL)_clearFollowUpForContext:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(CDPDFollowUpFactory *)self->_followUpFactory identifierForContext:v6];
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = v7;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Clearing a follow up: (%@) - %@", buf, 0x16u);
  }

  if (v7)
  {
    v9 = [objc_opt_class() analyticsEventWithEventName:*MEMORY[0x277CE4568] context:v6 identifier:v7];
    v10 = [(CDPDFollowUpController *)self _followUpControllerForContext:v6];
    v22 = v7;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    v21 = 0;
    v12 = [v10 clearPendingFollowUpItemsWithUniqueIdentifiers:v11 error:&v21];
    v13 = v21;

    if (a4)
    {
      v14 = v13;
      *a4 = v13;
    }

    v15 = [MEMORY[0x277CCABB0] numberWithBool:v12];
    [v9 setObject:v15 forKeyedSubscript:*MEMORY[0x277CFD6C0]];

    v16 = [objc_opt_class() _identifiersAllowedForTelemetry];
    LODWORD(v15) = [v16 containsObject:v7];

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
    v18 = [MEMORY[0x277CFD490] rtcAnalyticsReporter];
    [v18 sendEvent:v9];
  }

  else if (a4)
  {
    _CDPStateError();
    *a4 = LOBYTE(v12) = 0;
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)postFollowUpItemForContext:(id)a3 error:(id *)a4
{
  v101 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([MEMORY[0x277CFD560] hasFullCDPSupport] && -[CDPDFollowUpController _isNotAudioAccessory](self, "_isNotAudioAccessory"))
  {
    v7 = _CDPLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v100 = v6;
      _os_log_impl(&dword_24510B000, v7, OS_LOG_TYPE_DEFAULT, "Processing request for context: %@", buf, 0xCu);
    }

    v8 = [(CDPDFollowUpController *)self followUpFactory];
    v9 = [v8 followUpItemWithContext:v6];

    if (v9)
    {
      v10 = [v6 followUpType];
      if ([v10 isEqualToString:*MEMORY[0x277CFD438]])
      {
      }

      else
      {
        v14 = [v6 followUpType];
        v15 = [v14 isEqualToString:*MEMORY[0x277CFD440]];

        if (!v15)
        {
          goto LABEL_16;
        }
      }

      v16 = [MEMORY[0x277CFD4F8] sharedInstance];
      v17 = [v16 hasLocalSecret];

      if (v17)
      {
LABEL_16:
        if ([MEMORY[0x277CFD560] isInternalBuild])
        {
          v18 = [(CDPDFollowUpController *)self informativeText];
          v19 = [v9 informativeText];
          v20 = [v19 stringByAppendingString:v18];
          [v9 setInformativeText:v20];

          v21 = [v9 notification];
          v22 = [v21 informativeText];
          v23 = [v22 stringByAppendingString:v18];
          v24 = [v9 notification];
          [v24 setInformativeText:v23];
        }

        v25 = [(CDPDFollowUpController *)self followUpController];
        v98 = @"RepairCDPState";
        v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v98 count:1];
        [v25 clearPendingFollowUpItemsWithUniqueIdentifiers:v26 error:a4];

        if (([v6 isDefaultRepairOrSOSCompatibilityFollowUp] & 1) == 0)
        {
          v11 = [(CDPDFollowUpController *)self _postFollowUpItem:v9 context:v6 error:a4];
          goto LABEL_11;
        }

        v85 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v81 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v27 = [v6 altDSID];

        if (!v27)
        {
          v28 = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
          v29 = [v28 altDSID];
          [v6 setAltDSID:v29];
        }

        v30 = MEMORY[0x277CFD498];
        v31 = [v6 altDSID];
        v32 = [v30 syncingStatusForAltDSID:v31];

        v33 = MEMORY[0x277CFD540];
        v34 = [v6 altDSID];
        v35 = [v33 syncingStatusForAltDSID:v34];

        v36 = [v6 altDSID];
        v83 = [(CDPDFollowUpController *)self _hasSOSActiveDeviceForAltDSID:v36];

        v37 = [v6 altDSID];
        v38 = [(CDPDFollowUpController *)self _sosCompatibilityModeContext:v37];

        v39 = [v6 altDSID];
        v40 = [(CDPDFollowUpController *)self _cdpRepairContext:v39];

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

              v54 = [v6 altDSID];
              v55 = [(CDPDFollowUpController *)self _rkMismatchHealingContext:v54];

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
                  v62 = [v6 telemetryFlowID];
                  [v61 setTelemetryFlowID:v62];

                  v63 = [v6 telemetryDeviceSessionID];
                  [v61 setTelemetryDeviceSessionID:v63];

                  [(CDPDFollowUpController *)self clearFollowUpWithContext:v61 error:0];
                }

                v58 = [v56 countByEnumeratingWithState:&v86 objects:v90 count:16];
              }

              while (v58);
            }

            v64 = v85;
            v65 = [v85 firstObject];

            if (v65)
            {
              v66 = [v85 firstObject];
              v67 = [(CDPDFollowUpController *)self followUpFactory];
              v68 = [v67 followUpItemWithContext:v66];

              v69 = [v66 followUpType];
              v70 = *MEMORY[0x277CFD468];
              if ([v69 isEqualToString:*MEMORY[0x277CFD468]])
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

              v11 = [(CDPDFollowUpController *)self _postFollowUpItem:v68 context:v66 error:a4];

              v64 = v85;
            }

            else
            {
              v11 = 0;
              v70 = *MEMORY[0x277CFD468];
            }

            v74 = [v6 followUpType];
            if ([v74 isEqualToString:v70] && v80 != 1)
            {
              v75 = v83;
              v76 = [v83 BOOLValue];

              v11 |= v76 ^ 1;
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

    else if (a4)
    {
      _CDPStateError();
      *a4 = v11 = 0;
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

- (id)_sosCompatibilityModeContext:(id)a3
{
  v3 = MEMORY[0x277CFD4D8];
  v4 = a3;
  v5 = [v3 contextForSOSCompatibilityMode];
  [v5 setAltDSID:v4];

  return v5;
}

- (id)_cdpRepairContext:(id)a3
{
  v3 = MEMORY[0x277CFD4D8];
  v4 = a3;
  v5 = [v3 contextForStateRepair];
  [v5 setAltDSID:v4];

  return v5;
}

- (id)_rkMismatchHealingContext:(id)a3
{
  v3 = MEMORY[0x277CFD4D8];
  v4 = a3;
  v5 = [v3 contextForRecoveryKeyMismatchHealing];
  [v5 setAltDSID:v4];

  return v5;
}

- (id)_hasSOSActiveDeviceForAltDSID:(id)a3
{
  v3 = MEMORY[0x277CF0130];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [v5 authKitAccountWithAltDSID:v4];

  v7 = [v5 hasSOSActiveDeviceForAccount:v6];

  return v7;
}

- (BOOL)clearFollowUpWithContext:(id)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 followUpType];

  if (v7)
  {
    v8 = [v6 followUpType];
    v9 = [v8 isEqualToString:*MEMORY[0x277CFD470]];

    v10 = [(CDPDFollowUpController *)self _clearFollowUpForContext:v6 error:a4];
    if (v9)
    {
      v11 = [(CDPDFollowUpController *)self followUpController];
      v16[0] = @"RepairCDPState";
      v12 = 1;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
      [v11 clearPendingFollowUpItemsWithUniqueIdentifiers:v13 error:a4];
    }

    else
    {
      v12 = v10;
    }
  }

  else if (a4)
  {
    _CDPStateError();
    *a4 = v12 = 0;
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
  v2 = [MEMORY[0x277CCAE80] currentConnection];
  if (v2)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CFD508] builderForKey:@"KEYCHAIN_FOLLOWUP_INTERNAL_BLAME"];
    v5 = [v4 localizedString];
    v6 = [v2 processName];
    v7 = [v3 stringWithValidatedFormat:v5 validFormatSpecifiers:@"%@" error:0, v6];
  }

  else
  {
    v7 = &stru_285812168;
  }

  return v7;
}

- (void)securityLevelChangedForAccountContext:(id)a3
{
  v4 = a3;
  if ([v4 isSharediPad])
  {
    v5 = _CDPLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_24510B000, v5, OS_LOG_TYPE_DEFAULT, "CDPDFollowUpController: Manatee is not available on Shared iPad - no CFU needed", v8, 2u);
    }
  }

  else if ([v4 isHSA2Account])
  {
    v6 = [MEMORY[0x277CFD4D8] contextForStateRepair];
    [v6 setRepairType:1];
    v7 = [v4 altDSID];
    [v6 setAltDSID:v7];

    [(CDPDFollowUpController *)self postFollowUpItemForContext:v6 error:0];
  }
}

- (id)_followUpControllerForContext:(id)a3
{
  v4 = a3;
  v5 = [v4 followUpType];
  v6 = [v5 isEqualToString:*MEMORY[0x277CFD460]];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:@"com.apple.purplebuddy"];
    goto LABEL_8;
  }

  v8 = [v4 followUpType];
  if ([v8 isEqualToString:*MEMORY[0x277CFD470]])
  {

LABEL_6:
    v7 = [(CDPDFollowUpController *)self _makeAAFLFollowUpController];
    goto LABEL_8;
  }

  v9 = [v4 followUpType];
  v10 = [v9 isEqualToString:*MEMORY[0x277CFD448]];

  if (v10)
  {
    goto LABEL_6;
  }

  v7 = [(CDPDFollowUpController *)self followUpController];
LABEL_8:
  v11 = v7;

  return v11;
}

- (BOOL)hasPendingFollowUpWithUniqueIdentifier:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

          v14 = [*(*(&v18 + 1) + 8 * i) uniqueIdentifier];
          v15 = [v4 isEqualToString:v14];

          if (v15)
          {
            v11 = _CDPLogSystem();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v24 = v4;
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

+ (id)analyticsEventWithEventName:(id)a3 context:(id)a4 identifier:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = MEMORY[0x277CE44C8];
  v10 = a3;
  v11 = objc_alloc_init(v9);
  v12 = [v7 telemetryFlowID];
  [v11 setFlowID:v12];

  v13 = [objc_opt_class() _identifiersAllowedForTelemetry];
  LODWORD(v12) = [v13 containsObject:v8];

  if (v12)
  {
    [v11 setCfuType:v8];
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
  v17 = [v7 altDSID];
  v18 = [v15 analyticsEventWithName:v10 eventCategory:v16 followupAnalyticsData:v11 altDSID:v17];

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