@interface HMDPendingResponse
+ (id)tupleForMessage:(id)message originalRequestIdentifier:(id)identifier requestCount:(unint64_t)count withCompletionHandler:(id)handler;
- (id)description;
- (id)retrieveAndClearAllResponses;
- (id)retrieveAndClearLatestResponses;
- (void)addResponsesToPendingResponse:(id)response;
- (void)addToPendingResponses:(id)responses;
@end

@implementation HMDPendingResponse

- (id)retrieveAndClearLatestResponses
{
  latestResponses = [(HMDPendingResponse *)self latestResponses];
  v4 = [latestResponses copy];

  latestResponses2 = [(HMDPendingResponse *)self latestResponses];
  [latestResponses2 removeAllObjects];

  return v4;
}

- (id)retrieveAndClearAllResponses
{
  allResponses = [(HMDPendingResponse *)self allResponses];
  v4 = [allResponses copy];

  allResponses2 = [(HMDPendingResponse *)self allResponses];
  [allResponses2 removeAllObjects];

  latestResponses = [(HMDPendingResponse *)self latestResponses];
  [latestResponses removeAllObjects];

  return v4;
}

- (void)addResponsesToPendingResponse:(id)response
{
  responseCopy = response;
  allResponses = [(HMDPendingResponse *)self allResponses];
  [allResponses addObjectsFromArray:responseCopy];

  latestResponses = [(HMDPendingResponse *)self latestResponses];
  [latestResponses addObjectsFromArray:responseCopy];

  v7 = [responseCopy count];
  v8 = [(HMDPendingResponse *)self pendingResponseCount]- v7;

  [(HMDPendingResponse *)self setPendingResponseCount:v8];
}

- (void)addToPendingResponses:(id)responses
{
  if (responses)
  {
    responsesCopy = responses;
    allResponses = [(HMDPendingResponse *)self allResponses];
    [allResponses addObject:responsesCopy];

    latestResponses = [(HMDPendingResponse *)self latestResponses];
    [latestResponses addObject:responsesCopy];

    v7 = [(HMDPendingResponse *)self pendingResponseCount]- 1;

    [(HMDPendingResponse *)self setPendingResponseCount:v7];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  requestMessage = [(HMDPendingResponse *)self requestMessage];
  identifier = [requestMessage identifier];
  v6 = [v3 stringWithFormat:@"Pending Response for request: %@, total requests: %tu pending responses: %tu", identifier, -[HMDPendingResponse totalRequestsCount](self, "totalRequestsCount"), -[HMDPendingResponse pendingResponseCount](self, "pendingResponseCount")];

  return v6;
}

+ (id)tupleForMessage:(id)message originalRequestIdentifier:(id)identifier requestCount:(unint64_t)count withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  messageCopy = message;
  v12 = objc_alloc_init(HMDPendingResponse);
  [(HMDPendingResponse *)v12 setRequestMessage:messageCopy];

  [(HMDPendingResponse *)v12 setOriginalRequestIdentifier:identifierCopy];
  [(HMDPendingResponse *)v12 setTotalRequestsCount:count];
  [(HMDPendingResponse *)v12 setPendingResponseCount:count];
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:count];
  [(HMDPendingResponse *)v12 setAllResponses:v13];

  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:count];
  [(HMDPendingResponse *)v12 setLatestResponses:v14];

  [(HMDPendingResponse *)v12 setResponseHandler:handlerCopy];
  [(HMDPendingResponse *)v12 setCreationTime:CFAbsoluteTimeGetCurrent()];

  return v12;
}

@end