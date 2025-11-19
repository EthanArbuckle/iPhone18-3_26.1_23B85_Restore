@interface MRSystemHealthComponentHandler
- (MRSystemHealthComponentHandler)initWithComponentName:(id)a3;
- (void)postComponentStatus:(unint64_t)a3;
@end

@implementation MRSystemHealthComponentHandler

- (MRSystemHealthComponentHandler)initWithComponentName:(id)a3
{
  v4 = a3;
  v51.receiver = self;
  v51.super_class = MRSystemHealthComponentHandler;
  v5 = [(MRBaseComponentHandler *)&v51 init];
  v6 = v5;
  if (v5)
  {
    [(MRBaseComponentHandler *)v5 setComponentName:v4];
    v7 = MEMORY[0x277CCACA8];
    v8 = [(MRBaseComponentHandler *)v6 componentName];
    v9 = [v7 stringWithFormat:@"SUcaseFor%@", v8];
    [(MRBaseComponentHandler *)v6 setComponentSUCaseKey:v9];

    v10 = [MEMORY[0x277CBEBD0] groupStandardUserDefaults];
    v11 = [(MRBaseComponentHandler *)v6 componentSUCaseKey];
    -[MRBaseComponentHandler setIsSUCaseForComponent:](v6, "setIsSUCaseForComponent:", [v10 BOOLForKey:v11]);

    [(MRBaseComponentHandler *)v6 setDisplayNotification:0];
    [(MRBaseComponentHandler *)v6 setDisplayModalPopup:[(MRBaseComponentHandler *)v6 isSUCaseForComponent]^ 1];
    v12 = MEMORY[0x277CBEBC0];
    v13 = MEMORY[0x277CCACA8];
    v14 = [(MRBaseComponentHandler *)v6 componentName];
    v15 = [v13 stringWithFormat:@"prefs:root=General&path=About/MAIN_PARTS_AND_SERVICE/%@", v14];
    v16 = [v12 URLWithString:v15];
    [(MRBaseComponentHandler *)v6 setLinkedSensitiveURL:v16];

    v17 = MEMORY[0x277CCACA8];
    v18 = [(MRBaseComponentHandler *)v6 componentName];
    v19 = [v17 stringWithFormat:@"com.apple.mobilerepair.%@Repair", v18];
    [(MRBaseComponentHandler *)v6 setComponentFollowupClientID:v19];

    v20 = [(MRBaseComponentHandler *)v6 componentFollowupClientID];
    v21 = [v20 stringByAppendingString:@"FINISH_REPAIR"];
    [(MRBaseComponentHandler *)v6 setFinishRepairKey:v21];

    v22 = MEMORY[0x277CCACA8];
    v23 = [(MRBaseComponentHandler *)v6 componentName];
    v24 = [v22 stringWithFormat:@"unlockCheckCountFor%@", v23];
    [(MRBaseComponentHandler *)v6 setComponentUnLockCheckCountKey:v24];

    v25 = MEMORY[0x277CCACA8];
    v26 = [(MRBaseComponentHandler *)v6 componentName];
    v27 = [v25 stringWithFormat:@"retriggerCheckCountFor%@", v26];
    [(MRBaseComponentHandler *)v6 setComponentRetriggerCountKey:v27];

    v28 = MEMORY[0x277CCACA8];
    v29 = [(MRBaseComponentHandler *)v6 componentName];
    v30 = [v28 stringWithFormat:@"lastCheckTimeFor%@", v29];
    [(MRBaseComponentHandler *)v6 setComponentLastCheckTimeKey:v30];

    v31 = MEMORY[0x277CCACA8];
    v32 = [(MRBaseComponentHandler *)v6 componentName];
    v33 = [v31 stringWithFormat:@"hasDisplayedFollowupForSHC%@", v32];
    [(MRBaseComponentHandler *)v6 setComponentHasDisplayedFollowUpKey:v33];

    v34 = MEMORY[0x277CCACA8];
    v35 = [(MRBaseComponentHandler *)v6 componentName];
    v36 = [v34 stringWithFormat:@"com.apple.mobilerepair.%@unlockchecker", v35];
    [(MRBaseComponentHandler *)v6 setComponentUnlockCheckerActivityName:v36];

    [(MRBaseComponentHandler *)v6 setComponentId:0];
    [(MRBaseComponentHandler *)v6 setNotifyServer:0];
    v37 = MEMORY[0x277CCACA8];
    v38 = [(MRBaseComponentHandler *)v6 componentName];
    v39 = [v37 stringWithFormat:@"firstUIDisplayedTimeFor%@", v38];
    [(MRBaseComponentHandler *)v6 setComponentFirstUIDisplayedTimeKey:v39];

    v40 = MEMORY[0x277CCACA8];
    v41 = [(MRBaseComponentHandler *)v6 componentName];
    v42 = [v40 stringWithFormat:@"lastKnownIDFor%@", v41];
    [(MRBaseComponentHandler *)v6 setLastKnownComponentIdentifierKey:v42];

    v43 = MEMORY[0x277D00FD0];
    v44 = [(MRBaseComponentHandler *)v6 componentName];
    v45 = [v43 copySealingManifestDataInstanceForComponent:v44];
    [(MRBaseComponentHandler *)v6 setLastKnownComponentIdentifierValue:v45];

    [(MRBaseComponentHandler *)v6 setUnlockCheckActivityRequired:0];
    v46 = [(MRBaseComponentHandler *)v6 componentName];
    v47 = dispatch_queue_create([v46 UTF8String], 0);
    [(MRSystemHealthComponentHandler *)v6 setComponentEventQueue:v47];

    v48 = [(MRBaseComponentHandler *)v6 componentName];
    v49 = [v48 stringByAppendingString:@"Failed"];
    [(MRBaseComponentHandler *)v6 setComponentStatusKey:v49];
  }

  return v6;
}

- (void)postComponentStatus:(unint64_t)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = handleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MRBaseComponentHandler *)self componentName];
    v7 = [MEMORY[0x277CCAE80] currentConnection];
    *buf = 138412802;
    v22 = v6;
    v23 = 2048;
    v24 = a3;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_247875000, v5, OS_LOG_TYPE_DEFAULT, "postComponentStatus name:%@ status:%llu connection:%@", buf, 0x20u);
  }

  v8 = [(MRBaseComponentHandler *)self componentAuthHandler];
  v9 = [v8 copyComponentStatus];

  v10 = handleForCategory(0);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9 != -3)
  {
    if (v11)
    {
      v15 = [(MRBaseComponentHandler *)self componentName];
      *buf = 138412290;
      v22 = v15;
      _os_log_impl(&dword_247875000, v10, OS_LOG_TYPE_DEFAULT, "[%@]Processing componentStatus", buf, 0xCu);
    }

    if (a3 == 2)
    {
      v16 = 1;
    }

    else
    {
      if (a3 != 1)
      {
LABEL_14:
        v13 = [(MRSystemHealthComponentHandler *)self componentEventQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __54__MRSystemHealthComponentHandler_postComponentStatus___block_invoke;
        block[3] = &unk_278EB1F28;
        block[4] = self;
        dispatch_async(v13, block);
        goto LABEL_15;
      }

      v16 = 0;
    }

    v17 = [MEMORY[0x277CBEBD0] groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird.systemhealth"];
    v18 = [(MRBaseComponentHandler *)self componentStatusKey];
    [v17 setBool:v16 forKey:v18];

    goto LABEL_14;
  }

  if (v11)
  {
    v12 = [(MRBaseComponentHandler *)self componentName];
    *buf = 138412290;
    v22 = v12;
    _os_log_impl(&dword_247875000, v10, OS_LOG_TYPE_DEFAULT, "[%@]Ignoring componentStatus for pending repair case", buf, 0xCu);
  }

  v13 = [MEMORY[0x277CBEBD0] groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird.systemhealth"];
  v14 = [(MRBaseComponentHandler *)self componentStatusKey];
  [v13 removeObjectForKey:v14];

LABEL_15:
  v19 = *MEMORY[0x277D85DE8];
}

@end