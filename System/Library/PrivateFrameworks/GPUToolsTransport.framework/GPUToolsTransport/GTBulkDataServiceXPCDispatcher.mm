@interface GTBulkDataServiceXPCDispatcher
- (GTBulkDataServiceXPCDispatcher)initWithService:(id)service properties:(id)properties;
- (void)downloadData_usingTransferOptions_chunkHandler_:(id)handler_ replyConnection:(id)connection;
- (void)newUploadWithDescriptor_error_:(id)descriptor_error_ replyConnection:(id)connection;
- (void)uploadChunk_forHandle_isFinalChunk_error_:(id)chunk_error_ replyConnection:(id)connection;
@end

@implementation GTBulkDataServiceXPCDispatcher

- (GTBulkDataServiceXPCDispatcher)initWithService:(id)service properties:(id)properties
{
  serviceCopy = service;
  protocolMethods = [properties protocolMethods];
  v11.receiver = self;
  v11.super_class = GTBulkDataServiceXPCDispatcher;
  v9 = [(GTXPCDispatcher *)&v11 initWithProtocolMethods:protocolMethods];

  if (v9)
  {
    objc_storeStrong(&v9->_service, service);
  }

  return v9;
}

- (void)downloadData_usingTransferOptions_chunkHandler_:(id)handler_ replyConnection:(id)connection
{
  connectionCopy = connection;
  handler_Copy = handler_;
  uint64 = xpc_dictionary_get_uint64(handler_Copy, "handle");
  v9 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(handler_Copy, "transferOptions", v9);
  v11 = xpc_dictionary_get_uint64(handler_Copy, "_replyStreamId");
  v12 = xpc_dictionary_get_array(handler_Copy, "_pathHistory");

  service = self->_service;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __98__GTBulkDataServiceXPCDispatcher_downloadData_usingTransferOptions_chunkHandler__replyConnection___block_invoke;
  v16[3] = &unk_2796613C8;
  v18 = connectionCopy;
  v19 = v11;
  v17 = v12;
  v14 = connectionCopy;
  v15 = v12;
  [(GTBulkDataService *)service downloadData:uint64 usingTransferOptions:nsobject chunkHandler:v16];
}

void __98__GTBulkDataServiceXPCDispatcher_downloadData_usingTransferOptions_chunkHandler__replyConnection___block_invoke(uint64_t a1, void *a2, BOOL a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  xdict = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(xdict, "_port", *(a1 + 48));
  xpc_dictionary_set_value(xdict, "_replyPath", *(a1 + 32));
  MessageSetHasReply(xdict);
  xpc_dictionary_set_nsdata(xdict, "chunk", v8);

  xpc_dictionary_set_BOOL(xdict, "isFinalChunk", a3);
  xpc_dictionary_set_nserror(xdict, "error", v7);

  v9 = [*(a1 + 40) sendMessageWithReplySync:xdict error:0];
}

- (void)newUploadWithDescriptor_error_:(id)descriptor_error_ replyConnection:(id)connection
{
  connectionCopy = connection;
  descriptor_error_Copy = descriptor_error_;
  v8 = gt_xpc_dictionary_create_reply(descriptor_error_Copy);
  v9 = objc_opt_class();
  nsobject = xpc_dictionary_get_nsobject(descriptor_error_Copy, "descriptor", v9);

  service = self->_service;
  v14 = 0;
  v12 = [(GTBulkDataService *)service newUploadWithDescriptor:nsobject error:&v14];
  v13 = v14;
  xpc_dictionary_set_uint64(v8, "result", v12);
  xpc_dictionary_set_nserror(v8, "error", v13);

  [connectionCopy sendMessage:v8];
}

- (void)uploadChunk_forHandle_isFinalChunk_error_:(id)chunk_error_ replyConnection:(id)connection
{
  connectionCopy = connection;
  chunk_error_Copy = chunk_error_;
  v8 = gt_xpc_dictionary_create_reply(chunk_error_Copy);
  nsdata = xpc_dictionary_get_nsdata(chunk_error_Copy, "chunk");
  uint64 = xpc_dictionary_get_uint64(chunk_error_Copy, "handle");
  v11 = xpc_dictionary_get_BOOL(chunk_error_Copy, "isFinalChunk");

  service = self->_service;
  v14 = 0;
  LOBYTE(self) = [(GTBulkDataService *)service uploadChunk:nsdata forHandle:uint64 isFinalChunk:v11 error:&v14];
  v13 = v14;
  xpc_dictionary_set_BOOL(v8, "result", self);
  xpc_dictionary_set_nserror(v8, "error", v13);

  [connectionCopy sendMessage:v8];
}

@end