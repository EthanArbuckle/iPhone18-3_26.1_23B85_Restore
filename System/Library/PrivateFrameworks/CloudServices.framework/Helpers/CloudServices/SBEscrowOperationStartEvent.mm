@interface SBEscrowOperationStartEvent
- (SBEscrowOperationStartEvent)initWithRequest:(id)a3 type:(unint64_t)a4;
- (SBEscrowOperationStartEvent)initWithRequest:(id)a3 type:(unint64_t)a4 context:(id)a5;
- (id)endEventWithResults:(id)a3 error:(id)a4;
- (id)endEventWithResults:(id)a3 error:(id)a4 context:(id)a5;
@end

@implementation SBEscrowOperationStartEvent

- (SBEscrowOperationStartEvent)initWithRequest:(id)a3 type:(unint64_t)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = +[NSUUID UUID];
  v11 = [v9 activityUUID];
  v12 = [v9 activityLabel];
  v13 = [v9 recordID];

  v14 = [(SBEscrowOperationEvent *)self initWithOperationId:v10 activityId:v11 activityLabel:v12 recordId:v13 type:a4 context:v8];
  return v14;
}

- (SBEscrowOperationStartEvent)initWithRequest:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(ESADefaultOperationLoggingContext);
  v8 = [(SBEscrowOperationStartEvent *)self initWithRequest:v6 type:a4 context:v7];

  return v8;
}

- (id)endEventWithResults:(id)a3 error:(id)a4 context:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[SBEscrowOperationEndEvent alloc] initWithStartEvent:self results:v10 error:v9 context:v8];

  return v11;
}

- (id)endEventWithResults:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(ESADefaultOperationLoggingContext);
  v9 = [(SBEscrowOperationStartEvent *)self endEventWithResults:v7 error:v6 context:v8];

  return v9;
}

@end