@interface CRKDmdBackedInstructordTransportProvider
- (void)fetchTransportWithCompletion:(id)a3;
@end

@implementation CRKDmdBackedInstructordTransportProvider

- (void)fetchTransportWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D04BF8] currentUserConnection];
  v5 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__CRKDmdBackedInstructordTransportProvider_fetchTransportWithCompletion___block_invoke;
  v7[3] = &unk_278DC32B0;
  v8 = v3;
  v6 = v3;
  [v4 performRequest:v5 completion:v7];
}

void __73__CRKDmdBackedInstructordTransportProvider_fetchTransportWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CBEB88];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__CRKDmdBackedInstructordTransportProvider_fetchTransportWithCompletion___block_invoke_2;
  v11[3] = &unk_278DC0F08;
  v12 = v6;
  v8 = *(a1 + 32);
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  [v7 cat_performBlockOnMainRunLoop:v11];
}

void __73__CRKDmdBackedInstructordTransportProvider_fetchTransportWithCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 48) + 16);

    v2();
  }

  else
  {
    v5 = [*(a1 + 40) endpoint];
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:v5];
    v4 = [objc_alloc(MEMORY[0x277CF95B8]) initWithXPCConnection:v3];
    (*(*(a1 + 48) + 16))();
  }
}

@end