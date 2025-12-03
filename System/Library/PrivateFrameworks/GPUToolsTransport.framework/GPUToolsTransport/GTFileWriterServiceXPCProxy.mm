@interface GTFileWriterServiceXPCProxy
- (BOOL)respondsToSelector:(SEL)selector;
- (GTFileWriterServiceXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties;
- (void)beginTransferSessionWithFileEntries:(id)entries basePath:(id)path toDevice:(id)device options:(id)options sessionID:(unint64_t)d completionHandler:(id)handler;
- (void)initiateTransfer:(id)transfer basePath:(id)path fromDevice:(id)device options:(id)options completionHandler:(id)handler;
- (void)startTransfer:(id)transfer basePath:(id)path fromDevice:(id)device options:(id)options completionHandler:(id)handler;
- (void)startTransfer:(id)transfer basePath:(id)path fromDevice:(id)device toDirectory:(id)directory options:(id)options completionHandler:(id)handler;
- (void)writeFileData:(id)data sessionID:(unint64_t)d completionHandler:(id)handler;
@end

@implementation GTFileWriterServiceXPCProxy

- (GTFileWriterServiceXPCProxy)initWithConnection:(id)connection remoteProperties:(id)properties
{
  connectionCopy = connection;
  propertiesCopy = properties;
  v19.receiver = self;
  v19.super_class = GTFileWriterServiceXPCProxy;
  v8 = [(GTFileWriterServiceXPCProxy *)&v19 init];
  if (v8)
  {
    v9 = &unk_2860ED240;
    v10 = [GTServiceConnection alloc];
    deviceUDID = [propertiesCopy deviceUDID];
    v12 = -[GTServiceConnection initWithConnection:device:port:](v10, "initWithConnection:device:port:", connectionCopy, deviceUDID, [propertiesCopy servicePort]);
    connection = v8->_connection;
    v8->_connection = v12;

    v14 = [GTServiceProperties protocolMethods:v9];
    protocolMethods = [propertiesCopy protocolMethods];
    v16 = newSetWithArrayMinusArray(v14, protocolMethods);
    ignoreMethods = v8->_ignoreMethods;
    v8->_ignoreMethods = v16;
  }

  return v8;
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
    v9.super_class = GTFileWriterServiceXPCProxy;
    v7 = [(GTFileWriterServiceXPCProxy *)&v9 respondsToSelector:selector];
  }

  return v7;
}

- (void)initiateTransfer:(id)transfer basePath:(id)path fromDevice:(id)device options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  deviceCopy = device;
  pathCopy = path;
  transferCopy = transfer;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "fileEntries", transferCopy);

  uTF8String = [pathCopy UTF8String];
  xpc_dictionary_set_string(empty, "path", uTF8String);
  uTF8String2 = [deviceCopy UTF8String];

  xpc_dictionary_set_string(empty, "deviceUDID", uTF8String2);
  xpc_dictionary_set_nsobject(empty, "options", optionsCopy);

  connection = self->_connection;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __94__GTFileWriterServiceXPCProxy_initiateTransfer_basePath_fromDevice_options_completionHandler___block_invoke;
  v24[3] = &unk_279661050;
  v25 = handlerCopy;
  v23 = handlerCopy;
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

- (void)startTransfer:(id)transfer basePath:(id)path fromDevice:(id)device options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  deviceCopy = device;
  pathCopy = path;
  transferCopy = transfer;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "fileEntries", transferCopy);

  uTF8String = [pathCopy UTF8String];
  xpc_dictionary_set_string(empty, "path", uTF8String);
  uTF8String2 = [deviceCopy UTF8String];

  xpc_dictionary_set_string(empty, "deviceUDID", uTF8String2);
  xpc_dictionary_set_nsobject(empty, "options", optionsCopy);

  connection = self->_connection;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __91__GTFileWriterServiceXPCProxy_startTransfer_basePath_fromDevice_options_completionHandler___block_invoke;
  v24[3] = &unk_279661050;
  v25 = handlerCopy;
  v23 = handlerCopy;
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

- (void)startTransfer:(id)transfer basePath:(id)path fromDevice:(id)device toDirectory:(id)directory options:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  directoryCopy = directory;
  deviceCopy = device;
  pathCopy = path;
  transferCopy = transfer;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "fileEntries", transferCopy);

  uTF8String = [pathCopy UTF8String];
  xpc_dictionary_set_string(empty, "path", uTF8String);
  uTF8String2 = [deviceCopy UTF8String];

  xpc_dictionary_set_string(empty, "deviceUDID", uTF8String2);
  xpc_dictionary_set_nsobject(empty, "directory", directoryCopy);
  v25 = MEMORY[0x253034540](directoryCopy);

  if (v25)
  {
    BytePtr = CFDataGetBytePtr(v25);
    xpc_dictionary_set_string(empty, "sandboxExtension", BytePtr);
    CFRelease(v25);
  }

  xpc_dictionary_set_nsobject(empty, "options", optionsCopy);
  connection = self->_connection;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __103__GTFileWriterServiceXPCProxy_startTransfer_basePath_fromDevice_toDirectory_options_completionHandler___block_invoke;
  v29[3] = &unk_279661050;
  v30 = handlerCopy;
  v28 = handlerCopy;
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

- (void)beginTransferSessionWithFileEntries:(id)entries basePath:(id)path toDevice:(id)device options:(id)options sessionID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  deviceCopy = device;
  pathCopy = path;
  entriesCopy = entries;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "fileEntries", entriesCopy);

  uTF8String = [pathCopy UTF8String];
  xpc_dictionary_set_string(empty, "path", uTF8String);
  uTF8String2 = [deviceCopy UTF8String];

  xpc_dictionary_set_string(empty, "deviceUDID", uTF8String2);
  xpc_dictionary_set_nsobject(empty, "options", optionsCopy);

  xpc_dictionary_set_uint64(empty, "sessionID", d);
  connection = self->_connection;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __121__GTFileWriterServiceXPCProxy_beginTransferSessionWithFileEntries_basePath_toDevice_options_sessionID_completionHandler___block_invoke;
  v26[3] = &unk_279661050;
  v27 = handlerCopy;
  v25 = handlerCopy;
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

- (void)writeFileData:(id)data sessionID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dataCopy = data;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsdata(empty, "data", dataCopy);

  xpc_dictionary_set_uint64(empty, "sessionID", d);
  connection = self->_connection;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__GTFileWriterServiceXPCProxy_writeFileData_sessionID_completionHandler___block_invoke;
  v15[3] = &unk_279661050;
  v16 = handlerCopy;
  v14 = handlerCopy;
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