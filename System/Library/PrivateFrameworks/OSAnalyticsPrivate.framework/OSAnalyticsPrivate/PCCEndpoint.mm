@interface PCCEndpoint
- (id)send:(id)send file:(id)file metadata:(id)metadata error:(id *)error;
- (id)send:(id)send message:(id)message error:(id *)error;
- (id)synchronize:(id)synchronize withOptions:(id)options;
@end

@implementation PCCEndpoint

- (id)synchronize:(id)synchronize withOptions:(id)options
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

- (id)send:(id)send message:(id)message error:(id *)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  sendCopy = send;
  messageCopy = message;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ERROR: PCCEndpoint::sendMessage: doesn't do anything", v13, 2u);
  }

  if (error)
  {
    v9 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA450];
    v15[0] = @"method not supported";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *error = [v9 errorWithDomain:@"ProxyEndpointErrorDomain" code:1 userInfo:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)send:(id)send file:(id)file metadata:(id)metadata error:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  sendCopy = send;
  fileCopy = file;
  metadataCopy = metadata;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ERROR: PCCEndpoint::sendFile:metadata doesn't do anything", v16, 2u);
  }

  if (error)
  {
    v12 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"method not supported";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *error = [v12 errorWithDomain:@"ProxyEndpointErrorDomain" code:1 userInfo:v13];
  }

  v14 = *MEMORY[0x277D85DE8];
  return 0;
}

@end