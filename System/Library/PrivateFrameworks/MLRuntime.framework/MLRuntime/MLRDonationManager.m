@interface MLRDonationManager
+ (id)defaultManager;
- (BOOL)record:(id)a3 data:(id)a4 encodingSchema:(id)a5 metadata:(id)a6 errorOut:(id *)a7;
- (MLRDonationManager)init;
- (void)encodeAndUploadToDediscoWithIdentifier:(id)a3 measurements:(id)a4 withEncodingSchemas:(id)a5 metadata:(id)a6 completion:(id)a7;
@end

@implementation MLRDonationManager

+ (id)defaultManager
{
  if (defaultManager_onceToken != -1)
  {
    +[MLRDonationManager defaultManager];
  }

  v3 = defaultManager_donationManagerClient;

  return v3;
}

uint64_t __36__MLRDonationManager_defaultManager__block_invoke()
{
  defaultManager_donationManagerClient = objc_alloc_init(MLRDonationManager);

  return MEMORY[0x2821F96F8]();
}

- (MLRDonationManager)init
{
  v10.receiver = self;
  v10.super_class = MLRDonationManager;
  v2 = [(MLRDonationManager *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [v4 UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(v5, v6);
    queue = v2->_queue;
    v2->_queue = v7;
  }

  return v2;
}

- (void)encodeAndUploadToDediscoWithIdentifier:(id)a3 measurements:(id)a4 withEncodingSchemas:(id)a5 metadata:(id)a6 completion:(id)a7
{
  v40[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v12)
  {
    v18 = [MEMORY[0x277D05600] coreChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MLRDonationManager encodeAndUploadToDediscoWithIdentifier:measurements:withEncodingSchemas:metadata:completion:];
    }

    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277D05640];
    v39 = *MEMORY[0x277CCA450];
    v40[0] = @"identifier must not be nil.";
    v21 = MEMORY[0x277CBEAC0];
    v22 = v40;
    v23 = &v39;
    goto LABEL_14;
  }

  if (!v13)
  {
    v24 = [MEMORY[0x277D05600] coreChannel];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [MLRDonationManager encodeAndUploadToDediscoWithIdentifier:measurements:withEncodingSchemas:metadata:completion:];
    }

    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277D05640];
    v37 = *MEMORY[0x277CCA450];
    v38 = @"measurements must be not be nil.";
    v21 = MEMORY[0x277CBEAC0];
    v22 = &v38;
    v23 = &v37;
    goto LABEL_14;
  }

  if (!v14)
  {
    v25 = [MEMORY[0x277D05600] coreChannel];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [MLRDonationManager encodeAndUploadToDediscoWithIdentifier:measurements:withEncodingSchemas:metadata:completion:];
    }

    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277D05640];
    v35 = *MEMORY[0x277CCA450];
    v36 = @"encodingSchemas must be not be nil.";
    v21 = MEMORY[0x277CBEAC0];
    v22 = &v36;
    v23 = &v35;
LABEL_14:
    v26 = [v21 dictionaryWithObjects:v22 forKeys:v23 count:1];
    v27 = [v19 errorWithDomain:v20 code:1400 userInfo:v26];
    v16[2](v16, v27);

    goto LABEL_15;
  }

  v17 = [(MLRDonationManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __114__MLRDonationManager_encodeAndUploadToDediscoWithIdentifier_measurements_withEncodingSchemas_metadata_completion___block_invoke;
  block[3] = &unk_279840A48;
  block[4] = self;
  v30 = v12;
  v31 = v13;
  v32 = v14;
  v33 = v15;
  v34 = v16;
  dispatch_async(v17, block);

LABEL_15:
  v28 = *MEMORY[0x277D85DE8];
}

void __114__MLRDonationManager_encodeAndUploadToDediscoWithIdentifier_measurements_withEncodingSchemas_metadata_completion___block_invoke(void *a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = a1[5];
  v12[0] = a1[6];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v5 = a1[7];
  v6 = a1[8];
  v11 = 0;
  v7 = [v2 record:v3 data:v4 encodingSchema:v5 metadata:v6 errorOut:&v11];
  v8 = v11;

  if (v8 || (v7 & 1) == 0)
  {
    v9 = [MEMORY[0x277D05600] coreChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __114__MLRDonationManager_encodeAndUploadToDediscoWithIdentifier_measurements_withEncodingSchemas_metadata_completion___block_invoke_cold_1();
    }
  }

  (*(a1[9] + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)record:(id)a3 data:(id)a4 encodingSchema:(id)a5 metadata:(id)a6 errorOut:(id *)a7
{
  v38 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [MEMORY[0x277D05600] coreChannel];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v31 = v11;
    v32 = 2112;
    v33 = v12;
    v34 = 2112;
    v35 = v13;
    v36 = 2112;
    v37 = v14;
    _os_log_debug_impl(&dword_2577CB000, v15, OS_LOG_TYPE_DEBUG, "Recording key=%@, data=%@, encodingSchema=%@, metadata=%@", buf, 0x2Au);
  }

  v16 = [v13 objectForKeyedSubscript:@"type"];
  v17 = [v16 isEqual:@"decimal"];

  if (v17 || ([v13 objectForKeyedSubscript:@"type"], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqual:", @"fedstats"), v18, v19))
  {
    v20 = [v13 objectForKeyedSubscript:@"encodingParameters"];
    v21 = objc_opt_new();
    v22 = [v21 record:v11 data:v12 encodingSchema:v20 metadata:v14 errorOut:a7];
  }

  else
  {
    v23 = [MEMORY[0x277D05600] coreChannel];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MLRDonationManager record:data:encodingSchema:metadata:errorOut:];
    }

    v24 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277D05640];
    v28 = *MEMORY[0x277CCA450];
    v29 = @"The encodingSchema type has to be either decimal or fedstats.";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    [v24 errorWithDomain:v25 code:1400 userInfo:v20];
    *a7 = v22 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v22;
}

void __114__MLRDonationManager_encodeAndUploadToDediscoWithIdentifier_measurements_withEncodingSchemas_metadata_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)record:data:encodingSchema:metadata:errorOut:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end