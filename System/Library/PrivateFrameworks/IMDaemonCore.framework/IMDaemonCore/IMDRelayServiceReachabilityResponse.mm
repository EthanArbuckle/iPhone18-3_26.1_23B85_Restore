@interface IMDRelayServiceReachabilityResponse
+ (id)responseFromData:(id)data error:(id *)error;
- (IMDRelayServiceReachabilityResponse)initWithResult:(id)result;
- (id)createDictionary;
@end

@implementation IMDRelayServiceReachabilityResponse

- (IMDRelayServiceReachabilityResponse)initWithResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = IMDRelayServiceReachabilityResponse;
  v6 = [(IMDRelayServiceReachabilityResponse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_result, result);
  }

  return v7;
}

+ (id)responseFromData:(id)data error:(id *)error
{
  v4 = [IMBlastdoor sendRelayReachabilityResponse:data error:error];
  if (v4)
  {
    v5 = [IMDRelayServiceReachabilityResponse alloc];
    v6 = objc_alloc(MEMORY[0x277D1ABB0]);
    result = [v4 result];
    v8 = [v6 initWithBlastDoorResult:result];
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
  result = [(IMDRelayServiceReachabilityResponse *)self result];
  createDictionary = [result createDictionary];
  v8[0] = createDictionary;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end