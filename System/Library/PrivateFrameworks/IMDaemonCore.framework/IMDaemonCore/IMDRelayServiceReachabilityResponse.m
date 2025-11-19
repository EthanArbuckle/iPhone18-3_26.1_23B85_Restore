@interface IMDRelayServiceReachabilityResponse
+ (id)responseFromData:(id)a3 error:(id *)a4;
- (IMDRelayServiceReachabilityResponse)initWithResult:(id)a3;
- (id)createDictionary;
@end

@implementation IMDRelayServiceReachabilityResponse

- (IMDRelayServiceReachabilityResponse)initWithResult:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMDRelayServiceReachabilityResponse;
  v6 = [(IMDRelayServiceReachabilityResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_result, a3);
  }

  return v7;
}

+ (id)responseFromData:(id)a3 error:(id *)a4
{
  v4 = [IMBlastdoor sendRelayReachabilityResponse:a3 error:a4];
  if (v4)
  {
    v5 = [IMDRelayServiceReachabilityResponse alloc];
    v6 = objc_alloc(MEMORY[0x277D1ABB0]);
    v7 = [v4 result];
    v8 = [v6 initWithBlastDoorResult:v7];
    v9 = [(IMDRelayServiceReachabilityResponse *)v5 initWithResult:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)createDictionary
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"r";
  v2 = [(IMDRelayServiceReachabilityResponse *)self result];
  v3 = [v2 createDictionary];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end