@interface BodyWriter
- (void)sendBodyDataWithContext:(id)a3;
@end

@implementation BodyWriter

- (void)sendBodyDataWithContext:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __38__BodyWriter_sendBodyDataWithContext___block_invoke;
  v12[3] = &unk_279969650;
  v12[4] = self;
  v5 = v4;
  v13 = v5;
  v14 = &v15;
  v6 = MEMORY[0x25F873620](v12);
  v7 = [(BodyWriter *)self postData];
  size = dispatch_data_get_size(v7);
  if ([(BodyWriter *)self bytesLeftToPost]>= size)
  {
    v11 = *(v16 + 24);
  }

  else
  {
    v9 = [(BodyWriter *)self postData];
    subrange = dispatch_data_create_subrange(v9, 0, [(BodyWriter *)self bytesLeftToPost]);

    v11 = 1;
    *(v16 + 24) = 1;
    v7 = subrange;
  }

  (v6)[2](v6, v7, v11 & 1);

  _Block_object_dispose(&v15, 8);
}

void __38__BodyWriter_sendBodyDataWithContext___block_invoke(uint64_t a1, dispatch_data_t data, BOOL a3)
{
  size = dispatch_data_get_size(data);
  v7 = *(a1 + 32);
  v8 = data;
  v9 = [v7 connection];
  completion[0] = MEMORY[0x277D85DD0];
  completion[1] = 3221225472;
  completion[2] = __38__BodyWriter_sendBodyDataWithContext___block_invoke_2;
  completion[3] = &unk_279969628;
  completion[4] = *(a1 + 32);
  v12 = size;
  v13 = a3;
  v11 = *(a1 + 40);
  nw_connection_send(v9, v8, v11, a3, completion);
}

void __38__BodyWriter_sendBodyDataWithContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    netqual_log_init();
    v4 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      __38__BodyWriter_sendBodyDataWithContext___block_invoke_2_cold_1(v4, v3);
    }

    goto LABEL_4;
  }

  if ([*(a1 + 32) bytesLeftToPost] >= *(a1 + 56))
  {
    [*(a1 + 32) setBytesLeftToPost:{objc_msgSend(*(a1 + 32), "bytesLeftToPost") - *(a1 + 56)}];
  }

  else if ((*(a1 + 64) & 1) == 0)
  {
    netqual_log_init();
    v5 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      __38__BodyWriter_sendBodyDataWithContext___block_invoke_2_cold_2(v5);
    }

    goto LABEL_4;
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) sendBodyDataWithContext:*(a1 + 40)];
  }

LABEL_4:
}

void __38__BodyWriter_sendBodyDataWithContext___block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v5 = 136315906;
  v6 = "[BodyWriter sendBodyDataWithContext:]_block_invoke_2";
  v7 = 1024;
  v8 = 26;
  v9 = 1024;
  error_domain = nw_error_get_error_domain(a2);
  v11 = 1024;
  error_code = nw_error_get_error_code(a2);
  _os_log_error_impl(&dword_25B962000, v3, OS_LOG_TYPE_ERROR, "%s:%u - Write encountered error: %u:%u\n", &v5, 0x1Eu);

  v4 = *MEMORY[0x277D85DE8];
}

void __38__BodyWriter_sendBodyDataWithContext___block_invoke_2_cold_2(os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[BodyWriter sendBodyDataWithContext:]_block_invoke";
  v4 = 1024;
  v5 = 34;
  _os_log_error_impl(&dword_25B962000, log, OS_LOG_TYPE_ERROR, "%s:%u - Write not complete, but didn't have a full amount to write", &v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

@end