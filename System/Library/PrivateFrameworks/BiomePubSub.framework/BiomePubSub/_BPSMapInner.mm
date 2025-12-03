@interface _BPSMapInner
- (_BPSMapInner)initWithDownstream:(id)downstream transform:(id)transform;
- (int64_t)receiveInput:(id)input;
- (void)cancel;
- (void)receiveCompletion:(id)completion;
- (void)receiveSubscription:(id)subscription;
@end

@implementation _BPSMapInner

- (_BPSMapInner)initWithDownstream:(id)downstream transform:(id)transform
{
  downstreamCopy = downstream;
  transformCopy = transform;
  v13.receiver = self;
  v13.super_class = _BPSMapInner;
  v9 = [(_BPSMapInner *)&v13 init];
  if (v9)
  {
    v10 = [transformCopy copy];
    transform = v9->_transform;
    v9->_transform = v10;

    objc_storeStrong(&v9->_downstream, downstream);
  }

  return v9;
}

- (void)receiveSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  downstream = [(_BPSMapInner *)self downstream];
  [downstream receiveSubscription:subscriptionCopy];
}

- (int64_t)receiveInput:(id)input
{
  selfCopy = self;
  inputCopy = input;
  transform = [(_BPSMapInner *)selfCopy transform];
  v7 = (transform)[2](transform, inputCopy);

  downstream = [(_BPSMapInner *)selfCopy downstream];
  v9 = [downstream receiveInput:v7];

  return v9;
}

- (void)receiveCompletion:(id)completion
{
  v12 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  completionCopy = completion;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = objc_opt_class();
    v7 = v11;
    _os_log_impl(&dword_1C871B000, v6, OS_LOG_TYPE_INFO, "%@ - completion", &v10, 0xCu);
  }

  downstream = [(_BPSMapInner *)selfCopy downstream];
  [downstream receiveCompletion:completionCopy];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  selfCopy = self;
  downstream = [(_BPSMapInner *)selfCopy downstream];
  [downstream cancel];
}

@end