@interface MRRegisteredTransactionsInitialize
@end

@implementation MRRegisteredTransactionsInitialize

void ___MRRegisteredTransactionsInitialize_block_invoke()
{
  v0 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  v1 = __registeredTransactions;
  __registeredTransactions = v0;

  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.mediaremote.MRUtility/registeredTransactionsQueue", v2);
  v4 = __registeredTransactionsQueue;
  __registeredTransactionsQueue = v3;

  __transactionShutdownTriggered = 0;
}

@end