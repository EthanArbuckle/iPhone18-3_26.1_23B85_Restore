@interface RemoteNetworkQualityAssessment
- (RemoteNetworkQualityAssessment)initWithConfiguration:(id)a3;
- (void)getAvailableServersForDevice:(id)a3 withCompletionHandler:(id)a4;
- (void)rapportDiscoveryCompletionWithClient:(id)a3 deviceName:(id)a4;
- (void)rapportDiscoveryCompletionWithClient:(id)a3 deviceName:(id)a4 completionHandler:(id)a5;
- (void)rapportInvokeCompletionWithClient:(id)a3 deviceIdentifier:(id)a4;
- (void)rapportQueryCompletionWithClient:(id)a3 deviceIdentifier:(id)a4 completionHandler:(id)a5;
- (void)runAgainst:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation RemoteNetworkQualityAssessment

- (RemoteNetworkQualityAssessment)initWithConfiguration:(id)a3
{
  if (objc_opt_class())
  {
    v12.receiver = self;
    v12.super_class = RemoteNetworkQualityAssessment;
    v5 = [(RemoteNetworkQualityAssessment *)&v12 init];
    if (v5)
    {
      if (a3)
      {
        v6 = objc_alloc_init(NetworkQualityConfiguration);
      }

      else
      {
        v6 = 0;
      }

      config = v5->config;
      v5->config = v6;

      v9 = dispatch_queue_create("com.apple.networkquality.rapport", 0);
      dispatchQueue = v5->dispatchQueue;
      v5->dispatchQueue = v9;
    }

    self = v5;
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)rapportDiscoveryCompletionWithClient:(id)a3 deviceName:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = [a3 activeDevices];
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = [v12 name];
        v14 = [v13 isEqualToString:v6];

        if (v14)
        {
          netqual_log_init();
          v19 = os_log_netqual;
          if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
          {
            log = v19;
            v20 = [v12 identifier];
            v21 = [v20 UTF8String];
            v22 = [v12 name];
            v23 = [v22 UTF8String];
            v24 = [v12 model];
            v25 = [v24 UTF8String];
            *buf = 136316162;
            v39 = "[RemoteNetworkQualityAssessment rapportDiscoveryCompletionWithClient:deviceName:]";
            v40 = 1024;
            v41 = 51;
            v42 = 2080;
            v43 = v21;
            v44 = 2080;
            v45 = v23;
            v46 = 2080;
            v47 = v25;
            _os_log_impl(&dword_25B962000, log, OS_LOG_TYPE_DEFAULT, "%s:%u - Found ID=%s name=%s model=%s\n", buf, 0x30u);
          }

          v26 = objc_alloc_init(MEMORY[0x277D44158]);
          [v26 setDispatchQueue:self->dispatchQueue];
          [v26 setDestinationDevice:v12];
          [v26 setServiceType:@"com.apple.networkquality.invoke"];
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __82__RemoteNetworkQualityAssessment_rapportDiscoveryCompletionWithClient_deviceName___block_invoke;
          v29[3] = &unk_2799698A8;
          v29[4] = self;
          v30 = v26;
          v31 = v12;
          v17 = v26;
          [v17 activateWithCompletion:v29];

          goto LABEL_15;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v32 objects:v48 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to find the device %@", v6];
  netqual_log_init();
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
  {
    [RemoteNetworkQualityAssessment rapportDiscoveryCompletionWithClient:deviceName:];
  }

  completionHandler = self->completionHandler;
  v16 = MEMORY[0x277CCA9B8];
  v36 = *MEMORY[0x277CCA450];
  v37 = v7;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v18 = [v16 errorWithDomain:@"NetworkQualityErrorDomain" code:1009 userInfo:v17];
  completionHandler[2](completionHandler, 0, v18);

LABEL_15:
  v27 = *MEMORY[0x277D85DE8];
}

void __82__RemoteNetworkQualityAssessment_rapportDiscoveryCompletionWithClient_deviceName___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2[3] + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) identifier];
    [v2 rapportInvokeCompletionWithClient:v4 deviceIdentifier:v5];
  }
}

- (void)rapportInvokeCompletionWithClient:(id)a3 deviceIdentifier:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  config = self->config;
  v14 = 0;
  v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:config requiringSecureCoding:1 error:&v14];
  v10 = v14;
  if (v10)
  {
    (*(self->completionHandler + 2))();
  }

  else
  {
    v15 = @"config";
    v16[0] = v9;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __85__RemoteNetworkQualityAssessment_rapportInvokeCompletionWithClient_deviceIdentifier___block_invoke;
    v13[3] = &unk_2799698D0;
    v13[4] = self;
    [v6 sendRequestID:@"com.apple.networkquality.invoke" request:v11 destinationID:v7 options:0 responseHandler:v13];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __85__RemoteNetworkQualityAssessment_rapportInvokeCompletionWithClient_deviceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  netqual_log_init();
  v4 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v24 = "[RemoteNetworkQualityAssessment rapportInvokeCompletionWithClient:deviceIdentifier:]_block_invoke";
    v25 = 1024;
    v26 = 93;
    v27 = 2112;
    v28 = v3;
    _os_log_impl(&dword_25B962000, v4, OS_LOG_TYPE_DEFAULT, "%s:%u - inResponse: %@", buf, 0x1Cu);
  }

  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"results"];
    if (v5)
    {
      v18[0] = objc_opt_class();
      v18[1] = objc_opt_class();
      v18[2] = objc_opt_class();
      v18[3] = objc_opt_class();
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];
      v7 = MEMORY[0x277CCAAC8];
      v8 = [MEMORY[0x277CBEB98] setWithArray:v6];
      v17 = 0;
      v9 = [v7 unarchivedObjectOfClasses:v8 fromData:v5 error:&v17];
      v10 = v17;

      netqual_log_init();
      v11 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v24 = "[RemoteNetworkQualityAssessment rapportInvokeCompletionWithClient:deviceIdentifier:]_block_invoke";
        v25 = 1024;
        v26 = 118;
        v27 = 2112;
        v28 = v9;
        _os_log_impl(&dword_25B962000, v11, OS_LOG_TYPE_DEFAULT, "%s:%u - results: %@", buf, 0x1Cu);
      }

      (*(*(*(a1 + 32) + 24) + 16))();
    }

    else
    {
      netqual_log_init();
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
      {
        __85__RemoteNetworkQualityAssessment_rapportInvokeCompletionWithClient_deviceIdentifier___block_invoke_cold_1();
      }

      v14 = *(*(a1 + 32) + 24);
      v15 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA450];
      v20 = @"No response data available";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v6 = [v15 errorWithDomain:@"NetworkQualityErrorDomain" code:1010 userInfo:v10];
      (*(v14 + 16))(v14, 0, v6);
    }
  }

  else
  {
    netqual_log_init();
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      __85__RemoteNetworkQualityAssessment_rapportInvokeCompletionWithClient_deviceIdentifier___block_invoke_cold_2();
    }

    v12 = *(*(a1 + 32) + 24);
    v13 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA450];
    v22 = @"No response data available";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v10 = [v13 errorWithDomain:@"NetworkQualityErrorDomain" code:1010 userInfo:v5];
    (*(v12 + 16))(v12, 0, v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)runAgainst:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x25F873620](a4);
  completionHandler = self->completionHandler;
  self->completionHandler = v7;

  v9 = objc_alloc_init(MEMORY[0x277D44158]);
  [v9 setDispatchQueue:self->dispatchQueue];
  [v9 setServiceType:@"com.apple.networkquality.query"];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__RemoteNetworkQualityAssessment_runAgainst_withCompletionHandler___block_invoke;
  v12[3] = &unk_2799698A8;
  v12[4] = self;
  v13 = v9;
  v14 = v6;
  v10 = v6;
  v11 = v9;
  [v11 activateWithCompletion:v12];
}

uint64_t __67__RemoteNetworkQualityAssessment_runAgainst_withCompletionHandler___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  if (a2)
  {
    return (*(v3[3] + 16))();
  }

  else
  {
    return [v3 rapportDiscoveryCompletionWithClient:a1[5] deviceName:a1[6]];
  }
}

- (void)rapportQueryCompletionWithClient:(id)a3 deviceIdentifier:(id)a4 completionHandler:(id)a5
{
  v7 = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __102__RemoteNetworkQualityAssessment_rapportQueryCompletionWithClient_deviceIdentifier_completionHandler___block_invoke;
  v9[3] = &unk_2799698F8;
  v10 = v7;
  v8 = v7;
  [a3 sendRequestID:@"com.apple.networkquality.query" request:MEMORY[0x277CBEC10] destinationID:a4 options:0 responseHandler:v9];
}

void __102__RemoteNetworkQualityAssessment_rapportQueryCompletionWithClient_deviceIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [a2 objectForKeyedSubscript:@"results"];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v13[2] = objc_opt_class();
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
    v5 = MEMORY[0x277CCAAC8];
    v6 = [MEMORY[0x277CBEB98] setWithArray:v4];
    v12 = 0;
    v7 = [v5 unarchivedObjectOfClasses:v6 fromData:v3 error:&v12];
    v8 = v12;

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    netqual_log_init();
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      __102__RemoteNetworkQualityAssessment_rapportQueryCompletionWithClient_deviceIdentifier_completionHandler___block_invoke_cold_1();
    }

    v9 = *(a1 + 32);
    v10 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA450];
    v15[0] = @"No response data available";
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v4 = [v10 errorWithDomain:@"NetworkQualityErrorDomain" code:1010 userInfo:v3];
    (*(v9 + 16))(v9, 0, v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)rapportDiscoveryCompletionWithClient:(id)a3 deviceName:(id)a4 completionHandler:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = [a3 activeDevices];
  v11 = [v10 countByEnumeratingWithState:&v37 objects:v53 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v38;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v38 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v37 + 1) + 8 * i);
        v16 = [v15 name];
        v17 = [v16 isEqualToString:v8];

        if (v17)
        {
          netqual_log_init();
          v21 = os_log_netqual;
          if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
          {
            log = v21;
            v22 = [v15 identifier];
            v23 = [v22 UTF8String];
            v24 = [v15 name];
            v25 = v9;
            v26 = self;
            v27 = [v24 UTF8String];
            v28 = [v15 model];
            v29 = [v28 UTF8String];
            *buf = 136316162;
            v44 = "[RemoteNetworkQualityAssessment rapportDiscoveryCompletionWithClient:deviceName:completionHandler:]";
            v45 = 1024;
            v46 = 198;
            v47 = 2080;
            v48 = v23;
            v49 = 2080;
            v50 = v27;
            self = v26;
            v9 = v25;
            v51 = 2080;
            v52 = v29;
            _os_log_impl(&dword_25B962000, log, OS_LOG_TYPE_DEFAULT, "%s:%u - Found ID=%s name=%s model=%s\n", buf, 0x30u);
          }

          v30 = objc_alloc_init(MEMORY[0x277D44158]);
          [v30 setDispatchQueue:self->dispatchQueue];
          [v30 setDestinationDevice:v15];
          [v30 setServiceType:@"com.apple.networkquality.query"];
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __100__RemoteNetworkQualityAssessment_rapportDiscoveryCompletionWithClient_deviceName_completionHandler___block_invoke;
          v33[3] = &unk_279969920;
          v33[4] = self;
          v34 = v30;
          v35 = v15;
          v36 = v9;
          v19 = v30;
          [v19 activateWithCompletion:v33];

          v20 = v36;
          goto LABEL_15;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v37 objects:v53 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to find the device %@", v8];
  netqual_log_init();
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
  {
    [RemoteNetworkQualityAssessment rapportDiscoveryCompletionWithClient:deviceName:completionHandler:];
  }

  v18 = MEMORY[0x277CCA9B8];
  v41 = *MEMORY[0x277CCA450];
  v42 = v10;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  v20 = [v18 errorWithDomain:@"NetworkQualityErrorDomain" code:1009 userInfo:v19];
  (*(v9 + 2))(v9, 0, v20);
LABEL_15:

  v31 = *MEMORY[0x277D85DE8];
}

void __100__RemoteNetworkQualityAssessment_rapportDiscoveryCompletionWithClient_deviceName_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 56);
    v4 = *(*(a1 + 56) + 16);

    v4();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = [*(a1 + 48) identifier];
    [v5 rapportQueryCompletionWithClient:v6 deviceIdentifier:v7 completionHandler:*(a1 + 56)];
  }
}

- (void)getAvailableServersForDevice:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277D44158]);
  [v8 setDispatchQueue:self->dispatchQueue];
  [v8 setServiceType:@"com.apple.networkquality.query"];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__RemoteNetworkQualityAssessment_getAvailableServersForDevice_withCompletionHandler___block_invoke;
  v12[3] = &unk_279969920;
  v12[4] = self;
  v13 = v8;
  v14 = v6;
  v15 = v7;
  v9 = v6;
  v10 = v8;
  v11 = v7;
  [v10 activateWithCompletion:v12];
}

uint64_t __85__RemoteNetworkQualityAssessment_getAvailableServersForDevice_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 56) + 16))();
  }

  else
  {
    return [*(a1 + 32) rapportDiscoveryCompletionWithClient:*(a1 + 40) deviceName:*(a1 + 48) completionHandler:*(a1 + 56)];
  }
}

- (void)rapportDiscoveryCompletionWithClient:deviceName:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void __85__RemoteNetworkQualityAssessment_rapportInvokeCompletionWithClient_deviceIdentifier___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __85__RemoteNetworkQualityAssessment_rapportInvokeCompletionWithClient_deviceIdentifier___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __102__RemoteNetworkQualityAssessment_rapportQueryCompletionWithClient_deviceIdentifier_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)rapportDiscoveryCompletionWithClient:deviceName:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

@end