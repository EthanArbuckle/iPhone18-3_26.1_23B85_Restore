@interface DeadConnectionCallback
@end

@implementation DeadConnectionCallback

void __remoteXPCRoutingContext_DeadConnectionCallback_block_invoke(uint64_t a1)
{
  CFDictionaryRemoveValue(gFigRoutingContextRemoteObject_0, *(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void __routingSessionManagerRemote_DeadConnectionCallback_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  FigSimpleMutexLock();
  v5 = *(DerivedStorage + 24);
  v6 = FigCFDictionaryCopyArrayOfValues();
  CFDictionaryRemoveAllValues(*(DerivedStorage + 24));
  v7 = *(DerivedStorage + 16);
  FigSimpleMutexUnlock();
  if (v6)
  {
    if (CFArrayGetCount(v6) >= 1)
    {
      v8 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v8);
        routingSessionManagerRemote_runOneCallback(ValueAtIndex, 4294951902);
        ++v8;
      }

      while (v8 < CFArrayGetCount(v6));
    }

    CFRelease(v6);
  }

  v10 = *(a1 + 32);
  if (v10)
  {

    CFRelease(v10);
  }
}

@end