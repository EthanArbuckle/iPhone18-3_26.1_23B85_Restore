@interface ECDNSClient
+ (OS_os_log)log;
- (id)_txtRecordsForDomain:(id)a3 error:(id *)a4;
- (id)getDMARCRecordsFromDomain:(id)a3 error:(id *)a4;
- (void)getPublicKeyRecordsFromDomain:(id)a3 withSelector:(id)a4 completionHandler:(id)a5;
@end

@implementation ECDNSClient

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __18__ECDNSClient_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_1 != -1)
  {
    dispatch_once(&log_onceToken_1, block);
  }

  v2 = log_log_1;

  return v2;
}

void __18__ECDNSClient_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_1;
  log_log_1 = v1;
}

- (void)getPublicKeyRecordsFromDomain:(id)a3 withSelector:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@._domainkey.%@", a4, a3];
  v13 = 0;
  v10 = [(ECDNSClient *)self _txtRecordsForDomain:v9 error:&v13];
  v11 = v8[2];
  v12 = v13;
  v11(v8, v10, v12);
}

- (id)getDMARCRecordsFromDomain:(id)a3 error:(id *)a4
{
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"_dmarc.%@", a3];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  obj = 0;
  v7 = [(ECDNSClient *)self _txtRecordsForDomain:v6 error:&obj];
  objc_storeStrong(&v17, obj);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__ECDNSClient_getDMARCRecordsFromDomain_error___block_invoke;
  v10[3] = &unk_27874B7B0;
  v10[4] = &v12;
  v8 = [v7 ef_compactMap:v10];
  if (a4)
  {
    *a4 = v13[5];
  }

  _Block_object_dispose(&v12, 8);

  return v8;
}

id __47__ECDNSClient_getDMARCRecordsFromDomain_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v3 = [ECTagValueList tagValueListFromString:a2 error:&v11];
  v4 = v11;
  v5 = v11;
  v6 = *(*(a1 + 32) + 8);
  v8 = *(v6 + 40);
  v7 = (v6 + 40);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v5 == 0;
  }

  if (!v9)
  {
    objc_storeStrong(v7, v4);
  }

  return v3;
}

- (id)_txtRecordsForDomain:(id)a3 error:(id *)a4
{
  v5 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = objc_opt_new();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __42__ECDNSClient__txtRecordsForDomain_error___block_invoke;
  v16[3] = &unk_27874B7D8;
  v16[4] = &v23;
  v16[5] = &v17;
  context = MEMORY[0x2318C92C0](v16);
  sdRef = 0xAAAAAAAAAAAAAAAALL;
  v7 = [ECIDNAEncoder stringByEncodingDomainName:v5];
  v8 = DNSServiceAttributeCreate();
  if (_txtRecordsForDomain_error__onceToken != -1)
  {
    [ECDNSClient _txtRecordsForDomain:error:];
  }

  v9 = DNSServiceAttributeSetResolverOverride();
  if (v9)
  {
    DNSServiceAttributeDeallocate(v8);
    if (a4)
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ECDNSClient" code:v9 userInfo:0];
LABEL_13:
      v13 = 0;
      *a4 = v10;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v11 = DNSServiceQueryRecordWithAttribute(&sdRef, 0x11000u, 0, [v7 cStringUsingEncoding:1], 0x10u, 1u, v8, query_callback, context);
  DNSServiceAttributeDeallocate(v8);
  if (v11)
  {
    DNSServiceRefDeallocate(sdRef);
    if (a4)
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ECDNSClient" code:v11 userInfo:0];
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v12 = DNSServiceProcessResult(sdRef);
  DNSServiceRefDeallocate(sdRef);
  if (v12 || (v12 = *(v24 + 6)) != 0)
  {
    if (a4)
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ECDNSClient" code:v12 userInfo:0];
      goto LABEL_13;
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v13 = v18[5];
LABEL_15:

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v13;
}

void __42__ECDNSClient__txtRecordsForDomain_error___block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }

  else if (v5)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v5];
  }
}

void __42__ECDNSClient__txtRecordsForDomain_error___block_invoke_2()
{
  v0 = [MEMORY[0x277D2CA68] dnsAgentUUID];
  v1 = v0;
  if (v0)
  {
    [v0 getUUIDBytes:&_txtRecordsForDomain_error__dns_agent_uuid];
  }

  else
  {
    _txtRecordsForDomain_error__dns_agent_uuid = *MEMORY[0x277D86170];
    v2 = +[ECDNSClient log];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __42__ECDNSClient__txtRecordsForDomain_error___block_invoke_2_cold_1(v2);
    }
  }
}

@end