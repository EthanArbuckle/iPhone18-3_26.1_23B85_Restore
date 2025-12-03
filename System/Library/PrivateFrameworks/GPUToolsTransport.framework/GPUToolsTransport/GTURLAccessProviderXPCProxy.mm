@interface GTURLAccessProviderXPCProxy
- (BOOL)respondsToSelector:(SEL)selector;
- (GTURLAccessProviderXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties;
- (id)makeURL:(id)l;
- (id)urlForPath:(id)path;
- (void)copyIdentifier:(id)identifier toDevice:(id)device completionHandler:(id)handler;
- (void)copyIdentifier:(id)identifier toDevice:(id)device directory:(id)directory completionHandler:(id)handler;
- (void)securityScopedURLFromSandboxID:(id)d completionHandler:(id)handler;
- (void)transferIdentifier:(id)identifier toDevice:(id)device completionHandler:(id)handler;
@end

@implementation GTURLAccessProviderXPCProxy

- (GTURLAccessProviderXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties
{
  connectionCopy = connection;
  propertiesCopy = properties;
  v8 = &unk_2860EEDF0;
  protocolName = [propertiesCopy protocolName];
  v10 = NSStringFromProtocol(v8);
  v11 = [protocolName isEqualToString:v10];

  if (v11)
  {
    v23.receiver = self;
    v23.super_class = GTURLAccessProviderXPCProxy;
    v12 = [(GTURLAccessProviderXPCProxy *)&v23 init];
    if (v12)
    {
      v13 = [GTServiceConnection alloc];
      deviceUDID = [propertiesCopy deviceUDID];
      v15 = -[GTServiceConnection initWithConnection:device:port:](v13, "initWithConnection:device:port:", connectionCopy, deviceUDID, [propertiesCopy servicePort]);
      connection = v12->_connection;
      v12->_connection = v15;

      v17 = [GTServiceProperties protocolMethods:v8];
      protocolMethods = [propertiesCopy protocolMethods];
      v19 = newSetWithArrayMinusArray(v17, protocolMethods);
      ignoreMethods = v12->_ignoreMethods;
      v12->_ignoreMethods = v19;
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  ignoreMethods = self->_ignoreMethods;
  v6 = NSStringFromSelector(selector);
  if ([(NSSet *)ignoreMethods containsObject:v6])
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = GTURLAccessProviderXPCProxy;
    v7 = [(GTURLAccessProviderXPCProxy *)&v9 respondsToSelector:selector];
  }

  return v7;
}

- (void)securityScopedURLFromSandboxID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "identifier", dCopy);

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
  v19 = handlerCopy;
  v17 = handlerCopy;
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

- (id)makeURL:(id)l
{
  lCopy = l;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "url", lCopy);
  connection = [(GTXPCConnection *)self->_connection connection];
  xpc_connection_get_audit_token();

  v9 = *MEMORY[0x277D861B8];
  [lCopy fileSystemRepresentation];

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

- (void)transferIdentifier:(id)identifier toDevice:(id)device completionHandler:(id)handler
{
  handlerCopy = handler;
  deviceCopy = device;
  identifierCopy = identifier;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "identifier", identifierCopy);

  uTF8String = [deviceCopy UTF8String];
  xpc_dictionary_set_string(empty, "deviceUDID", uTF8String);
  connection = self->_connection;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __77__GTURLAccessProviderXPCProxy_transferIdentifier_toDevice_completionHandler___block_invoke;
  v17[3] = &unk_279661050;
  v18 = handlerCopy;
  v16 = handlerCopy;
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

- (void)copyIdentifier:(id)identifier toDevice:(id)device completionHandler:(id)handler
{
  handlerCopy = handler;
  deviceCopy = device;
  identifierCopy = identifier;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "identifier", identifierCopy);

  uTF8String = [deviceCopy UTF8String];
  xpc_dictionary_set_string(empty, "deviceUDID", uTF8String);
  connection = self->_connection;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__GTURLAccessProviderXPCProxy_copyIdentifier_toDevice_completionHandler___block_invoke;
  v17[3] = &unk_279661050;
  v18 = handlerCopy;
  v16 = handlerCopy;
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

- (id)urlForPath:(id)path
{
  pathCopy = path;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  uTF8String = [pathCopy UTF8String];

  xpc_dictionary_set_string(empty, "path", uTF8String);
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

- (void)copyIdentifier:(id)identifier toDevice:(id)device directory:(id)directory completionHandler:(id)handler
{
  handlerCopy = handler;
  directoryCopy = directory;
  deviceCopy = device;
  identifierCopy = identifier;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "identifier", identifierCopy);

  uTF8String = [deviceCopy UTF8String];
  xpc_dictionary_set_string(empty, "deviceUDID", uTF8String);
  xpc_dictionary_set_nsobject(empty, "dir", directoryCopy);
  v29 = 0u;
  v30 = 0u;
  connection = [(GTXPCConnection *)self->_connection connection];
  xpc_connection_get_audit_token();

  v19 = *MEMORY[0x277D861C0];
  [directoryCopy fileSystemRepresentation];

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
  v26 = handlerCopy;
  v24 = handlerCopy;
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