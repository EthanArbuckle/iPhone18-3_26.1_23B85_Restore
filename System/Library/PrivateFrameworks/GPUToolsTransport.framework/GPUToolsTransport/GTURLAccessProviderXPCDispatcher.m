@interface GTURLAccessProviderXPCDispatcher
- (GTURLAccessProviderXPCDispatcher)initWithService:(id)a3 properties:(id)a4;
- (void)copyIdentifier_toDevice_completionHandler_:(id)a3 replyConnection:(id)a4;
- (void)copyIdentifier_toDevice_directory_completionHandler_:(id)a3 replyConnection:(id)a4;
- (void)makeURL_:(id)a3 replyConnection:(id)a4;
- (void)securityScopedURLFromSandboxID_completionHandler_:(id)a3 replyConnection:(id)a4;
- (void)transferIdentifier_toDevice_completionHandler_:(id)a3 replyConnection:(id)a4;
- (void)urlForPath_:(id)a3 replyConnection:(id)a4;
@end

@implementation GTURLAccessProviderXPCDispatcher

- (GTURLAccessProviderXPCDispatcher)initWithService:(id)a3 properties:(id)a4
{
  v7 = a3;
  v8 = [a4 protocolMethods];
  v11.receiver = self;
  v11.super_class = GTURLAccessProviderXPCDispatcher;
  v9 = [(GTXPCDispatcher *)&v11 initWithProtocolMethods:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_service, a3);
  }

  return v9;
}

- (void)securityScopedURLFromSandboxID_completionHandler_:(id)a3 replyConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(v6, "identifier", v8);
  v23 = 0u;
  v24 = 0u;
  length = 0;
  data = xpc_dictionary_get_data(v6, "auditToken", &length);
  if (data && length == 32)
  {
    v11 = data[1];
    v23 = *data;
    v24 = v11;
  }

  else
  {
    v12 = [v7 connection];
    xpc_connection_get_audit_token();
  }

  v13 = gt_xpc_dictionary_create_reply(v6);
  service = self->_service;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __102__GTURLAccessProviderXPCDispatcher_securityScopedURLFromSandboxID_completionHandler__replyConnection___block_invoke;
  v17[3] = &unk_279661938;
  v18 = v7;
  v19 = v13;
  v20 = v23;
  v21 = v24;
  v15 = v13;
  v16 = v7;
  [(GTURLAccessProvider *)service securityScopedURLFromSandboxID:nsobject completionHandler:v17];
}

void __102__GTURLAccessProviderXPCDispatcher_securityScopedURLFromSandboxID_completionHandler__replyConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 startAccessingSecurityScopedResource];
    xpc_dictionary_set_nsobject(*(a1 + 40), "url", v4);
    v6 = *MEMORY[0x277D861B8];
    [v4 fileSystemRepresentation];
    v7 = *MEMORY[0x277D861E8];
    v10 = *(a1 + 48);
    v11 = *(a1 + 64);
    v8 = sandbox_extension_issue_file_to_process();
    if (v8)
    {
      v9 = v8;
      xpc_dictionary_set_string(*(a1 + 40), "sandboxExtension", v8);
      free(v9);
    }

    if (v5)
    {
      [v4 stopAccessingSecurityScopedResource];
    }
  }

  [*(a1 + 32) sendMessage:{*(a1 + 40), v10, v11}];
}

- (void)makeURL_:(id)a3 replyConnection:(id)a4
{
  xdict = a3;
  v6 = a4;
  v7 = gt_xpc_dictionary_create_reply(xdict);
  v8 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(xdict, "url", v8);
  if (nsobject)
  {
    string = xpc_dictionary_get_string(xdict, "sandboxExtension");
    if (string)
    {
      v11 = [MEMORY[0x277CBEA90] dataWithBytes:string length:strlen(string) + 1];
      MEMORY[0x253034530](nsobject, v11);
    }

    v12 = [(GTURLAccessProvider *)self->_service makeURL:nsobject];
    if (([v6 isTrusted] & 1) == 0)
    {
      v13 = [MEMORY[0x277CCACE0] componentsWithURL:v12 resolvingAgainstBaseURL:1];
      [v13 setHost:@"localhost"];
      v14 = [v13 URL];

      v12 = v14;
    }

    xpc_dictionary_set_nsobject(v7, "identifier", v12);
  }

  [v6 sendMessage:v7];
}

- (void)transferIdentifier_toDevice_completionHandler_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = gt_xpc_dictionary_create_reply(v7);
  v9 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(v7, "identifier", v9);
  string = xpc_dictionary_get_string(v7, "deviceUDID");

  if (string && ([MEMORY[0x277CCACA8] stringWithUTF8String:string], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    service = self->_service;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __99__GTURLAccessProviderXPCDispatcher_transferIdentifier_toDevice_completionHandler__replyConnection___block_invoke;
    v15[3] = &unk_2796616E0;
    v16 = v8;
    v17 = v6;
    [(GTURLAccessProvider *)service transferIdentifier:nsobject toDevice:v13 completionHandler:v15];
  }

  else
  {
    [v6 sendMessage:v8];
  }
}

uint64_t __99__GTURLAccessProviderXPCDispatcher_transferIdentifier_toDevice_completionHandler__replyConnection___block_invoke(uint64_t a1, uint64_t a2)
{
  xpc_dictionary_set_nsobject(*(a1 + 32), "url", a2);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 sendMessage:v4];
}

- (void)copyIdentifier_toDevice_completionHandler_:(id)a3 replyConnection:(id)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = gt_xpc_dictionary_create_reply(v7);
  v9 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(v7, "identifier", v9);
  string = xpc_dictionary_get_string(v7, "deviceUDID");

  if (string && ([MEMORY[0x277CCACA8] stringWithUTF8String:string], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    service = self->_service;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __95__GTURLAccessProviderXPCDispatcher_copyIdentifier_toDevice_completionHandler__replyConnection___block_invoke;
    v22[3] = &unk_2796615A0;
    v23 = v8;
    v24 = v6;
    [(GTURLAccessProvider *)service copyIdentifier:nsobject toDevice:v13 completionHandler:v22];
  }

  else
  {
    if (GTCoreLogUseOsLog())
    {
      v15 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [GTURLAccessProviderXPCDispatcher copyIdentifier_toDevice_completionHandler_:replyConnection:];
      }
    }

    else
    {
      v16 = *MEMORY[0x277D85DF8];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid device UDID passed to copyIdentifier"];
      fprintf(v16, "%s\n", [v17 UTF8String]);
    }

    v18 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTURLAccessProviderXPCDispatcher", @"Invalid device UDID passed to copyIdentifier"];
    v26[0] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v13 = [v18 errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v20];

    xpc_dictionary_set_nserror(v8, "error", v13);
    [v6 sendMessage:v8];
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __95__GTURLAccessProviderXPCDispatcher_copyIdentifier_toDevice_completionHandler__replyConnection___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  xpc_dictionary_set_nsobject(v5, "url", a2);
  xpc_dictionary_set_nserror(*(a1 + 32), "error", v6);

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v7 sendMessage:v8];
}

- (void)urlForPath_:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = gt_xpc_dictionary_create_reply(v7);
  string = xpc_dictionary_get_string(v7, "path");

  if (string && ([MEMORY[0x277CCACA8] stringWithUTF8String:string], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    v12 = [(GTURLAccessProvider *)self->_service urlForPath:v10];
    v13 = [v12 startAccessingSecurityScopedResource];
    xpc_dictionary_set_nsobject(v8, "result", v12);
    v14 = [v6 connection];
    xpc_connection_get_audit_token();

    v15 = *MEMORY[0x277D861B8];
    [v12 fileSystemRepresentation];
    v16 = *MEMORY[0x277D861E8];
    v19 = 0u;
    v20 = 0u;
    v17 = sandbox_extension_issue_file_to_process();
    if (v17)
    {
      v18 = v17;
      xpc_dictionary_set_string(v8, "sandboxExtension", v17);
      free(v18);
    }

    if (v13)
    {
      [v12 stopAccessingSecurityScopedResource];
    }

    [v6 sendMessage:{v8, v19, v20}];
  }

  else
  {
    [v6 sendMessage:v8];
  }
}

- (void)copyIdentifier_toDevice_directory_completionHandler_:(id)a3 replyConnection:(id)a4
{
  v39[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = gt_xpc_dictionary_create_reply(v6);
  v9 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(v6, "identifier", v9);
  string = xpc_dictionary_get_string(v6, "deviceUDID");
  if (string && ([MEMORY[0x277CCACA8] stringWithUTF8String:string], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    v14 = objc_opt_class();
    v15 = xpc_dictionary_get_nsobject(v6, "dir", v14);
    if (v15)
    {
      v16 = xpc_dictionary_get_string(v6, "dirse");
      if (v16)
      {
        v17 = [MEMORY[0x277CBEA90] dataWithBytes:v16 length:strlen(v16) + 1];
        MEMORY[0x253034530](v15, v17);
      }

      service = self->_service;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __105__GTURLAccessProviderXPCDispatcher_copyIdentifier_toDevice_directory_completionHandler__replyConnection___block_invoke;
      v33[3] = &unk_2796615A0;
      v34 = v8;
      v35 = v7;
      [(GTURLAccessProvider *)service copyIdentifier:nsobject toDevice:v13 directory:v15 completionHandler:v33];

      v19 = v34;
    }

    else
    {
      if (GTCoreLogUseOsLog())
      {
        v26 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [GTURLAccessProviderXPCDispatcher copyIdentifier_toDevice_directory_completionHandler_:replyConnection:];
        }
      }

      else
      {
        v27 = *MEMORY[0x277D85DF8];
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid destination directory passed to copyIdentifier"];
        fprintf(v27, "%s\n", [v28 UTF8String]);
      }

      v29 = MEMORY[0x277CCA9B8];
      v36 = *MEMORY[0x277CCA450];
      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTURLAccessProviderXPCDispatcher", @"Invalid destination directory passed to copyIdentifier"];
      v37 = v30;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v19 = [v29 errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v31];

      xpc_dictionary_set_nserror(v8, "error", v19);
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
        [GTURLAccessProviderXPCDispatcher copyIdentifier_toDevice_completionHandler_:replyConnection:];
      }
    }

    else
    {
      v21 = *MEMORY[0x277D85DF8];
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid device UDID passed to copyIdentifier"];
      fprintf(v21, "%s\n", [v22 UTF8String]);
    }

    v23 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277CCA450];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid argument sent to service %@: %@", @"GTURLAccessProviderXPCDispatcher", @"Invalid device UDID passed to copyIdentifier"];
    v39[0] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v13 = [v23 errorWithDomain:@"com.apple.gputools.transport" code:4 userInfo:v25];

    xpc_dictionary_set_nserror(v8, "error", v13);
    [v7 sendMessage:v8];
  }

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __105__GTURLAccessProviderXPCDispatcher_copyIdentifier_toDevice_directory_completionHandler__replyConnection___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  xpc_dictionary_set_nsobject(v5, "url", a2);
  xpc_dictionary_set_nserror(*(a1 + 32), "error", v6);

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v7 sendMessage:v8];
}

- (void)copyIdentifier_toDevice_completionHandler_:replyConnection:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)copyIdentifier_toDevice_directory_completionHandler_:replyConnection:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end