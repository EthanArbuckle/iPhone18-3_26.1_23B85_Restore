@interface WFArchiveVerifier
+ (BOOL)checkArchiveForDisallowedContent:(id)content error:(id *)error;
+ (BOOL)isFileAtURLShellConfiguration:(id)configuration;
@end

@implementation WFArchiveVerifier

+ (BOOL)isFileAtURLShellConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (isFileAtURLShellConfiguration__onceToken != -1)
  {
    dispatch_once(&isFileAtURLShellConfiguration__onceToken, &__block_literal_global_911);
  }

  wf_realHomeDirectoryURL = [MEMORY[0x277CBEBC0] wf_realHomeDirectoryURL];
  lastPathComponent = [configurationCopy lastPathComponent];
  lowercaseString = [lastPathComponent lowercaseString];

  if ([isFileAtURLShellConfiguration__configurationFileNames containsObject:lowercaseString] && (objc_msgSend(configurationCopy, "URLByDeletingLastPathComponent"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqual:", wf_realHomeDirectoryURL), v7, (v8 & 1) != 0))
  {
    v9 = 1;
  }

  else if ([isFileAtURLShellConfiguration__zShellConfigurationFileNames containsObject:lowercaseString])
  {
    v10 = getenv("ZDOTDIR");
    if (v10)
    {
      v11 = MEMORY[0x277CBEBC0];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
      v13 = [v11 fileURLWithPath:v12];
    }

    else
    {
      v13 = wf_realHomeDirectoryURL;
    }

    uRLByDeletingLastPathComponent = [configurationCopy URLByDeletingLastPathComponent];
    uRLByStandardizingPath = [uRLByDeletingLastPathComponent URLByStandardizingPath];
    v9 = [uRLByStandardizingPath isEqual:wf_realHomeDirectoryURL];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __51__WFArchiveVerifier_isFileAtURLShellConfiguration___block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithArray:&unk_282F7BE18];
  v1 = isFileAtURLShellConfiguration__configurationFileNames;
  isFileAtURLShellConfiguration__configurationFileNames = v0;

  isFileAtURLShellConfiguration__zShellConfigurationFileNames = [MEMORY[0x277CBEB98] setWithArray:&unk_282F7BE30];

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)checkArchiveForDisallowedContent:(id)content error:(id *)error
{
  v56[1] = *MEMORY[0x277D85DE8];
  contentCopy = content;
  v51 = 0;
  v7 = [[WFArchiveReader alloc] initWithArchiveFile:contentCopy error:&v51];
  v8 = v51;
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v50 = 0;
    v15 = [(WFArchiveReader *)v7 enumerateArchiveFilePathsWithError:&v50];
    v16 = v50;
    v13 = v16;
    if (v15)
    {
      v44 = v16;
      v45 = v15;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v17 = v15;
      v18 = [v17 countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v18)
      {
        v19 = v18;
        v41 = v9;
        v42 = v7;
        v43 = contentCopy;
        v20 = *v47;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v47 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v46 + 1) + 8 * i);
            v23 = getWFActionsLogObject();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              *&buf[4] = "+[WFArchiveVerifier checkArchiveForDisallowedContent:error:]";
              v54 = 2112;
              v55 = v22;
              _os_log_impl(&dword_21E1BD000, v23, OS_LOG_TYPE_DEBUG, "%s Inspecting filePath: %@", buf, 0x16u);
            }

            v24 = objc_alloc(MEMORY[0x277CBEBC0]);
            wf_realHomeDirectoryURL = [MEMORY[0x277CBEBC0] wf_realHomeDirectoryURL];
            v26 = [v24 initFileURLWithPath:v22 relativeToURL:wf_realHomeDirectoryURL];

            if ([self isFileAtURLShellConfiguration:v26])
            {
              contentCopy = v43;
              v13 = v44;
              if (error)
              {
                v28 = WFLocalizedString(@"The shortcut was prevented from running because it tried to process an archive containing shell configuration files which could damage the device.");
                v29 = v28;
                if (v28)
                {
                  v56[0] = *MEMORY[0x277CCA450];
                  *buf = v28;
                  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v56 count:1];
                }

                else
                {
                  v30 = 0;
                }

                v36 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"WFArchiveVerifierErrorDomain" code:3 userInfo:v30];

                v37 = v36;
                *error = v36;
              }

              v27 = 0;
              v9 = v41;
              v7 = v42;
              goto LABEL_41;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v46 objects:v52 count:16];
          v27 = 1;
          if (v19)
          {
            continue;
          }

          break;
        }

        v7 = v42;
        contentCopy = v43;
        v9 = v41;
      }

      else
      {
        v27 = 1;
      }

      v13 = v44;
    }

    else
    {
      v31 = getWFActionsLogObject();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "+[WFArchiveVerifier checkArchiveForDisallowedContent:error:]";
        v54 = 2112;
        v55 = v13;
        _os_log_impl(&dword_21E1BD000, v31, OS_LOG_TYPE_ERROR, "%s Failed to enumerate filePaths in archive: %@", buf, 0x16u);
      }

      if (!error)
      {
        v27 = 0;
LABEL_42:

LABEL_43:
        goto LABEL_44;
      }

      v45 = 0;
      v32 = WFLocalizedString(@"The shortcut was prevented from running because an internal error occurred during the archive extraction. Check that the archive file is not corrupted and try again.");
      v17 = v32;
      if (v32)
      {
        v56[0] = *MEMORY[0x277CCA450];
        *buf = v32;
        v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v56 count:1];
      }

      else
      {
        v33 = 0;
      }

      v38 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"WFArchiveVerifierErrorDomain" code:2 userInfo:v33];

      v39 = v38;
      v27 = 0;
      *error = v38;
    }

LABEL_41:

    v15 = v45;
    goto LABEL_42;
  }

  v11 = getWFActionsLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "+[WFArchiveVerifier checkArchiveForDisallowedContent:error:]";
    v54 = 2112;
    v55 = v9;
    _os_log_impl(&dword_21E1BD000, v11, OS_LOG_TYPE_ERROR, "%s WFArchiveReader init failed with %@", buf, 0x16u);
  }

  if (error)
  {
    v12 = WFLocalizedString(@"The shortcut was prevented from running because because a library error occurred while attempting to verify its contents. Check that the archive file is not corrupted and try again.");
    v13 = v12;
    if (v12)
    {
      v56[0] = *MEMORY[0x277CCA450];
      *buf = v12;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v56 count:1];
    }

    else
    {
      v14 = 0;
    }

    v34 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"WFArchiveVerifierErrorDomain" code:1 userInfo:v14];

    v35 = v34;
    v27 = 0;
    *error = v34;
    goto LABEL_43;
  }

  v27 = 0;
LABEL_44:

  return v27;
}

@end