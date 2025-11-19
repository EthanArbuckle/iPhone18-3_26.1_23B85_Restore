@interface KSTextReplacementClientStore
@end

@implementation KSTextReplacementClientStore

void __80___KSTextReplacementClientStore_addEntries_removeEntries_withCompletionHandler___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    NSLog(&cfstr_FailedTheUpdat.isa, v5);
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t __64___KSTextReplacementClientStore_requestSyncWithCompletionBlock___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __53___KSTextReplacementClientStore_cancelPendingUpdates__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    NSLog(&cfstr_FailedToCancel.isa, a3);
  }
}

void __55___KSTextReplacementClientStore_textReplacementEntries__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t __70___KSTextReplacementClientStore_performTransaction_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 code];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

@end