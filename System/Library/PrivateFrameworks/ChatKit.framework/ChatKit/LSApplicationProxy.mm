@interface LSApplicationProxy
@end

@implementation LSApplicationProxy

void __69__LSApplicationProxy__CKAppInstallation____ck_messagesPluginKitProxy__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (IMIsPlugInProxyAMessagesExtensionPoint())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

@end