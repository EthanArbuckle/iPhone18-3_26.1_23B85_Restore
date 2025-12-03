@interface MRSystemHealthComponentHandler
- (MRSystemHealthComponentHandler)initWithComponentName:(id)name;
- (void)postComponentStatus:(unint64_t)status;
@end

@implementation MRSystemHealthComponentHandler

- (MRSystemHealthComponentHandler)initWithComponentName:(id)name
{
  nameCopy = name;
  v51.receiver = self;
  v51.super_class = MRSystemHealthComponentHandler;
  v5 = [(MRBaseComponentHandler *)&v51 init];
  v6 = v5;
  if (v5)
  {
    [(MRBaseComponentHandler *)v5 setComponentName:nameCopy];
    v7 = MEMORY[0x277CCACA8];
    componentName = [(MRBaseComponentHandler *)v6 componentName];
    v9 = [v7 stringWithFormat:@"SUcaseFor%@", componentName];
    [(MRBaseComponentHandler *)v6 setComponentSUCaseKey:v9];

    groupStandardUserDefaults = [MEMORY[0x277CBEBD0] groupStandardUserDefaults];
    componentSUCaseKey = [(MRBaseComponentHandler *)v6 componentSUCaseKey];
    -[MRBaseComponentHandler setIsSUCaseForComponent:](v6, "setIsSUCaseForComponent:", [groupStandardUserDefaults BOOLForKey:componentSUCaseKey]);

    [(MRBaseComponentHandler *)v6 setDisplayNotification:0];
    [(MRBaseComponentHandler *)v6 setDisplayModalPopup:[(MRBaseComponentHandler *)v6 isSUCaseForComponent]^ 1];
    v12 = MEMORY[0x277CBEBC0];
    v13 = MEMORY[0x277CCACA8];
    componentName2 = [(MRBaseComponentHandler *)v6 componentName];
    v15 = [v13 stringWithFormat:@"prefs:root=General&path=About/MAIN_PARTS_AND_SERVICE/%@", componentName2];
    v16 = [v12 URLWithString:v15];
    [(MRBaseComponentHandler *)v6 setLinkedSensitiveURL:v16];

    v17 = MEMORY[0x277CCACA8];
    componentName3 = [(MRBaseComponentHandler *)v6 componentName];
    v19 = [v17 stringWithFormat:@"com.apple.mobilerepair.%@Repair", componentName3];
    [(MRBaseComponentHandler *)v6 setComponentFollowupClientID:v19];

    componentFollowupClientID = [(MRBaseComponentHandler *)v6 componentFollowupClientID];
    v21 = [componentFollowupClientID stringByAppendingString:@"FINISH_REPAIR"];
    [(MRBaseComponentHandler *)v6 setFinishRepairKey:v21];

    v22 = MEMORY[0x277CCACA8];
    componentName4 = [(MRBaseComponentHandler *)v6 componentName];
    v24 = [v22 stringWithFormat:@"unlockCheckCountFor%@", componentName4];
    [(MRBaseComponentHandler *)v6 setComponentUnLockCheckCountKey:v24];

    v25 = MEMORY[0x277CCACA8];
    componentName5 = [(MRBaseComponentHandler *)v6 componentName];
    v27 = [v25 stringWithFormat:@"retriggerCheckCountFor%@", componentName5];
    [(MRBaseComponentHandler *)v6 setComponentRetriggerCountKey:v27];

    v28 = MEMORY[0x277CCACA8];
    componentName6 = [(MRBaseComponentHandler *)v6 componentName];
    v30 = [v28 stringWithFormat:@"lastCheckTimeFor%@", componentName6];
    [(MRBaseComponentHandler *)v6 setComponentLastCheckTimeKey:v30];

    v31 = MEMORY[0x277CCACA8];
    componentName7 = [(MRBaseComponentHandler *)v6 componentName];
    v33 = [v31 stringWithFormat:@"hasDisplayedFollowupForSHC%@", componentName7];
    [(MRBaseComponentHandler *)v6 setComponentHasDisplayedFollowUpKey:v33];

    v34 = MEMORY[0x277CCACA8];
    componentName8 = [(MRBaseComponentHandler *)v6 componentName];
    v36 = [v34 stringWithFormat:@"com.apple.mobilerepair.%@unlockchecker", componentName8];
    [(MRBaseComponentHandler *)v6 setComponentUnlockCheckerActivityName:v36];

    [(MRBaseComponentHandler *)v6 setComponentId:0];
    [(MRBaseComponentHandler *)v6 setNotifyServer:0];
    v37 = MEMORY[0x277CCACA8];
    componentName9 = [(MRBaseComponentHandler *)v6 componentName];
    v39 = [v37 stringWithFormat:@"firstUIDisplayedTimeFor%@", componentName9];
    [(MRBaseComponentHandler *)v6 setComponentFirstUIDisplayedTimeKey:v39];

    v40 = MEMORY[0x277CCACA8];
    componentName10 = [(MRBaseComponentHandler *)v6 componentName];
    v42 = [v40 stringWithFormat:@"lastKnownIDFor%@", componentName10];
    [(MRBaseComponentHandler *)v6 setLastKnownComponentIdentifierKey:v42];

    v43 = MEMORY[0x277D00FD0];
    componentName11 = [(MRBaseComponentHandler *)v6 componentName];
    v45 = [v43 copySealingManifestDataInstanceForComponent:componentName11];
    [(MRBaseComponentHandler *)v6 setLastKnownComponentIdentifierValue:v45];

    [(MRBaseComponentHandler *)v6 setUnlockCheckActivityRequired:0];
    componentName12 = [(MRBaseComponentHandler *)v6 componentName];
    v47 = dispatch_queue_create([componentName12 UTF8String], 0);
    [(MRSystemHealthComponentHandler *)v6 setComponentEventQueue:v47];

    componentName13 = [(MRBaseComponentHandler *)v6 componentName];
    v49 = [componentName13 stringByAppendingString:@"Failed"];
    [(MRBaseComponentHandler *)v6 setComponentStatusKey:v49];
  }

  return v6;
}

- (void)postComponentStatus:(unint64_t)status
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = handleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    componentName = [(MRBaseComponentHandler *)self componentName];
    currentConnection = [MEMORY[0x277CCAE80] currentConnection];
    *buf = 138412802;
    v22 = componentName;
    v23 = 2048;
    statusCopy = status;
    v25 = 2112;
    v26 = currentConnection;
    _os_log_impl(&dword_247875000, v5, OS_LOG_TYPE_DEFAULT, "postComponentStatus name:%@ status:%llu connection:%@", buf, 0x20u);
  }

  componentAuthHandler = [(MRBaseComponentHandler *)self componentAuthHandler];
  copyComponentStatus = [componentAuthHandler copyComponentStatus];

  v10 = handleForCategory(0);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (copyComponentStatus != -3)
  {
    if (v11)
    {
      componentName2 = [(MRBaseComponentHandler *)self componentName];
      *buf = 138412290;
      v22 = componentName2;
      _os_log_impl(&dword_247875000, v10, OS_LOG_TYPE_DEFAULT, "[%@]Processing componentStatus", buf, 0xCu);
    }

    if (status == 2)
    {
      v16 = 1;
    }

    else
    {
      if (status != 1)
      {
LABEL_14:
        componentEventQueue = [(MRSystemHealthComponentHandler *)self componentEventQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __54__MRSystemHealthComponentHandler_postComponentStatus___block_invoke;
        block[3] = &unk_278EB1F28;
        block[4] = self;
        dispatch_async(componentEventQueue, block);
        goto LABEL_15;
      }

      v16 = 0;
    }

    v17 = [MEMORY[0x277CBEBD0] groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird.systemhealth"];
    componentStatusKey = [(MRBaseComponentHandler *)self componentStatusKey];
    [v17 setBool:v16 forKey:componentStatusKey];

    goto LABEL_14;
  }

  if (v11)
  {
    componentName3 = [(MRBaseComponentHandler *)self componentName];
    *buf = 138412290;
    v22 = componentName3;
    _os_log_impl(&dword_247875000, v10, OS_LOG_TYPE_DEFAULT, "[%@]Ignoring componentStatus for pending repair case", buf, 0xCu);
  }

  componentEventQueue = [MEMORY[0x277CBEBD0] groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird.systemhealth"];
  componentStatusKey2 = [(MRBaseComponentHandler *)self componentStatusKey];
  [componentEventQueue removeObjectForKey:componentStatusKey2];

LABEL_15:
  v19 = *MEMORY[0x277D85DE8];
}

@end