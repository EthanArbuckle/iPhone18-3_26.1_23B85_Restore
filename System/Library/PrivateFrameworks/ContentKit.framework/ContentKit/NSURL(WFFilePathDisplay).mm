@interface NSURL(WFFilePathDisplay)
- (id)wf_displayPath;
- (id)wf_displayPathComponents;
- (id)wf_localizedDisplayName;
@end

@implementation NSURL(WFFilePathDisplay)

- (id)wf_localizedDisplayName
{
  v26 = *MEMORY[0x277D85DE8];
  startAccessingSecurityScopedResource = [self startAccessingSecurityScopedResource];
  defaultManager = [MEMORY[0x277CC6408] defaultManager];
  v21 = 0;
  v4 = [defaultManager itemForURL:self error:&v21];
  v5 = v21;

  if (startAccessingSecurityScopedResource)
  {
    [self stopAccessingSecurityScopedResource];
  }

  if (v4)
  {
    providerDomainID = [v4 providerDomainID];
    if ([providerDomainID isEqualToString:@"com.apple.FileProvider.LocalStorage"])
    {
      itemIdentifier = [v4 itemIdentifier];
      v8 = [itemIdentifier isEqualToString:*MEMORY[0x277CC6348]];

      if (v8)
      {
        currentDevice = [MEMORY[0x277D79F18] currentDevice];
        localStorageDisplayName = [currentDevice localStorageDisplayName];

LABEL_17:
        v15 = v5;
        goto LABEL_19;
      }
    }

    else
    {
    }

    localStorageDisplayName = [v4 displayName];
    goto LABEL_17;
  }

  uRLByStandardizingPath = [self URLByStandardizingPath];
  v20 = 0;
  v12 = *MEMORY[0x277CBE8D0];
  v19 = 0;
  v13 = [uRLByStandardizingPath getResourceValue:&v20 forKey:v12 error:&v19];
  v14 = v20;
  v15 = v19;

  if (v13)
  {
    v16 = v14 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v17 = getWFFilesLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "[NSURL(WFFilePathDisplay) wf_localizedDisplayName]";
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_21E1BD000, v17, OS_LOG_TYPE_ERROR, "%s Could not get localized name resource from URL: %@", buf, 0x16u);
    }

    localStorageDisplayName = 0;
  }

  else
  {
    localStorageDisplayName = v14;
  }

LABEL_19:

  return localStorageDisplayName;
}

- (id)wf_displayPath
{
  wf_displayPathComponents = [self wf_displayPathComponents];
  v2 = [wf_displayPathComponents componentsJoinedByString:@"/"];

  return v2;
}

- (id)wf_displayPathComponents
{
  v23 = *MEMORY[0x277D85DE8];
  defaultManager = [getFPItemManagerClass() defaultManager];
  v18 = 0;
  v3 = [defaultManager itemForURL:self error:&v18];
  v4 = v18;

  if (v3)
  {
    v5 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v20 = __Block_byref_object_copy__16234;
    v21 = __Block_byref_object_dispose__16235;
    v22 = 0;
    defaultManager2 = [getFPItemManagerClass() defaultManager];
    itemID = [v3 itemID];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __52__NSURL_WFFilePathDisplay__wf_displayPathComponents__block_invoke;
    v15[3] = &unk_278347DA8;
    v17 = buf;
    v8 = v5;
    v16 = v8;
    [defaultManager2 fetchParentsForItemID:itemID recursively:1 completionHandler:v15];

    dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
    v9 = *(*&buf[8] + 40);
    if (v9)
    {
      reverseObjectEnumerator = [v9 reverseObjectEnumerator];
      allObjects = [reverseObjectEnumerator allObjects];
      v12 = [allObjects arrayByAddingObject:v3];

      v13 = [v12 if_map:&__block_literal_global_16236];
    }

    else
    {
      v13 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v8 = getWFFilesLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "[NSURL(WFFilePathDisplay) wf_displayPathComponents]";
      *&buf[12] = 2112;
      *&buf[14] = v4;
      _os_log_impl(&dword_21E1BD000, v8, OS_LOG_TYPE_DEFAULT, "%s Item not found when creating display components with error: %@", buf, 0x16u);
    }

    v13 = 0;
  }

  return v13;
}

@end