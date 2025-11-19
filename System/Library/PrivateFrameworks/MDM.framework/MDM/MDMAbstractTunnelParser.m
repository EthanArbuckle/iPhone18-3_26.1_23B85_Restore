@interface MDMAbstractTunnelParser
+ (id)responseWithError:(id)a3;
+ (id)responseWithStatus:(id)a3;
- (id)_commandDisconnect:(id)a3;
- (void)processRequest:(id)a3 assertion:(id)a4 completionBlock:(id)a5;
@end

@implementation MDMAbstractTunnelParser

- (id)_commandDisconnect:(id)a3
{
  v3 = *DMCLogObjects();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [MDMAbstractTunnelParser(Commands) _commandDisconnect:v3];
  }

  v4 = [MDMAbstractTunnelParser responseWithStatus:@"Acknowledged"];

  return v4;
}

+ (id)responseWithStatus:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"Status";
  v10[0] = a3;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v6 = [v5 mutableCopy];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)responseWithError:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"Status";
  v9[1] = @"ErrorObject";
  v10[0] = @"Error";
  v10[1] = a3;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v10 forKeys:v9 count:2];

  v6 = [v5 mutableCopy];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)processRequest:(id)a3 assertion:(id)a4 completionBlock:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (![v7 count])
  {
    v12 = 0;
    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = [v7 objectForKey:@"RequestType"];
  v10 = v9;
  if (v9 && [v9 isEqualToString:@"Disconnect"])
  {
    v11 = [(MDMAbstractTunnelParser *)self _commandDisconnect:v7];
  }

  else
  {
    v11 = [MDMAbstractTunnelParser responseWithStatus:@"CommandFormatError"];
  }

  v12 = v11;

  if (v8)
  {
LABEL_7:
    v13 = dispatch_get_global_queue(0, 0);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __68__MDMAbstractTunnelParser_processRequest_assertion_completionBlock___block_invoke;
    v14[3] = &unk_27982B898;
    v16 = v8;
    v15 = v12;
    dispatch_async(v13, v14);
  }

LABEL_8:
}

@end