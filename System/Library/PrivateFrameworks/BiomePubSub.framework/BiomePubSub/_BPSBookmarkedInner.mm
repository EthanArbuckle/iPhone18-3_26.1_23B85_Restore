@interface _BPSBookmarkedInner
- (_BPSBookmarkedInner)initWithUpstream:(id)upstream downstream:(id)downstream state:(id)state;
- (id)newBookmark;
- (int64_t)receiveInput:(id)input;
- (void)_updateBookmarkWhenLocked;
- (void)cancel;
- (void)receiveCompletion:(id)completion;
- (void)receiveSubscription:(id)subscription;
- (void)requestDemand:(int64_t)demand;
@end

@implementation _BPSBookmarkedInner

- (_BPSBookmarkedInner)initWithUpstream:(id)upstream downstream:(id)downstream state:(id)state
{
  upstreamCopy = upstream;
  downstreamCopy = downstream;
  stateCopy = state;
  v18.receiver = self;
  v18.super_class = _BPSBookmarkedInner;
  v11 = [(_BPSBookmarkedInner *)&v18 init];
  if (v11)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    upstreamClassName = v11->_upstreamClassName;
    v11->_upstreamClassName = v13;

    null = [MEMORY[0x1E695DFB0] null];
    upstreamBookmark = v11->_upstreamBookmark;
    v11->_upstreamBookmark = null;

    objc_storeStrong(&v11->_downstream, downstream);
    objc_storeStrong(&v11->_state, state);
    v11->_lock._os_unfair_lock_opaque = 0;
  }

  return v11;
}

- (void)receiveCompletion:(id)completion
{
  selfCopy = self;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  [(_BPSBookmarkedInner *)selfCopy _updateBookmarkWhenLocked];
  subscription = selfCopy->_subscription;
  selfCopy->_subscription = 0;

  os_unfair_lock_unlock(&self->_lock);
  downstream = [(_BPSBookmarkedInner *)selfCopy downstream];
  [downstream receiveCompletion:completionCopy];
}

- (int64_t)receiveInput:(id)input
{
  selfCopy = self;
  inputCopy = input;
  os_unfair_lock_lock(&self->_lock);
  [(_BPSBookmarkedInner *)selfCopy setState:inputCopy];
  os_unfair_lock_unlock(&self->_lock);
  downstream = [(_BPSBookmarkedInner *)selfCopy downstream];
  v8 = [downstream receiveInput:inputCopy];

  return v8;
}

- (void)receiveSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  os_unfair_lock_lock(&self->_lock);
  [(_BPSBookmarkedInner *)self setSubscription:subscriptionCopy];

  os_unfair_lock_unlock(&self->_lock);
  downstream = [(_BPSBookmarkedInner *)self downstream];
  [downstream receiveSubscription:self];
}

- (void)cancel
{
  selfCopy = self;
  os_unfair_lock_lock(&self->_lock);
  v3 = selfCopy->_subscription;
  [(_BPSBookmarkedInner *)selfCopy _updateBookmarkWhenLocked];
  subscription = selfCopy->_subscription;
  selfCopy->_subscription = 0;

  os_unfair_lock_unlock(&self->_lock);
  [(BPSSubscription *)v3 cancel];
}

- (void)requestDemand:(int64_t)demand
{
  subscription = [(_BPSBookmarkedInner *)self subscription];
  [subscription requestDemand:demand];
}

- (id)newBookmark
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [BMBookmarkNode alloc];
  state = [(_BPSBookmarkedInner *)self state];
  v9[0] = self->_upstreamBookmark;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(BMBookmarkNode *)v3 initWithValue:state upstreams:v5 name:self->_upstreamClassName];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)_updateBookmarkWhenLocked
{
  v9 = *MEMORY[0x1E69E9840];
  subscription = [self subscription];
  OUTLINED_FUNCTION_0_2(&dword_1C871B000, v2, v3, "Subscription - %@ doesn't conform to BMBookmarkableSubscription protocol", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

@end