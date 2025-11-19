@interface C2SessionTLSCache
- (C2SessionTLSCache)init;
- (id)sessionForOptions:(id)a3;
- (void)C2Session:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)C2Session:(id)a3 originalHost:(id)a4 updatedRoute:(id)a5;
@end

@implementation C2SessionTLSCache

- (C2SessionTLSCache)init
{
  v7.receiver = self;
  v7.super_class = C2SessionTLSCache;
  v2 = [(C2SessionTLSCache *)&v7 init];
  v3 = v2;
  if (v2)
  {
    pinnedSession = v2->_pinnedSession;
    v2->_pinnedSession = 0;

    unpinnedSession = v3->_unpinnedSession;
    v3->_unpinnedSession = 0;
  }

  return v3;
}

- (id)sessionForOptions:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([v4 tlsPinning])
  {
    p_pinnedSession = &v5->_pinnedSession;
    pinnedSession = v5->_pinnedSession;
    if (pinnedSession)
    {
      goto LABEL_7;
    }

    v8 = [(C2SessionTLSCache *)v5 _createSessionWithTLSPinning:1];
  }

  else
  {
    p_pinnedSession = &v5->_unpinnedSession;
    pinnedSession = v5->_unpinnedSession;
    if (pinnedSession)
    {
      goto LABEL_7;
    }

    v8 = [(C2SessionTLSCache *)v5 _createSessionWithTLSPinning:0];
  }

  v9 = *p_pinnedSession;
  *p_pinnedSession = v8;

  pinnedSession = *p_pinnedSession;
LABEL_7:
  v10 = pinnedSession;
  objc_sync_exit(v5);

  v11 = [v10 session];

  return v11;
}

- (void)C2Session:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (C2_DEFAULT_LOG_BLOCK_2 != -1)
  {
    [C2SessionTLSCache C2Session:didBecomeInvalidWithError:];
  }

  v9 = C2_DEFAULT_LOG_INTERNAL_2;
  if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL_2, OS_LOG_TYPE_ERROR))
  {
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_242158000, v9, OS_LOG_TYPE_ERROR, "Expected NSURLSession for TLS Cache to never become invalid but did with error %@", &v12, 0xCu);
  }

  v10 = [MEMORY[0x277CCA890] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"C2SessionTLSCache.m" lineNumber:57 description:@"Expected NSURLSession for TLS Cache to never become invalid"];

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __57__C2SessionTLSCache_C2Session_didBecomeInvalidWithError___block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL_2 = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)C2Session:(id)a3 originalHost:(id)a4 updatedRoute:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"C2SessionTLSCache.m" lineNumber:61 description:@"Unexpected callback for task-less NSURLSession"];
}

@end