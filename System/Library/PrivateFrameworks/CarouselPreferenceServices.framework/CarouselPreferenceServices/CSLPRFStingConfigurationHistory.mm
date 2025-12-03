@interface CSLPRFStingConfigurationHistory
- (BOOL)isValidHistoryItem:(id)item;
- (CSLPRFStingConfigurationHistory)init;
- (CSLPRFStingConfigurationHistory)initWithSetting:(id)setting model:(id)model;
- (id)_historyItemForActionType:(unint64_t)type;
- (id)_itemForActionType:(unint64_t)type withBundleID:(id)d;
- (id)itemForActionType:(unint64_t)type;
- (id)itemForWorkoutWithBundleID:(id)d;
- (unint64_t)historyActionType:(unint64_t)type;
- (void)addHistoryItem:(id)item;
@end

@implementation CSLPRFStingConfigurationHistory

- (id)_historyItemForActionType:(unint64_t)type
{
  v39 = *MEMORY[0x277D85DE8];
  if (type)
  {
    read = [(CSLPRFStingConfigurationHistorySetting *)self->_historySetting read];
    actionsDictionary = [read actionsDictionary];
    if (!actionsDictionary)
    {
      v8 = cslprf_sting_settings_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (type > 0x2A)
        {
          v17 = 0;
        }

        else
        {
          v17 = off_278744510[type - 1];
        }

        v21 = v17;
        *buf = 138412802;
        selfCopy5 = self;
        v32 = 2080;
        v33 = "[CSLPRFStingConfigurationHistory _historyItemForActionType:]";
        v34 = 2112;
        v35 = v21;
        _os_log_impl(&dword_22CE92000, v8, OS_LOG_TYPE_DEFAULT, "%@: %s no dictionary for action %@", buf, 0x20u);
      }

      v16 = 0;
LABEL_38:

      goto LABEL_39;
    }

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    v8 = [actionsDictionary objectForKeyedSubscript:v7];

    if (v8)
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      reversedOrderedSet = [v8 reversedOrderedSet];
      v10 = [reversedOrderedSet countByEnumeratingWithState:&v26 objects:v38 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v27;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v27 != v12)
            {
              objc_enumerationMutation(reversedOrderedSet);
            }

            v14 = *(*(&v26 + 1) + 8 * i);
            if ([(CSLPRFStingConfigurationHistory *)self isValidHistoryItem:v14])
            {
              v18 = cslprf_sting_settings_log();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                if (type > 0x2A)
                {
                  v19 = 0;
                }

                else
                {
                  v19 = off_278744510[type - 1];
                }

                v22 = v19;
                *buf = 138413058;
                selfCopy5 = self;
                v32 = 2080;
                v33 = "[CSLPRFStingConfigurationHistory _historyItemForActionType:]";
                v34 = 2112;
                v35 = v22;
                v36 = 2112;
                v37 = v14;
                _os_log_impl(&dword_22CE92000, v18, OS_LOG_TYPE_DEFAULT, "%@: %s found valid history item for action %@ %@", buf, 0x2Au);
              }

              v16 = v14;
              goto LABEL_37;
            }
          }

          v11 = [reversedOrderedSet countByEnumeratingWithState:&v26 objects:v38 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      reversedOrderedSet = cslprf_sting_settings_log();
      if (!os_log_type_enabled(reversedOrderedSet, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      if (type > 0x2A)
      {
        v15 = 0;
      }

      else
      {
        v15 = off_278744510[type - 1];
      }

      v23 = v15;
      *buf = 138413058;
      selfCopy5 = self;
      v32 = 2080;
      v33 = "[CSLPRFStingConfigurationHistory _historyItemForActionType:]";
      v34 = 2112;
      v35 = v23;
      v36 = 2112;
      v37 = v8;
      _os_log_error_impl(&dword_22CE92000, reversedOrderedSet, OS_LOG_TYPE_ERROR, "%@: %s no valid history item for action %@ historyItems %@", buf, 0x2Au);
    }

    else
    {
      reversedOrderedSet = cslprf_sting_settings_log();
      if (!os_log_type_enabled(reversedOrderedSet, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      if (type > 0x2A)
      {
        v20 = 0;
      }

      else
      {
        v20 = off_278744510[type - 1];
      }

      v23 = v20;
      *buf = 138412802;
      selfCopy5 = self;
      v32 = 2080;
      v33 = "[CSLPRFStingConfigurationHistory _historyItemForActionType:]";
      v34 = 2112;
      v35 = v23;
      _os_log_impl(&dword_22CE92000, reversedOrderedSet, OS_LOG_TYPE_DEFAULT, "%@: %s no history items for action %@", buf, 0x20u);
    }

LABEL_36:
    v16 = 0;
LABEL_37:

    goto LABEL_38;
  }

  read = cslprf_sting_settings_log();
  if (os_log_type_enabled(read, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    selfCopy5 = self;
    v32 = 2080;
    v33 = "[CSLPRFStingConfigurationHistory _historyItemForActionType:]";
    _os_log_error_impl(&dword_22CE92000, read, OS_LOG_TYPE_ERROR, "%@: %s action type isn't valid", buf, 0x16u);
  }

  v16 = 0;
LABEL_39:

  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_itemForActionType:(unint64_t)type withBundleID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (type)
  {
    read = [(CSLPRFStingConfigurationHistorySetting *)self->_historySetting read];
    actionsDictionary = [read actionsDictionary];
    if (actionsDictionary)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
      v10 = [actionsDictionary objectForKeyedSubscript:v9];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v12)
      {
        v13 = *v22;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            bundleID = [v15 bundleID];
            v17 = [bundleID isEqualToString:dCopy];

            if (v17)
            {
              v12 = v15;
              goto LABEL_14;
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v18 = [v12 copy];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)itemForWorkoutWithBundleID:(id)d
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(CSLPRFStingSettingsModel *)self->_model startWorkoutsListForBundleID:dCopy];
  firstObject = [v5 firstObject];
  workoutIdentifier = [firstObject workoutIdentifier];
  v8 = objc_alloc_init(CSLPRFStingConfigurationHistory);
  v9 = [(CSLPRFStingConfigurationHistory *)v8 _itemForActionType:6 withBundleID:dCopy];
  v10 = v9;
  if (v9)
  {
    identifier = [v9 identifier];

    if (identifier)
    {
      v27 = v8;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v12 = v5;
      v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v25 = firstObject;
        v26 = v5;
        v15 = *v29;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v29 != v15)
            {
              objc_enumerationMutation(v12);
            }

            workoutIdentifier2 = [*(*(&v28 + 1) + 8 * i) workoutIdentifier];
            identifier2 = [v10 identifier];
            v19 = [workoutIdentifier2 isEqualToString:identifier2];

            if (v19)
            {
              identifier3 = [v10 identifier];

              workoutIdentifier = identifier3;
              goto LABEL_13;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }

LABEL_13:
        firstObject = v25;
        v5 = v26;
      }

      v8 = v27;
    }

    else
    {

      workoutIdentifier = 0;
    }
  }

  if (workoutIdentifier)
  {
    v21 = 6;
  }

  else
  {
    v21 = 9;
  }

  v22 = [[CSLPRFStingConfigurationHistoryItem alloc] initWithBundleID:dCopy actionType:v21 identifier:workoutIdentifier];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)itemForActionType:(unint64_t)type
{
  v152 = *MEMORY[0x277D85DE8];
  v5 = cslprf_sting_settings_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (type - 1 > 0x29)
    {
      v6 = 0;
    }

    else
    {
      v6 = off_278744510[type - 1];
    }

    v7 = v6;
    *buf = 138412802;
    selfCopy8 = self;
    v139 = 2080;
    v140 = "[CSLPRFStingConfigurationHistory itemForActionType:]";
    v141 = 2112;
    v142 = v7;
    _os_log_impl(&dword_22CE92000, v5, OS_LOG_TYPE_INFO, "%@ %s: retrieving history item for %@", buf, 0x20u);
  }

  if (type != 18)
  {
    v10 = [(CSLPRFStingConfigurationHistory *)self historyActionType:type];
    v108 = [(CSLPRFStingSettingsModel *)self->_model bundleIDsForActionType:v10];
    if (v10 > 0x2A || ((0x3BFFFFFFFFBuLL >> v10) & 1) != 0)
    {
      if (![(__CFString *)v108 count])
      {
        v8 = [[CSLPRFStingConfigurationHistoryItem alloc] initWithBundleID:0 actionType:22 identifier:0];
        log = cslprf_sting_settings_log();
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          if ((v10 - 1) > 0x29)
          {
            v95 = 0;
          }

          else
          {
            v95 = off_278744510[v10 - 1];
          }

          v97 = v95;
          v98 = @"Configure";
          *buf = 138413314;
          selfCopy8 = self;
          v139 = 2080;
          v140 = "[CSLPRFStingConfigurationHistory itemForActionType:]";
          v141 = 2112;
          v142 = v97;
          v143 = 2112;
          v144 = @"Configure";
          v145 = 2112;
          v146 = v8;
          _os_log_error_impl(&dword_22CE92000, log, OS_LOG_TYPE_ERROR, "%@ %s no valid apps for %@ returning to %@ %@", buf, 0x34u);
        }

        bundleID2 = 0;
        goto LABEL_123;
      }

      v11 = cslprf_sting_settings_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        if ((v10 - 1) > 0x29)
        {
          v13 = 0;
        }

        else
        {
          v13 = off_278744510[v10 - 1];
        }

        v15 = v13;
        *buf = 138413058;
        selfCopy8 = self;
        v139 = 2080;
        v140 = "[CSLPRFStingConfigurationHistory itemForActionType:]";
        v141 = 2112;
        v142 = v15;
        v143 = 2112;
        v144 = v108;
        _os_log_impl(&dword_22CE92000, v11, OS_LOG_TYPE_INFO, "%@ %s: valid bundleIDs for action type %@ using bundleID %@", buf, 0x2Au);
      }
    }

    else
    {
      v11 = cslprf_sting_settings_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        if ((v10 - 1) > 0x29)
        {
          v12 = 0;
        }

        else
        {
          v12 = off_278744510[v10 - 1];
        }

        v14 = v12;
        *buf = 138412802;
        selfCopy8 = self;
        v139 = 2080;
        v140 = "[CSLPRFStingConfigurationHistory itemForActionType:]";
        v141 = 2112;
        v142 = v14;
        _os_log_impl(&dword_22CE92000, v11, OS_LOG_TYPE_INFO, "%@ %s: action type %@ does not require a bundleID", buf, 0x20u);
      }
    }

    v16 = [(CSLPRFStingConfigurationHistory *)self _historyItemForActionType:v10];
    if (v16)
    {
      v17 = cslprf_sting_settings_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        if ((v10 - 1) > 0x29)
        {
          v18 = 0;
        }

        else
        {
          v18 = off_278744510[v10 - 1];
        }

        v20 = v18;
        *buf = 138413058;
        selfCopy8 = self;
        v139 = 2080;
        v140 = "[CSLPRFStingConfigurationHistory itemForActionType:]";
        v141 = 2112;
        v142 = v20;
        v143 = 2112;
        v144 = v16;
        _os_log_impl(&dword_22CE92000, v17, OS_LOG_TYPE_INFO, "%@ %s found history item for %@ %@", buf, 0x2Au);
      }

      bundleID = [(__CFString *)v16 bundleID];
      v22 = [(__CFString *)v108 containsObject:bundleID];

      if (v22)
      {
        bundleID2 = [(__CFString *)v16 bundleID];
        goto LABEL_45;
      }

      bundleID2 = [(__CFString *)v108 objectAtIndexedSubscript:0];
      v23 = cslprf_sting_settings_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        bundleID3 = [(__CFString *)v16 bundleID];
        if ((v10 - 1) > 0x29)
        {
          v94 = 0;
        }

        else
        {
          v94 = off_278744510[v10 - 1];
        }

        v96 = v94;
        *buf = 138413314;
        selfCopy8 = self;
        v139 = 2080;
        v140 = "[CSLPRFStingConfigurationHistory itemForActionType:]";
        v141 = 2112;
        v142 = bundleID3;
        v143 = 2112;
        v144 = v96;
        v145 = 2112;
        v146 = bundleID2;
        _os_log_error_impl(&dword_22CE92000, v23, OS_LOG_TYPE_ERROR, "%@ %s history item bundleID %@ isn't valid  for %@ using %@", buf, 0x34u);
      }
    }

    else
    {
      if (v10 == 6 && [(__CFString *)v108 containsObject:@"com.apple.SessionTrackerApp"])
      {
        bundleID2 = @"com.apple.SessionTrackerApp";
        v19 = @"com.apple.SessionTrackerApp";
      }

      else
      {
        bundleID2 = [(__CFString *)v108 objectAtIndexedSubscript:0];
      }

      v23 = cslprf_sting_settings_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        if ((v10 - 1) > 0x29)
        {
          v24 = 0;
        }

        else
        {
          v24 = off_278744510[v10 - 1];
        }

        v25 = v24;
        *buf = 138413058;
        selfCopy8 = self;
        v139 = 2080;
        v140 = "[CSLPRFStingConfigurationHistory itemForActionType:]";
        v141 = 2112;
        v142 = v25;
        v143 = 2112;
        v144 = bundleID2;
        _os_log_impl(&dword_22CE92000, v23, OS_LOG_TYPE_DEFAULT, "%@ %s: Could not find history for item for actionType:%@ using bundleID %@", buf, 0x2Au);
      }
    }

LABEL_45:
    log = 0;
    if (v10 > 37)
    {
      if (v10 == 38)
      {
        accessibilityItems = [(CSLPRFStingSettingsModel *)self->_model accessibilityItems];
        firstObject = [accessibilityItems firstObject];
        log = [firstObject identifier];
        if (v16)
        {
          identifier = [(__CFString *)v16 identifier];
          v58 = identifier == 0;

          if (!v58)
          {
            v117 = 0u;
            v118 = 0u;
            v115 = 0u;
            v116 = 0u;
            v59 = accessibilityItems;
            v60 = [v59 countByEnumeratingWithState:&v115 objects:v135 count:16];
            if (v60)
            {
              v61 = *v116;
              while (2)
              {
                for (i = 0; i != v60; ++i)
                {
                  if (*v116 != v61)
                  {
                    objc_enumerationMutation(v59);
                  }

                  v63 = *(*(&v115 + 1) + 8 * i);
                  identifier2 = [v63 identifier];
                  identifier3 = [(__CFString *)v16 identifier];
                  v66 = [identifier2 isEqualToString:identifier3];

                  if (v66)
                  {
                    identifier4 = [v63 identifier];

                    v69 = v63;
                    firstObject = v69;
                    log = identifier4;
                    goto LABEL_97;
                  }
                }

                v60 = [v59 countByEnumeratingWithState:&v115 objects:v135 count:16];
                if (v60)
                {
                  continue;
                }

                break;
              }
            }

LABEL_97:
          }
        }

        v70 = cslprf_sting_settings_log();
        v71 = 16 * (log == 0);
        if (os_log_type_enabled(v70, v71))
        {
          v72 = @"RunAccessibilityShortcut";
          model = self->_model;
          *buf = 138413570;
          selfCopy8 = @"RunAccessibilityShortcut";
          v139 = 2112;
          v140 = bundleID2;
          v141 = 2112;
          v142 = log;
          v143 = 2112;
          v144 = model;
          v145 = 2112;
          v146 = firstObject;
          v147 = 2112;
          v148 = accessibilityItems;
          _os_log_impl(&dword_22CE92000, v70, v71, "Returning AX shortcut item for actionType=%@, bundleID=%@ workoutIdentifier=%@ model=%@ AX shortcut=%@ AX shortcuts=%@", buf, 0x3Eu);
        }

        v10 = 38;
        goto LABEL_121;
      }

      if (v10 == 42)
      {
        accessibilityItems = [(CSLPRFStingSettingsModel *)self->_model controlItems];
        v124 = 0;
        v125 = &v124;
        v126 = 0x3032000000;
        v127 = __Block_byref_object_copy__3268;
        v128 = __Block_byref_object_dispose__3269;
        v129 = 0;
        v114[0] = MEMORY[0x277D85DD0];
        v114[1] = 3221225472;
        v114[2] = __53__CSLPRFStingConfigurationHistory_itemForActionType___block_invoke_8;
        v114[3] = &unk_278744D70;
        v114[4] = &v124;
        [accessibilityItems enumerateKeysAndObjectsUsingBlock:v114];
        firstObject2 = [v125[5] firstObject];
        log = [firstObject2 identifier];
        v103 = firstObject2;
        if (v16)
        {
          identifier5 = [(__CFString *)v16 identifier];
          v37 = identifier5 == 0;

          if (!v37)
          {
            v112 = 0u;
            v113 = 0u;
            v110 = 0u;
            v111 = 0u;
            v38 = v125[5];
            v39 = [v38 countByEnumeratingWithState:&v110 objects:v134 count:16];
            if (v39)
            {
              v40 = *v111;
              while (2)
              {
                for (j = 0; j != v39; ++j)
                {
                  if (*v111 != v40)
                  {
                    objc_enumerationMutation(v38);
                  }

                  v42 = *(*(&v110 + 1) + 8 * j);
                  identifier6 = [v42 identifier];
                  identifier7 = [(__CFString *)v16 identifier];
                  v45 = [identifier6 isEqualToString:identifier7];

                  if (v45)
                  {
                    identifier8 = [v42 identifier];

                    log = identifier8;
                    goto LABEL_102;
                  }
                }

                v39 = [v38 countByEnumeratingWithState:&v110 objects:v134 count:16];
                if (v39)
                {
                  continue;
                }

                break;
              }
            }

LABEL_102:
          }
        }

        v75 = cslprf_sting_settings_log();
        v76 = 16 * (log == 0);
        if (os_log_type_enabled(v75, v76))
        {
          v77 = @"RunControl";
          v78 = self->_model;
          v79 = v125[5];
          *buf = 138413826;
          selfCopy8 = @"RunControl";
          v139 = 2112;
          v140 = bundleID2;
          v141 = 2112;
          v142 = log;
          v143 = 2112;
          v144 = v78;
          v145 = 2112;
          v146 = v103;
          v147 = 2112;
          v148 = v79;
          v149 = 2112;
          v150 = accessibilityItems;
          _os_log_impl(&dword_22CE92000, v75, v76, "Returning control item for actionType=%@, bundleID=%@ workoutIdentifier=%@ model=%@ control=%@ controls=%@ controlsByBundleID=%@", buf, 0x48u);
        }

        _Block_object_dispose(&v124, 8);
        v10 = 42;
        goto LABEL_121;
      }
    }

    else
    {
      if (v10 == 2)
      {
        accessibilityItems = [(CSLPRFStingSettingsModel *)self->_model shortcutItems];
        v124 = 0;
        v125 = &v124;
        v126 = 0x3032000000;
        v127 = __Block_byref_object_copy__3268;
        v128 = __Block_byref_object_dispose__3269;
        v129 = 0;
        v123[0] = MEMORY[0x277D85DD0];
        v123[1] = 3221225472;
        v123[2] = __53__CSLPRFStingConfigurationHistory_itemForActionType___block_invoke;
        v123[3] = &unk_278744D70;
        v123[4] = &v124;
        [accessibilityItems enumerateKeysAndObjectsUsingBlock:v123];
        firstObject3 = [v125[5] firstObject];
        log = [firstObject3 identifier];
        v104 = firstObject3;
        if (v16)
        {
          identifier9 = [(__CFString *)v16 identifier];
          v48 = identifier9 == 0;

          if (!v48)
          {
            v121 = 0u;
            v122 = 0u;
            v119 = 0u;
            v120 = 0u;
            v49 = v125[5];
            v50 = [v49 countByEnumeratingWithState:&v119 objects:v136 count:16];
            if (v50)
            {
              v51 = *v120;
              while (2)
              {
                for (k = 0; k != v50; ++k)
                {
                  if (*v120 != v51)
                  {
                    objc_enumerationMutation(v49);
                  }

                  v53 = *(*(&v119 + 1) + 8 * k);
                  identifier10 = [v53 identifier];
                  identifier11 = [(__CFString *)v16 identifier];
                  v56 = [identifier10 isEqualToString:identifier11];

                  if (v56)
                  {
                    identifier12 = [v53 identifier];

                    log = identifier12;
                    goto LABEL_107;
                  }
                }

                v50 = [v49 countByEnumeratingWithState:&v119 objects:v136 count:16];
                if (v50)
                {
                  continue;
                }

                break;
              }
            }

LABEL_107:
          }
        }

        v81 = cslprf_sting_settings_log();
        v82 = 16 * (log == 0);
        if (os_log_type_enabled(v81, v82))
        {
          v83 = @"RunShortcut";
          v84 = self->_model;
          v85 = v125[5];
          *buf = 138413826;
          selfCopy8 = @"RunShortcut";
          v139 = 2112;
          v140 = bundleID2;
          v141 = 2112;
          v142 = log;
          v143 = 2112;
          v144 = v84;
          v145 = 2112;
          v146 = v104;
          v147 = 2112;
          v148 = v85;
          v149 = 2112;
          v150 = accessibilityItems;
          _os_log_impl(&dword_22CE92000, v81, v82, "Returning shortcut item for actionType=%@, bundleID=%@ workoutIdentifier=%@ model=%@ shortcut=%@ shortcuts=%@ shortcutsByBundleID=%@", buf, 0x48u);
        }

        _Block_object_dispose(&v124, 8);
        v10 = 2;
        goto LABEL_121;
      }

      if (v10 == 6)
      {
        accessibilityItems = [(CSLPRFStingSettingsModel *)self->_model startWorkoutsListForBundleID:bundleID2];
        firstObject4 = [accessibilityItems firstObject];
        log = [firstObject4 workoutIdentifier];
        if (v16)
        {
          identifier13 = [(__CFString *)v16 identifier];
          v27 = identifier13 == 0;

          if (v27)
          {
            actionType = [(__CFString *)v16 actionType];
            v87 = [actionType integerValue] == 9;

            if (v87)
            {

              log = 0;
              v10 = 9;
              goto LABEL_115;
            }
          }

          else
          {
            v132 = 0u;
            v133 = 0u;
            v130 = 0u;
            v131 = 0u;
            v28 = accessibilityItems;
            v29 = [v28 countByEnumeratingWithState:&v130 objects:v151 count:16];
            if (v29)
            {
              v30 = *v131;
              while (2)
              {
                for (m = 0; m != v29; ++m)
                {
                  if (*v131 != v30)
                  {
                    objc_enumerationMutation(v28);
                  }

                  workoutIdentifier = [*(*(&v130 + 1) + 8 * m) workoutIdentifier];
                  identifier14 = [(__CFString *)v16 identifier];
                  v34 = [workoutIdentifier isEqualToString:identifier14];

                  if (v34)
                  {
                    identifier15 = [(__CFString *)v16 identifier];

                    log = identifier15;
                    goto LABEL_95;
                  }
                }

                v29 = [v28 countByEnumeratingWithState:&v130 objects:v151 count:16];
                if (v29)
                {
                  continue;
                }

                break;
              }
            }

LABEL_95:
          }
        }

        if (!log)
        {
          v88 = cslprf_sting_settings_log();
          if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
          {
            v99 = @"StartWorkout";
            v100 = @"OpenWorkout";
            v101 = self->_model;
            *buf = 138413826;
            selfCopy8 = @"StartWorkout";
            v139 = 2112;
            v140 = @"OpenWorkout";
            v141 = 2112;
            v142 = bundleID2;
            v143 = 2112;
            v144 = 0;
            v145 = 2112;
            v146 = v101;
            v147 = 2112;
            v148 = firstObject4;
            v149 = 2112;
            v150 = accessibilityItems;
            _os_log_error_impl(&dword_22CE92000, v88, OS_LOG_TYPE_ERROR, "Missing identifier for workout item actionType=%@, switching to actionType to %@, bundleID=%@ workoutIdentifier=%@ model=%@ workout=%@ workouts=%@", buf, 0x48u);
          }

          log = 0;
          v10 = 9;
          goto LABEL_120;
        }

        v10 = 6;
LABEL_115:
        v88 = cslprf_sting_settings_log();
        if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
        {
          v89 = off_278744510[v10 - 1];
          v90 = self->_model;
          *buf = 138413314;
          selfCopy8 = v89;
          v139 = 2112;
          v140 = bundleID2;
          v141 = 2112;
          v142 = log;
          v143 = 2112;
          v144 = v90;
          v145 = 2112;
          v146 = firstObject4;
          _os_log_impl(&dword_22CE92000, v88, OS_LOG_TYPE_INFO, "Returning workout item actionType=%@, bundleID=%@ workoutIdentifier=%@ model=%@ workout=%@", buf, 0x34u);
        }

LABEL_120:

LABEL_121:
      }
    }

    v8 = [[CSLPRFStingConfigurationHistoryItem alloc] initWithBundleID:bundleID2 actionType:v10 identifier:log];

LABEL_123:
    v9 = bundleID2;
    goto LABEL_124;
  }

  v8 = [[CSLPRFStingConfigurationHistoryItem alloc] initWithBundleID:0 actionType:18 identifier:0];
  v9 = cslprf_sting_settings_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    selfCopy8 = self;
    v139 = 2080;
    v140 = "[CSLPRFStingConfigurationHistory itemForActionType:]";
    v141 = 2112;
    v142 = v8;
    _os_log_impl(&dword_22CE92000, v9, OS_LOG_TYPE_INFO, "%@ %s: action type is none returning %@", buf, 0x20u);
  }

LABEL_124:

  v91 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)addHistoryItem:(id)item
{
  v49 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if ([(CSLPRFStingConfigurationHistory *)self isValidHistoryItem:itemCopy])
  {
    actionType = [(CSLPRFStingConfigurationHistory *)itemCopy actionType];
    v6 = -[CSLPRFStingConfigurationHistory historyActionType:](self, "historyActionType:", [actionType integerValue]);

    log = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    obj = self;
    objc_sync_enter(obj);
    v7 = cslprf_sting_settings_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      integerValue = [log integerValue];
      if ((integerValue - 1) > 0x29)
      {
        v9 = 0;
      }

      else
      {
        v9 = off_278744510[integerValue - 1];
      }

      v10 = v9;
      *buf = 138412546;
      selfCopy = itemCopy;
      v43 = 2112;
      v44 = v10;
      _os_log_impl(&dword_22CE92000, v7, OS_LOG_TYPE_INFO, "Storing %@ with %@", buf, 0x16u);
    }

    read = [(CSLPRFStingConfigurationHistorySetting *)obj->_historySetting read];
    actionsDictionary = [(CSLPRFStingConfigurationHistoryData *)read actionsDictionary];
    v12 = [actionsDictionary mutableCopy];

    v13 = v12;
    if (!v12)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v32 = v13;
    v14 = [v13 objectForKeyedSubscript:log];
    v31 = [v14 mutableCopy];

    v15 = cslprf_sting_settings_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      selfCopy = obj;
      v43 = 2080;
      v44 = "[CSLPRFStingConfigurationHistory addHistoryItem:]";
      v45 = 2112;
      v46 = itemCopy;
      v47 = 2112;
      v48 = v31;
      _os_log_impl(&dword_22CE92000, v15, OS_LOG_TYPE_INFO, "%@ %s Before adding %@, currentItems = %@", buf, 0x2Au);
    }

    if (v31)
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB40]);
      bundleID = [(CSLPRFStingConfigurationHistory *)itemCopy bundleID];

      if (bundleID)
      {
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v18 = v31;
        v19 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v19)
        {
          v20 = *v37;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v37 != v20)
              {
                objc_enumerationMutation(v18);
              }

              v22 = *(*(&v36 + 1) + 8 * i);
              bundleID2 = [v22 bundleID];
              bundleID3 = [(CSLPRFStingConfigurationHistory *)itemCopy bundleID];
              v25 = [bundleID2 isEqualToString:bundleID3];

              if ((v25 & 1) == 0)
              {
                [v16 addObject:v22];
              }
            }

            v19 = [v18 countByEnumeratingWithState:&v36 objects:v40 count:16];
          }

          while (v19);
        }

        if ([v16 count] >= 0x10)
        {
          [v16 removeObjectAtIndex:0];
        }
      }

      [v16 removeObject:itemCopy];
      [v16 addObject:itemCopy];
      v26 = [v16 copy];
      [v32 setObject:v26 forKeyedSubscript:log];
    }

    else
    {
      v16 = [objc_alloc(MEMORY[0x277CBEB70]) initWithObject:itemCopy];
      [v32 setObject:v16 forKeyedSubscript:log];
    }

    v27 = cslprf_sting_settings_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = [v32 objectForKeyedSubscript:log];
      *buf = 138413058;
      selfCopy = obj;
      v43 = 2080;
      v44 = "[CSLPRFStingConfigurationHistory addHistoryItem:]";
      v45 = 2112;
      v46 = itemCopy;
      v47 = 2112;
      v48 = v28;
      _os_log_impl(&dword_22CE92000, v27, OS_LOG_TYPE_INFO, "%@ %s: After adding %@, currentItems = %@", buf, 0x2Au);
    }

    if (!read)
    {
      read = objc_alloc_init(CSLPRFStingConfigurationHistoryData);
    }

    v29 = [v32 copy];
    [(CSLPRFStingConfigurationHistoryData *)read setActionsDictionary:v29];

    [(CSLPRFStingConfigurationHistorySetting *)obj->_historySetting write:read];
    objc_sync_exit(obj);
  }

  else
  {
    log = cslprf_sting_settings_log();
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      selfCopy = self;
      v43 = 2080;
      v44 = "[CSLPRFStingConfigurationHistory addHistoryItem:]";
      v45 = 2112;
      v46 = itemCopy;
      _os_log_error_impl(&dword_22CE92000, log, OS_LOG_TYPE_ERROR, "%@: %s item %@ is not valid, not adding", buf, 0x20u);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (unint64_t)historyActionType:(unint64_t)type
{
  if (type == 9)
  {
    return 6;
  }

  else
  {
    return type;
  }
}

- (BOOL)isValidHistoryItem:(id)item
{
  v27 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  actionType = [itemCopy actionType];
  v6 = actionType;
  if (!actionType)
  {
    v8 = cslprf_sting_settings_log();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_13:

      v11 = 0;
      goto LABEL_14;
    }

    integerValue = [0 integerValue];
    v13 = 0;
    if ((integerValue - 1) <= 0x29)
    {
      v13 = off_278744510[integerValue - 1];
    }

    v14 = v13;
    v19 = 138413058;
    selfCopy2 = self;
    v21 = 2080;
    v22 = "[CSLPRFStingConfigurationHistory isValidHistoryItem:]";
    v23 = 2112;
    v24 = itemCopy;
    v25 = 2112;
    v26 = v14;
    v15 = "%@: %s item %@ does not include a valid action of type %@";
    v16 = v8;
    goto LABEL_16;
  }

  v7 = -[CSLPRFStingConfigurationHistory historyActionType:](self, "historyActionType:", [actionType integerValue]);
  if (v7 <= 0x2A && ((0x3BFFFFFFFFBuLL >> v7) & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = [(CSLPRFStingSettingsModel *)self->_model bundleIDsForActionType:v7];
  bundleID = [itemCopy bundleID];
  v10 = [v8 containsObject:bundleID];

  if ((v10 & 1) == 0)
  {
    v14 = cslprf_sting_settings_log();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_12:

      goto LABEL_13;
    }

    v19 = 138413058;
    selfCopy2 = self;
    v21 = 2080;
    v22 = "[CSLPRFStingConfigurationHistory isValidHistoryItem:]";
    v23 = 2112;
    v24 = itemCopy;
    v25 = 2112;
    v26 = v8;
    v15 = "%@: %s item %@ does not have a valid bundleID %@";
    v16 = v14;
LABEL_16:
    _os_log_error_impl(&dword_22CE92000, v16, OS_LOG_TYPE_ERROR, v15, &v19, 0x2Au);
    goto LABEL_12;
  }

LABEL_6:
  v11 = 1;
LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
  return v11;
}

- (CSLPRFStingConfigurationHistory)initWithSetting:(id)setting model:(id)model
{
  settingCopy = setting;
  modelCopy = model;
  v12.receiver = self;
  v12.super_class = CSLPRFStingConfigurationHistory;
  v9 = [(CSLPRFStingConfigurationHistory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_historySetting, setting);
    objc_storeStrong(&v10->_model, model);
  }

  return v10;
}

- (CSLPRFStingConfigurationHistory)init
{
  v3 = objc_alloc_init(CSLPRFStingConfigurationHistorySetting);
  v4 = objc_alloc_init(CSLPRFStingSettingsModel);
  v5 = [(CSLPRFStingConfigurationHistory *)self initWithSetting:v3 model:v4];

  return v5;
}

@end