@interface _BPSScanInner
- (_BPSScanInner)initWithDownstream:(id)downstream nextPartialResult:(id)result initialResult:(id)initialResult;
- (int64_t)receiveInput:(id)input;
- (void)cancel;
- (void)receiveCompletion:(id)completion;
- (void)receiveSubscription:(id)subscription;
@end

@implementation _BPSScanInner

- (_BPSScanInner)initWithDownstream:(id)downstream nextPartialResult:(id)result initialResult:(id)initialResult
{
  downstreamCopy = downstream;
  resultCopy = result;
  initialResultCopy = initialResult;
  v17.receiver = self;
  v17.super_class = _BPSScanInner;
  v12 = [(_BPSScanInner *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_downstream, downstream);
    v14 = [resultCopy copy];
    nextPartialResult = v13->_nextPartialResult;
    v13->_nextPartialResult = v14;

    objc_storeStrong(&v13->_result, initialResult);
  }

  return v13;
}

- (void)receiveSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  downstream = [(_BPSScanInner *)self downstream];
  [downstream receiveSubscription:subscriptionCopy];
}

- (int64_t)receiveInput:(id)input
{
  selfCopy = self;
  inputCopy = input;
  nextPartialResult = [(_BPSScanInner *)selfCopy nextPartialResult];
  result = [(_BPSScanInner *)selfCopy result];
  v8 = (nextPartialResult)[2](nextPartialResult, result, inputCopy);

  [(_BPSScanInner *)selfCopy setResult:v8];
  downstream = [(_BPSScanInner *)selfCopy downstream];
  result2 = [(_BPSScanInner *)selfCopy result];
  v11 = [downstream receiveInput:result2];

  return v11;
}

- (void)receiveCompletion:(id)completion
{
  selfCopy = self;
  completionCopy = completion;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [_BPSScanInner receiveCompletion:];
  }

  downstream = [(_BPSScanInner *)selfCopy downstream];
  [downstream receiveCompletion:completionCopy];
}

- (void)cancel
{
  selfCopy = self;
  downstream = [(_BPSScanInner *)selfCopy downstream];
  [downstream cancel];
}

- (void)receiveCompletion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  OUTLINED_FUNCTION_0_6(&dword_1C871B000, v1, v2, "%@ - completion", v3, v4, v5, v6, 2u);

  v7 = *MEMORY[0x1E69E9840];
}

@end