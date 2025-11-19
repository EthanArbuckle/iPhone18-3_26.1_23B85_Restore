@interface FCDeleteNewsletterPersonalizationVectorCommand
- (void)executeWithContext:(id)a3 delegate:(id)a4 qualityOfService:(int64_t)a5;
@end

@implementation FCDeleteNewsletterPersonalizationVectorCommand

- (void)executeWithContext:(id)a3 delegate:(id)a4 qualityOfService:(int64_t)a5
{
  v7 = a4;
  v8 = [a3 newsletterEndpointConnection];
  v9 = dispatch_get_global_queue(-2, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __95__FCDeleteNewsletterPersonalizationVectorCommand_executeWithContext_delegate_qualityOfService___block_invoke;
  v11[3] = &unk_1E7C38080;
  v12 = v7;
  v13 = self;
  v10 = v7;
  [v8 deletePersonalizationVectorWithCallbackQueue:v9 completion:v11];
}

void __95__FCDeleteNewsletterPersonalizationVectorCommand_executeWithContext_delegate_qualityOfService___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v10 = v5;
  if (a2)
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 0;
  }

  else if ([v5 fc_isNetworkUnavailableError])
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = 1;
  }

  else
  {
    v9 = [v10 fc_shouldRetry];
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (v9)
    {
      v8 = 2;
    }

    else
    {
      v8 = 3;
    }
  }

  [v6 command:v7 didFinishWithStatus:v8];
}

@end