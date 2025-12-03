@interface BLTSectionInfoOverrideApplier
- (id)applyOverrides:(id)overrides toSectionInfo:(id)info;
@end

@implementation BLTSectionInfoOverrideApplier

- (id)applyOverrides:(id)overrides toSectionInfo:(id)info
{
  v77 = *MEMORY[0x277D85DE8];
  overridesCopy = overrides;
  if (!info)
  {
    v6 = 0;
    goto LABEL_50;
  }

  v6 = [info copy];
  v7 = [overridesCopy objectForKeyedSubscript:*MEMORY[0x277CF3400]];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    v9 = *MEMORY[0x277CF3410];
    v10 = [overridesCopy objectForKeyedSubscript:*MEMORY[0x277CF3410]];

    if (v10)
    {
      v11 = [overridesCopy objectForKeyedSubscript:v9];
      bOOLValue2 = [v11 BOOLValue];

      pushSettings = [v6 pushSettings];
      if (!bOOLValue2)
      {
        v14 = pushSettings & 0xFFFFFFFFFFFFFFEFLL;
        goto LABEL_17;
      }
    }

    else
    {
      pushSettings = [v6 pushSettings];
    }

    v14 = pushSettings | 0x10;
LABEL_17:
    [v6 setPushSettings:v14];
    v21 = *MEMORY[0x277CF33E0];
    v22 = [overridesCopy objectForKeyedSubscript:*MEMORY[0x277CF33E0]];

    if (v22)
    {
      v23 = [overridesCopy objectForKeyedSubscript:v21];
      bOOLValue3 = [v23 BOOLValue];

      if (bOOLValue3)
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }
    }

    else
    {
      v25 = 0;
    }

    [v6 setCriticalAlertSetting:v25];
    v26 = [overridesCopy objectForKeyedSubscript:*MEMORY[0x277CF33D8]];
    subsections2 = v26;
    if (v26)
    {
      unsignedIntegerValue = [v26 unsignedIntegerValue];
      if (unsignedIntegerValue)
      {
        v28 = unsignedIntegerValue == 2;
      }

      else
      {
        v28 = 2;
      }

      [v6 setBulletinGroupingSetting:v28];
    }

    v56 = *MEMORY[0x277CF33F8];
    v29 = [overridesCopy objectForKeyedSubscript:?];
    bOOLValue4 = [v29 BOOLValue];

    v57 = bOOLValue4;
    if (bOOLValue4)
    {
      bOOLValue5 = 1;
    }

    else
    {
      v32 = [overridesCopy objectForKeyedSubscript:*MEMORY[0x277CF33F0]];
      bOOLValue5 = [v32 BOOLValue];
    }

    [v6 updateAlertingStatusForGizmoWithAlertsEnabled:bOOLValue4 NCEnabled:bOOLValue5];
    [v6 setNotificationCenterLimit:20];
    v33 = [overridesCopy objectForKeyedSubscript:*MEMORY[0x277CF3408]];
    [v6 setShowsMessagePreview:{objc_msgSend(v33, "BOOLValue")}];

    v34 = *MEMORY[0x277CF3420];
    v35 = [overridesCopy objectForKeyedSubscript:*MEMORY[0x277CF3420]];

    if (v35)
    {
      v52 = subsections2;
      v53 = overridesCopy;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      obj = [overridesCopy objectForKeyedSubscript:v34];
      v60 = [obj countByEnumeratingWithState:&v66 objects:v75 count:16];
      if (v60)
      {
        v58 = *v67;
        v36 = *MEMORY[0x277CF3418];
        v55 = v57 | bOOLValue5;
        v59 = v6;
        do
        {
          v37 = 0;
          do
          {
            if (*v67 != v58)
            {
              objc_enumerationMutation(obj);
            }

            v61 = v37;
            v38 = *(*(&v66 + 1) + 8 * v37);
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v65 = 0u;
            subsections = [v6 subsections];
            v40 = [subsections countByEnumeratingWithState:&v62 objects:v74 count:16];
            if (v40)
            {
              v41 = v40;
              v42 = *v63;
              while (2)
              {
                for (i = 0; i != v41; ++i)
                {
                  if (*v63 != v42)
                  {
                    objc_enumerationMutation(subsections);
                  }

                  v44 = *(*(&v62 + 1) + 8 * i);
                  v45 = [v38 objectForKeyedSubscript:v36];
                  subsectionID = [v44 subsectionID];
                  v47 = [v45 isEqualToString:subsectionID];

                  if (v47)
                  {
                    v48 = [v38 objectForKeyedSubscript:v56];
                    bOOLValue6 = [v48 BOOLValue];

                    [v44 updateAlertingStatusForGizmoWithAlertsEnabled:v57 & bOOLValue6 NCEnabled:v55 & bOOLValue6];
                    [v44 setNotificationCenterLimit:20];
                    goto LABEL_46;
                  }
                }

                v41 = [subsections countByEnumeratingWithState:&v62 objects:v74 count:16];
                if (v41)
                {
                  continue;
                }

                break;
              }
            }

LABEL_46:

            v37 = v61 + 1;
            v6 = v59;
          }

          while (v61 + 1 != v60);
          v60 = [obj countByEnumeratingWithState:&v66 objects:v75 count:16];
        }

        while (v60);
      }

      subsections2 = v52;
      overridesCopy = v53;
    }

    goto LABEL_49;
  }

  [v6 enableAlertsForGizmo:BLTBBSectionInfoEnabled(v6)];
  [v6 setNotificationCenterLimit:20];
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  subsections2 = [v6 subsections];
  v16 = [subsections2 countByEnumeratingWithState:&v70 objects:v76 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v71;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v71 != v18)
        {
          objc_enumerationMutation(subsections2);
        }

        v20 = *(*(&v70 + 1) + 8 * j);
        [v20 enableAlertsForGizmo:BLTBBSectionInfoEnabled(v20)];
        [v20 setNotificationCenterLimit:20];
      }

      v17 = [subsections2 countByEnumeratingWithState:&v70 objects:v76 count:16];
    }

    while (v17);
  }

LABEL_49:

LABEL_50:
  v50 = *MEMORY[0x277D85DE8];

  return v6;
}

@end