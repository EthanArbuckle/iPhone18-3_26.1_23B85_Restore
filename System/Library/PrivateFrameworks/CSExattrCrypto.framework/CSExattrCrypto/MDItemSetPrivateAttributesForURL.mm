@interface MDItemSetPrivateAttributesForURL
@end

@implementation MDItemSetPrivateAttributesForURL

void ___MDItemSetPrivateAttributesForURL_block_invoke()
{
  v0 = CFUUIDGetConstantUUIDWithBytes(*MEMORY[0x277CBED08], 0xFEu, 0x65u, 0x61u, 0x5Bu, 0xFu, 0xF3u, 0x4Eu, 0x3Du, 0xBBu, 0x10u, 0xA7u, 0xACu, 0x81u, 0x62u, 0x22u, 0x6Eu);
  v3 = CFUUIDGetUUIDBytes(v0);
  v1 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&v3];
  v2 = _MDItemSetPrivateAttributesForURL_sMDPrivateMDAttributesXattrNSUUID;
  _MDItemSetPrivateAttributesForURL_sMDPrivateMDAttributesXattrNSUUID = v1;
}

void ___MDItemSetPrivateAttributesForURL_block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = a2;
  v11 = a3;
  v12 = a6;
  v13 = copyConnection();
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = ___MDItemSetPrivateAttributesForURL_block_invoke_3;
  v20[3] = &unk_278D632F8;
  v14 = v12;
  v22 = v14;
  v15 = v13;
  v21 = v15;
  v16 = [v15 remoteObjectProxyWithErrorHandler:v20];
  if (v16)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = ___MDItemSetPrivateAttributesForURL_block_invoke_5;
    v17[3] = &unk_278D63320;
    v19 = v14;
    v18 = v15;
    [v16 computeUpdatedCryptoData:v10 newParams:v11 isPrivateMDAttributes:a4 doMergeArrayValues:a5 replyBlock:v17];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ___MDItemSetPrivateAttributesForURL_block_invoke_2_cold_1();
    }

    (*(v14 + 2))(v14, 0, 0, 0);
    releaseConnection(v15);
  }
}

void ___MDItemSetPrivateAttributesForURL_block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      ___MDItemSetPrivateAttributesForURL_block_invoke_3_cold_1(v3);
    }

    (*(*(a1 + 40) + 16))();
    releaseConnection(*(a1 + 32));
  }
}

void ___MDItemSetPrivateAttributesForURL_block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  releaseConnection(v2);
}

void ___MDItemSetPrivateAttributesForURL_block_invoke_3_cold_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_242636000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error from remote service: %@", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end