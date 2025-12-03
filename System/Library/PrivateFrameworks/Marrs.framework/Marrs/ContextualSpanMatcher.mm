@interface ContextualSpanMatcher
- (id)getContextualSpansWithRequest:(id)request;
- (id)getSpansWithRequest:(id)request;
@end

@implementation ContextualSpanMatcher

- (id)getSpansWithRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  ContextualSpanMatcher.getSpans(request:)(requestCopy);
  v7 = v6;

  return v7;
}

- (id)getContextualSpansWithRequest:(id)request
{
  requestCopy = request;
  v5 = [(ContextualSpanMatcher *)self getSpansWithRequest:requestCopy];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x277D5DDF0]);
  }

  v6 = MEMORY[0x277D5DEF8];
  requestId = [requestCopy requestId];
  v8 = [v6 extractRequestLinkData:requestId];

  if (v8)
  {
    nlId = [v8 nlId];
    trpId = [v8 trpId];
    targetUUID = [v8 targetUUID];
    resultCandidateId = [v8 resultCandidateId];
    requestId2 = [requestCopy requestId];
    +[ContextualSpanMatcherSELFLogging emitContextualSpanMatcherEndedEventWithResponse:WithNlId:andWithTrpId:andWithRequestId:andWithResultCandidateId:andWithRequester:](ContextualSpanMatcherSELFLogging, "emitContextualSpanMatcherEndedEventWithResponse:WithNlId:andWithTrpId:andWithRequestId:andWithResultCandidateId:andWithRequester:", v5, nlId, trpId, targetUUID, resultCandidateId, [requestId2 requester]);
  }

  return v5;
}

@end