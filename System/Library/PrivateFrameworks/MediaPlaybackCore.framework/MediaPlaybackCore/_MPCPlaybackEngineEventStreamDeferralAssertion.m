@interface _MPCPlaybackEngineEventStreamDeferralAssertion
- (MPCPlaybackEngineEventStream)eventStream;
- (_MPCPlaybackEngineEventStreamDeferralAssertion)initWithEventStream:(id)a3 type:(int64_t)a4 reason:(id)a5 timeout:(double)a6;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _MPCPlaybackEngineEventStreamDeferralAssertion

- (MPCPlaybackEngineEventStream)eventStream
{
  WeakRetained = objc_loadWeakRetained(&self->_eventStream);

  return WeakRetained;
}

- (void)invalidate
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    WeakRetained = objc_loadWeakRetained(&self->_eventStream);
    v4 = self;
    if (WeakRetained)
    {
      os_unfair_lock_lock(WeakRetained + 2);
      [*(WeakRetained + 6) removeObject:v4];
      v5 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(WeakRetained + 3);
        v7 = [(_MPCPlaybackEngineEventStreamDeferralAssertion *)v4 identifier];
        v8 = [(_MPCPlaybackEngineEventStreamDeferralAssertion *)v4 reason];
        *v11 = 138543874;
        *&v11[4] = v6;
        *&v11[12] = 2114;
        *&v11[14] = v7;
        *&v11[22] = 2114;
        v12 = v8;
        _os_log_impl(&dword_1C5C61000, v5, OS_LOG_TYPE_DEFAULT, "[EVS:%{public}@] _invalidateAssertion:%{public}@ | invalidating [] assertion.reason=%{public}@", v11, 0x20u);
      }

      v9 = [*(WeakRetained + 6) count];
      os_unfair_lock_unlock(WeakRetained + 2);
      if (!v9)
      {
        v10 = *(WeakRetained + 10);
        *v11 = MEMORY[0x1E69E9820];
        *&v11[8] = 3221225472;
        *&v11[16] = __53__MPCPlaybackEngineEventStream__invalidateAssertion___block_invoke;
        v12 = &unk_1E8239298;
        v13 = WeakRetained;
        dispatch_async(v10, v11);
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  [(_MPCPlaybackEngineEventStreamDeferralAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = _MPCPlaybackEngineEventStreamDeferralAssertion;
  [(_MPCPlaybackEngineEventStreamDeferralAssertion *)&v3 dealloc];
}

- (_MPCPlaybackEngineEventStreamDeferralAssertion)initWithEventStream:(id)a3 type:(int64_t)a4 reason:(id)a5 timeout:(double)a6
{
  v10 = a3;
  v11 = a5;
  v25.receiver = self;
  v25.super_class = _MPCPlaybackEngineEventStreamDeferralAssertion;
  v12 = [(_MPCPlaybackEngineEventStreamDeferralAssertion *)&v25 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v12->_eventStream, v10);
    v13->_type = a4;
    v14 = [v11 copy];
    reason = v13->_reason;
    v13->_reason = v14;

    v16 = MSVNanoIDCreateTaggedPointer();
    identifier = v13->_identifier;
    v13->_identifier = v16;

    if (a6 > 0.0)
    {
      objc_initWeak(&location, v13);
      v18 = objc_alloc(MEMORY[0x1E69B13F0]);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __90___MPCPlaybackEngineEventStreamDeferralAssertion_initWithEventStream_type_reason_timeout___block_invoke;
      v22[3] = &unk_1E8234200;
      objc_copyWeak(&v23, &location);
      v19 = [v18 initWithTimeout:v22 interruptionHandler:a6];
      timeoutGuard = v13->_timeoutGuard;
      v13->_timeoutGuard = v19;

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }
  }

  return v13;
}

@end