@interface GTDisplayServiceXPCDispatcher
- (GTDisplayServiceXPCDispatcher)initWithService:(id)a3 properties:(id)a4;
- (void)broadcastDisconnect:(id)a3 replyConnection:(id)a4;
- (void)show_completionHandler_:(id)a3 replyConnection:(id)a4;
- (void)update_completionHandler_:(id)a3 replyConnection:(id)a4;
@end

@implementation GTDisplayServiceXPCDispatcher

- (GTDisplayServiceXPCDispatcher)initWithService:(id)a3 properties:(id)a4
{
  v7 = a3;
  v8 = [a4 protocolMethods];
  v9 = [v8 mutableCopy];

  [v9 addObject:@"broadcastDisconnect"];
  v13.receiver = self;
  v13.super_class = GTDisplayServiceXPCDispatcher;
  v10 = [(GTXPCDispatcher *)&v13 initWithProtocolMethods:v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_service, a3);
  }

  return v11;
}

- (void)show_completionHandler_:(id)a3 replyConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  nsdata = xpc_dictionary_get_nsdata(v6, "data");
  v23 = 0;
  v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:nsdata error:&v23];
  v10 = v23;
  if (!v9)
  {
    if (GTCoreLogUseOsLog())
    {
      v11 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [GTDisplayServiceXPCDispatcher show_completionHandler_:v10 replyConnection:?];
      }
    }

    else
    {
      v12 = *MEMORY[0x277D85DF8];
      v13 = MEMORY[0x277CCACA8];
      v11 = [v10 localizedDescription];
      v14 = [v13 stringWithFormat:@"Failed to unarchive display show request %@", v11];
      fprintf(v12, "%s\n", [v14 UTF8String]);
    }
  }

  v15 = gt_xpc_dictionary_create_reply(v6);
  service = self->_service;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __73__GTDisplayServiceXPCDispatcher_show_completionHandler__replyConnection___block_invoke;
  v20[3] = &unk_279661988;
  v21 = v15;
  v22 = v7;
  v17 = v7;
  v18 = v15;
  v19 = [(GTDisplayService *)service show:v9 completionHandler:v20];
}

void __73__GTDisplayServiceXPCDispatcher_show_completionHandler__replyConnection___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:&v10];
  v4 = v10;
  if (v3)
  {
    xpc_dictionary_set_data(*(a1 + 32), "data", [v3 bytes], objc_msgSend(v3, "length"));
  }

  else if (GTCoreLogUseOsLog())
  {
    v5 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __73__GTDisplayServiceXPCDispatcher_show_completionHandler__replyConnection___block_invoke_cold_1(v4);
    }
  }

  else
  {
    v6 = *MEMORY[0x277D85DF8];
    v7 = MEMORY[0x277CCACA8];
    v8 = [v4 localizedDescription];
    v9 = [v7 stringWithFormat:@"Failed to archive display show response %@", v8];
    fprintf(v6, "%s\n", [v9 UTF8String]);
  }

  [*(a1 + 40) sendMessage:*(a1 + 32)];
}

- (void)update_completionHandler_:(id)a3 replyConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  nsdata = xpc_dictionary_get_nsdata(v6, "data");
  v25 = 0;
  v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:nsdata error:&v25];
  v10 = v25;
  if (!v9)
  {
    if (GTCoreLogUseOsLog())
    {
      v13 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [GTDisplayServiceXPCDispatcher update_completionHandler_:v10 replyConnection:?];
      }
    }

    else
    {
      v14 = *MEMORY[0x277D85DF8];
      v15 = MEMORY[0x277CCACA8];
      v13 = [v10 localizedDescription];
      v16 = [v15 stringWithFormat:@"Failed to unarchive display update request %@", v13];
      fprintf(v14, "%s\n", [v16 UTF8String]);
    }

    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v9;
    v12 = xpc_dictionary_get_array(v6, "_pathHistory");
    [v11 setPath:v12];

    v13 = [v7 connection];
    [v11 setConnection:v13];

LABEL_8:
  }

  v17 = gt_xpc_dictionary_create_reply(v6);
  service = self->_service;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __75__GTDisplayServiceXPCDispatcher_update_completionHandler__replyConnection___block_invoke;
  v22[3] = &unk_279661988;
  v23 = v17;
  v24 = v7;
  v19 = v7;
  v20 = v17;
  v21 = [(GTDisplayService *)service update:v9 completionHandler:v22];
}

void __75__GTDisplayServiceXPCDispatcher_update_completionHandler__replyConnection___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:&v10];
  v4 = v10;
  if (v3)
  {
    xpc_dictionary_set_data(*(a1 + 32), "data", [v3 bytes], objc_msgSend(v3, "length"));
  }

  else if (GTCoreLogUseOsLog())
  {
    v5 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __75__GTDisplayServiceXPCDispatcher_update_completionHandler__replyConnection___block_invoke_cold_1(v4);
    }
  }

  else
  {
    v6 = *MEMORY[0x277D85DF8];
    v7 = MEMORY[0x277CCACA8];
    v8 = [v4 localizedDescription];
    v9 = [v7 stringWithFormat:@"Failed to archive display update response %@", v8];
    fprintf(v6, "%s\n", [v9 UTF8String]);
  }

  [*(a1 + 40) sendMessage:*(a1 + 32)];
}

- (void)broadcastDisconnect:(id)a3 replyConnection:(id)a4
{
  v6 = a4;
  v7 = xpc_dictionary_get_array(a3, "_pathHistory");
  [(GTDisplayService *)self->_service broadcastDisconnect:v6 path:v7];
}

- (void)show_completionHandler_:(void *)a1 replyConnection:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_24DBC9000, v2, v3, "Failed to unarchive display show request %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __73__GTDisplayServiceXPCDispatcher_show_completionHandler__replyConnection___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_24DBC9000, v2, v3, "Failed to archive display show response %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)update_completionHandler_:(void *)a1 replyConnection:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_24DBC9000, v2, v3, "Failed to unarchive display update request %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __75__GTDisplayServiceXPCDispatcher_update_completionHandler__replyConnection___block_invoke_cold_1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_1(&dword_24DBC9000, v2, v3, "Failed to archive display update response %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end