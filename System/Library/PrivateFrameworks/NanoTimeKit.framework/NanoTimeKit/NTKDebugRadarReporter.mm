@interface NTKDebugRadarReporter
+ (BOOL)_archiveDirectory:(id)directory toFile:(id)file;
- (BOOL)addAttachmentAtURL:(id)l error:(id *)error;
- (BOOL)present;
- (NTKDebugRadarReporter)initWithRadarTitle:(id)title alertTitle:(id)alertTitle alertMessage:(id)message;
- (void)appendInformationToDescription:(id)description;
@end

@implementation NTKDebugRadarReporter

+ (BOOL)_archiveDirectory:(id)directory toFile:(id)file
{
  v18[1] = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  fileCopy = file;
  BOMCopierNew();
  v17 = @"createPKZip";
  v18[0] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  [directoryCopy fileSystemRepresentation];
  [fileCopy fileSystemRepresentation];
  v8 = BOMCopierCopyWithOptions();
  BOMCopierFree();
  if (v8)
  {
    v9 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412802;
      v12 = directoryCopy;
      v13 = 2112;
      v14 = fileCopy;
      v15 = 2048;
      v16 = v8;
      _os_log_error_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_ERROR, "Arching %@ to %@ failed %ld", &v11, 0x20u);
    }
  }

  return v8 == 0;
}

- (NTKDebugRadarReporter)initWithRadarTitle:(id)title alertTitle:(id)alertTitle alertMessage:(id)message
{
  titleCopy = title;
  alertTitleCopy = alertTitle;
  messageCopy = message;
  v36.receiver = self;
  v36.super_class = NTKDebugRadarReporter;
  v11 = [(NTKDebugRadarReporter *)&v36 init];
  v13 = v11;
  if (v11)
  {
    if (NTKInternalBuild(v11, v12))
    {
      v14 = [titleCopy copy];
      radarTitle = v13->_radarTitle;
      v13->_radarTitle = v14;

      v16 = [alertTitleCopy copy];
      alertTitle = v13->_alertTitle;
      v13->_alertTitle = v16;

      v35[1] = &v37;
      v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:messageCopy arguments:&v37];
      alertMessage = v13->_alertMessage;
      v13->_alertMessage = v18;

      array = [MEMORY[0x277CBEB18] array];
      attachmentURLs = v13->_attachmentURLs;
      v13->_attachmentURLs = array;

      array2 = [MEMORY[0x277CBEB18] array];
      additionalInformationStrings = v13->_additionalInformationStrings;
      v13->_additionalInformationStrings = array2;

      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];

      v26 = NSTemporaryDirectory();
      v27 = [v26 stringByAppendingPathComponent:uUIDString];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v35[0] = 0;
      v29 = [defaultManager createDirectoryAtPath:v27 withIntermediateDirectories:1 attributes:0 error:v35];
      v30 = v35[0];

      if (v29)
      {
        v31 = [MEMORY[0x277CBEBC0] fileURLWithPath:v27];
      }

      else
      {
        v32 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [NTKDebugRadarReporter initWithRadarTitle:alertTitle:alertMessage:];
        }

        v31 = 0;
      }

      temporaryDirectoryURLToCleanup = v13->_temporaryDirectoryURLToCleanup;
      v13->_temporaryDirectoryURLToCleanup = v31;
    }

    else
    {
      uUIDString = _NTKLoggingObjectForDomain(51, "NTKLoggingDomainRadarReporter");
      if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_ERROR))
      {
        [NTKDebugRadarReporter initWithRadarTitle:uUIDString alertTitle:? alertMessage:?];
      }
    }
  }

  return v13;
}

- (BOOL)addAttachmentAtURL:(id)l error:(id *)error
{
  v54[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (NTKInternalBuild(lCopy, v7))
  {
    v8 = *MEMORY[0x277CBE818];
    v54[0] = *MEMORY[0x277CBE818];
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:1];
    v45 = 0;
    v10 = [lCopy resourceValuesForKeys:v9 error:&v45];
    v11 = v45;

    if (v10)
    {
      v12 = [v10 objectForKeyedSubscript:v8];
      v13 = [v12 isEqualToString:*MEMORY[0x277CBE820]];

      if (v13)
      {
        temporaryDirectoryURLToCleanup = [(NTKDebugRadarReporter *)self temporaryDirectoryURLToCleanup];
        lastPathComponent = [lCopy lastPathComponent];
        v16 = [temporaryDirectoryURLToCleanup URLByAppendingPathComponent:lastPathComponent];

        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v44 = 0;
        v18 = [defaultManager copyItemAtURL:lCopy toURL:v16 error:&v44];
        path = v44;

        if (v18)
        {
          attachmentURLs = [(NTKDebugRadarReporter *)self attachmentURLs];
          [attachmentURLs addObject:v16];
        }

        else
        {
          attachmentURLs = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
          if (os_log_type_enabled(attachmentURLs, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v49 = lCopy;
            v50 = 2112;
            v51 = v16;
            v52 = 2112;
            v53 = path;
            _os_log_error_impl(&dword_22D9C5000, attachmentURLs, OS_LOG_TYPE_ERROR, "Couldn't copy attachment %@ to %@ - %@", buf, 0x20u);
          }
        }

LABEL_23:
        goto LABEL_24;
      }

      v31 = [v10 objectForKeyedSubscript:v8];
      v32 = [v31 isEqualToString:*MEMORY[0x277CBE810]];

      if (v32)
      {
        temporaryDirectoryURLToCleanup2 = [(NTKDebugRadarReporter *)self temporaryDirectoryURLToCleanup];
        lastPathComponent2 = [lCopy lastPathComponent];
        v16 = [temporaryDirectoryURLToCleanup2 URLByAppendingPathComponent:lastPathComponent2];

        absoluteURL = [lCopy absoluteURL];
        path = [absoluteURL path];

        absoluteURL2 = [v16 absoluteURL];
        path2 = [absoluteURL2 path];
        v38 = [path2 stringByAppendingPathExtension:@"zip"];

        v18 = [NTKDebugRadarReporter _archiveDirectory:path toFile:v38];
        if (v18)
        {
          attachmentURLs2 = [(NTKDebugRadarReporter *)self attachmentURLs];
          [attachmentURLs2 addObject:v16];
        }

        else
        {
          attachmentURLs2 = _NTKLoggingObjectForDomain(39, "NTKLoggingDomainArgon");
          if (os_log_type_enabled(attachmentURLs2, OS_LOG_TYPE_ERROR))
          {
            [NTKDebugRadarReporter addAttachmentAtURL:error:];
          }
        }

        goto LABEL_23;
      }

      if (error)
      {
        v40 = MEMORY[0x277CCA9B8];
        v41 = *MEMORY[0x277CCA5B8];
        v46 = *MEMORY[0x277CCA760];
        v47 = lCopy;
        v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        *error = [v40 errorWithDomain:v41 code:79 userInfo:v42];
      }
    }

    else if (error)
    {
      v21 = MEMORY[0x277CBEB38];
      v22 = lCopy;
      v23 = v11;
      v24 = [v21 dictionaryWithCapacity:2];
      v25 = [v22 copy];

      [v24 setObject:v25 forKeyedSubscript:*MEMORY[0x277CCA760]];
      v26 = [v23 copy];

      [v24 setObject:v26 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
      v27 = MEMORY[0x277CCA9B8];
      v28 = [v24 copy];
      v29 = [v27 errorWithDomain:@"NTKDebugRadarReporterErrorDomain" code:102 userInfo:v28];

      v30 = v29;
      v18 = 0;
      *error = v29;
LABEL_24:

      goto LABEL_25;
    }

    v18 = 0;
    goto LABEL_24;
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    *error = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_25:

  return v18;
}

- (void)appendInformationToDescription:(id)description
{
  descriptionCopy = description;
  if (NTKInternalBuild(descriptionCopy, v5))
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:descriptionCopy arguments:&v8];
    additionalInformationStrings = [(NTKDebugRadarReporter *)self additionalInformationStrings];
    [additionalInformationStrings addObject:v6];
  }
}

- (BOOL)present
{
  v65 = *MEMORY[0x277D85DE8];
  if (NTKInternalBuild(self, a2))
  {
    v59 = 0;
    alertTitle = [(NTKDebugRadarReporter *)self alertTitle];
    alertMessage = [(NTKDebugRadarReporter *)self alertMessage];
    CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, alertTitle, alertMessage, @"File Bug", @"Cancel", 0, &v59);

    v5 = v59;
    v6 = v59 == 0;
    v7 = _NTKLoggingObjectForDomain(51, "NTKLoggingDomainRadarReporter");
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "User chose not to report bug. Removing temporary files.", buf, 2u);
      }

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      temporaryDirectoryURLToCleanup = [(NTKDebugRadarReporter *)self temporaryDirectoryURLToCleanup];
      [defaultManager removeItemAtURL:temporaryDirectoryURLToCleanup error:0];
      goto LABEL_28;
    }

    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_22D9C5000, v7, OS_LOG_TYPE_DEFAULT, "User chose to report bug. Submitting request to Tap to Radar.", buf, 2u);
    }

    defaultManager = objc_alloc_init(MEMORY[0x277CCACE0]);
    [defaultManager setScheme:@"tap-to-radar"];
    [defaultManager setHost:@"new"];
    temporaryDirectoryURLToCleanup = [MEMORY[0x277CBEB18] array];
    v11 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentName" value:@"Watch Faces"];
    [temporaryDirectoryURLToCleanup addObject:v11];

    v12 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentVersion" value:@"All"];
    [temporaryDirectoryURLToCleanup addObject:v12];

    v13 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentID" value:@"568147"];
    [temporaryDirectoryURLToCleanup addObject:v13];

    v14 = [MEMORY[0x277CCAD18] queryItemWithName:@"Classification" value:@"Serious Bug"];
    [temporaryDirectoryURLToCleanup addObject:v14];

    v15 = [MEMORY[0x277CCAD18] queryItemWithName:@"Reproducibility" value:@"Not Applicable"];
    [temporaryDirectoryURLToCleanup addObject:v15];

    v16 = [MEMORY[0x277CCAD18] queryItemWithName:@"AutoDiagnostics" value:{@"phone, watch"}];
    [temporaryDirectoryURLToCleanup addObject:v16];

    additionalInformationStrings = [(NTKDebugRadarReporter *)self additionalInformationStrings];
    v18 = [additionalInformationStrings count];

    if (v18)
    {
      v19 = MEMORY[0x277CCACA8];
      additionalInformationStrings2 = [(NTKDebugRadarReporter *)self additionalInformationStrings];
      v21 = [additionalInformationStrings2 componentsJoinedByString:@"\n\n"];
      v22 = [v19 stringWithFormat:@"Summary: \n\nSteps to Reproduce: \n\nNotes:\n\n%@", v21];
    }

    else
    {
      v22 = @"Summary: \n\nSteps to Reproduce: ";
    }

    v53 = v22;
    v23 = [MEMORY[0x277CCAD18] queryItemWithName:@"Description" value:v22];
    [temporaryDirectoryURLToCleanup addObject:v23];

    v24 = MEMORY[0x277CCAD18];
    radarTitle = [(NTKDebugRadarReporter *)self radarTitle];
    v26 = [v24 queryItemWithName:@"Title" value:radarTitle];
    [temporaryDirectoryURLToCleanup addObject:v26];

    v27 = [MEMORY[0x277CCAD18] queryItemWithName:@"IncludeDevicePrefixInTitle" value:@"YES"];
    [temporaryDirectoryURLToCleanup addObject:v27];

    v28 = [MEMORY[0x277CCAD18] queryItemWithName:@"ExtensionIdentifiers" value:@"com.apple.NanoTimeKitCompanion.NTKDiagnosticExtensionCompanion"];
    [temporaryDirectoryURLToCleanup addObject:v28];

    v29 = MEMORY[0x277CBEB18];
    attachmentURLs = [(NTKDebugRadarReporter *)self attachmentURLs];
    v31 = [v29 arrayWithCapacity:{objc_msgSend(attachmentURLs, "count")}];

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    attachmentURLs2 = [(NTKDebugRadarReporter *)self attachmentURLs];
    v33 = [attachmentURLs2 countByEnumeratingWithState:&v55 objects:v64 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v56;
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v56 != v35)
          {
            objc_enumerationMutation(attachmentURLs2);
          }

          absoluteURL = [*(*(&v55 + 1) + 8 * i) absoluteURL];
          path = [absoluteURL path];
          [v31 addObject:path];
        }

        v34 = [attachmentURLs2 countByEnumeratingWithState:&v55 objects:v64 count:16];
      }

      while (v34);
    }

    v39 = [v31 componentsJoinedByString:{@", "}];
    if ([v31 count])
    {
      v40 = [MEMORY[0x277CCAD18] queryItemWithName:@"Attachments" value:v39];
      [temporaryDirectoryURLToCleanup addObject:v40];
    }

    v41 = [temporaryDirectoryURLToCleanup copy];
    [defaultManager setQueryItems:v41];

    v42 = [defaultManager URL];
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v54 = 0;
    v44 = [defaultWorkspace openURL:v42 withOptions:MEMORY[0x277CBEC10] error:&v54];
    v45 = v54;

    v46 = _NTKLoggingObjectForDomain(51, "NTKLoggingDomainRadarReporter");
    v47 = os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT);
    if (v44)
    {
      v48 = v53;
      if (v47)
      {
        *buf = 138412290;
        v61 = v42;
        v49 = "Successfully launched Tap-to-Radar: %@";
        v50 = v46;
        v51 = 12;
LABEL_26:
        _os_log_impl(&dword_22D9C5000, v50, OS_LOG_TYPE_DEFAULT, v49, buf, v51);
      }
    }

    else
    {
      v48 = v53;
      if (v47)
      {
        *buf = 138412546;
        v61 = v42;
        v62 = 2112;
        v63 = v45;
        v49 = "Failed to launch Tap-to-Radar: %@: %@";
        v50 = v46;
        v51 = 22;
        goto LABEL_26;
      }
    }

LABEL_28:
    return v6;
  }

  return 0;
}

@end