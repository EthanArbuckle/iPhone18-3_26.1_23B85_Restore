@interface MRTransactionSource
- (MRTransactionSource)initWithName:(unint64_t)name playerPath:(id)path packets:(id)packets delegate:(id)delegate;
- (void)_begin;
- (void)_processMessage:(id)message;
@end

@implementation MRTransactionSource

- (MRTransactionSource)initWithName:(unint64_t)name playerPath:(id)path packets:(id)packets delegate:(id)delegate
{
  pathCopy = path;
  packetsCopy = packets;
  delegateCopy = delegate;
  v26.receiver = self;
  v26.super_class = MRTransactionSource;
  v14 = [(MRTransactionSource *)&v26 init];
  v15 = v14;
  if (v14)
  {
    v14->_name = name;
    objc_storeStrong(&v14->_playerPath, path);
    v16 = objc_alloc_init(MRTransactionPacketizer);
    packetizer = v15->_packetizer;
    v15->_packetizer = v16;

    v18 = [packetsCopy mutableCopy];
    packets = v15->_packets;
    v15->_packets = v18;

    objc_storeStrong(&v15->_delegate, delegate);
    objc_initWeak(&location, v15);
    v20 = +[MRMediaRemoteServiceClient sharedServiceClient];
    workerQueue = [v20 workerQueue];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __64__MRTransactionSource_initWithName_playerPath_packets_delegate___block_invoke;
    v23[3] = &unk_1E769B178;
    objc_copyWeak(&v24, &location);
    dispatch_async(workerQueue, v23);

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __64__MRTransactionSource_initWithName_playerPath_packets_delegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _begin];
}

- (void)_begin
{
  v3 = MRCreateXPCMessage(0x100000000000009uLL);
  xpc_dictionary_set_uint64(v3, "MRXPC_TRANSACTION_NAME", self->_name);
  MRAddPlayerPathToXPCMessage(v3, self->_playerPath);
  objc_initWeak(&location, self);
  v4 = +[MRMediaRemoteServiceClient sharedServiceClient];
  service = [v4 service];

  v6 = MRMediaRemoteServiceGetConnection(service);
  connection = [v6 connection];
  v8 = +[MRMediaRemoteServiceClient sharedServiceClient];
  workerQueue = [v8 workerQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __29__MRTransactionSource__begin__block_invoke;
  v10[3] = &unk_1E769F738;
  objc_copyWeak(&v11, &location);
  xpc_connection_send_message_with_reply(connection, v3, workerQueue, v10);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __29__MRTransactionSource__begin__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processMessage:v3];
}

- (void)_processMessage:(id)message
{
  messageCopy = message;
  v5 = messageCopy;
  if (messageCopy == MEMORY[0x1E69E9E18] || messageCopy == MEMORY[0x1E69E9E20])
  {
    v7 = _MRLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MRTransactionSource _processMessage:?];
    }

    [(MRTransactionSourceDelegate *)self->_delegate transactionDidEnd:self];
  }

  else
  {
    v8 = xpc_dictionary_get_remote_connection(messageCopy);
    v9 = v8;
    if (v8)
    {
      reply = xpc_dictionary_create_reply(v5);
      if (reply)
      {
        uint64 = xpc_dictionary_get_uint64(v5, "MRXPC_TRANSACTION_DATA_REQUESTED_SIZE");
        if (!uint64)
        {
          [MRTransactionSource _processMessage:];
        }

        v12 = [(NSMutableArray *)self->_packets copy];
        [(NSMutableArray *)self->_packets removeAllObjects];
        packetizer = self->_packetizer;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __39__MRTransactionSource__processMessage___block_invoke;
        v16[3] = &unk_1E76A16C0;
        v20 = uint64;
        v17 = reply;
        selfCopy = self;
        v19 = v9;
        [(MRTransactionPacketizer *)packetizer packetize:v12 packageSize:uint64 completion:v16];
      }

      else
      {
        v15 = _MRLogForCategory(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [MRTransactionSource _processMessage:?];
        }

        [(MRTransactionSourceDelegate *)self->_delegate transactionDidEnd:self];
      }
    }

    else
    {
      v14 = _MRLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [MRTransactionSource _processMessage:?];
      }

      [(MRTransactionSourceDelegate *)self->_delegate transactionDidEnd:self];
    }
  }
}

void __39__MRTransactionSource__processMessage___block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = MRTransactionPacketsCreateExternalRepresentation(v5);
  v7 = v6;
  if (v6)
  {
    xpc_dictionary_set_data(*(a1 + 32), "MRXPC_TRANSACTION_DATA", [v6 bytes], objc_msgSend(v6, "length"));
    xpc_dictionary_set_uint64(*(a1 + 32), "MRXPC_TRANSACTION_DATA_REQUESTED_SIZE", *(a1 + 56));
  }

  v8 = _MRLogForCategory(0);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (a3)
  {
    if (v9)
    {
      __39__MRTransactionSource__processMessage___block_invoke_cold_2();
    }

    objc_initWeak(&location, *(a1 + 40));
    v10 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = +[MRMediaRemoteServiceClient sharedServiceClient];
    v13 = [v12 workerQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __39__MRTransactionSource__processMessage___block_invoke_146;
    v14[3] = &unk_1E769F738;
    objc_copyWeak(&v15, &location);
    xpc_connection_send_message_with_reply(v10, v11, v13, v14);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    if (v9)
    {
      __39__MRTransactionSource__processMessage___block_invoke_cold_1();
    }

    xpc_dictionary_set_BOOL(*(a1 + 32), "MRXPC_TRANSACTION_ENDED", 1);
    xpc_connection_send_message(*(a1 + 48), *(a1 + 32));
    [*(*(a1 + 40) + 32) transactionDidEnd:?];
  }
}

void __39__MRTransactionSource__processMessage___block_invoke_146(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processMessage:v3];
}

- (void)_processMessage:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_processMessage:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = MRTransactionNameGetDescription(*(a1 + 8));
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_0_18(&dword_1A2860000, v2, v3, "[MRTransactionSource] Source %@ could not extract reply", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_processMessage:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = MRTransactionNameGetDescription(*(a1 + 8));
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_0_18(&dword_1A2860000, v2, v3, "[MRTransactionSource] Source %@ could not extract connection", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_processMessage:(uint64_t)a1 .cold.4(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = MRTransactionNameGetDescription(*(a1 + 8));
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_0_18(&dword_1A2860000, v2, v3, "[MRTransactionSource] Source %@ received interrupted/invalid connection to query", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __39__MRTransactionSource__processMessage___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7_3();
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6_6(v2);
  v4 = MRTransactionNameGetDescription(*(v3 + 8));
  v5 = MRTransactionPacketsGetKeys(v0);
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_8_5(&dword_1A2860000, v6, v7, "[MRTransactionSource] %@ sending end signal with packets %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

void __39__MRTransactionSource__processMessage___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_7_3();
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6_6(v2);
  v4 = MRTransactionNameGetDescription(*(v3 + 8));
  v5 = MRTransactionPacketsGetKeys(v0);
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_8_5(&dword_1A2860000, v6, v7, "[MRTransactionSource] %@ sending packets: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

@end