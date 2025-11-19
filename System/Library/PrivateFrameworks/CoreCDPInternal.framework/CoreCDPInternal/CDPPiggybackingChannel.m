@interface CDPPiggybackingChannel
- (CDPPiggybackingChannel)initWithContext:(id)a3;
- (id)_replyContextWithPakeData:(id)a3;
- (void)sendPayload:(id)a3 completion:(id)a4;
@end

@implementation CDPPiggybackingChannel

- (CDPPiggybackingChannel)initWithContext:(id)a3
{
  v5 = a3;
  v6 = [(CDPPiggybackingChannel *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
  }

  return v7;
}

- (void)sendPayload:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Sending payload over piggybacking channel", buf, 2u);
  }

  v9 = [(CDPPiggybackingChannel *)self _replyContextWithPakeData:v7];

  v10 = objc_alloc_init(MEMORY[0x277CF0178]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__CDPPiggybackingChannel_sendPayload_completion___block_invoke;
  v12[3] = &unk_278E26420;
  v13 = v6;
  v11 = v6;
  [v10 performCircleRequestWithContext:v9 completion:v12];
}

void __49__CDPPiggybackingChannel_sendPayload_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([v9 clientErrorCode])
  {
    v6 = _CDPStateError();
    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    v8 = *(a1 + 32);
    v6 = [v9 clientInfo];
    v7 = *(v8 + 16);
  }

  v7();
}

- (id)_replyContextWithPakeData:(id)a3
{
  context = self->_context;
  v5 = a3;
  v6 = [(CDPContext *)context resumeContext];
  v7 = [v6 payload];
  v8 = [v7 replyPayload];
  v9 = [(CDPContext *)self->_context resumeContext];
  [v9 setPayload:v8];

  v10 = [(CDPContext *)self->_context resumeContext];
  v11 = [v10 payload];
  [v11 setClientInfo:v5];

  v12 = self->_context;

  return [(CDPContext *)v12 resumeContext];
}

@end