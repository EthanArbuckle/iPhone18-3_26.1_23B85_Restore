@interface GTFileWriterService
- (BOOL)_finishSession:(unint64_t)a3 error:(id *)a4;
- (GTFileWriterService)initWithConnectionProvider:(id)a3 deviceUDID:(id)a4 urlAccessProvider:(id)a5;
- (void)beginTransferSessionWithFileEntries:(id)a3 basePath:(id)a4 toDevice:(id)a5 options:(id)a6 sessionID:(unint64_t)a7 completionHandler:(id)a8;
- (void)initiateTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 options:(id)a6 completionHandler:(id)a7;
- (void)initiateTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 toURL:(id)a6 options:(id)a7 completionHandler:(id)a8;
- (void)startTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 options:(id)a6 completionHandler:(id)a7;
- (void)startTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 toDirectory:(id)a6 options:(id)a7 completionHandler:(id)a8;
- (void)writeFileData:(id)a3 sessionID:(unint64_t)a4 completionHandler:(id)a5;
@end

@implementation GTFileWriterService

- (GTFileWriterService)initWithConnectionProvider:(id)a3 deviceUDID:(id)a4 urlAccessProvider:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v22.receiver = self;
  v22.super_class = GTFileWriterService;
  v12 = [(GTFileWriterService *)&v22 init];
  if (v12)
  {
    v13 = NSTemporaryDirectory();
    DeleteAllArchives(v13);

    v14 = GTTransportArchiveDirectory();
    DeleteAllArchives(v14);

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    sessions = v12->_sessions;
    v12->_sessions = v15;

    objc_storeStrong(&v12->_connectionProvider, a3);
    objc_storeStrong(&v12->_deviceUDID, a4);
    objc_storeStrong(&v12->_urlAccessProvider, a5);
    v17 = dispatch_queue_create("com.apple.gputools.filetransfer", 0);
    fileTransferQueue = v12->_fileTransferQueue;
    v12->_fileTransferQueue = v17;

    v19 = dispatch_semaphore_create(1);
    writeSem = v12->_writeSem;
    v12->_writeSem = v19;
  }

  return v12;
}

- (void)initiateTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 options:(id)a6 completionHandler:(id)a7
{
  v12 = MEMORY[0x277CBEBC0];
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = GTTransportArchiveDirectory();
  v19 = [v18 stringByAppendingPathComponent:v16];
  v20 = [v12 fileURLWithPath:v19 isDirectory:1];

  [(GTFileWriterService *)self initiateTransfer:v17 basePath:v16 fromDevice:v15 toURL:v20 options:v14 completionHandler:v13];
}

- (void)startTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 options:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = NSTemporaryDirectory();
  v18 = LocalArchiveURL(v15, v17);

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __83__GTFileWriterService_startTransfer_basePath_fromDevice_options_completionHandler___block_invoke;
  v21[3] = &unk_2796614D8;
  v22 = v18;
  v23 = v12;
  v21[4] = self;
  v19 = v18;
  v20 = v12;
  [(GTFileWriterService *)self initiateTransfer:v16 basePath:v15 fromDevice:v14 toURL:v19 options:v13 completionHandler:v21];
}

void __83__GTFileWriterService_startTransfer_basePath_fromDevice_options_completionHandler___block_invoke(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a1[6];
    v4 = *(a1[6] + 16);

    v4();
  }

  else
  {
    v5 = [*(a1[4] + 48) makeURL:a1[5]];
    (*(a1[6] + 16))();
  }
}

- (void)startTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 toDirectory:(id)a6 options:(id)a7 completionHandler:(id)a8
{
  v14 = a4;
  v15 = a6;
  v16 = a8;
  v17 = a7;
  v18 = a5;
  v19 = a3;
  if (GTCoreLogUseOsLog())
  {
    v20 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [GTFileWriterService startTransfer:basePath:fromDevice:toDirectory:options:completionHandler:];
    }
  }

  else
  {
    v21 = *MEMORY[0x277D85E08];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Start transfer of %@ to %@", v14, v15];
    fprintf(v21, "%s\n", [v22 UTF8String]);
  }

  if (([v15 startAccessingSecurityScopedResource] & 1) == 0)
  {
    if (GTCoreLogUseOsLog())
    {
      v23 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [GTFileWriterService startTransfer:basePath:fromDevice:toDirectory:options:completionHandler:];
      }
    }

    else
    {
      v24 = *MEMORY[0x277D85E08];
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to consume sandbox extension for URL %@", v15];
      fprintf(v24, "%s\n", [v23 UTF8String]);
    }
  }

  v25 = [v15 path];
  v26 = LocalArchiveURL(v14, v25);

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __95__GTFileWriterService_startTransfer_basePath_fromDevice_toDirectory_options_completionHandler___block_invoke;
  v30[3] = &unk_279661500;
  v31 = v15;
  v32 = v26;
  v33 = self;
  v34 = v16;
  v27 = v26;
  v28 = v15;
  v29 = v16;
  [(GTFileWriterService *)self initiateTransfer:v19 basePath:v14 fromDevice:v18 toURL:v27 options:v17 completionHandler:v30];
}

void __95__GTFileWriterService_startTransfer_basePath_fromDevice_toDirectory_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!v3)
  {
    memset(&v33, 0, sizeof(v33));
    if (stat([*(a1 + 32) fileSystemRepresentation], &v33))
    {
      if (GTCoreLogUseOsLog())
      {
        v4 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          __95__GTFileWriterService_startTransfer_basePath_fromDevice_toDirectory_options_completionHandler___block_invoke_cold_1((a1 + 32));
        }
      }

      else
      {
        v9 = *MEMORY[0x277D85DF8];
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to stat directory %@ after transfer: %{darwin.errno}d", *(a1 + 32), *__error()];
        fprintf(v9, "%s\n", [v10 UTF8String]);
      }

      goto LABEL_39;
    }

    st_uid = v33.st_uid;
    st_gid = v33.st_gid;
    v7 = *(a1 + 40);
    if (GTCoreLogUseOsLog())
    {
      v8 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v39 = v7;
        v40 = 1024;
        v41 = st_uid;
        v42 = 1024;
        v43 = st_gid;
        _os_log_debug_impl(&dword_24DBC9000, v8, OS_LOG_TYPE_DEBUG, "Updating owner of archive %@ to %u:%u", buf, 0x18u);
      }
    }

    else
    {
      v11 = *MEMORY[0x277D85E08];
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Updating owner of archive %@ to %u:%u", v7, st_uid, st_gid];
      fprintf(v11, "%s\n", [v8 UTF8String]);
    }

    if (v7)
    {
      if (chown([v7 fileSystemRepresentation], st_uid, st_gid) != -1)
      {
        v12 = [MEMORY[0x277CCAA00] defaultManager];
        v13 = [v12 enumeratorAtURL:v7 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 errorHandler:0];

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v14 = v13;
        v15 = [v14 countByEnumeratingWithState:&v34 objects:buf count:16];
        v16 = v14;
        if (v15)
        {
          v17 = v15;
          v32 = v7;
          v18 = *v35;
          v19 = 1;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v35 != v18)
              {
                objc_enumerationMutation(v14);
              }

              v21 = *(*(&v34 + 1) + 8 * i);
              v22 = objc_autoreleasePoolPush();
              v19 &= chown([v21 fileSystemRepresentation], st_uid, st_gid) != -1;
              objc_autoreleasePoolPop(v22);
            }

            v17 = [v14 countByEnumeratingWithState:&v34 objects:buf count:16];
          }

          while (v17);

          if (v19)
          {
            v7 = v32;
            v3 = 0;
LABEL_38:

LABEL_39:
            v28 = [*(*(a1 + 48) + 48) makeURL:*(a1 + 40)];
            (*(*(a1 + 56) + 16))();

            goto LABEL_40;
          }

          v7 = v32;
          v3 = 0;
          if (GTCoreLogUseOsLog())
          {
            v16 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              __95__GTFileWriterService_startTransfer_basePath_fromDevice_toDirectory_options_completionHandler___block_invoke_cold_2();
            }
          }

          else
          {
            v27 = *MEMORY[0x277D85DF8];
            v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to update owner of one or more files inside archive %@ after transfer", v32];
            fprintf(v27, "%s\n", [v16 UTF8String]);
          }
        }

        goto LABEL_38;
      }

      if (GTCoreLogUseOsLog())
      {
        v14 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __95__GTFileWriterService_startTransfer_basePath_fromDevice_toDirectory_options_completionHandler___block_invoke_cold_3();
        }

        goto LABEL_38;
      }

      v23 = *MEMORY[0x277D85DF8];
      v26 = MEMORY[0x277CCACA8];
      v30 = v7;
      v31 = *__error();
      v25 = @"Failed to update owner of archive %@ after transfer: %{darwin.errno}d";
      v24 = v26;
    }

    else
    {
      if (GTCoreLogUseOsLog())
      {
        v14 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __95__GTFileWriterService_startTransfer_basePath_fromDevice_toDirectory_options_completionHandler___block_invoke_cold_4();
        }

        goto LABEL_38;
      }

      v23 = *MEMORY[0x277D85DF8];
      v24 = MEMORY[0x277CCACA8];
      v25 = @"Invalid archive passed to UpdateArchiveOwner";
    }

    v14 = [v24 stringWithFormat:v25, v30, v31];
    fprintf(v23, "%s\n", [v14 UTF8String]);
    goto LABEL_38;
  }

  (*(*(a1 + 56) + 16))();
LABEL_40:
  [*(a1 + 32) stopAccessingSecurityScopedResource];

  v29 = *MEMORY[0x277D85DE8];
}

- (void)initiateTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 toURL:(id)a6 options:(id)a7 completionHandler:(id)a8
{
  v79 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v58 = v17;
  if (GTCoreLogUseOsLog())
  {
    v20 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413314;
      v70 = v15;
      v71 = 2112;
      v72 = v16;
      v73 = 2112;
      v74 = v17;
      v75 = 2048;
      v76 = [v18 chunkSize];
      v77 = 2080;
      v78 = GTFileTransferCompressionAlgorithmToString([v18 compressionAlgorithm]);
      _os_log_debug_impl(&dword_24DBC9000, v20, OS_LOG_TYPE_DEBUG, "Initiate transfer basePath:%@ device:%@ toURL:%@ chunkSize:%lu compression:%s", buf, 0x34u);
    }
  }

  else
  {
    v21 = *MEMORY[0x277D85E08];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Initiate transfer basePath:%@ device:%@ toURL:%@ chunkSize:%lu compression:%s", v15, v16, v17, objc_msgSend(v18, "chunkSize"), GTFileTransferCompressionAlgorithmToString(objc_msgSend(v18, "compressionAlgorithm"))];
    fprintf(v21, "%s\n", [v22 UTF8String]);
  }

  v57 = v15;
  if (GTFileTransferOptionsValidate(v18))
  {
    v62 = 0;
    v23 = [GTFileWriterSession sessionWithFileEntries:v14 relativeToURL:v17 options:v18 error:&v62];
    v24 = v62;
    if (v23)
    {
      v56 = v14;
      v25 = self->_sessionCounts + 1;
      self->_sessionCounts = v25;
      sessions = self->_sessions;
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v25];
      [(NSMutableDictionary *)sessions setObject:v23 forKeyedSubscript:v27];

      v28 = [(GTConnectionProvider *)self->_connectionProvider connectionForDeviceUDID:v16];
      v55 = v28;
      if (v28)
      {
        v29 = v28;
        v30 = FindRemoteGTFileWriterService(v28, v16, self->_connectionProvider);
        v54 = v30;
        if (v30)
        {
          v31 = v30;
          v32 = [GTFileWriterServiceXPCProxy alloc];
          v33 = [v31 serviceProperties];
          v34 = [(GTFileWriterServiceXPCProxy *)v32 initWithConnection:v29 remoteProperties:v33];

          deviceUDID = self->_deviceUDID;
          v59[0] = MEMORY[0x277D85DD0];
          v59[1] = 3221225472;
          v59[2] = __92__GTFileWriterService_initiateTransfer_basePath_fromDevice_toURL_options_completionHandler___block_invoke;
          v59[3] = &unk_279661528;
          v59[4] = self;
          v61 = v25;
          v60 = v19;
          [(GTFileWriterServiceXPCProxy *)v34 beginTransferSessionWithFileEntries:v56 basePath:v57 toDevice:deviceUDID options:v18 sessionID:v25 completionHandler:v59];
        }

        else
        {
          if (GTCoreLogUseOsLog())
          {
            v43 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              [GTFileWriterService initiateTransfer:basePath:fromDevice:toURL:options:completionHandler:];
            }
          }

          else
          {
            v49 = *MEMORY[0x277D85DF8];
            v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"File writer service for %@ is unavailable", v16];
            fprintf(v49, "%s\n", [v43 UTF8String]);
          }

          v50 = MEMORY[0x277CCA9B8];
          v63 = *MEMORY[0x277CCA450];
          v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"Service is unavailable: %@", @"GTFileWriterService"];
          v64 = v51;
          v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
          v34 = [v50 errorWithDomain:@"com.apple.gputools.transport" code:1 userInfo:v52];

          (*(v19 + 2))(v19, v34);
        }

        v48 = v54;
      }

      else
      {
        if (GTCoreLogUseOsLog())
        {
          v42 = gt_tagged_log(0x10u);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            [GTFileWriterService initiateTransfer:basePath:fromDevice:toURL:options:completionHandler:];
          }
        }

        else
        {
          v44 = *MEMORY[0x277D85DF8];
          v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"Remote connection for %@ is unavailable", v16];
          fprintf(v44, "%s\n", [v42 UTF8String]);
        }

        v45 = MEMORY[0x277CCA9B8];
        v65 = *MEMORY[0x277CCA450];
        v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to find remote connection"];
        v66 = v46;
        v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
        v48 = [v45 errorWithDomain:@"com.apple.gputools.transport" code:5 userInfo:v47];

        (*(v19 + 2))(v19, v48);
      }

      v14 = v56;
    }

    else
    {
      (*(v19 + 2))(v19, v24);
    }
  }

  else
  {
    if (GTCoreLogUseOsLog())
    {
      v36 = gt_tagged_log(0x10u);
      v37 = v14;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [GTFileWriterService initiateTransfer:basePath:fromDevice:toURL:options:completionHandler:];
      }
    }

    else
    {
      v37 = v14;
      v38 = *MEMORY[0x277D85DF8];
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid options sent to initiateTransfer"];
      fprintf(v38, "%s\n", [v36 UTF8String]);
    }

    v39 = MEMORY[0x277CCA9B8];
    v67 = *MEMORY[0x277CCA450];
    v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTFileWriterService", @"options sent to initiateTransfer are invalid."];
    v68 = v40;
    v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
    v24 = [v39 errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v41];

    (*(v19 + 2))(v19, v24);
    v14 = v37;
  }

  v53 = *MEMORY[0x277D85DE8];
}

void __92__GTFileWriterService_initiateTransfer_basePath_fromDevice_toURL_options_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v5 = a1 + 6;
  v4 = a1[6];
  v6 = a1[4];
  v20 = 0;
  v7 = [v6 _finishSession:v4 error:&v20];
  v8 = v20;
  v9 = GTCoreLogUseOsLog();
  if (v3)
  {
    if (v9)
    {
      v10 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __92__GTFileWriterService_initiateTransfer_basePath_fromDevice_toURL_options_completionHandler___block_invoke_cold_1(a1 + 6, v3);
      }
    }

    else
    {
      v11 = *MEMORY[0x277D85E08];
      v12 = MEMORY[0x277CCACA8];
      v13 = *v5;
      v10 = [v3 localizedDescription];
      v14 = [v12 stringWithFormat:@"Transfer session %llu failed with error %@", v13, v10];
      fprintf(v11, "%s\n", [v14 UTF8String]);
    }
  }

  else if (v7)
  {
    if (v9)
    {
      v10 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __92__GTFileWriterService_initiateTransfer_basePath_fromDevice_toURL_options_completionHandler___block_invoke_cold_3(a1 + 6, v10);
      }
    }

    else
    {
      v15 = *MEMORY[0x277D85E08];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Transfer session %llu completed successfully", *v5];
      fprintf(v15, "%s\n", [v10 UTF8String]);
    }
  }

  else if (v9)
  {
    v10 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __92__GTFileWriterService_initiateTransfer_basePath_fromDevice_toURL_options_completionHandler___block_invoke_cold_1(a1 + 6, v8);
    }
  }

  else
  {
    v16 = *MEMORY[0x277D85E08];
    v17 = MEMORY[0x277CCACA8];
    v18 = *v5;
    v10 = [v8 localizedDescription];
    v19 = [v17 stringWithFormat:@"Transfer session %llu failed with error %@", v18, v10];
    fprintf(v16, "%s\n", [v19 UTF8String]);
  }

  (*(a1[5] + 16))();
}

- (void)beginTransferSessionWithFileEntries:(id)a3 basePath:(id)a4 toDevice:(id)a5 options:(id)a6 sessionID:(unint64_t)a7 completionHandler:(id)a8
{
  v73[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v56 = [(GTURLAccessProvider *)self->_urlAccessProvider urlForPath:v15];
  if (![v14 count])
  {
    if (GTCoreLogUseOsLog())
    {
      v29 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [GTFileWriterService beginTransferSessionWithFileEntries:basePath:toDevice:options:sessionID:completionHandler:];
      }
    }

    else
    {
      v31 = *MEMORY[0x277D85DF8];
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"No files specified"];
      fprintf(v31, "%s\n", [v32 UTF8String]);
    }

    v33 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA5B8];
    v72 = *MEMORY[0x277CCA450];
    v73[0] = @"No files specified";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:&v72 count:1];
    v35 = [v33 errorWithDomain:v34 code:2 userInfo:v20];
    goto LABEL_28;
  }

  if (GTFileTransferOptionsValidate(v17))
  {
    v19 = [(GTConnectionProvider *)self->_connectionProvider connectionForDeviceUDID:v16];
    v20 = v19;
    if (v19)
    {
      v21 = FindRemoteGTFileWriterService(v19, v16, self->_connectionProvider);
      v55 = v21;
      if (v21)
      {
        v22 = v21;
        v23 = [GTFileWriterServiceXPCProxy alloc];
        v24 = [v22 serviceProperties];
        v25 = [(GTFileWriterServiceXPCProxy *)v23 initWithConnection:v20 remoteProperties:v24];

        [v56 startAccessingSecurityScopedResource];
        v26 = [MEMORY[0x277CBEBC0] fileURLWithPath:v15 isDirectory:1];
        queue = self->_fileTransferQueue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __113__GTFileWriterService_beginTransferSessionWithFileEntries_basePath_toDevice_options_sessionID_completionHandler___block_invoke;
        block[3] = &unk_279661578;
        v58 = v14;
        v59 = v26;
        v60 = v17;
        v61 = self;
        v62 = v25;
        v65 = a7;
        v63 = v56;
        v64 = v18;
        v27 = v25;
        v28 = v26;
        dispatch_async(queue, block);
      }

      else
      {
        if (GTCoreLogUseOsLog())
        {
          v42 = gt_tagged_log(0x10u);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            [GTFileWriterService initiateTransfer:basePath:fromDevice:toURL:options:completionHandler:];
          }
        }

        else
        {
          v48 = *MEMORY[0x277D85DF8];
          v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"File writer service for %@ is unavailable", v16];
          fprintf(v48, "%s\n", [v49 UTF8String]);
        }

        v50 = MEMORY[0x277CCA9B8];
        v66 = *MEMORY[0x277CCA450];
        v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"Service is unavailable: %@", @"GTFileWriterService"];
        v67 = v51;
        v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v28 = [v50 errorWithDomain:@"com.apple.gputools.transport" code:1 userInfo:v52];

        (*(v18 + 2))(v18, v28);
      }

      v35 = v55;
      goto LABEL_32;
    }

    if (GTCoreLogUseOsLog())
    {
      v41 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        [GTFileWriterService initiateTransfer:basePath:fromDevice:toURL:options:completionHandler:];
      }
    }

    else
    {
      v43 = *MEMORY[0x277D85DF8];
      v44 = [MEMORY[0x277CCACA8] stringWithFormat:@"Remote connection for %@ is unavailable", v16];
      fprintf(v43, "%s\n", [v44 UTF8String]);
    }

    v45 = MEMORY[0x277CCA9B8];
    v68 = *MEMORY[0x277CCA450];
    v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to find remote connection"];
    v69 = v46;
    v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
    v35 = [v45 errorWithDomain:@"com.apple.gputools.transport" code:5 userInfo:v47];

LABEL_28:
    (*(v18 + 2))(v18, v35);
LABEL_32:

    goto LABEL_33;
  }

  if (GTCoreLogUseOsLog())
  {
    v30 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [GTFileWriterService beginTransferSessionWithFileEntries:basePath:toDevice:options:sessionID:completionHandler:];
    }
  }

  else
  {
    v36 = *MEMORY[0x277D85DF8];
    v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid options sent to beginTransferSessionWithFileEntries"];
    fprintf(v36, "%s\n", [v37 UTF8String]);
  }

  v38 = MEMORY[0x277CCA9B8];
  v70 = *MEMORY[0x277CCA450];
  v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTFileWriterService", @"options sent to beginTransferSessionWithFileEntries is invalid"];
  v71 = v39;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
  v20 = [v38 errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v40];

  (*(v18 + 2))(v18, v20);
LABEL_33:

  v53 = *MEMORY[0x277D85DE8];
}

void __113__GTFileWriterService_beginTransferSessionWithFileEntries_basePath_toDevice_options_sessionID_completionHandler___block_invoke(uint64_t a1)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__3;
  v32 = __Block_byref_object_dispose__3;
  v33 = 0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v27 = 0;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __113__GTFileWriterService_beginTransferSessionWithFileEntries_basePath_toDevice_options_sessionID_completionHandler___block_invoke_262;
  v22 = &unk_279661550;
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v23 = *(a1 + 56);
  v6 = v5;
  v7 = *(a1 + 88);
  v25 = &v28;
  v26 = v7;
  v24 = v6;
  LOBYTE(v3) = GTFileWriterTransferFileEntries(v2, v3, v4, &v27, &v19);
  v8 = v27;
  if ((v3 & 1) == 0)
  {
    [*(a1 + 72) stopAccessingSecurityScopedResource];
    v11 = *(*(a1 + 80) + 16);
LABEL_7:
    v11();
    goto LABEL_13;
  }

  v9 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 2000000000);
  if (!dispatch_semaphore_wait(*(*(a1 + 56) + 56), v9))
  {
    if (v29[5])
    {
      [*(a1 + 72) stopAccessingSecurityScopedResource];
      v12 = v29[5];
    }

    else
    {
      dispatch_semaphore_signal(*(*(a1 + 56) + 56));
      [*(a1 + 72) stopAccessingSecurityScopedResource];
    }

    v11 = *(*(a1 + 80) + 16);
    goto LABEL_7;
  }

  if (GTCoreLogUseOsLog())
  {
    v10 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __113__GTFileWriterService_beginTransferSessionWithFileEntries_basePath_toDevice_options_sessionID_completionHandler___block_invoke_cold_1();
    }
  }

  else
  {
    v13 = *MEMORY[0x277D85DF8];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"beginTransferSessionWithFileEntries timed out waiting for final write to complete"];
    fprintf(v13, "%s\n", [v10 UTF8String]);
  }

  v14 = MEMORY[0x277CCA9B8];
  v34 = *MEMORY[0x277CCA450];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ hit a timeout: %@", @"GTFileWriterService", @"beginTransferSessionWithFileEntries timed out waiting for final write to complete", v19, v20, v21, v22, v23];
  v35[0] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
  v17 = [v14 errorWithDomain:@"com.apple.gputools.transport" code:6 userInfo:v16];

  [*(a1 + 72) stopAccessingSecurityScopedResource];
  (*(*(a1 + 80) + 16))();

LABEL_13:
  _Block_object_dispose(&v28, 8);

  v18 = *MEMORY[0x277D85DE8];
}

BOOL __113__GTFileWriterService_beginTransferSessionWithFileEntries_basePath_toDevice_options_sessionID_completionHandler___block_invoke_262(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a2 length:a3 freeWhenDone:0];
  v7 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 2000000000);
  v8 = dispatch_semaphore_wait(*(a1[4] + 56), v7);
  if (!v8)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = a1[7];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __113__GTFileWriterService_beginTransferSessionWithFileEntries_basePath_toDevice_options_sessionID_completionHandler___block_invoke_270;
    v21[3] = &unk_279661418;
    v12 = a1[5];
    v13 = a1[6];
    v21[4] = a1[4];
    v21[5] = v13;
    [v12 writeFileData:v6 sessionID:v11 completionHandler:v21];
    objc_autoreleasePoolPop(v10);
    goto LABEL_10;
  }

  if (!GTCoreLogUseOsLog())
  {
    v14 = *MEMORY[0x277D85DF8];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"beginTransferSessionWithFileEntries timed out waiting for transfer to complete"];
    fprintf(v14, "%s\n", [v15 UTF8String]);

    if (!a4)
    {
      goto LABEL_10;
    }

LABEL_9:
    v16 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ hit a timeout: %@", @"GTFileWriterService", @"beginTransferSessionWithFileEntries timed out waiting for transfer to complete"];
    v23[0] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    *a4 = [v16 errorWithDomain:@"com.apple.gputools.transport" code:6 userInfo:v18];

    goto LABEL_10;
  }

  v9 = gt_tagged_log(0x10u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __113__GTFileWriterService_beginTransferSessionWithFileEntries_basePath_toDevice_options_sessionID_completionHandler___block_invoke_262_cold_1();
  }

  if (a4)
  {
    goto LABEL_9;
  }

LABEL_10:

  v19 = *MEMORY[0x277D85DE8];
  return v8 == 0;
}

void __113__GTFileWriterService_beginTransferSessionWithFileEntries_basePath_toDevice_options_sessionID_completionHandler___block_invoke_270(uint64_t a1, void *a2)
{
  v7 = a2;
  v4 = *(*(a1 + 40) + 8);
  v6 = *(v4 + 40);
  v5 = (v4 + 40);
  if (!v6)
  {
    objc_storeStrong(v5, a2);
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 56));
}

- (void)writeFileData:(id)a3 sessionID:(unint64_t)a4 completionHandler:(id)a5
{
  sessions = self->_sessions;
  v8 = MEMORY[0x277CCABB0];
  v9 = a5;
  v10 = a3;
  v12 = [v8 numberWithUnsignedLongLong:a4];
  v11 = [(NSMutableDictionary *)sessions objectForKeyedSubscript:v12];
  [v11 writeFileData:v10 completionHandler:v9];
}

- (BOOL)_finishSession:(unint64_t)a3 error:(id *)a4
{
  sessions = self->_sessions;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v9 = [(NSMutableDictionary *)sessions objectForKeyedSubscript:v8];

  v10 = self->_sessions;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  [(NSMutableDictionary *)v10 removeObjectForKey:v11];

  LOBYTE(a4) = [v9 finish:a4];
  return a4;
}

- (void)startTransfer:basePath:fromDevice:toDirectory:options:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_24DBC9000, v1, OS_LOG_TYPE_DEBUG, "Start transfer of %@ to %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)startTransfer:basePath:fromDevice:toDirectory:options:completionHandler:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_24DBC9000, v0, OS_LOG_TYPE_DEBUG, "Failed to consume sandbox extension for URL %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __95__GTFileWriterService_startTransfer_basePath_fromDevice_toDirectory_options_completionHandler___block_invoke_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = *__error();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

void __95__GTFileWriterService_startTransfer_basePath_fromDevice_toDirectory_options_completionHandler___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __95__GTFileWriterService_startTransfer_basePath_fromDevice_toDirectory_options_completionHandler___block_invoke_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initiateTransfer:basePath:fromDevice:toURL:options:completionHandler:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initiateTransfer:basePath:fromDevice:toURL:options:completionHandler:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __92__GTFileWriterService_initiateTransfer_basePath_fromDevice_toURL_options_completionHandler___block_invoke_cold_1(uint64_t *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = [a2 localizedDescription];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __92__GTFileWriterService_initiateTransfer_basePath_fromDevice_toURL_options_completionHandler___block_invoke_cold_3(uint64_t *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 134217984;
  v5 = v2;
  _os_log_debug_impl(&dword_24DBC9000, a2, OS_LOG_TYPE_DEBUG, "Transfer session %llu completed successfully", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end