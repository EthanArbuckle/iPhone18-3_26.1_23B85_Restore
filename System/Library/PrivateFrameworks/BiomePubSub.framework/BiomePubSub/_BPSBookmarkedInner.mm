@interface _BPSBookmarkedInner
- (_BPSBookmarkedInner)initWithUpstream:(id)a3 downstream:(id)a4 state:(id)a5;
- (id)newBookmark;
- (int64_t)receiveInput:(id)a3;
- (void)_updateBookmarkWhenLocked;
- (void)cancel;
- (void)receiveCompletion:(id)a3;
- (void)receiveSubscription:(id)a3;
- (void)requestDemand:(int64_t)a3;
@end

@implementation _BPSBookmarkedInner

- (_BPSBookmarkedInner)initWithUpstream:(id)a3 downstream:(id)a4 state:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = _BPSBookmarkedInner;
  v11 = [(_BPSBookmarkedInner *)&v18 init];
  if (v11)
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    upstreamClassName = v11->_upstreamClassName;
    v11->_upstreamClassName = v13;

    v15 = [MEMORY[0x1E695DFB0] null];
    upstreamBookmark = v11->_upstreamBookmark;
    v11->_upstreamBookmark = v15;

    objc_storeStrong(&v11->_downstream, a4);
    objc_storeStrong(&v11->_state, a5);
    v11->_lock._os_unfair_lock_opaque = 0;
  }

  return v11;
}

- (void)receiveCompletion:(id)a3
{
  v8 = self;
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(_BPSBookmarkedInner *)v8 _updateBookmarkWhenLocked];
  subscription = v8->_subscription;
  v8->_subscription = 0;

  os_unfair_lock_unlock(&self->_lock);
  v7 = [(_BPSBookmarkedInner *)v8 downstream];
  [v7 receiveCompletion:v5];
}

- (int64_t)receiveInput:(id)a3
{
  v5 = self;
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(_BPSBookmarkedInner *)v5 setState:v6];
  os_unfair_lock_unlock(&self->_lock);
  v7 = [(_BPSBookmarkedInner *)v5 downstream];
  v8 = [v7 receiveInput:v6];

  return v8;
}

- (void)receiveSubscription:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(_BPSBookmarkedInner *)self setSubscription:v4];

  os_unfair_lock_unlock(&self->_lock);
  v5 = [(_BPSBookmarkedInner *)self downstream];
  [v5 receiveSubscription:self];
}

- (void)cancel
{
  v5 = self;
  os_unfair_lock_lock(&self->_lock);
  v3 = v5->_subscription;
  [(_BPSBookmarkedInner *)v5 _updateBookmarkWhenLocked];
  subscription = v5->_subscription;
  v5->_subscription = 0;

  os_unfair_lock_unlock(&self->_lock);
  [(BPSSubscription *)v3 cancel];
}

- (void)requestDemand:(int64_t)a3
{
  v4 = [(_BPSBookmarkedInner *)self subscription];
  [v4 requestDemand:a3];
}

- (id)newBookmark
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [BMBookmarkNode alloc];
  v4 = [(_BPSBookmarkedInner *)self state];
  v9[0] = self->_upstreamBookmark;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v6 = [(BMBookmarkNode *)v3 initWithValue:v4 upstreams:v5 name:self->_upstreamClassName];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)_updateBookmarkWhenLocked
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 subscription];
  OUTLINED_FUNCTION_0_2(&dword_1C871B000, v2, v3, "Subscription - %@ doesn't conform to BMBookmarkableSubscription protocol", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

@end