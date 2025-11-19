@interface MRUIController
- (BOOL)hasUIAssertions;
- (MRUIController)init;
- (MRUIServerXPCProtocol)server;
- (NSXPCConnection)xpcConnection;
- (id)acquireQuickControlsAssertion;
- (id)contextForActivityIdentifier:(id)a3;
- (void)_restoreState;
- (void)acquireLockScreenControlsAssertion;
- (void)acquireNowPlayingActivityAssertionForRouteIdentifier:(id)a3 withDuration:(int64_t)a4 preferredState:(int64_t)a5;
- (void)acquireRouteRecommendationAssertionForIdentifiers:(id)a3;
- (void)acquireScreenMirroringQuickControlsAssertion;
- (void)dealloc;
- (void)presentVolumeHUDWithRequest:(id)a3;
- (void)releaseLockScreenControlsAssertion;
- (void)releaseQuickControlsAssertion;
- (void)releaseRouteRecommendationAssertion;
- (void)releaseScreenMirroringQuickControlsAssertion;
- (void)setPreferredState:(int64_t)a3;
- (void)setPreferredState:(int64_t)a3 forBundleIdentifier:(id)a4;
- (void)suppressPresentationOverBundleIdentifiers:(id)a3;
- (void)xpcConnection;
@end

@implementation MRUIController

- (MRUIController)init
{
  v9 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = MRUIController;
  v2 = [(MRUIController *)&v6 init];
  if (v2)
  {
    v3 = _MRLogForCategory(0xBuLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v8 = v2;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRUIController][C] <%p> Initializing external controller.", buf, 0xCu);
    }

    v2->_lock._os_unfair_lock_opaque = 0;
    *&v2->_hasLockScreenControlsAssertion = 0;
    *&v2->_hasNowPlayingActivityAssertion = 256;
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)_restoreState
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(MRUIController *)self hasUIAssertions])
  {
    v3 = [(MRUIController *)self xpcConnection];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __31__MRUIController__restoreState__block_invoke;
    v8[3] = &unk_1E769AFC0;
    v8[4] = self;
    v4 = [v3 remoteObjectProxyWithErrorHandler:v8];

    if (v4)
    {
      if ([(MRUIController *)self hasLockScreenControlsAssertion])
      {
        [v4 acquireLockScreenControlsAssertionWithReply:&__block_literal_global_88];
      }

      if ([(MRUIController *)self hasQuickControlsAssertion])
      {
        [v4 acquireQuickControlsAssertionWithReply:&__block_literal_global_59];
      }

      if ([(MRUIController *)self hasScreenMirroringQuickControlsAssertion])
      {
        [v4 acquireScreenMirroringQuickControlsAssertionWithReply:&__block_literal_global_61];
      }
    }

    else
    {
      v5 = _MRLogForCategory(0xBuLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v10 = self;
        _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRUIController][C] <%p> Failed to get server proxy to restore state. Giving up.", buf, 0xCu);
      }

      [(MRUIController *)self setShouldRestoreState:0];
      v6 = [(MRUIController *)self xpcConnection];
      [v6 invalidate];
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __31__MRUIController__restoreState__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _MRLogForCategory(0xBuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 134218242;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[MRUIController][C] <%p> Server proxy error %@.", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_5(&dword_1A2860000, v0, v1, "[MRUIController][C] <%p> Deallocated while still holding route recommendation assertion.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasUIAssertions
{
  if ([(MRUIController *)self hasQuickControlsAssertion]|| [(MRUIController *)self hasScreenMirroringQuickControlsAssertion]|| [(MRUIController *)self hasLockScreenControlsAssertion])
  {
    return 1;
  }

  return [(MRUIController *)self hasRouteRecommendationAssertion];
}

- (NSXPCConnection)xpcConnection
{
  os_unfair_lock_lock(&self->_lock);
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    v4 = MRGetSharedService();
    v5 = [v4 UIServerEndpoint];
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v5];
      v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F15C4110];
      v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F15C4170];
      v9 = [MEMORY[0x1E69B14E8] proxyWithObject:self protocol:&unk_1F15C4110];
      [(NSXPCConnection *)v6 setExportedObject:v9];

      [(NSXPCConnection *)v6 setExportedInterface:v7];
      [(NSXPCConnection *)v6 setRemoteObjectInterface:v8];
      objc_initWeak(&location, self);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __31__MRUIController_xpcConnection__block_invoke;
      v15[3] = &unk_1E769B178;
      objc_copyWeak(&v16, &location);
      [(NSXPCConnection *)v6 setInterruptionHandler:v15];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __31__MRUIController_xpcConnection__block_invoke_172;
      v13[3] = &unk_1E769B178;
      objc_copyWeak(&v14, &location);
      [(NSXPCConnection *)v6 setInvalidationHandler:v13];
      [(NSXPCConnection *)v6 resume];
      v10 = self->_xpcConnection;
      self->_xpcConnection = v6;

      objc_destroyWeak(&v14);
      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    else
    {
      v7 = _MRLogForCategory(0xBuLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [MRUIController xpcConnection];
      }
    }

    xpcConnection = self->_xpcConnection;
  }

  v11 = xpcConnection;
  os_unfair_lock_unlock(&self->_lock);

  return v11;
}

void __31__MRUIController_xpcConnection__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _MRLogForCategory(0xBuLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = WeakRetained;
      _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRUIController][C] <%p> XPC interrupted.", &v5, 0xCu);
    }

    v3 = [WeakRetained xpcConnection];
    [v3 invalidate];
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __31__MRUIController_xpcConnection__block_invoke_172(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = _MRLogForCategory(0xBuLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      v6 = WeakRetained;
      _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_DEFAULT, "[MRUIController][C] <%p> XPC invalidated.", &v5, 0xCu);
    }

    os_unfair_lock_lock(WeakRetained + 4);
    v3 = *&WeakRetained[6]._os_unfair_lock_opaque;
    *&WeakRetained[6]._os_unfair_lock_opaque = 0;

    os_unfair_lock_unlock(WeakRetained + 4);
    if ([(os_unfair_lock_s *)WeakRetained shouldRestoreState])
    {
      [(os_unfair_lock_s *)WeakRetained _restoreState];
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (MRUIServerXPCProtocol)server
{
  v3 = [(MRUIController *)self xpcConnection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24__MRUIController_server__block_invoke;
  v6[3] = &unk_1E769AFC0;
  v6[4] = self;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v6];

  return v4;
}

void __24__MRUIController_server__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _MRLogForCategory(0xBuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 134218242;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[MRUIController][C] <%p> Server proxy error %@.", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)acquireLockScreenControlsAssertion
{
  [(MRUIController *)self setHasLockScreenControlsAssertion:1];
  v3 = [(MRUIController *)self server];
  [v3 acquireLockScreenControlsAssertionWithReply:&__block_literal_global_174];
}

- (void)releaseLockScreenControlsAssertion
{
  [(MRUIController *)self setHasLockScreenControlsAssertion:0];
  v3 = [(MRUIController *)self server];
  [v3 releaseLockScreenControlsAssertionWithReply:&__block_literal_global_176];
}

- (id)acquireQuickControlsAssertion
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__39;
  v11 = __Block_byref_object_dispose__39;
  v12 = 0;
  [(MRUIController *)self setHasQuickControlsAssertion:1];
  v3 = [(MRUIController *)self server];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__MRUIController_acquireQuickControlsAssertion__block_invoke;
  v6[3] = &unk_1E76A3470;
  v6[4] = &v7;
  [v3 acquireQuickControlsAssertionWithReply:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)releaseQuickControlsAssertion
{
  [(MRUIController *)self setHasQuickControlsAssertion:0];
  v3 = [(MRUIController *)self server];
  [v3 releaseQuickControlsAssertionWithReply:&__block_literal_global_178_0];
}

- (void)acquireScreenMirroringQuickControlsAssertion
{
  [(MRUIController *)self setHasScreenMirroringQuickControlsAssertion:1];
  v3 = [(MRUIController *)self server];
  [v3 acquireScreenMirroringQuickControlsAssertionWithReply:&__block_literal_global_180];
}

- (void)releaseScreenMirroringQuickControlsAssertion
{
  [(MRUIController *)self setHasScreenMirroringQuickControlsAssertion:0];
  v3 = [(MRUIController *)self server];
  [v3 releaseScreenMirroringQuickControlsAssertionWithReply:&__block_literal_global_182];
}

- (id)contextForActivityIdentifier:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__39;
  v13 = __Block_byref_object_dispose__39;
  v14 = 0;
  v5 = [(MRUIController *)self server];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__MRUIController_contextForActivityIdentifier___block_invoke;
  v8[3] = &unk_1E76A3470;
  v8[4] = &v9;
  [v5 contextForActivityIdentifier:v4 reply:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)acquireRouteRecommendationAssertionForIdentifiers:(id)a3
{
  v4 = a3;
  [(MRUIController *)self setHasRouteRecommendationAssertion:1];
  v5 = [(MRUIController *)self server];
  [v5 acquireRouteRecommendationAssertionForIdentifiers:v4 withReply:&__block_literal_global_184_0];
}

- (void)releaseRouteRecommendationAssertion
{
  [(MRUIController *)self setHasRouteRecommendationAssertion:0];
  v3 = [(MRUIController *)self server];
  [v3 releaseRouteRecommendationAssertionWithReply:&__block_literal_global_186];
}

- (void)acquireNowPlayingActivityAssertionForRouteIdentifier:(id)a3 withDuration:(int64_t)a4 preferredState:(int64_t)a5
{
  v9 = a3;
  if (!a4)
  {
    [(MRUIController *)self setHasNowPlayingActivityAssertion:1];
  }

  v8 = [(MRUIController *)self server];
  [v8 acquireNowPlayingActivityAssertionForRouteIdentifier:v9 withDuration:a4 preferredState:a5 withReply:&__block_literal_global_188];
}

- (void)setPreferredState:(int64_t)a3
{
  v4 = [(MRUIController *)self server];
  [v4 setPreferredState:a3 reply:&__block_literal_global_190_0];
}

- (void)setPreferredState:(int64_t)a3 forBundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(MRUIController *)self server];
  [v7 setPreferredState:a3 forBundleIdentifier:v6 reply:&__block_literal_global_192];
}

- (void)suppressPresentationOverBundleIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(MRUIController *)self server];
  [v5 suppressPresentationOverBundleIdentifiers:v4 reply:&__block_literal_global_194_0];
}

- (void)presentVolumeHUDWithRequest:(id)a3
{
  v4 = a3;
  v5 = [(MRUIController *)self server];
  [v5 presentVolumeHUDWithRequest:v4];
}

- (void)xpcConnection
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_14();
  OUTLINED_FUNCTION_5(&dword_1A2860000, v0, v1, "[MRUIController][C] <%p> Received nil XPC endpoint. Failing.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end