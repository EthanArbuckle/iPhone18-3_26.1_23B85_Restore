@interface GTFileWriterServiceXPCDispatcher
- (GTFileWriterServiceXPCDispatcher)initWithService:(id)a3 properties:(id)a4;
- (void)beginTransferSessionWithFileEntries_basePath_toDevice_options_sessionID_completionHandler_:(id)a3 replyConnection:(id)a4;
- (void)initiateTransfer_basePath_fromDevice_options_completionHandler_:(id)a3 replyConnection:(id)a4;
- (void)startTransfer_basePath_fromDevice_options_completionHandler_:(id)a3 replyConnection:(id)a4;
- (void)startTransfer_basePath_fromDevice_toDirectory_options_completionHandler_:(id)a3 replyConnection:(id)a4;
- (void)writeFileData_sessionID_completionHandler_:(id)a3 replyConnection:(id)a4;
@end

@implementation GTFileWriterServiceXPCDispatcher

- (GTFileWriterServiceXPCDispatcher)initWithService:(id)a3 properties:(id)a4
{
  v7 = a3;
  v8 = [a4 protocolMethods];
  v11.receiver = self;
  v11.super_class = GTFileWriterServiceXPCDispatcher;
  v9 = [(GTXPCDispatcher *)&v11 initWithProtocolMethods:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_service, a3);
  }

  return v9;
}

- (void)initiateTransfer_basePath_fromDevice_options_completionHandler_:(id)a3 replyConnection:(id)a4
{
  v39[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = gt_xpc_dictionary_create_reply(v6);
  v9 = objc_opt_class();
  nsarray = xpc_dictionary_get_nsarray(v6, "fileEntries", v9);
  string = xpc_dictionary_get_string(v6, "path");
  if (string && ([MEMORY[0x277CCACA8] stringWithUTF8String:string], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    v14 = xpc_dictionary_get_string(v6, "deviceUDID");
    if (v14 && ([MEMORY[0x277CCACA8] stringWithUTF8String:v14], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v16 = v15;
      v17 = objc_opt_class();
      nsobject = xpc_dictionary_get_nsobject(v6, "options", v17);
      service = self->_service;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __116__GTFileWriterServiceXPCDispatcher_initiateTransfer_basePath_fromDevice_options_completionHandler__replyConnection___block_invoke;
      v33[3] = &unk_279661440;
      v34 = v8;
      v35 = v7;
      [(GTFileWriterService *)service initiateTransfer:nsarray basePath:v13 fromDevice:v16 options:nsobject completionHandler:v33];
    }

    else
    {
      if (GTCoreLogUseOsLog())
      {
        v26 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [GTFileWriterServiceXPCDispatcher initiateTransfer_basePath_fromDevice_options_completionHandler_:replyConnection:];
        }
      }

      else
      {
        v27 = *MEMORY[0x277D85DF8];
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid device UDID passed to initiateTransfer"];
        fprintf(v27, "%s\n", [v28 UTF8String]);
      }

      v29 = MEMORY[0x277CCA9B8];
      v36 = *MEMORY[0x277CCA450];
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTFileWriterServiceXPCDispatcher", @"Invalid device UDID passed to initiateTransfer"];
      v37 = v30;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v16 = [v29 errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v31];

      xpc_dictionary_set_nserror(v8, "error", v16);
      [v7 sendMessage:v8];
    }
  }

  else
  {
    if (GTCoreLogUseOsLog())
    {
      v20 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [GTFileWriterServiceXPCDispatcher initiateTransfer_basePath_fromDevice_options_completionHandler_:replyConnection:];
      }
    }

    else
    {
      v21 = *MEMORY[0x277D85DF8];
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid path passed to initiateTransfer"];
      fprintf(v21, "%s\n", [v22 UTF8String]);
    }

    v23 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277CCA450];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTFileWriterServiceXPCDispatcher", @"Invalid path passed to initiateTransfer"];
    v39[0] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v13 = [v23 errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v25];

    xpc_dictionary_set_nserror(v8, "error", v13);
    [v7 sendMessage:v8];
  }

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __116__GTFileWriterServiceXPCDispatcher_initiateTransfer_basePath_fromDevice_options_completionHandler__replyConnection___block_invoke(uint64_t a1, uint64_t a2)
{
  xpc_dictionary_set_nserror(*(a1 + 32), "error", a2);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 sendMessage:v4];
}

- (void)startTransfer_basePath_fromDevice_options_completionHandler_:(id)a3 replyConnection:(id)a4
{
  v39[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = gt_xpc_dictionary_create_reply(v6);
  v9 = objc_opt_class();
  nsarray = xpc_dictionary_get_nsarray(v6, "fileEntries", v9);
  string = xpc_dictionary_get_string(v6, "path");
  if (string && ([MEMORY[0x277CCACA8] stringWithUTF8String:string], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    v14 = xpc_dictionary_get_string(v6, "deviceUDID");
    if (v14 && ([MEMORY[0x277CCACA8] stringWithUTF8String:v14], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v16 = v15;
      v17 = objc_opt_class();
      nsobject = xpc_dictionary_get_nsobject(v6, "options", v17);
      service = self->_service;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __113__GTFileWriterServiceXPCDispatcher_startTransfer_basePath_fromDevice_options_completionHandler__replyConnection___block_invoke;
      v33[3] = &unk_2796615A0;
      v34 = v8;
      v35 = v7;
      [(GTFileWriterService *)service startTransfer:nsarray basePath:v13 fromDevice:v16 options:nsobject completionHandler:v33];
    }

    else
    {
      if (GTCoreLogUseOsLog())
      {
        v26 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [GTFileWriterServiceXPCDispatcher startTransfer_basePath_fromDevice_options_completionHandler_:replyConnection:];
        }
      }

      else
      {
        v27 = *MEMORY[0x277D85DF8];
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid device UDID passed to startTransfer"];
        fprintf(v27, "%s\n", [v28 UTF8String]);
      }

      v29 = MEMORY[0x277CCA9B8];
      v36 = *MEMORY[0x277CCA450];
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTFileWriterServiceXPCDispatcher", @"Invalid device UDID passed to startTransfer"];
      v37 = v30;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v16 = [v29 errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v31];

      xpc_dictionary_set_nserror(v8, "error", v16);
      [v7 sendMessage:v8];
    }
  }

  else
  {
    if (GTCoreLogUseOsLog())
    {
      v20 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [GTFileWriterServiceXPCDispatcher startTransfer_basePath_fromDevice_options_completionHandler_:replyConnection:];
      }
    }

    else
    {
      v21 = *MEMORY[0x277D85DF8];
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid path passed to startTransfer"];
      fprintf(v21, "%s\n", [v22 UTF8String]);
    }

    v23 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277CCA450];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTFileWriterServiceXPCDispatcher", @"Invalid path passed to startTransfer"];
    v39[0] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v13 = [v23 errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v25];

    xpc_dictionary_set_nserror(v8, "error", v13);
    [v7 sendMessage:v8];
  }

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __113__GTFileWriterServiceXPCDispatcher_startTransfer_basePath_fromDevice_options_completionHandler__replyConnection___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  xpc_dictionary_set_nsobject(v5, "url", a2);
  xpc_dictionary_set_nserror(*(a1 + 32), "error", v6);

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v7 sendMessage:v8];
}

- (void)startTransfer_basePath_fromDevice_toDirectory_options_completionHandler_:(id)a3 replyConnection:(id)a4
{
  v51[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = gt_xpc_dictionary_create_reply(v6);
  v9 = objc_opt_class();
  nsarray = xpc_dictionary_get_nsarray(v6, "fileEntries", v9);
  string = xpc_dictionary_get_string(v6, "path");
  if (string && ([MEMORY[0x277CCACA8] stringWithUTF8String:string], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    v14 = xpc_dictionary_get_string(v6, "deviceUDID");
    if (v14 && ([MEMORY[0x277CCACA8] stringWithUTF8String:v14], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v16 = v15;
      v17 = objc_opt_class();
      nsobject = xpc_dictionary_get_nsobject(v6, "directory", v17);
      if (nsobject)
      {
        v19 = xpc_dictionary_get_string(v6, "sandboxExtension");
        if (v19)
        {
          v20 = [MEMORY[0x277CBEA90] dataWithBytes:v19 length:strlen(v19) + 1];
          MEMORY[0x253034530](nsobject, v20);
        }

        v21 = objc_opt_class();
        v22 = xpc_dictionary_get_nsobject(v6, "options", v21);
        service = self->_service;
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __125__GTFileWriterServiceXPCDispatcher_startTransfer_basePath_fromDevice_toDirectory_options_completionHandler__replyConnection___block_invoke;
        v43[3] = &unk_2796615A0;
        v44 = v8;
        v45 = v7;
        [(GTFileWriterService *)service startTransfer:nsarray basePath:v13 fromDevice:v16 toDirectory:nsobject options:v22 completionHandler:v43];
      }

      else
      {
        if (GTCoreLogUseOsLog())
        {
          v36 = gt_tagged_log(0x10u);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            [GTFileWriterServiceXPCDispatcher startTransfer_basePath_fromDevice_toDirectory_options_completionHandler_:replyConnection:];
          }
        }

        else
        {
          v37 = *MEMORY[0x277D85DF8];
          v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid destination directory passed to initiateTransfer"];
          fprintf(v37, "%s\n", [v38 UTF8String]);
        }

        v42 = MEMORY[0x277CCA9B8];
        v46 = *MEMORY[0x277CCA450];
        v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTFileWriterServiceXPCDispatcher", @"Invalid destination directory passed to initiateTransfer"];
        v47 = v39;
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v22 = [v42 errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v40];

        xpc_dictionary_set_nserror(v8, "error", v22);
        [v7 sendMessage:v8];
      }
    }

    else
    {
      if (GTCoreLogUseOsLog())
      {
        v30 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [GTFileWriterServiceXPCDispatcher startTransfer_basePath_fromDevice_options_completionHandler_:replyConnection:];
        }
      }

      else
      {
        v31 = *MEMORY[0x277D85DF8];
        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid device UDID passed to startTransfer"];
        fprintf(v31, "%s\n", [v32 UTF8String]);
      }

      v33 = MEMORY[0x277CCA9B8];
      v48 = *MEMORY[0x277CCA450];
      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTFileWriterServiceXPCDispatcher", @"Invalid device UDID passed to startTransfer"];
      v49 = v34;
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v16 = [v33 errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v35];

      xpc_dictionary_set_nserror(v8, "error", v16);
      [v7 sendMessage:v8];
    }
  }

  else
  {
    if (GTCoreLogUseOsLog())
    {
      v24 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [GTFileWriterServiceXPCDispatcher startTransfer_basePath_fromDevice_options_completionHandler_:replyConnection:];
      }
    }

    else
    {
      v25 = *MEMORY[0x277D85DF8];
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid path passed to startTransfer"];
      fprintf(v25, "%s\n", [v26 UTF8String]);
    }

    v27 = MEMORY[0x277CCA9B8];
    v50 = *MEMORY[0x277CCA450];
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTFileWriterServiceXPCDispatcher", @"Invalid path passed to startTransfer"];
    v51[0] = v28;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    v13 = [v27 errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v29];

    xpc_dictionary_set_nserror(v8, "error", v13);
    [v7 sendMessage:v8];
  }

  v41 = *MEMORY[0x277D85DE8];
}

uint64_t __125__GTFileWriterServiceXPCDispatcher_startTransfer_basePath_fromDevice_toDirectory_options_completionHandler__replyConnection___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  xpc_dictionary_set_nsobject(v5, "url", a2);
  xpc_dictionary_set_nserror(*(a1 + 32), "error", v6);

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v7 sendMessage:v8];
}

- (void)beginTransferSessionWithFileEntries_basePath_toDevice_options_sessionID_completionHandler_:(id)a3 replyConnection:(id)a4
{
  v40[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = gt_xpc_dictionary_create_reply(v6);
  v9 = objc_opt_class();
  nsarray = xpc_dictionary_get_nsarray(v6, "fileEntries", v9);
  string = xpc_dictionary_get_string(v6, "path");
  if (string && ([MEMORY[0x277CCACA8] stringWithUTF8String:string], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    v14 = xpc_dictionary_get_string(v6, "deviceUDID");
    if (v14 && ([MEMORY[0x277CCACA8] stringWithUTF8String:v14], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v16 = v15;
      v17 = objc_opt_class();
      nsobject = xpc_dictionary_get_nsobject(v6, "options", v17);
      uint64 = xpc_dictionary_get_uint64(v6, "sessionID");
      service = self->_service;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __143__GTFileWriterServiceXPCDispatcher_beginTransferSessionWithFileEntries_basePath_toDevice_options_sessionID_completionHandler__replyConnection___block_invoke;
      v34[3] = &unk_279661440;
      v35 = v8;
      v36 = v7;
      [(GTFileWriterService *)service beginTransferSessionWithFileEntries:nsarray basePath:v13 toDevice:v16 options:nsobject sessionID:uint64 completionHandler:v34];
    }

    else
    {
      if (GTCoreLogUseOsLog())
      {
        v27 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [GTFileWriterServiceXPCDispatcher beginTransferSessionWithFileEntries_basePath_toDevice_options_sessionID_completionHandler_:replyConnection:];
        }
      }

      else
      {
        v28 = *MEMORY[0x277D85DF8];
        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid device UDID passed to beginTransferSessionWithFileEntries"];
        fprintf(v28, "%s\n", [v29 UTF8String]);
      }

      v30 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CCA450];
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTFileWriterServiceXPCDispatcher", @"Invalid device UDID passed to beginTransferSessionWithFileEntries"];
      v38 = v31;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v16 = [v30 errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v32];

      xpc_dictionary_set_nserror(v8, "error", v16);
      [v7 sendMessage:v8];
    }
  }

  else
  {
    if (GTCoreLogUseOsLog())
    {
      v21 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [GTFileWriterServiceXPCDispatcher beginTransferSessionWithFileEntries_basePath_toDevice_options_sessionID_completionHandler_:replyConnection:];
      }
    }

    else
    {
      v22 = *MEMORY[0x277D85DF8];
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid path passed to beginTransferSessionWithFileEntries"];
      fprintf(v22, "%s\n", [v23 UTF8String]);
    }

    v24 = MEMORY[0x277CCA9B8];
    v39 = *MEMORY[0x277CCA450];
    v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTFileWriterServiceXPCDispatcher", @"Invalid path passed to beginTransferSessionWithFileEntries"];
    v40[0] = v25;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v13 = [v24 errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v26];

    xpc_dictionary_set_nserror(v8, "error", v13);
    [v7 sendMessage:v8];
  }

  v33 = *MEMORY[0x277D85DE8];
}

uint64_t __143__GTFileWriterServiceXPCDispatcher_beginTransferSessionWithFileEntries_basePath_toDevice_options_sessionID_completionHandler__replyConnection___block_invoke(uint64_t a1, uint64_t a2)
{
  xpc_dictionary_set_nserror(*(a1 + 32), "error", a2);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 sendMessage:v4];
}

- (void)writeFileData_sessionID_completionHandler_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  nsdata_nocopy = xpc_dictionary_get_nsdata_nocopy(v7, "data");
  uint64 = xpc_dictionary_get_uint64(v7, "sessionID");
  v10 = gt_xpc_dictionary_create_reply(v7);

  service = self->_service;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __95__GTFileWriterServiceXPCDispatcher_writeFileData_sessionID_completionHandler__replyConnection___block_invoke;
  v14[3] = &unk_279661440;
  v15 = v10;
  v16 = v6;
  v12 = v6;
  v13 = v10;
  [(GTFileWriterService *)service writeFileData:nsdata_nocopy sessionID:uint64 completionHandler:v14];
}

uint64_t __95__GTFileWriterServiceXPCDispatcher_writeFileData_sessionID_completionHandler__replyConnection___block_invoke(uint64_t a1, uint64_t a2)
{
  xpc_dictionary_set_nserror(*(a1 + 32), "error", a2);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 sendMessage:v4];
}

@end