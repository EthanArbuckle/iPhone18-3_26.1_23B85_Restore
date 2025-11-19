@interface JFXCompositionUpdateRequest
- (JFXCompositionUpdateRequest)initWithBlock:(id)a3;
- (void)didBegin;
- (void)didCancel;
- (void)didComplete;
- (void)didEnqueue;
- (void)setReadyForDisplayReceived;
- (void)setRefreshCompletedReceived;
@end

@implementation JFXCompositionUpdateRequest

- (JFXCompositionUpdateRequest)initWithBlock:(id)a3
{
  v4.receiver = self;
  v4.super_class = JFXCompositionUpdateRequest;
  result = [(JFXCompositionPlayerRequest *)&v4 initWithBlock:a3 ofType:1];
  if (result)
  {
    result->_readyForDisplayReceived = 0;
    result->_refreshCompletedReceived = 0;
  }

  return result;
}

- (void)setReadyForDisplayReceived
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = JFXLog_DebugPlayback();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_242A3B000, v3, OS_LOG_TYPE_DEFAULT, "Request %{public}@ ready for display", &v8, 0xCu);
  }

  self->_readyForDisplayReceived = 1;
  v4 = JFXPlaybackEventSignpostPointCategory();
  v5 = [(JFXCompositionPlayerRequest *)self signPostID];
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      v7 = [(JFXCompositionPlayerRequest *)self uniqueID];
      v8 = 138412290;
      v9 = v7;
      _os_signpost_emit_with_name_impl(&dword_242A3B000, v4, OS_SIGNPOST_EVENT, v6, "CompositionUpdateRequest", "ready for display received from AV layer for request id %@", &v8, 0xCu);
    }
  }
}

- (void)setRefreshCompletedReceived
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = JFXLog_DebugPlayback();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&dword_242A3B000, v3, OS_LOG_TYPE_DEFAULT, "Request %{public}@ refresh completed", &v8, 0xCu);
  }

  self->_refreshCompletedReceived = 1;
  v4 = JFXPlaybackEventSignpostPointCategory();
  v5 = [(JFXCompositionPlayerRequest *)self signPostID];
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      v7 = [(JFXCompositionPlayerRequest *)self uniqueID];
      v8 = 138412290;
      v9 = v7;
      _os_signpost_emit_with_name_impl(&dword_242A3B000, v4, OS_SIGNPOST_EVENT, v6, "CompositionUpdateRequest", "refresh completed received from compositor for request id %@", &v8, 0xCu);
    }
  }
}

- (void)didEnqueue
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = JFXPlaybackEventSignpostPointCategory();
  v4 = [(JFXCompositionPlayerRequest *)self signPostID];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      v6 = 138412290;
      v7 = self;
      _os_signpost_emit_with_name_impl(&dword_242A3B000, v3, OS_SIGNPOST_EVENT, v5, "CompositionUpdateRequest", "enqueue %@", &v6, 0xCu);
    }
  }
}

- (void)didBegin
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = JFXPlaybackIntervalSignpostCategory();
  v4 = [(JFXCompositionPlayerRequest *)self signPostID];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      v6 = 138543362;
      v7 = self;
      _os_signpost_emit_with_name_impl(&dword_242A3B000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "CompositionUpdateRequest", "Request %{public}@", &v6, 0xCu);
    }
  }
}

- (void)didComplete
{
  v3 = JFXPlaybackIntervalSignpostCategory();
  v4 = [(JFXCompositionPlayerRequest *)self signPostID];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&dword_242A3B000, v3, OS_SIGNPOST_INTERVAL_END, v5, "CompositionUpdateRequest", "succeeded", v6, 2u);
    }
  }
}

- (void)didCancel
{
  v3 = JFXPlaybackIntervalSignpostCategory();
  v4 = [(JFXCompositionPlayerRequest *)self signPostID];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&dword_242A3B000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "CompositionUpdateRequest", "cancelled", v6, 2u);
    }
  }
}

@end