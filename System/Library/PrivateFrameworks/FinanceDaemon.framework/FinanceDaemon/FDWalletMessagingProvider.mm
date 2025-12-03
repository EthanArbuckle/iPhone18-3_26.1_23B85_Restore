@interface FDWalletMessagingProvider
- (FDWalletMessagingProvider)init;
- (void)processMessagesWithCompletionHandler:(id)handler;
@end

@implementation FDWalletMessagingProvider

- (FDWalletMessagingProvider)init
{
  v7.receiver = self;
  v7.super_class = FDWalletMessagingProvider;
  v2 = [(FDWalletMessagingProvider *)&v7 init];
  if (v2)
  {
    v3 = +[_TtC13FinanceDaemon23WalletMessagingProvider makeProvider];
    wrappedProvider = v2->_wrappedProvider;
    v2->_wrappedProvider = v3;

    if (!v2->_wrappedProvider)
    {
      v5 = os_log_create("com.apple.FinanceKit", "Notifications");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(FDWalletMessagingProvider *)v5 init];
      }
    }
  }

  return v2;
}

- (void)processMessagesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  wrappedProvider = self->_wrappedProvider;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__FDWalletMessagingProvider_processMessagesWithCompletionHandler___block_invoke;
  v7[3] = &unk_2785C8970;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(WalletMessagingProvider *)wrappedProvider processMessagesWithCompletionHandler:v7];
}

uint64_t __66__FDWalletMessagingProvider_processMessagesWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end