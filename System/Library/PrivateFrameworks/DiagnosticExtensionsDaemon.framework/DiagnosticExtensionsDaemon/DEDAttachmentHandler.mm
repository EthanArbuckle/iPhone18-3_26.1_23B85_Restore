@interface DEDAttachmentHandler
- (DEDAttachmentHandler)init;
- (id)_createEmptyMessageFileForDE:(id)e extensionName:(id)name withSessionIdentifier:(id)identifier device:(id)device withRootDir:(id)dir;
- (id)_processAttachments:(id)attachments withSessionIdentifier:(id)identifier extension:(id)extension rootDir:(id)dir;
- (id)_processAttachments:(id)attachments withSessionIdentifier:(id)identifier extension:(id)extension shouldAddClassBDataProtection:(BOOL)protection rootDir:(id)dir annotatedGroup:(id)group;
- (id)collectedGroupsWithSessionIdentifier:(id)identifier matchingExtensions:(id)extensions;
- (id)createEmptyMessageFileForDE:(id)e extensionName:(id)name withSessionIdentifier:(id)identifier device:(id)device;
- (id)dedDirectory;
- (id)directoryForBugSessionIdentifier:(id)identifier;
- (id)directoryForBugSessionIdentifier:(id)identifier createIfNeeded:(BOOL)needed;
- (id)directoryForBugSessionWithIdentifier:(id)identifier extension:(id)extension rootDirectory:(id)directory createIfNeeded:(BOOL)needed;
- (id)directoryForBugSessionWithIdentifier:(id)identifier rootDirectory:(id)directory createIfNeeded:(BOOL)needed;
- (id)extensionsWithFilesAttachedToSessionWithID:(id)d allExtensions:(id)extensions;
- (id)identifierForAdoptingFile:(id)file;
- (unint64_t)directorySizeForBugSessionIdentifier:(id)identifier;
- (void)removeDEFiles:(id)files withSessionIdentifier:(id)identifier;
- (void)removeDirectoryForBugSessionIdentifier:(id)identifier;
@end

@implementation DEDAttachmentHandler

- (DEDAttachmentHandler)init
{
  v5.receiver = self;
  v5.super_class = DEDAttachmentHandler;
  v2 = [(DEDAttachmentHandler *)&v5 init];
  if (v2)
  {
    v3 = +[DEDUtils sharedLog];
    [(DEDAttachmentHandler *)v2 setLog:v3];

    [(DEDAttachmentHandler *)v2 setCompressOnAttach:0];
  }

  return v2;
}

- (id)_processAttachments:(id)attachments withSessionIdentifier:(id)identifier extension:(id)extension rootDir:(id)dir
{
  extensionCopy = extension;
  identifierCopy = identifier;
  attachmentsCopy = attachments;
  dedDirectory = [(DEDAttachmentHandler *)self dedDirectory];
  v13 = [(DEDAttachmentHandler *)self _processAttachments:attachmentsCopy withSessionIdentifier:identifierCopy extension:extensionCopy shouldAddClassBDataProtection:0 rootDir:dedDirectory];

  return v13;
}

- (id)_processAttachments:(id)attachments withSessionIdentifier:(id)identifier extension:(id)extension shouldAddClassBDataProtection:(BOOL)protection rootDir:(id)dir annotatedGroup:(id)group
{
  protectionCopy = protection;
  v102 = *MEMORY[0x277D85DE8];
  attachmentsCopy = attachments;
  identifierCopy = identifier;
  extensionCopy = extension;
  dirCopy = dir;
  groupCopy = group;
  if (!identifierCopy)
  {
    v30 = [(DEDAttachmentHandler *)self log];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      [(DEDAttachmentHandler *)v30 _processAttachments:v31 withSessionIdentifier:v32 extension:v33 shouldAddClassBDataProtection:v34 rootDir:v35 annotatedGroup:v36, v37];
    }

    v38 = 0;
    goto LABEL_49;
  }

  v72 = protectionCopy;
  v76 = extensionCopy;
  v77 = identifierCopy;
  v75 = dirCopy;
  v19 = [(DEDAttachmentHandler *)self directoryForBugSessionWithIdentifier:identifierCopy extension:extensionCopy rootDirectory:dirCopy createIfNeeded:1];
  if (groupCopy)
  {
    v20 = MEMORY[0x277D05198];
    displayName = [groupCopy displayName];
    localizedDescription = [groupCopy localizedDescription];
    iconType = [groupCopy iconType];
    additionalInfo = [groupCopy additionalInfo];
    v90 = 0;
    [v20 annotateURL:v19 displayName:displayName description:localizedDescription iconType:iconType additionalInfo:additionalInfo error:&v90];
    v25 = v90;

    v26 = +[DEDUtils sharedLog];
    v27 = v26;
    if (v25)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        lastPathComponent = [v19 lastPathComponent];
        v29 = [groupCopy description];
        *buf = 138543874;
        v97 = lastPathComponent;
        v98 = 2114;
        v99 = v29;
        v100 = 2114;
        v101 = v25;
        _os_log_error_impl(&dword_248AD7000, v27, OS_LOG_TYPE_ERROR, "Failed to annotate [%{public}@] with [%{public}@] error: [%{public}@]", buf, 0x20u);
LABEL_11:
      }
    }

    else if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      lastPathComponent = [v19 lastPathComponent];
      v29 = [groupCopy description];
      *buf = 138543618;
      v97 = lastPathComponent;
      v98 = 2114;
      v99 = v29;
      _os_log_impl(&dword_248AD7000, v27, OS_LOG_TYPE_DEFAULT, "Annotated [%{public}@] with [%{public}@]", buf, 0x16u);
      goto LABEL_11;
    }
  }

  v79 = v19;
  v73 = attachmentsCopy;
  v74 = groupCopy;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v39 = attachmentsCopy;
  v40 = [v39 countByEnumeratingWithState:&v86 objects:v95 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v87;
    do
    {
      v43 = 0;
      do
      {
        if (*v87 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v86 + 1) + 8 * v43);
        v85 = 0;
        v45 = [v44 sandboxExtensionHandleWithErrorOut:&v85];
        v46 = v85;
        if (v46)
        {
          v47 = [(DEDAttachmentHandler *)self log];
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v97 = v44;
            v98 = 2114;
            v99 = v46;
            _os_log_error_impl(&dword_248AD7000, v47, OS_LOG_TYPE_ERROR, "Failed to get sandboxing handle on item [%{public}@] with error %{public}@", buf, 0x16u);
          }
        }

        shouldCompress = [v44 shouldCompress];
        bOOLValue = [shouldCompress BOOLValue];

        if (bOOLValue)
        {
          v50 = [(DEDAttachmentHandler *)self log];
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            [DEDAttachmentHandler _processAttachments:v94 withSessionIdentifier:v44 extension:? shouldAddClassBDataProtection:? rootDir:? annotatedGroup:?];
          }
        }

        else
        {
          v50 = [MEMORY[0x277CCABB0] numberWithBool:{-[DEDAttachmentHandler compressOnAttach](self, "compressOnAttach")}];
          [v44 setShouldCompress:v50];
        }

        shouldCompress2 = [v44 shouldCompress];
        bOOLValue2 = [shouldCompress2 BOOLValue];

        if (bOOLValue2)
        {
          v53 = [(DEDAttachmentHandler *)self log];
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            path = [v44 path];
            *buf = 138412290;
            v97 = path;
            _os_log_impl(&dword_248AD7000, v53, OS_LOG_TYPE_INFO, "Will compress while attaching [%@]", buf, 0xCu);
          }
        }

        v55 = [v44 attachToDestinationDir:v79];

        ++v43;
      }

      while (v41 != v43);
      v41 = [v39 countByEnumeratingWithState:&v86 objects:v95 count:16];
    }

    while (v41);
  }

  if (!v72)
  {
    goto LABEL_48;
  }

  v56 = [(DEDAttachmentHandler *)self log];
  extensionCopy = v76;
  identifierCopy = v77;
  groupCopy = v74;
  dirCopy = v75;
  v30 = v79;
  if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v97 = v79;
    _os_log_impl(&dword_248AD7000, v56, OS_LOG_TYPE_INFO, "Setting NSURLFileProtectionKey on [%{public}@]", buf, 0xCu);
  }

  v57 = [MEMORY[0x277D051E0] enumeratorForAllItems:v79];
  if (v57)
  {
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    obj = v57;
    v58 = [obj countByEnumeratingWithState:&v81 objects:v93 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v82;
      v61 = *MEMORY[0x277CBE7F8];
      v62 = *MEMORY[0x277CBE7E8];
      do
      {
        v63 = 0;
        do
        {
          if (*v82 != v60)
          {
            objc_enumerationMutation(obj);
          }

          v64 = *(*(&v81 + 1) + 8 * v63);
          v65 = objc_autoreleasePoolPush();
          v91 = v61;
          v92 = v62;
          v66 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
          v80 = 0;
          [v64 setResourceValues:v66 error:&v80];
          v67 = v80;

          if (v67)
          {
            v68 = [(DEDAttachmentHandler *)self log];
            if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v97 = v79;
              _os_log_error_impl(&dword_248AD7000, v68, OS_LOG_TYPE_ERROR, "Failed to set ProtectionCompleteUnlessOpen on [%{public}@]", buf, 0xCu);
            }
          }

          objc_autoreleasePoolPop(v65);
          ++v63;
        }

        while (v59 != v63);
        v59 = [obj countByEnumeratingWithState:&v81 objects:v93 count:16];
      }

      while (v59);
    }

LABEL_48:
    v30 = v79;
    v38 = v30;
    attachmentsCopy = v73;
    groupCopy = v74;
    extensionCopy = v76;
    identifierCopy = v77;
    dirCopy = v75;
    goto LABEL_49;
  }

  v71 = [(DEDAttachmentHandler *)self log];
  if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
  {
    [DEDAttachmentHandler _processAttachments:withSessionIdentifier:extension:shouldAddClassBDataProtection:rootDir:annotatedGroup:];
  }

  v38 = 0;
  attachmentsCopy = v73;
LABEL_49:

  v69 = *MEMORY[0x277D85DE8];

  return v38;
}

- (void)removeDEFiles:(id)files withSessionIdentifier:(id)identifier
{
  filesCopy = files;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    dedDirectory = [(DEDAttachmentHandler *)self dedDirectory];
    v9 = [(DEDAttachmentHandler *)self directoryForBugSessionWithIdentifier:identifierCopy extension:filesCopy rootDirectory:dedDirectory createIfNeeded:0];

    if (v9)
    {
      [MEMORY[0x277D051E0] removeFile:v9];
    }

    else
    {
      v17 = [(DEDAttachmentHandler *)self log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [DEDAttachmentHandler removeDEFiles:withSessionIdentifier:];
      }
    }
  }

  else
  {
    v9 = [(DEDAttachmentHandler *)self log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(DEDAttachmentHandler *)v9 removeDEFiles:v10 withSessionIdentifier:v11, v12, v13, v14, v15, v16];
    }
  }
}

- (id)extensionsWithFilesAttachedToSessionWithID:(id)d allExtensions:(id)extensions
{
  extensionsCopy = extensions;
  if (d)
  {
    v7 = [(DEDAttachmentHandler *)self directoryForBugSessionIdentifier:d];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [v7 path];
    v10 = [defaultManager fileExistsAtPath:path];

    if (v10)
    {
      if ([extensionsCopy count])
      {
        v11 = [MEMORY[0x277D051E0] lsDir:v7];
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __81__DEDAttachmentHandler_extensionsWithFilesAttachedToSessionWithID_allExtensions___block_invoke;
        v35[3] = &unk_278F65308;
        v35[4] = self;
        v36 = extensionsCopy;
        v12 = [v11 ded_mapWithBlock:v35];

LABEL_13:
        goto LABEL_14;
      }

      v11 = [(DEDAttachmentHandler *)self log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(DEDAttachmentHandler *)v11 extensionsWithFilesAttachedToSessionWithID:v27 allExtensions:v28, v29, v30, v31, v32, v33];
      }
    }

    else
    {
      v11 = [(DEDAttachmentHandler *)self log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(DEDAttachmentHandler *)v11 extensionsWithFilesAttachedToSessionWithID:v20 allExtensions:v21, v22, v23, v24, v25, v26];
      }
    }

    v12 = MEMORY[0x277CBEBF8];
    goto LABEL_13;
  }

  v7 = [(DEDAttachmentHandler *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [(DEDAttachmentHandler *)v7 extensionsWithFilesAttachedToSessionWithID:v13 allExtensions:v14, v15, v16, v17, v18, v19];
  }

  v12 = MEMORY[0x277CBEBF8];
LABEL_14:

  return v12;
}

id __81__DEDAttachmentHandler_extensionsWithFilesAttachedToSessionWithID_allExtensions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __81__DEDAttachmentHandler_extensionsWithFilesAttachedToSessionWithID_allExtensions___block_invoke_cold_1();
  }

  v5 = [v3 lastPathComponent];
  v6 = [[DEDExtensionIdentifier alloc] initWithString:v5];
  v7 = [(DEDExtensionIdentifier *)v6 extensionIdentifier];
  v8 = *(a1 + 40);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__DEDAttachmentHandler_extensionsWithFilesAttachedToSessionWithID_allExtensions___block_invoke_25;
  v15[3] = &unk_278F652E0;
  v9 = v7;
  v16 = v9;
  v10 = [v8 ded_findWithBlock:v15];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v13 = [*(a1 + 32) log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __81__DEDAttachmentHandler_extensionsWithFilesAttachedToSessionWithID_allExtensions___block_invoke_cold_2();
    }
  }

  return v11;
}

uint64_t __81__DEDAttachmentHandler_extensionsWithFilesAttachedToSessionWithID_allExtensions___block_invoke_25(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)collectedGroupsWithSessionIdentifier:(id)identifier matchingExtensions:(id)extensions
{
  v59 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  if (!identifier)
  {
    v6 = [(DEDAttachmentHandler *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(DEDAttachmentHandler *)v6 collectedGroupsWithSessionIdentifier:v31 matchingExtensions:v32, v33, v34, v35, v36, v37];
    }

    goto LABEL_30;
  }

  v6 = [(DEDAttachmentHandler *)self directoryForBugSessionIdentifier:identifier];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v6 path];
  v9 = [defaultManager fileExistsAtPath:path];

  if (!v9)
  {
LABEL_30:
    v30 = MEMORY[0x277CBEBF8];
    goto LABEL_35;
  }

  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
  if ([extensionsCopy count])
  {
    v43 = +[DEDDevice currentDevice];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v40 = v6;
    obj = [MEMORY[0x277D051E0] lsDir:v6];
    v47 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
    if (v47)
    {
      v45 = *v52;
      v42 = v10;
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v52 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v51 + 1) + 8 * i);
          v13 = [(DEDAttachmentHandler *)self log];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v57 = v12;
            _os_log_debug_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEBUG, "inspecting DE dir %@", buf, 0xCu);
          }

          lastPathComponent = [v12 lastPathComponent];
          v15 = [[DEDExtensionIdentifier alloc] initWithString:lastPathComponent];
          extensionIdentifier = [(DEDExtensionIdentifier *)v15 extensionIdentifier];
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __80__DEDAttachmentHandler_collectedGroupsWithSessionIdentifier_matchingExtensions___block_invoke;
          v49[3] = &unk_278F652E0;
          v17 = extensionIdentifier;
          v50 = v17;
          v18 = [extensionsCopy ded_findWithBlock:v49];
          v19 = v18;
          if (v18)
          {
            v48 = lastPathComponent;
            name = [v18 name];
            v21 = name;
            if (name)
            {
              v22 = name;
            }

            else
            {
              v22 = v17;
            }

            v23 = v22;

            v44 = v12;
            v24 = [MEMORY[0x277D051B0] createWithName:v23 rootURL:v12];
            identifier = [v19 identifier];
            v26 = [DEDAttachmentGroup groupWithDEGroup:v24 identifier:identifier];

            identifier2 = [v43 identifier];
            [v26 setDeviceID:identifier2];

            v28 = [(DEDAttachmentHandler *)self log];
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v57 = v26;
              _os_log_debug_impl(&dword_248AD7000, v28, OS_LOG_TYPE_DEBUG, "created group %@", buf, 0xCu);
            }

            if (v26)
            {
              v10 = v42;
              [v42 addObject:v26];
            }

            else
            {
              v29 = [(DEDAttachmentHandler *)self log];
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                [DEDAttachmentHandler collectedGroupsWithSessionIdentifier:v55 matchingExtensions:v44];
              }

              v10 = v42;
            }

            lastPathComponent = v48;
          }

          else
          {
            v23 = [(DEDAttachmentHandler *)self log];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v57 = v12;
              _os_log_error_impl(&dword_248AD7000, v23, OS_LOG_TYPE_ERROR, "could not match de directory [%{public}@] to known extensions", buf, 0xCu);
            }
          }
        }

        v47 = [obj countByEnumeratingWithState:&v51 objects:v58 count:16];
      }

      while (v47);
    }

    v30 = [MEMORY[0x277CBEA60] arrayWithArray:v10];
    v6 = v40;
  }

  else
  {
    v43 = [(DEDAttachmentHandler *)self log];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      [DEDAttachmentHandler collectedGroupsWithSessionIdentifier:matchingExtensions:];
    }

    v30 = MEMORY[0x277CBEBF8];
  }

LABEL_35:
  v38 = *MEMORY[0x277D85DE8];

  return v30;
}

uint64_t __80__DEDAttachmentHandler_collectedGroupsWithSessionIdentifier_matchingExtensions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)createEmptyMessageFileForDE:(id)e extensionName:(id)name withSessionIdentifier:(id)identifier device:(id)device
{
  deviceCopy = device;
  identifierCopy = identifier;
  nameCopy = name;
  eCopy = e;
  dedDirectory = [(DEDAttachmentHandler *)self dedDirectory];
  v15 = [(DEDAttachmentHandler *)self _createEmptyMessageFileForDE:eCopy extensionName:nameCopy withSessionIdentifier:identifierCopy device:deviceCopy withRootDir:dedDirectory];

  return v15;
}

- (id)_createEmptyMessageFileForDE:(id)e extensionName:(id)name withSessionIdentifier:(id)identifier device:(id)device withRootDir:(id)dir
{
  eCopy = e;
  identifierCopy = identifier;
  deviceCopy = device;
  dirCopy = dir;
  if (identifierCopy)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = [name stringByReplacingOccurrencesOfString:@" " withString:@"_"];
    v18 = [v16 stringWithFormat:@"EMPTY_%@.txt", v17];

    v19 = MEMORY[0x277CCA968];
    date = [MEMORY[0x277CBEAA8] date];
    v21 = [v19 localizedStringFromDate:date dateStyle:3 timeStyle:3];

    v22 = MEMORY[0x277CCACA8];
    publicLogDescription = [deviceCopy publicLogDescription];
    build = [deviceCopy build];
    v25 = [v22 stringWithFormat:@"Diagnostic Extension [%@] ran on [%@] with build [%@] on [%@] and returned no files.", eCopy, publicLogDescription, build, v21];

    v26 = [(DEDAttachmentHandler *)self directoryForBugSessionWithIdentifier:identifierCopy extension:eCopy rootDirectory:dirCopy createIfNeeded:1];
    v27 = [v26 URLByAppendingPathComponent:v18];
    path = [v27 path];
    [v25 writeToFile:path atomically:1 encoding:4 error:0];
  }

  else
  {
    v29 = [(DEDAttachmentHandler *)self log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      [(DEDAttachmentHandler *)v29 _createEmptyMessageFileForDE:v30 extensionName:v31 withSessionIdentifier:v32 device:v33 withRootDir:v34, v35, v36];
    }

    v26 = [MEMORY[0x277CBEBC0] URLWithString:@"/"];
  }

  return v26;
}

- (id)directoryForBugSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    dedDirectory = [(DEDAttachmentHandler *)self dedDirectory];
    v6 = [dedDirectory URLByAppendingPathComponent:identifierCopy];
  }

  else
  {
    v7 = [(DEDAttachmentHandler *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [(DEDAttachmentHandler *)v7 directoryForBugSessionIdentifier:v8, v9, v10, v11, v12, v13, v14];
    }

    v6 = 0;
  }

  return v6;
}

- (id)directoryForBugSessionIdentifier:(id)identifier createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = [(DEDAttachmentHandler *)self directoryForBugSessionIdentifier:identifierCopy];
  if (!neededCopy)
  {
LABEL_12:
    v16 = v7;
    goto LABEL_13;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v7 path];
  v10 = [defaultManager fileExistsAtPath:path];

  v11 = [(DEDAttachmentHandler *)self log];
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [DEDAttachmentHandler directoryForBugSessionIdentifier:createIfNeeded:];
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138543362;
    v20 = identifierCopy;
    _os_log_impl(&dword_248AD7000, v12, OS_LOG_TYPE_DEFAULT, "Bug session directory for session: [%{public}@] does not exist. Creating now", &v19, 0xCu);
  }

  v13 = [MEMORY[0x277D051E0] createDirectoryWithClassCDataProtection:v7];
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = v13;
  v15 = [(DEDAttachmentHandler *)self log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [DEDAttachmentHandler directoryForBugSessionIdentifier:createIfNeeded:];
  }

  v16 = 0;
LABEL_13:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)removeDirectoryForBugSessionIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [(DEDAttachmentHandler *)self log];
  v6 = v5;
  if (identifierCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = identifierCopy;
      _os_log_impl(&dword_248AD7000, v6, OS_LOG_TYPE_DEFAULT, "removing bug session directory [%{public}@]", &v18, 0xCu);
    }

    v6 = [(DEDAttachmentHandler *)self directoryForBugSessionIdentifier:identifierCopy];
    if (v6)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      path = [v6 path];
      v9 = [defaultManager fileExistsAtPath:path];

      if (v9)
      {
        [MEMORY[0x277D051E0] removeFile:v6];
      }
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [(DEDAttachmentHandler *)v6 removeDirectoryForBugSessionIdentifier:v10, v11, v12, v13, v14, v15, v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (unint64_t)directorySizeForBugSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v5 = [(DEDAttachmentHandler *)self log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(DEDAttachmentHandler *)v5 directorySizeForBugSessionIdentifier:v7, v8, v9, v10, v11, v12, v13];
    }

    goto LABEL_9;
  }

  v5 = [(DEDAttachmentHandler *)self directoryForBugSessionIdentifier:identifierCopy];
  if (!v5)
  {
    v14 = [(DEDAttachmentHandler *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [DEDAttachmentHandler directorySizeForBugSessionIdentifier:];
    }

LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  v6 = [MEMORY[0x277D051E0] getDirectorySize:v5];
LABEL_10:

  return v6;
}

- (id)identifierForAdoptingFile:(id)file
{
  lastPathComponent = [file lastPathComponent];
  v4 = [lastPathComponent stringByReplacingOccurrencesOfString:@"." withString:@"_"];

  return v4;
}

- (id)dedDirectory
{
  if (dedDirectory_onceToken != -1)
  {
    [DEDAttachmentHandler dedDirectory];
  }

  v3 = dedDirectory_dedDirectory;

  return v3;
}

void __36__DEDAttachmentHandler_dedDirectory__block_invoke()
{
  v0 = +[DEDConfiguration sharedInstance];
  v1 = [v0 dedDirectory];
  v2 = dedDirectory_dedDirectory;
  dedDirectory_dedDirectory = v1;

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [dedDirectory_dedDirectory path];
  v5 = [v3 fileExistsAtPath:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x277D051E0] createDirectoryWithClassCDataProtection:dedDirectory_dedDirectory];
  }
}

- (id)directoryForBugSessionWithIdentifier:(id)identifier rootDirectory:(id)directory createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  directoryCopy = directory;
  if (identifierCopy)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v11 = [directoryCopy URLByAppendingPathComponent:identifierCopy];
    path = [v11 path];
    v13 = [defaultManager fileExistsAtPath:path];

    if (neededCopy)
    {
      v14 = [(DEDAttachmentHandler *)self log];
      v15 = v14;
      if (v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          [DEDAttachmentHandler directoryForBugSessionWithIdentifier:rootDirectory:createIfNeeded:];
        }
      }

      else
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v27 = 138543362;
          v28 = v11;
          _os_log_impl(&dword_248AD7000, v15, OS_LOG_TYPE_INFO, "creating bug session directory: [%{public}@]", &v27, 0xCu);
        }

        v15 = [MEMORY[0x277D051E0] createDirectoryWithClassCDataProtection:v11];
        if (v15)
        {
          v24 = [(DEDAttachmentHandler *)self log];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [DEDAttachmentHandler directoryForBugSessionWithIdentifier:v15 rootDirectory:v24 createIfNeeded:?];
          }
        }
      }
    }
  }

  else
  {
    v16 = [(DEDAttachmentHandler *)self log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [(DEDAttachmentHandler *)v16 directoryForBugSessionWithIdentifier:v17 rootDirectory:v18 createIfNeeded:v19, v20, v21, v22, v23];
    }

    v11 = [MEMORY[0x277CBEBC0] URLWithString:@"/"];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)directoryForBugSessionWithIdentifier:(id)identifier extension:(id)extension rootDirectory:(id)directory createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  extensionCopy = extension;
  directoryCopy = directory;
  if (identifierCopy)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v14 = [directoryCopy URLByAppendingPathComponent:identifierCopy];
    v15 = [v14 URLByAppendingPathComponent:extensionCopy];
    path = [v15 path];
    v17 = [defaultManager fileExistsAtPath:path];

    v18 = [(DEDAttachmentHandler *)self log];
    v19 = v18;
    if ((v17 & 1) != 0 || !neededCopy)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [DEDAttachmentHandler directoryForBugSessionWithIdentifier:identifierCopy extension:v15 rootDirectory:v19 createIfNeeded:?];
      }
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v30 = 138543362;
        v31 = v15;
        _os_log_impl(&dword_248AD7000, v19, OS_LOG_TYPE_INFO, "creating extension directory: [%{public}@]", &v30, 0xCu);
      }

      v19 = [MEMORY[0x277D051E0] createDirectoryWithClassCDataProtection:v15];
      if (v19)
      {
        v20 = [(DEDAttachmentHandler *)self log];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [DEDAttachmentHandler directoryForBugSessionWithIdentifier:v15 extension:v19 rootDirectory:v20 createIfNeeded:?];
        }
      }
    }
  }

  else
  {
    defaultManager = [(DEDAttachmentHandler *)self log];
    if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_FAULT))
    {
      [(DEDAttachmentHandler *)defaultManager directoryForBugSessionWithIdentifier:v21 extension:v22 rootDirectory:v23 createIfNeeded:v24, v25, v26, v27];
    }

    v15 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)_processAttachments:(uint64_t)a1 withSessionIdentifier:(uint64_t)a2 extension:shouldAddClassBDataProtection:rootDir:annotatedGroup:.cold.1(uint64_t a1, uint64_t a2)
{
  v5 = [OUTLINED_FUNCTION_3(a1 a2)];
  *v4 = 138412290;
  *v3 = v5;
  _os_log_debug_impl(&dword_248AD7000, v2, OS_LOG_TYPE_DEBUG, "shouldCompress = YES for [%@]", v4, 0xCu);
}

- (void)_processAttachments:withSessionIdentifier:extension:shouldAddClassBDataProtection:rootDir:annotatedGroup:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, v0, v1, "Could not create enumerator for dir [%{public}@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_processAttachments:(uint64_t)a3 withSessionIdentifier:(uint64_t)a4 extension:(uint64_t)a5 shouldAddClassBDataProtection:(uint64_t)a6 rootDir:(uint64_t)a7 annotatedGroup:(uint64_t)a8 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_248AD7000, a1, a3, "[%{public}s] nil bug session identifier", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeDEFiles:(uint64_t)a3 withSessionIdentifier:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_248AD7000, a1, a3, "[%{public}s] nil bug session identifier", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)extensionsWithFilesAttachedToSessionWithID:(uint64_t)a3 allExtensions:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, a1, a3, "[%{public}s] found no session directory.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)extensionsWithFilesAttachedToSessionWithID:(uint64_t)a3 allExtensions:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, a1, a3, "[%{public}s] received no extensions.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)extensionsWithFilesAttachedToSessionWithID:(uint64_t)a3 allExtensions:(uint64_t)a4 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_248AD7000, a1, a3, "[%{public}s] nil bug session identifier", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __81__DEDAttachmentHandler_extensionsWithFilesAttachedToSessionWithID_allExtensions___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_248AD7000, v0, OS_LOG_TYPE_DEBUG, "Inspecting DE dir %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __81__DEDAttachmentHandler_extensionsWithFilesAttachedToSessionWithID_allExtensions___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, v0, v1, "could not match de directory [%{public}@] to known extensions", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)collectedGroupsWithSessionIdentifier:(uint64_t)a1 matchingExtensions:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v5 = [OUTLINED_FUNCTION_3(a1 a2)];
  *v4 = 138543362;
  *v3 = v5;
  _os_log_error_impl(&dword_248AD7000, v2, OS_LOG_TYPE_ERROR, "could not create ded group from de dir [%{public}@]", v4, 0xCu);
}

- (void)collectedGroupsWithSessionIdentifier:(uint64_t)a3 matchingExtensions:(uint64_t)a4 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_248AD7000, a1, a3, "[%{public}s] nil bug session identifier", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_createEmptyMessageFileForDE:(uint64_t)a3 extensionName:(uint64_t)a4 withSessionIdentifier:(uint64_t)a5 device:(uint64_t)a6 withRootDir:(uint64_t)a7 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_248AD7000, a1, a3, "[%{public}s] nil bug session identifier", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)directoryForBugSessionIdentifier:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_248AD7000, a1, a3, "[%{public}s] nil bug session identifier", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)directoryForBugSessionIdentifier:createIfNeeded:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, v0, v1, "Could not create bug session directory with error: [%{public}@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeDirectoryForBugSessionIdentifier:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_248AD7000, a1, a3, "[%{public}s] nil bug session identifier", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)directorySizeForBugSessionIdentifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0(&dword_248AD7000, v0, v1, "Failed to get directory for bug session [%{public}@]", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)directorySizeForBugSessionIdentifier:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_248AD7000, a1, a3, "[%{public}s] nil bug session identifier", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)directoryForBugSessionWithIdentifier:(void *)a1 rootDirectory:(NSObject *)a2 createIfNeeded:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "could not create bug session directory with error: [%{public}@]", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)directoryForBugSessionWithIdentifier:(uint64_t)a3 rootDirectory:(uint64_t)a4 createIfNeeded:(uint64_t)a5 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_248AD7000, a1, a3, "[%{public}s] nil bug session identifier", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)directoryForBugSessionWithIdentifier:(NSObject *)a3 extension:rootDirectory:createIfNeeded:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [a1 path];
  v6 = [a2 localizedDescription];
  v8 = 138412546;
  v9 = v5;
  v10 = 2114;
  v11 = v6;
  _os_log_error_impl(&dword_248AD7000, a3, OS_LOG_TYPE_ERROR, "could not create extension directory (%@) with error: [%{public}@]", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)directoryForBugSessionWithIdentifier:(NSObject *)a3 extension:rootDirectory:createIfNeeded:.cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a2 path];
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_248AD7000, a3, OS_LOG_TYPE_DEBUG, "extension directory for session (%@) already exists: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)directoryForBugSessionWithIdentifier:(uint64_t)a3 extension:(uint64_t)a4 rootDirectory:(uint64_t)a5 createIfNeeded:(uint64_t)a6 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_248AD7000, a1, a3, "[%{public}s] nil bug session identifier", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end