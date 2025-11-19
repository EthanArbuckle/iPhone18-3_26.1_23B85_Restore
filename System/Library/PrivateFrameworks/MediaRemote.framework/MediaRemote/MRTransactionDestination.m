@interface MRTransactionDestination
- (MRTransactionDestination)initWithName:(unint64_t)a3 playerPath:(id)a4;
- (void)packetsFromMessage:(id)a3 completion:(id)a4;
- (void)unpacketize:(id)a3 completion:(id)a4;
@end

@implementation MRTransactionDestination

- (MRTransactionDestination)initWithName:(unint64_t)a3 playerPath:(id)a4
{
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MRTransactionDestination;
  v8 = [(MRTransactionDestination *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_name = a3;
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.MediaRemote.transactionDestinationQueue", v10);
    serialQueue = v9->_serialQueue;
    v9->_serialQueue = v11;

    objc_storeStrong(&v9->_playerPath, a4);
  }

  return v9;
}

- (void)packetsFromMessage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__MRTransactionDestination_packetsFromMessage_completion___block_invoke;
  v17[3] = &unk_1E76A16E8;
  v7 = v6;
  v18 = v7;
  v19 = self;
  v8 = a4;
  v9 = MEMORY[0x1A58E3570](v17);
  if (v7 == MEMORY[0x1E69E9E18] || v7 == MEMORY[0x1E69E9E20])
  {
    v11 = _MRLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MRTransactionDestination packetsFromMessage:? completion:?];
    }

    (*(v8 + 2))(v8, 0, v9);
  }

  else
  {
    v12 = MRCreateDataFromXPCMessage(v7, "MRXPC_TRANSACTION_DATA");
    v13 = v12;
    if (!v12)
    {
      [MRTransactionDestination packetsFromMessage:completion:];
    }

    v14 = MRTransactionPacketsCreateFromExternalRepresentation(v13);
    if (!v14)
    {
      [MRTransactionDestination packetsFromMessage:completion:];
    }

    v15 = _MRLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [MRTransactionDestination packetsFromMessage:completion:];
    }

    v16 = MRTransactionPacketsGetShallowCopy(v14);
    (*(v8 + 2))(v8, v16, v9);

    v8 = v13;
  }
}

void __58__MRTransactionDestination_packetsFromMessage_completion___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_get_remote_connection(*(a1 + 32));
  if (v2)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    if (reply)
    {
      xpc_connection_send_message(v2, reply);
    }

    else
    {
      v4 = _MRLogForCategory(0);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __58__MRTransactionDestination_packetsFromMessage_completion___block_invoke_cold_1(a1);
      }
    }
  }

  else
  {
    reply = _MRLogForCategory(0);
    if (os_log_type_enabled(reply, OS_LOG_TYPE_ERROR))
    {
      __58__MRTransactionDestination_packetsFromMessage_completion___block_invoke_cold_2(a1);
    }
  }
}

- (void)unpacketize:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MRTransactionDestination_unpacketize_completion___block_invoke;
  block[3] = &unk_1E769E410;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(serialQueue, block);
}

void __51__MRTransactionDestination_unpacketize_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (!v2)
  {
    v3 = objc_alloc_init(MRTransactionPacketizer);
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    v2 = *(*(a1 + 32) + 8);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__MRTransactionDestination_unpacketize_completion___block_invoke_2;
  v7[3] = &unk_1E769E878;
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  [v2 unpacketize:v6 completion:v7];
}

void __51__MRTransactionDestination_unpacketize_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v5 = [v4 workerQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__MRTransactionDestination_unpacketize_completion___block_invoke_3;
  v8[3] = &unk_1E769AB28;
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

uint64_t __51__MRTransactionDestination_unpacketize_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)packetsFromMessage:completion:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRTransactionDestination packetsFromMessage:completion:]"];
  [v0 handleFailureInFunction:v1 file:@"MRTransaction.m" lineNumber:451 description:{@"Invalid parameter not satisfying: %@", @"data"}];
}

- (void)packetsFromMessage:completion:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MRTransactionDestination packetsFromMessage:completion:]"];
  [v0 handleFailureInFunction:v1 file:@"MRTransaction.m" lineNumber:454 description:{@"Invalid parameter not satisfying: %@", @"packets"}];
}

- (void)packetsFromMessage:completion:.cold.3()
{
  OUTLINED_FUNCTION_2();
  v14 = *MEMORY[0x1E69E9840];
  v4 = MRTransactionNameGetDescription(*(v3 + 24));
  v5 = MRTransactionPacketsGetKeys(v1);
  v6 = *(v2 + 32);
  v8 = 138412802;
  v9 = v4;
  v10 = 2112;
  v11 = v5;
  v12 = 2112;
  v13 = v6;
  _os_log_debug_impl(&dword_1A2860000, v0, OS_LOG_TYPE_DEBUG, "[MRTransactionDestination] %@ received %@ for playerPath %@", &v8, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)packetsFromMessage:(uint64_t)a1 completion:.cold.4(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = MRTransactionNameGetDescription(*(a1 + 24));
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_0_18(&dword_1A2860000, v2, v3, "[MRTransactionDestination] %@ received interrupted/invalid connection", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __58__MRTransactionDestination_packetsFromMessage_completion___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6_6(a1);
  v3 = MRTransactionNameGetDescription(*(v2 + 24));
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_0_18(&dword_1A2860000, v4, v5, "[MRTransactionDestination] %@ could not extract reply", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void __58__MRTransactionDestination_packetsFromMessage_completion___block_invoke_cold_2(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6_6(a1);
  v3 = MRTransactionNameGetDescription(*(v2 + 24));
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_0_18(&dword_1A2860000, v4, v5, "[MRTransactionDestination] %@ could not extract connection", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

@end