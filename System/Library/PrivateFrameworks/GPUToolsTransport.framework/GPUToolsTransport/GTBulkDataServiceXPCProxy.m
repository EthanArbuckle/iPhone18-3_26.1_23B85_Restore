@interface GTBulkDataServiceXPCProxy
- (BOOL)respondsToSelector:(SEL)a3;
- (BOOL)uploadChunk:(id)a3 forHandle:(unint64_t)a4 isFinalChunk:(BOOL)a5 error:(id *)a6;
- (GTBulkDataServiceXPCProxy)initWithConnection:(id)a3 remoteProperties:(id)a4;
- (id)downloadData:(unint64_t)a3 usingTransferOptions:(id)a4 error:(id *)a5;
- (id)transferOptions;
- (unint64_t)newUploadWithDescriptor:(id)a3 error:(id *)a4;
- (unint64_t)uploadData:(id)a3 usingTransferOptions:(id)a4 error:(id *)a5;
- (void)downloadData:(unint64_t)a3 usingTransferOptions:(id)a4 chunkHandler:(id)a5;
- (void)downloadData:(unint64_t)a3 usingTransferOptions:(id)a4 completionHandler:(id)a5;
- (void)uploadData:(id)a3 usingTransferOptions:(id)a4 completionHandler:(id)a5;
@end

@implementation GTBulkDataServiceXPCProxy

- (GTBulkDataServiceXPCProxy)initWithConnection:(id)a3 remoteProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = GTBulkDataServiceXPCProxy;
  v8 = [(GTBulkDataServiceXPCProxy *)&v23 init];
  if (v8)
  {
    v9 = dispatch_queue_create("com.apple.gputools.bulk-data-proxy", 0);
    serialQueue = v8->_serialQueue;
    v8->_serialQueue = v9;

    v11 = [GTServiceConnection alloc];
    v12 = [v7 deviceUDID];
    v13 = -[GTServiceConnection initWithConnection:device:port:](v11, "initWithConnection:device:port:", v6, v12, [v7 servicePort]);
    connection = v8->_connection;
    v8->_connection = v13;

    v15 = objc_opt_new();
    defaultTransferOptions = v8->_defaultTransferOptions;
    v8->_defaultTransferOptions = v15;

    v17 = [v7 deviceUDID];
    [(GTBulkDataTransferOptions *)v8->_defaultTransferOptions setChunkSize:0x400000];

    [(GTBulkDataTransferOptions *)v8->_defaultTransferOptions setCompressionAlgorithm:0];
    v18 = [GTServiceProperties protocolMethods:&unk_2860EBFC0];
    v19 = [v7 protocolMethods];
    v20 = newSetWithArrayMinusArray(v18, v19);
    ignoreMethods = v8->_ignoreMethods;
    v8->_ignoreMethods = v20;
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
    v9.super_class = GTBulkDataServiceXPCProxy;
    v7 = [(GTBulkDataServiceXPCProxy *)&v9 respondsToSelector:a3];
  }

  return v7;
}

- (id)transferOptions
{
  v2 = [(GTBulkDataTransferOptions *)self->_defaultTransferOptions copy];

  return v2;
}

- (void)downloadData:(unint64_t)a3 usingTransferOptions:(id)a4 chunkHandler:(id)a5
{
  v9 = a5;
  v10 = a4;
  xdict = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(xdict, "_cmd", Name);
  xpc_dictionary_set_uint64(xdict, "handle", a3);
  xpc_dictionary_set_nsobject(xdict, "transferOptions", v10);

  v12 = [[GTBulkDataReplyStream alloc] initWithCallback:v9];
  v13 = [(GTServiceConnection *)self->_connection registerDispatcher:v12];
  [(GTBulkDataReplyStream *)v12 setDispatcherId:v13];
  [(GTServiceConnection *)self->_connection sendMessage:xdict withReplyStreamId:v13];
}

- (void)downloadData:(unint64_t)a3 usingTransferOptions:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__1;
  v16[4] = __Block_byref_object_dispose__1;
  v17 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__GTBulkDataServiceXPCProxy_downloadData_usingTransferOptions_completionHandler___block_invoke;
  v12[3] = &unk_279661350;
  v14 = v9;
  v15 = v16;
  v13 = v8;
  v10 = v9;
  v11 = v8;
  [(GTBulkDataServiceXPCProxy *)self downloadData:a3 usingTransferOptions:v11 chunkHandler:v12];

  _Block_object_dispose(v16, 8);
}

void __81__GTBulkDataServiceXPCProxy_downloadData_usingTransferOptions_completionHandler___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  if (v7)
  {
    [v10 appendData:v7];
    if (!v8 && !a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *(v9 + 40) = 0;
  }

  v11 = *(*(*(a1 + 48) + 8) + 40);
  if (v11)
  {
    v12 = [*(a1 + 32) compressionAlgorithm];
    v14 = v8;
    v11 = GTBulkDataDecompress(v11, v12, &v14);
    v13 = v14;

    v8 = v13;
  }

  (*(*(a1 + 40) + 16))();

LABEL_9:
}

- (id)downloadData:(unint64_t)a3 usingTransferOptions:(id)a4 error:(id *)a5
{
  v8 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__1;
  v28 = __Block_byref_object_dispose__1;
  v29 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = 0;
  v9 = dispatch_semaphore_create(0);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__GTBulkDataServiceXPCProxy_downloadData_usingTransferOptions_error___block_invoke;
  v14[3] = &unk_279661378;
  v16 = &v24;
  v17 = &v18;
  v10 = v9;
  v15 = v10;
  [(GTBulkDataServiceXPCProxy *)self downloadData:a3 usingTransferOptions:v8 chunkHandler:v14];
  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  if (a5)
  {
    *a5 = v19[5];
  }

  v11 = v25[5];
  if (v11)
  {
    v12 = GTBulkDataDecompress(v11, [v8 compressionAlgorithm], a5);
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

void __69__GTBulkDataServiceXPCProxy_downloadData_usingTransferOptions_error___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v10 = a2;
  v7 = a4;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  if (!v10)
  {
    *(v8 + 40) = 0;

LABEL_6:
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a4);
    dispatch_semaphore_signal(*(a1 + 32));
    goto LABEL_7;
  }

  [v9 appendData:?];
  if (v7 || a3)
  {
    goto LABEL_6;
  }

LABEL_7:
}

- (unint64_t)newUploadWithDescriptor:(id)a3 error:(id *)a4
{
  v7 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsobject(empty, "descriptor", v7);

  v10 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty error:a4];
  v11 = v10;
  if (v10)
  {
    uint64 = xpc_dictionary_get_uint64(v10, "result");
    if (a4)
    {
      *a4 = xpc_dictionary_get_nserror(v11, "error");
    }
  }

  else
  {
    uint64 = 0;
  }

  return uint64;
}

- (BOOL)uploadChunk:(id)a3 forHandle:(unint64_t)a4 isFinalChunk:(BOOL)a5 error:(id *)a6
{
  v11 = a3;
  empty = xpc_dictionary_create_empty();
  Name = sel_getName(a2);
  xpc_dictionary_set_string(empty, "_cmd", Name);
  xpc_dictionary_set_nsdata(empty, "chunk", v11);

  xpc_dictionary_set_uint64(empty, "handle", a4);
  xpc_dictionary_set_BOOL(empty, "isFinalChunk", a5);
  v14 = [(GTServiceConnection *)self->_connection sendMessageWithReplySync:empty error:a6];
  v15 = v14;
  if (v14)
  {
    v16 = xpc_dictionary_get_BOOL(v14, "result");
    if (a6)
    {
      *a6 = xpc_dictionary_get_nserror(v15, "error");
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)uploadData:(id)a3 usingTransferOptions:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  serialQueue = self->_serialQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__GTBulkDataServiceXPCProxy_uploadData_usingTransferOptions_completionHandler___block_invoke;
  v15[3] = &unk_2796613A0;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(serialQueue, v15);
}

void __79__GTBulkDataServiceXPCProxy_uploadData_usingTransferOptions_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v7 = 0;
  v5 = [v2 uploadData:v1 usingTransferOptions:v3 error:&v7];
  v6 = v7;
  (*(v4 + 16))(v4, v5);
}

- (unint64_t)uploadData:(id)a3 usingTransferOptions:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_new();
  [v10 setSizeHint:{objc_msgSend(v8, "length")}];
  [v10 setCompressionAlgorithm:{objc_msgSend(v9, "compressionAlgorithm")}];
  v11 = [(GTBulkDataServiceXPCProxy *)self newUploadWithDescriptor:v10 error:a5];
  if (v11)
  {
    v12 = v11;
    v13 = GTBulkDataCompress(v8, [v9 compressionAlgorithm], a5);
    v14 = v13;
    if (v13)
    {
      if (![v13 length])
      {
LABEL_29:

        goto LABEL_30;
      }

      v15 = 0;
      while (1)
      {
        v16 = [v9 chunkSize];
        v17 = v16 >= [v14 length] - v15 ? objc_msgSend(v14, "length") - v15 : objc_msgSend(v9, "chunkSize");
        v18 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(v14 length:"bytes") + v15 freeWhenDone:{v17, 0}];
        if (!-[GTBulkDataServiceXPCProxy uploadChunk:forHandle:isFinalChunk:error:](self, "uploadChunk:forHandle:isFinalChunk:error:", v18, v12, [v9 chunkSize] + v15 >= objc_msgSend(v14, "length"), a5))
        {
          break;
        }

        v15 += [v9 chunkSize];
        if (v15 >= [v14 length])
        {
          goto LABEL_29;
        }
      }

      if (GTCoreLogUseOsLog())
      {
        v23 = gt_tagged_log(0x10u);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [(GTBulkDataServiceXPCProxy *)v12 uploadData:v23 usingTransferOptions:v24 error:v25, v26, v27, v28, v29];
        }
      }

      else
      {
        v32 = *MEMORY[0x277D85DF8];
        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"uploadData Failed handle:%llu", v12];
        fprintf(v32, "%s\n", [v33 UTF8String]);
      }
    }

    else if (GTCoreLogUseOsLog())
    {
      v20 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [GTBulkDataServiceXPCProxy uploadData:v20 usingTransferOptions:? error:?];
      }
    }

    else
    {
      v30 = *MEMORY[0x277D85DF8];
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"uploadData compression failed"];
      fprintf(v30, "%s\n", [v31 UTF8String]);
    }

    v12 = 0;
    goto LABEL_29;
  }

  if (GTCoreLogUseOsLog())
  {
    v19 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [GTBulkDataServiceXPCProxy uploadData:v19 usingTransferOptions:? error:?];
    }
  }

  else
  {
    v21 = *MEMORY[0x277D85DF8];
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"uploadData failed to start upload"];
    fprintf(v21, "%s\n", [v22 UTF8String]);
  }

  v12 = 0;
LABEL_30:

  return v12;
}

- (void)uploadData:(uint64_t)a3 usingTransferOptions:(uint64_t)a4 error:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_24DBC9000, a2, a3, "uploadData Failed handle:%llu", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x277D85DE8];
}

@end