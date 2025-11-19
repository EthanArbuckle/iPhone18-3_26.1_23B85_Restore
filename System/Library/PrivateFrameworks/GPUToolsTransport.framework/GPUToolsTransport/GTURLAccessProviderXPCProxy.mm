@interface GTURLAccessProviderXPCProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (GTURLAccessProviderXPCProxy)initWithConnection:(id)a3 remoteProperties:(id)a4;
- (id)makeURL:(id)a3;
- (id)urlForPath:(id)a3;
- (void)copyIdentifier:(id)a3 toDevice:(id)a4 completionHandler:(id)a5;
- (void)copyIdentifier:(id)a3 toDevice:(id)a4 directory:(id)a5 completionHandler:(id)a6;
- (void)securityScopedURLFromSandboxID:(id)a3 completionHandler:(id)a4;
- (void)transferIdentifier:(id)a3 toDevice:(id)a4 completionHandler:(id)a5;
@end

@implementation GTURLAccessProviderXPCProxy

- (GTURLAccessProviderXPCProxy)initWithConnection:(id)a3 remoteProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = &unk_2860EEDF0;
  v9 = [v7 protocolName];
  v10 = NSStringFromProtocol(v8);
  v11 = [v9 isEqualToString:v10];

  if (v11)
  {
    v23.receiver = self;
    v23.super_class = GTURLAccessProviderXPCProxy;
    v12 = [(GTURLAccessProviderXPCProxy *)&v23 init];
    if (v12)
    {
      v13 = [GTServiceConnection alloc];
      v14 = [v7 deviceUDID];
      v15 = -[GTServiceConnection initWithConnection:device:port:](v13, "initWithConnection:device:port:", v6, v14, [v7 servicePort]);
      connection = v12->_connection;
      v12->_connection = v15;

      v17 = [GTServiceProperties protocolMethods:v8];
      v18 = [v7 protocolMethods];
      v19 = newSetWithArrayMinusArray(v17, v18);
      ignoreMethods = v12->_ignoreMethods;
      v12->_ignoreMethods = v19;
    }

    self = v12;
    v21 = self;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  ignoreMethods = self->_ignoreMethods;
  v6 = NSStringFromSelector(a3);
  if ([(NSSet *)ignoreMethods containsObject:v6])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = GTURLAccessProviderXPCProxy;
    v7 = [(GTURLAccessProviderXPCProxy *)&v9 respondsToSelector:a3];
  }

  return v7;
}

- (void)securityScopedURLFromSandboxID:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v8 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "identifier", v8);

  *task_info_out = 0u;
  v22 = 0u;
  task_info_outCnt = 8;
  v11 = task_info(*MEMORY[0x277D85F48], 0xFu, task_info_out, &task_info_outCnt);
  if (v11)
  {
    v12 = v11;
    if (GTCoreLogUseOsLog())
    {
      v13 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [GTURLAccessProviderXPCProxy securityScopedURLFromSandboxID:completionHandler:];
      }
    }

    else
    {
      v14 = *MEMORY[0x277D85DF8];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get audit token for self (%d)", v12];
      fprintf(v14, "%s\n", [v15 UTF8String]);
    }
  }

  else
  {
    xpc_dictionary_set_data(empty, "auditToken", task_info_out, 0x20uLL);
  }

  connection = self->_connection;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __80__GTURLAccessProviderXPCProxy_securityScopedURLFromSandboxID_completionHandler___block_invoke;
  v18[3] = &unk_279661050;
  v19 = v7;
  v17 = v7;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v18];
}

void __80__GTURLAccessProviderXPCProxy_securityScopedURLFromSandboxID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  xdict = a2;
  if (xdict)
  {
    v3 = objc_opt_class();
    nsobject = xpc_dictionary_get_nsobject(xdict, "url", v3);
    v5 = nsobject;
    if (nsobject && ([nsobject path], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v7))
    {
      string = xpc_dictionary_get_string(xdict, "sandboxExtension");
      if (string)
      {
        v9 = [MEMORY[0x277CBEA90] dataWithBytes:string length:strlen(string) + 1];
        MEMORY[0x253034530](v5, v9);
      }

      v10 = *(*(a1 + 32) + 16);
    }

    else
    {
      v10 = *(*(a1 + 32) + 16);
    }

    v10();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)makeURL:(id)a3
{
  v5 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "url", v5);
  v8 = [(GTXPCConnection *)self->_connection connection];
  xpc_connection_get_audit_token();

  v9 = *MEMORY[0x277D861B8];
  [v5 fileSystemRepresentation];

  v10 = *MEMORY[0x277D861E8];
  v11 = sandbox_extension_issue_file_to_process();
  if (v11)
  {
    v12 = v11;
    xpc_dictionary_set_string(empty, "sandboxExtension", v11);
    free(v12);
  }

  v13 = [(GTXPCConnection *)self->_connection sendMessageWithReplySync:empty error:0, 0, 0, 0, 0];
  if (v13)
  {
    v14 = objc_opt_class();
    nsobject = xpc_dictionary_get_nsobject(v13, "identifier", v14);
  }

  else
  {
    nsobject = 0;
  }

  return nsobject;
}

- (void)transferIdentifier:(id)a3 toDevice:(id)a4 completionHandler:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "identifier", v11);

  v14 = [v10 UTF8String];
  xpc_dictionary_set_string(empty, "deviceUDID", v14);
  connection = self->_connection;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __77__GTURLAccessProviderXPCProxy_transferIdentifier_toDevice_completionHandler___block_invoke;
  v17[3] = &unk_279661050;
  v18 = v9;
  v16 = v9;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v17];
}

void __77__GTURLAccessProviderXPCProxy_transferIdentifier_toDevice_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v3 = objc_opt_class();
    nsobject = xpc_dictionary_get_nsobject(v5, "url", v3);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)copyIdentifier:(id)a3 toDevice:(id)a4 completionHandler:(id)a5
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "identifier", v11);

  v14 = [v10 UTF8String];
  xpc_dictionary_set_string(empty, "deviceUDID", v14);
  connection = self->_connection;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__GTURLAccessProviderXPCProxy_copyIdentifier_toDevice_completionHandler___block_invoke;
  v17[3] = &unk_279661050;
  v18 = v9;
  v16 = v9;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v17];
}

void __73__GTURLAccessProviderXPCProxy_copyIdentifier_toDevice_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = objc_opt_class();
    nsobject = xpc_dictionary_get_nsobject(v6, "url", v3);
    nserror = xpc_dictionary_get_nserror(v6, "error");
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)urlForPath:(id)a3
{
  v5 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  v8 = [v5 UTF8String];

  xpc_dictionary_set_string(empty, "path", v8);
  v9 = [(GTXPCConnection *)self->_connection sendMessageWithReplySync:empty error:0];
  if (v9)
  {
    v10 = objc_opt_class();
    nsobject = xpc_dictionary_get_nsobject(v9, "result", v10);
    string = xpc_dictionary_get_string(v9, "sandboxExtension");
    if (string)
    {
      v13 = [MEMORY[0x277CBEA90] dataWithBytes:string length:strlen(string) + 1];
      MEMORY[0x253034530](nsobject, v13);
    }
  }

  else
  {
    nsobject = 0;
  }

  return nsobject;
}

- (void)copyIdentifier:(id)a3 toDevice:(id)a4 directory:(id)a5 completionHandler:(id)a6
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "identifier", v14);

  v17 = [v13 UTF8String];
  xpc_dictionary_set_string(empty, "deviceUDID", v17);
  xpc_dictionary_set_nsobject(empty, "dir", v12);
  v29 = 0u;
  v30 = 0u;
  v18 = [(GTXPCConnection *)self->_connection connection];
  xpc_connection_get_audit_token();

  v19 = *MEMORY[0x277D861C0];
  [v12 fileSystemRepresentation];

  v20 = *MEMORY[0x277D861E8];
  v27 = 0u;
  v28 = 0u;
  v21 = sandbox_extension_issue_file_to_process();
  if (v21)
  {
    v22 = v21;
    xpc_dictionary_set_string(empty, "dirse", v21);
    free(v22);
  }

  connection = self->_connection;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __83__GTURLAccessProviderXPCProxy_copyIdentifier_toDevice_directory_completionHandler___block_invoke;
  v25[3] = &unk_279661050;
  v26 = v11;
  v24 = v11;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v25];
}

void __83__GTURLAccessProviderXPCProxy_copyIdentifier_toDevice_directory_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = objc_opt_class();
    nsobject = xpc_dictionary_get_nsobject(v6, "url", v3);
    nserror = xpc_dictionary_get_nserror(v6, "error");
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)securityScopedURLFromSandboxID:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

@end