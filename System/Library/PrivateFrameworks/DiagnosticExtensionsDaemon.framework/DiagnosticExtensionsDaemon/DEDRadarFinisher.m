@interface DEDRadarFinisher
+ (id)archivedClasses;
- (BOOL)allUploadsComplete;
- (BOOL)allVerificationTasksComplete;
- (DEDBugSession)session;
- (DEDBugSessionConfiguration)configuration;
- (DEDRadarFinisher)initWithCoder:(id)a3;
- (DEDRadarFinisher)initWithConfiguration:(id)a3 session:(id)a4;
- (id)createUploadTaskForAttachment:(id)a3 atRadarURL:(id)a4;
- (id)folderNameForAttachmentGroup:(id)a3;
- (id)getUploadItemForTask:(id)a3;
- (id)getVerificationTaskForDataTask:(id)a3;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5;
- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7;
- (void)finishRadarUploadSession;
- (void)finishSession:(id)a3 withConfiguration:(id)a4;
- (void)processVerifyTaskResults;
- (void)startAttachmentVerificationTasks;
@end

@implementation DEDRadarFinisher

- (DEDRadarFinisher)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = DEDRadarFinisher;
  return [(DEDRadarFinisher *)&v4 init];
}

- (DEDRadarFinisher)initWithConfiguration:(id)a3 session:(id)a4
{
  v5 = a4;
  v12.receiver = self;
  v12.super_class = DEDRadarFinisher;
  v6 = [(DEDRadarFinisher *)&v12 init];
  if (v6)
  {
    v7 = +[DEDConfiguration sharedInstance];
    v8 = os_log_create([v7 loggingSubsystem], "ded-radar-finisher");
    [(DEDRadarFinisher *)v6 setLog:v8];

    [(DEDRadarFinisher *)v6 setSession:v5];
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(DEDRadarFinisher *)v6 setUploadItems:v9];

    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    [(DEDRadarFinisher *)v6 setVerificationTasks:v10];
  }

  return v6;
}

+ (id)archivedClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (void)finishSession:(id)a3 withConfiguration:(id)a4
{
  v105[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(DEDRadarFinisher *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "Starting Tap-to-Radar finishSession...", buf, 2u);
  }

  v9 = [(DEDRadarFinisher *)self log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 radarProblemID];
    *buf = 138543362;
    v99 = v10;
    _os_log_impl(&dword_248AD7000, v9, OS_LOG_TYPE_DEFAULT, "config.radarProblemID = %{public}@", buf, 0xCu);
  }

  v11 = [(DEDRadarFinisher *)self log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v7 radarAuthToken];
    *buf = 138543362;
    v99 = v12;
    _os_log_impl(&dword_248AD7000, v11, OS_LOG_TYPE_DEFAULT, "config.radarAuthToken = %{public}@", buf, 0xCu);
  }

  v13 = [v7 radarProblemID];
  if (v13)
  {
    v14 = v13;
    v15 = [v7 radarAuthToken];

    if (v15)
    {
      [(DEDRadarFinisher *)self setSession:v6];
      [(DEDRadarFinisher *)self setConfiguration:v7];
      [(DEDRadarFinisher *)self setPercentComplete:0.0];
      [(DEDRadarFinisher *)self setRetryAttemptCount:0];
      v16 = objc_alloc_init(MEMORY[0x277CCABD8]);
      [v16 setQualityOfService:25];
      [v16 setMaxConcurrentOperationCount:1];
      v17 = MEMORY[0x277CCAD38];
      v18 = [v6 identifier];
      v19 = [v17 backgroundSessionConfigurationWithIdentifier:v18];

      [v19 setUpDataUsageWithConfiguration:v7];
      [v19 setRequestCachePolicy:1];
      v104[0] = @"Accept";
      v104[1] = @"Content-Type";
      v105[0] = @"application/json";
      v105[1] = @"application/json; charset=utf-8";
      v104[2] = @"Radar-Authentication";
      v20 = [v7 radarAuthToken];
      v105[2] = v20;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:3];
      [v19 setHTTPAdditionalHeaders:v21];

      v77 = v19;
      v78 = v16;
      v22 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v19 delegate:self delegateQueue:v16];
      [(DEDRadarFinisher *)self setUrlSession:v22];

      v23 = objc_alloc(MEMORY[0x277CCACA8]);
      v24 = [v7 radarProblemID];
      v25 = [v23 initWithFormat:@"Tap-to-Radar upload for rdar://%@ via diagnosticextensionsd", v24];
      [(DEDRadarFinisher *)self urlSession];
      v27 = v26 = v6;
      [v27 setSessionDescription:v25];

      v28 = objc_alloc_init(DEDDiagnosticCollector);
      v29 = [(DEDDiagnosticCollector *)v28 availableDiagnosticExtensions];

      v30 = objc_opt_new();
      v79 = v26;
      v31 = [v26 identifier];
      v76 = v29;
      v32 = [v30 collectedGroupsWithSessionIdentifier:v31 matchingExtensions:v29];

      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      obj = v32;
      v82 = [obj countByEnumeratingWithState:&v94 objects:v103 count:16];
      if (!v82)
      {
        goto LABEL_41;
      }

      v81 = *v95;
      v84 = v7;
      while (1)
      {
        v33 = 0;
        do
        {
          if (*v95 != v81)
          {
            objc_enumerationMutation(obj);
          }

          v83 = v33;
          v34 = *(*(&v94 + 1) + 8 * v33);
          v88 = [(DEDRadarFinisher *)self folderNameForAttachmentGroup:v34];
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          v35 = MEMORY[0x277D051E0];
          v36 = [v34 rootURL];
          v37 = [v35 findAllfiles:v36];

          v85 = v37;
          v87 = [v37 countByEnumeratingWithState:&v90 objects:v102 count:16];
          if (v87)
          {
            v86 = *v91;
            do
            {
              v38 = 0;
              do
              {
                if (*v91 != v86)
                {
                  objc_enumerationMutation(v85);
                }

                v39 = *(*(&v90 + 1) + 8 * v38);
                v40 = [(DEDRadarFinisher *)self log];
                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v99 = v39;
                  _os_log_impl(&dword_248AD7000, v40, OS_LOG_TYPE_DEFAULT, "Starting upload for %{public}@", buf, 0xCu);
                }

                v41 = [v39 lastPathComponent];
                v42 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
                v43 = [v41 stringByAddingPercentEncodingWithAllowedCharacters:v42];

                v44 = [MEMORY[0x277CBEBC0] URLWithString:@"https://radar-webservices-ext.apple.com"];
                v45 = MEMORY[0x277CCACA8];
                v46 = [v7 radarProblemID];
                v47 = [v45 stringWithFormat:@"problems/%@/attachments/%@/%@", v46, v88, v43];
                v48 = [v44 URLByAppendingPathComponent:v47];

                v49 = [(DEDRadarFinisher *)self log];
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v99 = v48;
                  _os_log_impl(&dword_248AD7000, v49, OS_LOG_TYPE_DEFAULT, "Calculated Radar API URL: %{public}@", buf, 0xCu);
                }

                v89 = 0;
                v50 = [v39 checkResourceIsReachableAndReturnError:&v89];
                v51 = v89;
                if (v50)
                {
                  v52 = self;
                  v53 = [MEMORY[0x277CCAA00] defaultManager];
                  v54 = [v39 path];
                  v55 = [v53 attributesOfItemAtPath:v54 error:0];
                  v56 = [v55 fileSize];

                  self = v52;
                  if (v56)
                  {
                    v57 = [(DEDRadarFinisher *)v52 createUploadTaskForAttachment:v39 atRadarURL:v48];
                    v58 = [[DEDRadarUploadItem alloc] initWithUploadTask:v57 andAttachment:v39];
                    v59 = MEMORY[0x277CCACA8];
                    v60 = [v39 lastPathComponent];
                    v61 = [v59 stringWithFormat:@"%@/%@", v88, v60];
                    [(DEDRadarUploadItem *)v58 setRadarAttachmentName:v61];

                    [(DEDRadarUploadItem *)v58 setRadarURL:v48];
                    v62 = [(DEDRadarFinisher *)v52 uploadItems];
                    [v62 addObject:v58];

                    v63 = [(DEDRadarFinisher *)v52 log];
                    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
                    {
                      v64 = [(DEDRadarFinisher *)v52 uploadItems];
                      *buf = 138543362;
                      v99 = v64;
                      _os_log_impl(&dword_248AD7000, v63, OS_LOG_TYPE_DEFAULT, "self.uploadItems: %{public}@", buf, 0xCu);
                    }

                    [v57 resume];
                    goto LABEL_28;
                  }

                  v57 = [(DEDRadarFinisher *)v52 log];
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v99 = v39;
                    _os_log_error_impl(&dword_248AD7000, v57, OS_LOG_TYPE_ERROR, "File at URL %{public}@ is zero bytes in size, skipping", buf, 0xCu);
LABEL_28:
                    v7 = v84;
                    goto LABEL_35;
                  }

                  v7 = v84;
                }

                else
                {
                  v57 = [(DEDRadarFinisher *)self log];
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
                  {
                    v65 = [v51 localizedDescription];
                    v66 = v65;
                    *buf = 138543618;
                    v67 = @"unknown";
                    if (v65)
                    {
                      v67 = v65;
                    }

                    v99 = v39;
                    v100 = 2114;
                    v101 = v67;
                    _os_log_fault_impl(&dword_248AD7000, v57, OS_LOG_TYPE_FAULT, "File at URL %{public}@ encountered reachable error: %{public}@, skipping", buf, 0x16u);
                  }
                }

LABEL_35:

                ++v38;
              }

              while (v87 != v38);
              v68 = [v85 countByEnumeratingWithState:&v90 objects:v102 count:16];
              v87 = v68;
            }

            while (v68);
          }

          v33 = v83 + 1;
        }

        while (v83 + 1 != v82);
        v82 = [obj countByEnumeratingWithState:&v94 objects:v103 count:16];
        if (!v82)
        {
LABEL_41:

          v69 = [(DEDRadarFinisher *)self uploadItems];
          v70 = [v69 count];

          v6 = v79;
          if (!v70)
          {
            v71 = [(DEDRadarFinisher *)self log];
            if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_248AD7000, v71, OS_LOG_TYPE_DEFAULT, "No attachments were sent to radar finisher", buf, 2u);
            }

            v72 = [(DEDRadarFinisher *)self session];
            [v72 uploadProgress:1 total:1];

            v73 = [(DEDRadarFinisher *)self session];
            [v73 didFinishUploadingWithError:0];
          }

          goto LABEL_49;
        }
      }
    }
  }

  v74 = [(DEDRadarFinisher *)self log];
  if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
  {
    [DEDRadarFinisher finishSession:withConfiguration:];
  }

  [v6 didFinishUploadingWithError:0];
LABEL_49:

  v75 = *MEMORY[0x277D85DE8];
}

- (id)createUploadTaskForAttachment:(id)a3 atRadarURL:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CCAB70] requestWithURL:a4 cachePolicy:1 timeoutInterval:120.0];
  [v7 setHTTPMethod:@"PUT"];
  [v7 addValue:@"true" forHTTPHeaderField:@"X-Override-File"];
  v8 = [(DEDRadarFinisher *)self urlSession];
  v9 = [v8 uploadTaskWithRequest:v7 fromFile:v6];

  v10 = [(DEDRadarFinisher *)self log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    v14 = v6;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_248AD7000, v10, OS_LOG_TYPE_DEFAULT, "Starting upload for %{public}@ with task: %{public}@", &v13, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)folderNameForAttachmentGroup:(id)a3
{
  v3 = a3;
  v4 = +[DEDDevice currentDeviceWithDaemonInfo];
  v5 = [v4 name];
  v6 = [v5 stringByReplacingOccurrencesOfString:@"/" withString:@"∕"];

  v7 = [v6 stringByReplacingOccurrencesOfString:@"?" withString:@"﹖"];

  v8 = [v7 stringByReplacingOccurrencesOfString:@"|" withString:@"｜"];

  v9 = v8;
  if ([v4 mediaSystemRole] == 2)
  {
    v10 = @" (L)";
  }

  else
  {
    v11 = v9;
    if ([v4 mediaSystemRole] != 3)
    {
      goto LABEL_6;
    }

    v10 = @" (R)";
  }

  v11 = [v9 stringByAppendingString:v10];

LABEL_6:
  v12 = [v4 deviceClass];

  if (v9 != v12)
  {
    v13 = [v4 deviceClass];
    v14 = [v11 stringByAppendingFormat:@" - %@", v13];

    v11 = v14;
  }

  v15 = [v4 hardwareCodename];
  v16 = [v4 build];
  v17 = [v11 stringByAppendingFormat:@" (%@) - %@", v15, v16];

  v18 = [v3 extensionID];
  LODWORD(v15) = [v18 isEqualToString:@"com.apple.DiagnosticExtensions.sysdiagnose"];

  if (v15)
  {
    v19 = v17;
  }

  else
  {
    v20 = [v3 displayName];
    v21 = [v20 stringByReplacingOccurrencesOfString:@"log" withString:@"Log"];

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v17, v21];
  }

  return v19;
}

- (id)getUploadItemForTask:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(DEDRadarFinisher *)self uploadItems];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 taskIdentifier];
        if (v10 == [v4 taskIdentifier])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)allUploadsComplete
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(DEDRadarFinisher *)self uploadItems];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v10 + 1) + 8 * i) isUploaded])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)getVerificationTaskForDataTask:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(DEDRadarFinisher *)self verificationTasks];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 dataTask];

        if (v10 == v4)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)allVerificationTasksComplete
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(DEDRadarFinisher *)self verificationTasks];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (![*(*(&v10 + 1) + 8 * i) isFinished])
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)startAttachmentVerificationTasks
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [(DEDRadarFinisher *)self configuration];
  v4 = [v3 radarProblemID];

  if (v4)
  {
    v5 = [(DEDRadarFinisher *)self retryAttemptCount];
    v6 = [(DEDRadarFinisher *)self log];
    v7 = v6;
    if (v5 < 3)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(DEDRadarFinisher *)self configuration];
        v10 = [v9 radarProblemID];
        *buf = 138543362;
        v35 = v10;
        _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "Starting upload verification tasks for rdar://%{public}@", buf, 0xCu);
      }

      v11 = MEMORY[0x277CBEBC0];
      v12 = MEMORY[0x277CCACA8];
      v13 = [(DEDRadarFinisher *)self configuration];
      v14 = [v13 radarProblemID];
      v15 = [v12 stringWithFormat:@"https://radar-webservices.apple.com/problems/%@/attachments", v14];
      v16 = [v11 URLWithString:v15];

      v17 = MEMORY[0x277CBEBC0];
      v18 = MEMORY[0x277CCACA8];
      v19 = [(DEDRadarFinisher *)self configuration];
      v20 = [v19 radarProblemID];
      v21 = [v18 stringWithFormat:@"https://radar-webservices.apple.com/problems/%@/pictures", v20];
      v22 = [v17 URLWithString:v21];

      v23 = [(DEDRadarFinisher *)self verificationTasks];
      v24 = [DEDDataTask alloc];
      v25 = [(DEDRadarFinisher *)self urlSession];
      v26 = [v25 dataTaskWithURL:v16];
      v27 = [(DEDDataTask *)v24 initWithDataTask:v26];
      [v23 addObject:v27];

      v28 = [(DEDRadarFinisher *)self verificationTasks];
      v29 = [DEDDataTask alloc];
      v30 = [(DEDRadarFinisher *)self urlSession];
      v31 = [v30 dataTaskWithURL:v22];
      v32 = [(DEDDataTask *)v29 initWithDataTask:v31];
      [v28 addObject:v32];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [DEDRadarFinisher startAttachmentVerificationTasks];
      }

      [(DEDRadarFinisher *)self finishRadarUploadSession];
    }

    v33 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v8 = *MEMORY[0x277D85DE8];

    [(DEDRadarFinisher *)self finishRadarUploadSession];
  }
}

- (void)processVerifyTaskResults
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = [(DEDRadarFinisher *)self verificationTasks];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__DEDRadarFinisher_processVerifyTaskResults__block_invoke;
  v14[3] = &unk_278F65220;
  v14[4] = self;
  v14[5] = &v21;
  v14[6] = &v15;
  [v3 enumerateObjectsUsingBlock:v14];

  v4 = [(DEDRadarFinisher *)self log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v16[5] count];
    *buf = 134349056;
    v26 = v5;
    _os_log_impl(&dword_248AD7000, v4, OS_LOG_TYPE_DEFAULT, "Attachments fetch task complete with count: %{public}lu", buf, 0xCu);
  }

  if (*(v22 + 24) == 1)
  {
    v6 = [(DEDRadarFinisher *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [DEDRadarFinisher processVerifyTaskResults];
    }

    [(DEDRadarFinisher *)self finishRadarUploadSession];
  }

  else
  {
    v7 = [(DEDRadarFinisher *)self uploadItems];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __44__DEDRadarFinisher_processVerifyTaskResults__block_invoke_173;
    v13[3] = &unk_278F65270;
    v13[4] = self;
    v13[5] = &v15;
    [v7 enumerateObjectsUsingBlock:v13];

    if ([(DEDRadarFinisher *)self allUploadsComplete])
    {
      [(DEDRadarFinisher *)self finishRadarUploadSession];
    }

    else
    {
      v8 = [(DEDRadarFinisher *)self log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "Some attachments were missing in Radar -- retrying the missing attachments", buf, 2u);
      }

      [(DEDRadarFinisher *)self setRetryAttemptCount:[(DEDRadarFinisher *)self retryAttemptCount]+ 1];
      v9 = [(DEDRadarFinisher *)self verificationTasks];
      [v9 removeAllObjects];

      v10 = [(DEDRadarFinisher *)self uploadItems];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __44__DEDRadarFinisher_processVerifyTaskResults__block_invoke_176;
      v12[3] = &unk_278F65298;
      v12[4] = self;
      [v10 enumerateObjectsUsingBlock:v12];
    }
  }

  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  v11 = *MEMORY[0x277D85DE8];
}

void __44__DEDRadarFinisher_processVerifyTaskResults__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 response];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 response];
    v9 = [v8 statusCode] - 299;

    if (v9 <= 0xFFFFFFFFFFFFFF9CLL)
    {
      v10 = [*(a1 + 32) log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __44__DEDRadarFinisher_processVerifyTaskResults__block_invoke_cold_1(v5);
      }

LABEL_12:

      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a3 = 1;
      goto LABEL_24;
    }
  }

  v11 = [v5 data];

  if (!v11)
  {
    v10 = [*(a1 + 32) log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __44__DEDRadarFinisher_processVerifyTaskResults__block_invoke_cold_3();
    }

    goto LABEL_12;
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v13 = MEMORY[0x277CCAAA0];
  v14 = [v5 data];
  v30 = 0;
  v15 = [v13 JSONObjectWithData:v14 options:4 error:&v30];
  v16 = v30;

  if (v16)
  {
    v17 = [*(a1 + 32) log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __44__DEDRadarFinisher_processVerifyTaskResults__block_invoke_cold_2(v16);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = v15;
    v18 = v15;
    v19 = [v18 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        v22 = 0;
        do
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [[DEDRadarAttachment alloc] initWithDictionary:*(*(&v26 + 1) + 8 * v22)];
          if (v23)
          {
            [v12 addObject:v23];
          }

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v20);
    }

    [*(*(*(a1 + 48) + 8) + 40) unionSet:v12];
    v15 = v25;
  }

LABEL_24:
  v24 = *MEMORY[0x277D85DE8];
}

void __44__DEDRadarFinisher_processVerifyTaskResults__block_invoke_173(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __44__DEDRadarFinisher_processVerifyTaskResults__block_invoke_2;
  v19 = &unk_278F65248;
  v5 = v3;
  v20 = v5;
  v21 = &v22;
  [v4 enumerateObjectsUsingBlock:&v16];
  v6 = *(a1 + 32);
  if (v23[5])
  {
    v7 = [v6 log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) configuration];
      v9 = [v8 radarProblemID];
      v10 = [v5 radarAttachmentName];
      *buf = 138543618;
      v29 = v9;
      v30 = 2114;
      v31 = v10;
      _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "Attachment verification (%{public}@): (SUCCESS) %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v11 = [v6 log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 32) configuration];
      v14 = [v13 radarProblemID];
      v15 = [v5 radarAttachmentName];
      *buf = 138543618;
      v29 = v14;
      v30 = 2114;
      v31 = v15;
      _os_log_error_impl(&dword_248AD7000, v11, OS_LOG_TYPE_ERROR, "Attachment verification (%{public}@): (FAILURE) %{public}@", buf, 0x16u);
    }

    [v5 setIsUploaded:0];
  }

  _Block_object_dispose(&v22, 8);
  v12 = *MEMORY[0x277D85DE8];
}

void __44__DEDRadarFinisher_processVerifyTaskResults__block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [v9 fileName];
  v7 = [*(a1 + 32) radarAttachmentName];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

void __44__DEDRadarFinisher_processVerifyTaskResults__block_invoke_176(uint64_t a1, void *a2)
{
  v7 = a2;
  if (([v7 isUploaded] & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = [v7 attachedPath];
    v5 = [v7 radarURL];
    v6 = [v3 createUploadTaskForAttachment:v4 atRadarURL:v5];

    [v7 setTotalBytesSent:0];
    [v7 setTaskIdentifier:{objc_msgSend(v6, "taskIdentifier")}];
    [v6 resume];
  }
}

- (void)finishRadarUploadSession
{
  v3 = [(DEDRadarFinisher *)self log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_248AD7000, v3, OS_LOG_TYPE_DEFAULT, "All attachments finished! Clean up time!", v7, 2u);
  }

  v4 = [(DEDRadarFinisher *)self session];
  [v4 uploadProgress:1 total:1];

  v5 = [(DEDRadarFinisher *)self urlSession];
  [v5 finishTasksAndInvalidate];

  v6 = [(DEDRadarFinisher *)self session];
  [v6 didFinishUploadingWithError:0];
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(DEDRadarFinisher *)self log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543362;
    v19 = v6;
    _os_log_impl(&dword_248AD7000, v7, OS_LOG_TYPE_DEFAULT, "urlSessionTask complete: %{public}@", &v18, 0xCu);
  }

  v8 = [(DEDRadarFinisher *)self log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 response];
    v18 = 138543362;
    v19 = v9;
    _os_log_impl(&dword_248AD7000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@", &v18, 0xCu);
  }

  v10 = [(DEDRadarFinisher *)self getUploadItemForTask:v6];
  v11 = [(DEDRadarFinisher *)self getVerificationTaskForDataTask:v6];
  v12 = v11;
  if (v10)
  {
    [v10 setIsUploaded:1];
    v13 = [(DEDRadarFinisher *)self log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = v10;
      _os_log_impl(&dword_248AD7000, v13, OS_LOG_TYPE_DEFAULT, "Finished upload item: %{public}@", &v18, 0xCu);
    }

    v14 = [(DEDRadarFinisher *)self log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(DEDRadarFinisher *)self uploadItems];
      v18 = 138543362;
      v19 = v15;
      _os_log_impl(&dword_248AD7000, v14, OS_LOG_TYPE_DEFAULT, "self.uploadItems: %{public}@", &v18, 0xCu);
    }

    if ([(DEDRadarFinisher *)self allUploadsComplete])
    {
      [(DEDRadarFinisher *)self startAttachmentVerificationTasks];
    }
  }

  else if (v11)
  {
    [v11 setIsFinished:1];
    v16 = [(DEDRadarFinisher *)self log];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v12;
      _os_log_impl(&dword_248AD7000, v16, OS_LOG_TYPE_DEFAULT, "Finished verification task: %@", &v18, 0xCu);
    }

    if ([(DEDRadarFinisher *)self allVerificationTasksComplete])
    {
      [(DEDRadarFinisher *)self processVerifyTaskResults];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = [(DEDRadarFinisher *)self getUploadItemForTask:a4];
  [v10 setTotalBytesSent:a6];
  [v10 setTotalBytesExpectedToSend:a7];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = [(DEDRadarFinisher *)self uploadItems];
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0;
    v16 = *v29;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v28 + 1) + 8 * i);
        v15 += [v18 totalBytesSent];
        v14 += [v18 totalBytesExpectedToSend];
      }

      v13 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v19 = ((v15 / v14) * 100.0);
  [(DEDRadarFinisher *)self percentComplete];
  if (v19 != (v20 * 100.0) && v19 != 100)
  {
    v21 = [(DEDRadarFinisher *)self log];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(DEDRadarFinisher *)self session];
      v23 = [v22 config];
      v24 = [v23 radarProblemID];
      *buf = 138543618;
      v33 = v24;
      v34 = 1026;
      v35 = ((v15 / v14) * 100.0);
      _os_log_impl(&dword_248AD7000, v21, OS_LOG_TYPE_DEFAULT, "DEDRadarFinisher upload percentComplete (%{public}@): %{public}i%%", buf, 0x12u);
    }

    *&v25 = v15 / v14;
    [(DEDRadarFinisher *)self setPercentComplete:v25];
    v26 = [(DEDRadarFinisher *)self session];
    [v26 uploadProgress:v15 total:v14];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveData:(id)a5
{
  v12 = a5;
  v7 = [(DEDRadarFinisher *)self getVerificationTaskForDataTask:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 data];

    if (v9)
    {
      v10 = [v8 data];
      v11 = [v10 mutableCopy];

      [v11 appendData:v12];
      [v8 setData:v11];
    }

    else
    {
      [v8 setData:v12];
    }
  }
}

- (void)URLSession:(id)a3 dataTask:(id)a4 didReceiveResponse:(id)a5 completionHandler:(id)a6
{
  v12 = a5;
  v9 = a6;
  v10 = [(DEDRadarFinisher *)self getVerificationTaskForDataTask:a4];
  v11 = v10;
  if (v10)
  {
    [v10 setResponse:v12];
  }

  v9[2](v9, 1);
}

- (DEDBugSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (DEDBugSessionConfiguration)configuration
{
  WeakRetained = objc_loadWeakRetained(&self->_configuration);

  return WeakRetained;
}

void __44__DEDRadarFinisher_processVerifyTaskResults__block_invoke_cold_1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCAA40];
  v2 = [a1 response];
  v3 = [v1 localizedStringForStatusCode:{objc_msgSend(v2, "statusCode")}];
  OUTLINED_FUNCTION_2(&dword_248AD7000, v4, v5, "Response headers for verification task indicate an invalid response code: %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

void __44__DEDRadarFinisher_processVerifyTaskResults__block_invoke_cold_2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2(&dword_248AD7000, v2, v3, "DEDRadarFinisher failed to deserialize attachments response: %{public}@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end