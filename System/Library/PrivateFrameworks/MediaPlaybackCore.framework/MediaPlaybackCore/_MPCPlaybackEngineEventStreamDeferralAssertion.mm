@interface _MPCPlaybackEngineEventStreamDeferralAssertion
- (MPCPlaybackEngineEventStream)eventStream;
- (_MPCPlaybackEngineEventStreamDeferralAssertion)initWithEventStream:(id)stream type:(int64_t)type reason:(id)reason timeout:(double)timeout;
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
    selfCopy = self;
    if (WeakRetained)
    {
      os_unfair_lock_lock(WeakRetained + 2);
      [*(WeakRetained + 6) removeObject:selfCopy];
      v5 = os_log_create("com.apple.amp.mediaplaybackcore", "PlaybackEventStream");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(WeakRetained + 3);
        identifier = [(_MPCPlaybackEngineEventStreamDeferralAssertion *)selfCopy identifier];
        reason = [(_MPCPlaybackEngineEventStreamDeferralAssertion *)selfCopy reason];
        *v11 = 138543874;
        *&v11[4] = v6;
        *&v11[12] = 2114;
        *&v11[14] = identifier;
        *&v11[22] = 2114;
        v12 = reason;
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

- (_MPCPlaybackEngineEventStreamDeferralAssertion)initWithEventStream:(id)stream type:(int64_t)type reason:(id)reason timeout:(double)timeout
{
  streamCopy = stream;
  reasonCopy = reason;
  v25.receiver = self;
  v25.super_class = _MPCPlaybackEngineEventStreamDeferralAssertion;
  v12 = [(_MPCPlaybackEngineEventStreamDeferralAssertion *)&v25 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v12->_eventStream, streamCopy);
    v13->_type = type;
    v14 = [reasonCopy copy];
    reason = v13->_reason;
    v13->_reason = v14;

    v16 = MSVNanoIDCreateTaggedPointer();
    identifier = v13->_identifier;
    v13->_identifier = v16;

    if (timeout > 0.0)
    {
      objc_initWeak(&location, v13);
      v18 = objc_alloc(MEMORY[0x1E69B13F0]);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __90___MPCPlaybackEngineEventStreamDeferralAssertion_initWithEventStream_type_reason_timeout___block_invoke;
      v22[3] = &unk_1E8234200;
      objc_copyWeak(&v23, &location);
      v19 = [v18 initWithTimeout:v22 interruptionHandler:timeout];
      timeoutGuard = v13->_timeoutGuard;
      v13->_timeoutGuard = v19;

      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }
  }

  return v13;
}

@end