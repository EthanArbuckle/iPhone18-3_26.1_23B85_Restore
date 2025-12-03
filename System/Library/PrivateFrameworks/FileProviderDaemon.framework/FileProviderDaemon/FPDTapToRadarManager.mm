@interface FPDTapToRadarManager
- (FPDTapToRadarManager)init;
- (void)requestTapToRadarWithTitle:(id)title description:(id)description componentName:(id)name componentVersion:(id)version componentID:(int64_t)d keywords:(id)keywords attachments:(id)attachments displayReason:(id)self0 providerID:(id)self1 skipSysdiagnose:(BOOL)self2;
@end

@implementation FPDTapToRadarManager

- (FPDTapToRadarManager)init
{
  v7.receiver = self;
  v7.super_class = FPDTapToRadarManager;
  v2 = [(FPDTapToRadarManager *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.fileprovider.ttr-queue", v3);
    executionQueue = v2->_executionQueue;
    v2->_executionQueue = v4;
  }

  return v2;
}

- (void)requestTapToRadarWithTitle:(id)title description:(id)description componentName:(id)name componentVersion:(id)version componentID:(int64_t)d keywords:(id)keywords attachments:(id)attachments displayReason:(id)self0 providerID:(id)self1 skipSysdiagnose:(BOOL)self2
{
  titleCopy = title;
  descriptionCopy = description;
  nameCopy = name;
  versionCopy = version;
  keywordsCopy = keywords;
  attachmentsCopy = attachments;
  reasonCopy = reason;
  iDCopy = iD;
  if (os_variant_has_internal_content())
  {
    executionQueue = self->_executionQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __168__FPDTapToRadarManager_requestTapToRadarWithTitle_description_componentName_componentVersion_componentID_keywords_attachments_displayReason_providerID_skipSysdiagnose___block_invoke;
    block[3] = &unk_1E83C0D00;
    v36 = iDCopy;
    sysdiagnoseCopy = sysdiagnose;
    v37 = titleCopy;
    v38 = descriptionCopy;
    v39 = nameCopy;
    v40 = versionCopy;
    dCopy = d;
    v41 = keywordsCopy;
    v42 = attachmentsCopy;
    v43 = reasonCopy;
    dispatch_async(executionQueue, block);

    v27 = v36;
  }

  else
  {
    v27 = fp_current_or_default_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [FPDTapToRadarManager requestTapToRadarWithTitle:v27 description:v28 componentName:v29 componentVersion:v30 componentID:v31 keywords:v32 attachments:v33 displayReason:v34 providerID:? skipSysdiagnose:?];
    }
  }
}

void __168__FPDTapToRadarManager_requestTapToRadarWithTitle_description_componentName_componentVersion_componentID_keywords_attachments_displayReason_providerID_skipSysdiagnose___block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __168__FPDTapToRadarManager_requestTapToRadarWithTitle_description_componentName_componentVersion_componentID_keywords_attachments_displayReason_providerID_skipSysdiagnose___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  if ([*(a1 + 32) isEqualToString:@"com.box.desktop.boxfileprovider"])
  {
    v10 = &unk_1F4C62940;
  }

  else if ([*(a1 + 32) fp_isiCloudDriveIdentifier])
  {
    v10 = &unk_1F4C62958;
  }

  else
  {
    v10 = 0;
  }

  v11 = NSClassFromString(&cfstr_Radardraft.isa);
  v12 = objc_opt_new();

  if (*(a1 + 104) == 1)
  {
    [v12 setAutoDiagnostics:3];
  }

  [v12 setTitle:*(a1 + 40)];
  [v12 setProblemDescription:*(a1 + 48)];
  [v12 setClassification:2];
  [v12 setReproducibility:6];
  v13 = NSClassFromString(&cfstr_Radarcomponent.isa);
  v14 = [[v13 alloc] initWithName:*(a1 + 56) version:*(a1 + 64) identifier:*(a1 + 96)];
  [v12 setComponent:v14];

  [v12 setKeywords:*(a1 + 72)];
  [v12 setAttachments:*(a1 + 80)];
  [v12 setDeleteOnAttach:1];
  [v12 setDiagnosticExtensionIDs:v10];
  v15 = NSClassFromString(&cfstr_Taptoradarserv.isa);
  v16 = [v15 shared];
  v17 = *(a1 + 88);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __168__FPDTapToRadarManager_requestTapToRadarWithTitle_description_componentName_componentVersion_componentID_keywords_attachments_displayReason_providerID_skipSysdiagnose___block_invoke_33;
  v18[3] = &unk_1E83BDFC8;
  v19 = *(a1 + 40);
  [v16 createDraft:v12 forProcessNamed:@"FileProvider" withDisplayReason:v17 completionHandler:v18];
}

void __168__FPDTapToRadarManager_requestTapToRadarWithTitle_description_componentName_componentVersion_componentID_keywords_attachments_displayReason_providerID_skipSysdiagnose___block_invoke_33(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.fileproviderd"];
  v5 = [v4 BOOLForKey:@"reportTTRAttempts"];
  if (v5)
  {
    [v4 setObject:*(a1 + 32) forKey:@"TTRTitle"];
  }

  v6 = fp_current_or_default_log();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v3;
      _os_log_impl(&dword_1CEFC7000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] 📡  Tap to radar returned error: (%@)", &v17, 0xCu);
    }

    if (v5)
    {
      v8 = [v3 description];
      [v4 setObject:v8 forKey:@"TTRStatus"];
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __168__FPDTapToRadarManager_requestTapToRadarWithTitle_description_componentName_componentVersion_componentID_keywords_attachments_displayReason_providerID_skipSysdiagnose___block_invoke_33_cold_1(v7, v9, v10, v11, v12, v13, v14, v15);
    }

    if (v5)
    {
      [v4 setObject:@"success" forKey:@"TTRStatus"];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end