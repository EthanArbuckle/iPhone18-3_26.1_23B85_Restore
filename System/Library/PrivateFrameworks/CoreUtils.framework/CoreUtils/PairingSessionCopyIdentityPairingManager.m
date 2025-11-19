@interface PairingSessionCopyIdentityPairingManager
@end

@implementation PairingSessionCopyIdentityPairingManager

void ___PairingSessionCopyIdentityPairingManager_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v7 = v4;
  v6 = a3;
  LODWORD(v4) = NSErrorToOSStatusEx(v6, 0);

  *(*(*(a1 + 48) + 8) + 24) = v4;
  dispatch_semaphore_signal(*(a1 + 32));
}

@end