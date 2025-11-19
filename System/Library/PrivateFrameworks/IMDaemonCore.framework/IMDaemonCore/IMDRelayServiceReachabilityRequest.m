@interface IMDRelayServiceReachabilityRequest
+ (id)requestFromData:(id)a3 error:(id *)a4;
- (IMDRelayServiceReachabilityRequest)initWithHandles:(id)a3 serviceName:(id)a4 context:(id)a5;
- (id)createDictionary;
@end

@implementation IMDRelayServiceReachabilityRequest

- (IMDRelayServiceReachabilityRequest)initWithHandles:(id)a3 serviceName:(id)a4 context:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = IMDRelayServiceReachabilityRequest;
  v12 = [(IMDRelayServiceReachabilityRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_handles, a3);
    objc_storeStrong(&v13->_serviceName, a4);
    objc_storeStrong(&v13->_context, a5);
  }

  return v13;
}

+ (id)requestFromData:(id)a3 error:(id *)a4
{
  v4 = [IMBlastdoor sendRelayReachabilityRequest:a3 error:a4];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D1AB98]);
    v6 = [v4 context];
    v7 = [v5 initWithBlastDoorContext:v6];

    v8 = [IMDRelayServiceReachabilityRequest alloc];
    v9 = [v4 handles];
    v10 = [v4 serviceName];
    v11 = [(IMDRelayServiceReachabilityRequest *)v8 initWithHandles:v9 serviceName:v10 context:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)createDictionary
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"h";
  v3 = [(IMDRelayServiceReachabilityRequest *)self handles];
  v11[0] = v3;
  v10[1] = @"s";
  v4 = [(IMDRelayServiceReachabilityRequest *)self serviceName];
  v11[1] = v4;
  v10[2] = @"c";
  v5 = [(IMDRelayServiceReachabilityRequest *)self context];
  v6 = [v5 createDictionary];
  v11[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end