@interface GTFileWriterServiceXPCProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (GTFileWriterServiceXPCProxy)initWithConnection:(id)a3 remoteProperties:(id)a4;
- (void)beginTransferSessionWithFileEntries:(id)a3 basePath:(id)a4 toDevice:(id)a5 options:(id)a6 sessionID:(unint64_t)a7 completionHandler:(id)a8;
- (void)initiateTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 options:(id)a6 completionHandler:(id)a7;
- (void)startTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 options:(id)a6 completionHandler:(id)a7;
- (void)startTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 toDirectory:(id)a6 options:(id)a7 completionHandler:(id)a8;
- (void)writeFileData:(id)a3 sessionID:(unint64_t)a4 completionHandler:(id)a5;
@end

@implementation GTFileWriterServiceXPCProxy

- (GTFileWriterServiceXPCProxy)initWithConnection:(id)a3 remoteProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = GTFileWriterServiceXPCProxy;
  v8 = [(GTFileWriterServiceXPCProxy *)&v19 init];
  if (v8)
  {
    v9 = &unk_2860ED240;
    v10 = [GTServiceConnection alloc];
    v11 = [v7 deviceUDID];
    v12 = -[GTServiceConnection initWithConnection:device:port:](v10, "initWithConnection:device:port:", v6, v11, [v7 servicePort]);
    connection = v8->_connection;
    v8->_connection = v12;

    v14 = [GTServiceProperties protocolMethods:v9];
    v15 = [v7 protocolMethods];
    v16 = newSetWithArrayMinusArray(v14, v15);
    ignoreMethods = v8->_ignoreMethods;
    v8->_ignoreMethods = v16;
  }

  return v8;
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
    v9.super_class = GTFileWriterServiceXPCProxy;
    v7 = [(GTFileWriterServiceXPCProxy *)&v9 respondsToSelector:a3];
  }

  return v7;
}

- (void)initiateTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 options:(id)a6 completionHandler:(id)a7
{
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "fileEntries", v17);

  v20 = [v16 UTF8String];
  xpc_dictionary_set_string(empty, "path", v20);
  v21 = [v15 UTF8String];

  xpc_dictionary_set_string(empty, "deviceUDID", v21);
  xpc_dictionary_set_nsobject(empty, "options", v14);

  connection = self->_connection;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __94__GTFileWriterServiceXPCProxy_initiateTransfer_basePath_fromDevice_options_completionHandler___block_invoke;
  v24[3] = &unk_279661050;
  v25 = v13;
  v23 = v13;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v24];
}

void __94__GTFileWriterServiceXPCProxy_initiateTransfer_basePath_fromDevice_options_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v8 = v5;
    nserror = xpc_dictionary_get_nserror(a2, "error");

    v6 = nserror;
  }

  v9 = v6;
  (*(*(a1 + 32) + 16))();
}

- (void)startTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 options:(id)a6 completionHandler:(id)a7
{
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "fileEntries", v17);

  v20 = [v16 UTF8String];
  xpc_dictionary_set_string(empty, "path", v20);
  v21 = [v15 UTF8String];

  xpc_dictionary_set_string(empty, "deviceUDID", v21);
  xpc_dictionary_set_nsobject(empty, "options", v14);

  connection = self->_connection;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __91__GTFileWriterServiceXPCProxy_startTransfer_basePath_fromDevice_options_completionHandler___block_invoke;
  v24[3] = &unk_279661050;
  v25 = v13;
  v23 = v13;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v24];
}

void __91__GTFileWriterServiceXPCProxy_startTransfer_basePath_fromDevice_options_completionHandler___block_invoke(uint64_t a1, void *a2)
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

- (void)startTransfer:(id)a3 basePath:(id)a4 fromDevice:(id)a5 toDirectory:(id)a6 options:(id)a7 completionHandler:(id)a8
{
  v15 = a7;
  v16 = a8;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "fileEntries", v20);

  v23 = [v19 UTF8String];
  xpc_dictionary_set_string(empty, "path", v23);
  v24 = [v18 UTF8String];

  xpc_dictionary_set_string(empty, "deviceUDID", v24);
  xpc_dictionary_set_nsobject(empty, "directory", v17);
  v25 = MEMORY[0x253034540](v17);

  if (v25)
  {
    BytePtr = CFDataGetBytePtr(v25);
    xpc_dictionary_set_string(empty, "sandboxExtension", BytePtr);
    CFRelease(v25);
  }

  xpc_dictionary_set_nsobject(empty, "options", v15);
  connection = self->_connection;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __103__GTFileWriterServiceXPCProxy_startTransfer_basePath_fromDevice_toDirectory_options_completionHandler___block_invoke;
  v29[3] = &unk_279661050;
  v30 = v16;
  v28 = v16;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v29];
}

void __103__GTFileWriterServiceXPCProxy_startTransfer_basePath_fromDevice_toDirectory_options_completionHandler___block_invoke(uint64_t a1, void *a2)
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

- (void)beginTransferSessionWithFileEntries:(id)a3 basePath:(id)a4 toDevice:(id)a5 options:(id)a6 sessionID:(unint64_t)a7 completionHandler:(id)a8
{
  v15 = a8;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "fileEntries", v19);

  v22 = [v18 UTF8String];
  xpc_dictionary_set_string(empty, "path", v22);
  v23 = [v17 UTF8String];

  xpc_dictionary_set_string(empty, "deviceUDID", v23);
  xpc_dictionary_set_nsobject(empty, "options", v16);

  xpc_dictionary_set_uint64(empty, "sessionID", a7);
  connection = self->_connection;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __121__GTFileWriterServiceXPCProxy_beginTransferSessionWithFileEntries_basePath_toDevice_options_sessionID_completionHandler___block_invoke;
  v26[3] = &unk_279661050;
  v27 = v15;
  v25 = v15;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v26];
}

void __121__GTFileWriterServiceXPCProxy_beginTransferSessionWithFileEntries_basePath_toDevice_options_sessionID_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    nserror = xpc_dictionary_get_nserror(a2, "error");
    (*(v3 + 16))(v3, nserror);
  }

  else
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, a3);
  }
}

- (void)writeFileData:(id)a3 sessionID:(unint64_t)a4 completionHandler:(id)a5
{
  v9 = a5;
  v10 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsdata(empty, "data", v10);

  xpc_dictionary_set_uint64(empty, "sessionID", a4);
  connection = self->_connection;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__GTFileWriterServiceXPCProxy_writeFileData_sessionID_completionHandler___block_invoke;
  v15[3] = &unk_279661050;
  v16 = v9;
  v14 = v9;
  [(GTXPCConnection *)connection sendMessage:empty replyHandler:v15];
}

void __73__GTFileWriterServiceXPCProxy_writeFileData_sessionID_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    nserror = xpc_dictionary_get_nserror(a2, "error");
    (*(v3 + 16))(v3, nserror);
  }

  else
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, a3);
  }
}

@end