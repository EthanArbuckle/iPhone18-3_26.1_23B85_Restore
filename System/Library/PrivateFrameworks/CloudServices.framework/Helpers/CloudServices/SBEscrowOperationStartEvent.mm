@interface SBEscrowOperationStartEvent
- (SBEscrowOperationStartEvent)initWithRequest:(id)request type:(unint64_t)type;
- (SBEscrowOperationStartEvent)initWithRequest:(id)request type:(unint64_t)type context:(id)context;
- (id)endEventWithResults:(id)results error:(id)error;
- (id)endEventWithResults:(id)results error:(id)error context:(id)context;
@end

@implementation SBEscrowOperationStartEvent

- (SBEscrowOperationStartEvent)initWithRequest:(id)request type:(unint64_t)type context:(id)context
{
  contextCopy = context;
  requestCopy = request;
  v10 = +[NSUUID UUID];
  activityUUID = [requestCopy activityUUID];
  activityLabel = [requestCopy activityLabel];
  recordID = [requestCopy recordID];

  v14 = [(SBEscrowOperationEvent *)self initWithOperationId:v10 activityId:activityUUID activityLabel:activityLabel recordId:recordID type:type context:contextCopy];
  return v14;
}

- (SBEscrowOperationStartEvent)initWithRequest:(id)request type:(unint64_t)type
{
  requestCopy = request;
  v7 = objc_alloc_init(ESADefaultOperationLoggingContext);
  v8 = [(SBEscrowOperationStartEvent *)self initWithRequest:requestCopy type:type context:v7];

  return v8;
}

- (id)endEventWithResults:(id)results error:(id)error context:(id)context
{
  contextCopy = context;
  errorCopy = error;
  resultsCopy = results;
  v11 = [[SBEscrowOperationEndEvent alloc] initWithStartEvent:self results:resultsCopy error:errorCopy context:contextCopy];

  return v11;
}

- (id)endEventWithResults:(id)results error:(id)error
{
  errorCopy = error;
  resultsCopy = results;
  v8 = objc_alloc_init(ESADefaultOperationLoggingContext);
  v9 = [(SBEscrowOperationStartEvent *)self endEventWithResults:resultsCopy error:errorCopy context:v8];

  return v9;
}

@end