@interface PCCEndpoint
- (id)send:(id)a3 file:(id)a4 metadata:(id)a5 error:(id *)a6;
- (id)send:(id)a3 message:(id)a4 error:(id *)a5;
- (id)synchronize:(id)a3 withOptions:(id)a4;
@end

@implementation PCCEndpoint

- (id)synchronize:(id)a3 withOptions:(id)a4
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = @"method not supported";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v6 = [v4 errorWithDomain:@"ProxyEndpointErrorDomain" code:1 userInfo:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)send:(id)a3 message:(id)a4 error:(id *)a5
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ERROR: PCCEndpoint::sendMessage: doesn't do anything", v13, 2u);
  }

  if (a5)
  {
    v9 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA450];
    v15[0] = @"method not supported";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *a5 = [v9 errorWithDomain:@"ProxyEndpointErrorDomain" code:1 userInfo:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)send:(id)a3 file:(id)a4 metadata:(id)a5 error:(id *)a6
{
  v18[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ERROR: PCCEndpoint::sendFile:metadata doesn't do anything", v16, 2u);
  }

  if (a6)
  {
    v12 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"method not supported";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *a6 = [v12 errorWithDomain:@"ProxyEndpointErrorDomain" code:1 userInfo:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
  return 0;
}

@end