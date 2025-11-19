@interface ContextualSpanMatcher
- (id)getContextualSpansWithRequest:(id)a3;
- (id)getSpansWithRequest:(id)a3;
@end

@implementation ContextualSpanMatcher

- (id)getSpansWithRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  ContextualSpanMatcher.getSpans(request:)(v4);
  v7 = v6;

  return v7;
}

- (id)getContextualSpansWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(ContextualSpanMatcher *)self getSpansWithRequest:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x277D5DDF0]);
  }

  v6 = MEMORY[0x277D5DEF8];
  v7 = [v4 requestId];
  v8 = [v6 extractRequestLinkData:v7];

  if (v8)
  {
    v9 = [v8 nlId];
    v10 = [v8 trpId];
    v11 = [v8 targetUUID];
    v12 = [v8 resultCandidateId];
    v13 = [v4 requestId];
    +[ContextualSpanMatcherSELFLogging emitContextualSpanMatcherEndedEventWithResponse:WithNlId:andWithTrpId:andWithRequestId:andWithResultCandidateId:andWithRequester:](ContextualSpanMatcherSELFLogging, "emitContextualSpanMatcherEndedEventWithResponse:WithNlId:andWithTrpId:andWithRequestId:andWithResultCandidateId:andWithRequester:", v5, v9, v10, v11, v12, [v13 requester]);
  }

  return v5;
}

@end