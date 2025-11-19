@interface CDComplications
@end

@implementation CDComplications

void __38___CDComplications_sharedComplication__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) initForComplications];
  v2 = sharedInstance;
  sharedInstance = v1;

  if (!sharedInstance)
  {
    v3 = +[_CDLogging admissionCheckChannel];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __38___CDComplications_sharedComplication__block_invoke_cold_1(v3);
    }
  }
}

void __65___CDComplications_admissionCheckOnComplication_forRemote_error___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) activeComplications];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = v3;
  if (!v3 || [v3 unsignedIntegerValue] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = +[_CDLogging admissionCheckChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 138412546;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v2;
      _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_DEFAULT, "%@ is not in %@", buf, 0x16u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __65___CDComplications_admissionCheckOnComplication_forRemote_error___block_invoke_17;
    v21[3] = &unk_1E7367440;
    v21[4] = v7;
    v9 = v21;
    v10 = v8;
    v11 = os_transaction_create();
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __cd_dispatch_async_capture_tx_block_invoke_2;
    v23 = &unk_1E7367818;
    v24 = v11;
    v25 = v9;
    v12 = v11;
    dispatch_async(v10, buf);

    goto LABEL_6;
  }

  if (*(a1 + 56) != 1)
  {
    goto LABEL_6;
  }

  if ([*(a1 + 32) watchIsCharging])
  {
LABEL_15:
    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_6;
  }

  v14 = [*(a1 + 32) remainingPushesOnComplication:*(a1 + 40) andReduceBy:&unk_1F05EE760];
  v15 = +[_CDLogging admissionCheckChannel];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = *(a1 + 40);
    *buf = 67109378;
    *&buf[4] = v14;
    *&buf[8] = 2112;
    *&buf[10] = v16;
    _os_log_impl(&dword_191750000, v15, OS_LOG_TYPE_INFO, "Found %d complication pushes remaining for %@ today\n", buf, 0x12u);
  }

  v17 = +[_CDLogging admissionCheckChannel];
  v18 = v17;
  if (v14 >= 1)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 40);
      *buf = 138412290;
      *&buf[4] = v19;
      _os_log_impl(&dword_191750000, v18, OS_LOG_TYPE_DEFAULT, "Approved guaranteed complication push for %@\n", buf, 0xCu);
    }

    goto LABEL_15;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v20 = *(a1 + 40);
    *buf = 138412290;
    *&buf[4] = v20;
    _os_log_impl(&dword_191750000, v18, OS_LOG_TYPE_INFO, "No more complication pushes for %@ for today, denying\n", buf, 0xCu);
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
LABEL_6:

  v13 = *MEMORY[0x1E69E9840];
}

void __47___CDComplications_isBundleActiveComplication___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activeComplications];
  v3 = [v2 objectForKey:*(a1 + 40)];

  *(*(*(a1 + 48) + 8) + 24) = v3 != 0;
}

@end