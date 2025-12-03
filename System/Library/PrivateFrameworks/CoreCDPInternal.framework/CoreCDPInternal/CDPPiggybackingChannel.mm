@interface CDPPiggybackingChannel
- (CDPPiggybackingChannel)initWithContext:(id)context;
- (id)_replyContextWithPakeData:(id)data;
- (void)sendPayload:(id)payload completion:(id)completion;
@end

@implementation CDPPiggybackingChannel

- (CDPPiggybackingChannel)initWithContext:(id)context
{
  contextCopy = context;
  v6 = [(CDPPiggybackingChannel *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (void)sendPayload:(id)payload completion:(id)completion
{
  completionCopy = completion;
  payloadCopy = payload;
  v8 = _CDPLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_24510B000, v8, OS_LOG_TYPE_DEFAULT, "Sending payload over piggybacking channel", buf, 2u);
  }

  v9 = [(CDPPiggybackingChannel *)self _replyContextWithPakeData:payloadCopy];

  v10 = objc_alloc_init(MEMORY[0x277CF0178]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__CDPPiggybackingChannel_sendPayload_completion___block_invoke;
  v12[3] = &unk_278E26420;
  v13 = completionCopy;
  v11 = completionCopy;
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

- (id)_replyContextWithPakeData:(id)data
{
  context = self->_context;
  dataCopy = data;
  resumeContext = [(CDPContext *)context resumeContext];
  payload = [resumeContext payload];
  replyPayload = [payload replyPayload];
  resumeContext2 = [(CDPContext *)self->_context resumeContext];
  [resumeContext2 setPayload:replyPayload];

  resumeContext3 = [(CDPContext *)self->_context resumeContext];
  payload2 = [resumeContext3 payload];
  [payload2 setClientInfo:dataCopy];

  v12 = self->_context;

  return [(CDPContext *)v12 resumeContext];
}

@end