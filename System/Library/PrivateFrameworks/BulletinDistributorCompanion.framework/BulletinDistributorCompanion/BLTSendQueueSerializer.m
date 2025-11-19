@interface BLTSendQueueSerializer
- (BLTSendQueueSerializer)initWithUsesMessageIdentifiers:(BOOL)a3;
- (BOOL)handleFileURL:(id)a3 protobufHandler:(id)a4;
- (void)add:(id)a3 type:(unsigned __int16)a4 messageIdentifier:(id *)a5;
- (void)cleanup;
- (void)sendWithSender:(id)a3 timeout:(id)a4 responseHandlers:(id)a5 didSend:(id)a6 didQueue:(id)a7;
- (void)setSendFileURL:(id)a3;
@end

@implementation BLTSendQueueSerializer

- (BLTSendQueueSerializer)initWithUsesMessageIdentifiers:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = BLTSendQueueSerializer;
  result = [(BLTSendQueueSerializer *)&v5 init];
  if (result)
  {
    result->_usesMessageIdentifiers = a3;
  }

  return result;
}

- (void)setSendFileURL:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v5 = blt_send_queue_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [BLTSendQueueSerializer setSendFileURL:];
    }
  }

  v6 = [v4 copy];
  sendFileURL = self->_sendFileURL;
  self->_sendFileURL = v6;

  [(BLTSendQueueSerializer *)self cleanup];
}

- (void)cleanup
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = blt_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sendFileURL = self->_sendFileURL;
    *buf = 138412290;
    v34 = sendFileURL;
    _os_log_impl(&dword_241FB3000, v3, OS_LOG_TYPE_DEFAULT, "Removing queue file %@", buf, 0xCu);
  }

  v5 = self->_sendFileURL;
  if (v5)
  {
    v6 = [(NSURL *)v5 lastPathComponent];
    v7 = [(NSURL *)self->_sendFileURL URLByDeletingLastPathComponent];
    v8 = [v7 path];

    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v32 = 0;
    v25 = v8;
    v10 = [v9 contentsOfDirectoryAtPath:v8 error:&v32];
    v11 = v32;

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v10;
    v12 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v12)
    {
      v14 = v12;
      v15 = *v29;
      *&v13 = 138412546;
      v24 = v13;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          if ([(NSURL *)v17 containsString:v6, v24])
          {
            v18 = [MEMORY[0x277CCAA00] defaultManager];
            v19 = [v25 stringByAppendingPathComponent:v17];
            v27 = v11;
            v20 = [v18 removeItemAtPath:v19 error:&v27];
            v21 = v27;

            if ((v20 & 1) == 0)
            {
              v22 = blt_general_log();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                *buf = v24;
                v34 = v17;
                v35 = 2112;
                v36 = v21;
                _os_log_error_impl(&dword_241FB3000, v22, OS_LOG_TYPE_ERROR, "Error removing %@ error: %@", buf, 0x16u);
              }
            }

            v11 = v21;
          }
        }

        v14 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v14);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)add:(id)a3 type:(unsigned __int16)a4 messageIdentifier:(id *)a5
{
  v36[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v32 = a4;
  v9 = [(BLTSendQueueSerializer *)self sendFileURL];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 fileSystemRepresentation];
    if (v11)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
      v13 = [MEMORY[0x277CCAA00] defaultManager];
      v14 = [v13 fileExistsAtPath:v12];

      if (v14)
      {
        goto LABEL_5;
      }

      v15 = [MEMORY[0x277CCAA00] defaultManager];
      v35 = *MEMORY[0x277CCA1B0];
      v36[0] = *MEMORY[0x277CCA1B8];
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      v17 = [v15 createFileAtPath:v12 contents:0 attributes:v16];

      if (v17)
      {
LABEL_5:
        v31 = 0;
        v18 = [MEMORY[0x277CCA9F8] fileHandleForWritingToURL:v10 error:&v31];
        v19 = v31;
        if (v18)
        {
          [v18 seekToEndOfFile];
          v20 = [MEMORY[0x277CBEA90] dataWithBytes:&v32 length:2];
          _writeDataToFile(v20, v18);

          v21 = [v8 data];
          v22 = blt_ids_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [v21 length];
            *buf = 134217984;
            v34 = v23;
            _os_log_impl(&dword_241FB3000, v22, OS_LOG_TYPE_DEFAULT, "Serializing protobuf bytes: %lu", buf, 0xCu);
          }

          _writeDataToFile(v21, v18);
          if ([(BLTSendQueueSerializer *)self usesMessageIdentifiers])
          {
            v24 = [MEMORY[0x277CCAD78] UUID];
            v25 = [v24 UUIDString];
            v26 = [@"blt-" stringByAppendingString:v25];

            v27 = [v26 dataUsingEncoding:4];
            _writeDataToFile(v27, v18);

            if (a5)
            {
              v28 = v26;
              *a5 = v26;
            }
          }
        }

        else
        {
          v21 = blt_send_queue_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [BLTSendQueueSerializer add:v19 type:v21 messageIdentifier:?];
          }
        }
      }

      else
      {
        v18 = blt_send_queue_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [BLTSendQueueSerializer add:v12 type:v18 messageIdentifier:?];
        }

        v19 = 0;
      }

      v10 = v19;
    }

    else
    {
      v29 = blt_send_queue_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        [BLTSendQueueSerializer add:type:messageIdentifier:];
      }
    }
  }

  else
  {
    v10 = blt_send_queue_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [BLTSendQueueSerializer add:v10 type:? messageIdentifier:?];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)sendWithSender:(id)a3 timeout:(id)a4 responseHandlers:(id)a5 didSend:(id)a6 didQueue:(id)a7
{
  v44 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(BLTSendQueueSerializer *)self sendFileURL];
  v18 = [MEMORY[0x277CCAD78] UUID];
  v19 = [v18 UUIDString];
  v20 = [v17 URLByAppendingPathExtension:v19];

  if (v20)
  {
    v31 = v13;
    v21 = v12;
    v22 = [MEMORY[0x277CCAA00] defaultManager];
    v37 = 0;
    v23 = [v22 linkItemAtURL:v17 toURL:v20 error:&v37];
    v24 = v37;

    if (v23)
    {
      v25 = [MEMORY[0x277CCAA00] defaultManager];
      v36 = v24;
      v26 = [v25 removeItemAtURL:v17 error:&v36];
      v27 = v36;

      v12 = v21;
      if ((v26 & 1) == 0)
      {
        v28 = blt_send_queue_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [BLTSendQueueSerializer sendWithSender:timeout:responseHandlers:didSend:didQueue:];
        }
      }

      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __83__BLTSendQueueSerializer_sendWithSender_timeout_responseHandlers_didSend_didQueue___block_invoke;
      v32[3] = &unk_278D31D38;
      v33 = v20;
      v34 = v17;
      v35 = v15;
      v13 = v31;
      [v21 sendFileURL:v33 withTimeout:v31 extraMetadata:0 responseHandlers:v14 didSend:v32 didQueue:v16];

      v29 = v33;
      goto LABEL_12;
    }

    v27 = v24;
    v12 = v21;
  }

  else
  {
    v27 = 0;
  }

  v29 = blt_send_queue_log();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v39 = v17;
    v40 = 2112;
    v41 = v20;
    v42 = 2112;
    v43 = v27;
    _os_log_error_impl(&dword_241FB3000, v29, OS_LOG_TYPE_ERROR, "Error creating link for sending URL: %@ at %@ error: %@", buf, 0x20u);
  }

LABEL_12:

  v30 = *MEMORY[0x277D85DE8];
}

void __83__BLTSendQueueSerializer_sendWithSender_timeout_responseHandlers_didSend_didQueue___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = *(a1 + 32);
  v12 = 0;
  v8 = [v6 removeItemAtURL:v7 error:&v12];
  v9 = v12;

  if ((v8 & 1) == 0)
  {
    v10 = blt_send_queue_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __83__BLTSendQueueSerializer_sendWithSender_timeout_responseHandlers_didSend_didQueue___block_invoke_cold_1(a1, v9, v10);
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, a2, v5);
  }
}

- (BOOL)handleFileURL:(id)a3 protobufHandler:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = blt_send_queue_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_241FB3000, v8, OS_LOG_TYPE_INFO, "Received new queue", buf, 2u);
  }

  v35 = 0;
  v9 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v6 error:&v35];
  v10 = v35;
  v11 = v10;
  if (v9)
  {
    v34 = v10;
    v12 = _readDataFromFile(v9);
    v13 = _readDataFromFile(v9);
    v14 = blt_ids_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v13 length];
      *buf = 134217984;
      v37 = v15;
      _os_log_impl(&dword_241FB3000, v14, OS_LOG_TYPE_DEFAULT, "Deserializing protobuf bytes: %lu", buf, 0xCu);
    }

    if ([(BLTSendQueueSerializer *)self usesMessageIdentifiers])
    {
      v16 = _readDataFromFile(v9);
    }

    else
    {
      v16 = 0;
    }

    if ([v13 length])
    {
      v33 = [v12 length] != 0;
    }

    else
    {
      v33 = 0;
    }

    if ([v13 length])
    {
      while ([v12 length])
      {
        v19 = *[v12 bytes];
        v20 = [objc_alloc(MEMORY[0x277D189F0]) initWithProtobufData:v13 type:v19 isResponse:0];
        if (v16)
        {
          v21 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v16 encoding:4];
          v22 = [v20 context];

          if (!v22)
          {
            v23 = objc_alloc(MEMORY[0x277D189D8]);
            v24 = [v23 initWithDictionary:MEMORY[0x277CBEC10] boostContext:0];
            [v20 setContext:v24];
          }

          v25 = [v20 context];
          [v25 setOutgoingResponseIdentifier:v21];
        }

        [v7 handleIDSProtobuf:v20];
        v26 = _readDataFromFile(v9);

        v27 = _readDataFromFile(v9);

        v28 = blt_ids_log();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [v27 length];
          *buf = 134217984;
          v37 = v29;
          _os_log_impl(&dword_241FB3000, v28, OS_LOG_TYPE_DEFAULT, "Deserializing protobuf bytes: %lu", buf, 0xCu);
        }

        if ([(BLTSendQueueSerializer *)self usesMessageIdentifiers])
        {
          v30 = _readDataFromFile(v9);

          v16 = v30;
        }

        v12 = v26;
        v13 = v27;
        if (![v27 length])
        {
          goto LABEL_28;
        }
      }
    }

    v27 = v13;
    v26 = v12;
LABEL_28:

    v11 = v34;
    v18 = v33;
  }

  else
  {
    v17 = blt_send_queue_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v37 = v6;
      v38 = 2112;
      v39 = v11;
      _os_log_impl(&dword_241FB3000, v17, OS_LOG_TYPE_ERROR, "Encountered error opening file %@: %@", buf, 0x16u);
    }

    _BLTCaptureBug(@"IDSFileOpenError");
    v18 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)setSendFileURL:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  v3 = 0;
  _os_log_error_impl(&dword_241FB3000, v0, OS_LOG_TYPE_ERROR, "%@ setSendFileURL: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)add:(uint64_t)a1 type:(NSObject *)a2 messageIdentifier:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "Error creating file %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)add:(uint64_t)a1 type:(NSObject *)a2 messageIdentifier:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241FB3000, a2, OS_LOG_TYPE_ERROR, "Encountered error opening file: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)add:type:messageIdentifier:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)add:(uint64_t)a1 type:(NSObject *)a2 messageIdentifier:.cold.4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_241FB3000, a2, OS_LOG_TYPE_FAULT, "%@ add:type:messageIdentifier: sendURL is nil", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)sendWithSender:timeout:responseHandlers:didSend:didQueue:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0(&dword_241FB3000, v0, v1, "Error removing %@ error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __83__BLTSendQueueSerializer_sendWithSender_timeout_responseHandlers_didSend_didQueue___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138412546;
  *&v4[4] = *(a1 + 40);
  *&v4[12] = 2112;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_0(&dword_241FB3000, a2, a3, "Error removing %@ error: %@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
  v3 = *MEMORY[0x277D85DE8];
}

@end