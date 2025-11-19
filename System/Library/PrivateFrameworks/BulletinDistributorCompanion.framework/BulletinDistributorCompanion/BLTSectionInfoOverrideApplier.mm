@interface BLTSectionInfoOverrideApplier
- (id)applyOverrides:(id)a3 toSectionInfo:(id)a4;
@end

@implementation BLTSectionInfoOverrideApplier

- (id)applyOverrides:(id)a3 toSectionInfo:(id)a4
{
  v77 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!a4)
  {
    v6 = 0;
    goto LABEL_50;
  }

  v6 = [a4 copy];
  v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CF3400]];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = *MEMORY[0x277CF3410];
    v10 = [v5 objectForKeyedSubscript:*MEMORY[0x277CF3410]];

    if (v10)
    {
      v11 = [v5 objectForKeyedSubscript:v9];
      v12 = [v11 BOOLValue];

      v13 = [v6 pushSettings];
      if (!v12)
      {
        v14 = v13 & 0xFFFFFFFFFFFFFFEFLL;
        goto LABEL_17;
      }
    }

    else
    {
      v13 = [v6 pushSettings];
    }

    v14 = v13 | 0x10;
LABEL_17:
    [v6 setPushSettings:v14];
    v21 = *MEMORY[0x277CF33E0];
    v22 = [v5 objectForKeyedSubscript:*MEMORY[0x277CF33E0]];

    if (v22)
    {
      v23 = [v5 objectForKeyedSubscript:v21];
      v24 = [v23 BOOLValue];

      if (v24)
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
    v26 = [v5 objectForKeyedSubscript:*MEMORY[0x277CF33D8]];
    v15 = v26;
    if (v26)
    {
      v27 = [v26 unsignedIntegerValue];
      if (v27)
      {
        v28 = v27 == 2;
      }

      else
      {
        v28 = 2;
      }

      [v6 setBulletinGroupingSetting:v28];
    }

    v56 = *MEMORY[0x277CF33F8];
    v29 = [v5 objectForKeyedSubscript:?];
    v30 = [v29 BOOLValue];

    v57 = v30;
    if (v30)
    {
      v31 = 1;
    }

    else
    {
      v32 = [v5 objectForKeyedSubscript:*MEMORY[0x277CF33F0]];
      v31 = [v32 BOOLValue];
    }

    [v6 updateAlertingStatusForGizmoWithAlertsEnabled:v30 NCEnabled:v31];
    [v6 setNotificationCenterLimit:20];
    v33 = [v5 objectForKeyedSubscript:*MEMORY[0x277CF3408]];
    [v6 setShowsMessagePreview:{objc_msgSend(v33, "BOOLValue")}];

    v34 = *MEMORY[0x277CF3420];
    v35 = [v5 objectForKeyedSubscript:*MEMORY[0x277CF3420]];

    if (v35)
    {
      v52 = v15;
      v53 = v5;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      obj = [v5 objectForKeyedSubscript:v34];
      v60 = [obj countByEnumeratingWithState:&v66 objects:v75 count:16];
      if (v60)
      {
        v58 = *v67;
        v36 = *MEMORY[0x277CF3418];
        v55 = v57 | v31;
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
            v39 = [v6 subsections];
            v40 = [v39 countByEnumeratingWithState:&v62 objects:v74 count:16];
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
                    objc_enumerationMutation(v39);
                  }

                  v44 = *(*(&v62 + 1) + 8 * i);
                  v45 = [v38 objectForKeyedSubscript:v36];
                  v46 = [v44 subsectionID];
                  v47 = [v45 isEqualToString:v46];

                  if (v47)
                  {
                    v48 = [v38 objectForKeyedSubscript:v56];
                    v49 = [v48 BOOLValue];

                    [v44 updateAlertingStatusForGizmoWithAlertsEnabled:v57 & v49 NCEnabled:v55 & v49];
                    [v44 setNotificationCenterLimit:20];
                    goto LABEL_46;
                  }
                }

                v41 = [v39 countByEnumeratingWithState:&v62 objects:v74 count:16];
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

      v15 = v52;
      v5 = v53;
    }

    goto LABEL_49;
  }

  [v6 enableAlertsForGizmo:BLTBBSectionInfoEnabled(v6)];
  [v6 setNotificationCenterLimit:20];
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v15 = [v6 subsections];
  v16 = [v15 countByEnumeratingWithState:&v70 objects:v76 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v70 + 1) + 8 * j);
        [v20 enableAlertsForGizmo:BLTBBSectionInfoEnabled(v20)];
        [v20 setNotificationCenterLimit:20];
      }

      v17 = [v15 countByEnumeratingWithState:&v70 objects:v76 count:16];
    }

    while (v17);
  }

LABEL_49:

LABEL_50:
  v50 = *MEMORY[0x277D85DE8];

  return v6;
}

@end