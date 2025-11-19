@interface DKAudioInputMonitor
@end

@implementation DKAudioInputMonitor

void __55___DKAudioInputMonitor_onAudioRouteChangeNotification___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v7 = [*(*(*(a1 + 32) + 8) + 40) portType];
  v8 = [v7 isEqualToString:*MEMORY[0x277CB8190]];

  if ((v8 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

@end