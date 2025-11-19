@interface HMDPendingResponse
+ (id)tupleForMessage:(id)a3 originalRequestIdentifier:(id)a4 requestCount:(unint64_t)a5 withCompletionHandler:(id)a6;
- (id)description;
- (id)retrieveAndClearAllResponses;
- (id)retrieveAndClearLatestResponses;
- (void)addResponsesToPendingResponse:(id)a3;
- (void)addToPendingResponses:(id)a3;
@end

@implementation HMDPendingResponse

- (id)retrieveAndClearLatestResponses
{
  v3 = [(HMDPendingResponse *)self latestResponses];
  v4 = [v3 copy];

  v5 = [(HMDPendingResponse *)self latestResponses];
  [v5 removeAllObjects];

  return v4;
}

- (id)retrieveAndClearAllResponses
{
  v3 = [(HMDPendingResponse *)self allResponses];
  v4 = [v3 copy];

  v5 = [(HMDPendingResponse *)self allResponses];
  [v5 removeAllObjects];

  v6 = [(HMDPendingResponse *)self latestResponses];
  [v6 removeAllObjects];

  return v4;
}

- (void)addResponsesToPendingResponse:(id)a3
{
  v4 = a3;
  v5 = [(HMDPendingResponse *)self allResponses];
  [v5 addObjectsFromArray:v4];

  v6 = [(HMDPendingResponse *)self latestResponses];
  [v6 addObjectsFromArray:v4];

  v7 = [v4 count];
  v8 = [(HMDPendingResponse *)self pendingResponseCount]- v7;

  [(HMDPendingResponse *)self setPendingResponseCount:v8];
}

- (void)addToPendingResponses:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(HMDPendingResponse *)self allResponses];
    [v5 addObject:v4];

    v6 = [(HMDPendingResponse *)self latestResponses];
    [v6 addObject:v4];

    v7 = [(HMDPendingResponse *)self pendingResponseCount]- 1;

    [(HMDPendingResponse *)self setPendingResponseCount:v7];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDPendingResponse *)self requestMessage];
  v5 = [v4 identifier];
  v6 = [v3 stringWithFormat:@"Pending Response for request: %@, total requests: %tu pending responses: %tu", v5, -[HMDPendingResponse totalRequestsCount](self, "totalRequestsCount"), -[HMDPendingResponse pendingResponseCount](self, "pendingResponseCount")];

  return v6;
}

+ (id)tupleForMessage:(id)a3 originalRequestIdentifier:(id)a4 requestCount:(unint64_t)a5 withCompletionHandler:(id)a6
{
  v9 = a6;
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(HMDPendingResponse);
  [(HMDPendingResponse *)v12 setRequestMessage:v11];

  [(HMDPendingResponse *)v12 setOriginalRequestIdentifier:v10];
  [(HMDPendingResponse *)v12 setTotalRequestsCount:a5];
  [(HMDPendingResponse *)v12 setPendingResponseCount:a5];
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:a5];
  [(HMDPendingResponse *)v12 setAllResponses:v13];

  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:a5];
  [(HMDPendingResponse *)v12 setLatestResponses:v14];

  [(HMDPendingResponse *)v12 setResponseHandler:v9];
  [(HMDPendingResponse *)v12 setCreationTime:CFAbsoluteTimeGetCurrent()];

  return v12;
}

@end