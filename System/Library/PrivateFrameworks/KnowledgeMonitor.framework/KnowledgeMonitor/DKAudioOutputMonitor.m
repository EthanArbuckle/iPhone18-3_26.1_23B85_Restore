@interface DKAudioOutputMonitor
@end

@implementation DKAudioOutputMonitor

uint64_t __29___DKAudioOutputMonitor_init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 primaryValue];
  v7 = [v5 primaryValue];
  v8 = [v6 isEqual:v7];

  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = [v4 metadata];
  v10 = [MEMORY[0x277CFE180] identifier];
  v11 = [v9 objectForKeyedSubscript:v10];

  v12 = [v5 metadata];
  v13 = [MEMORY[0x277CFE180] identifier];
  v14 = [v12 objectForKeyedSubscript:v13];

  LOBYTE(v12) = [v11 isEqual:v14];
  if (v12)
  {
    v15 = 0;
  }

  else
  {
LABEL_4:
    v15 = -1;
  }

  return v15;
}

void __56___DKAudioOutputMonitor_onAudioRouteChangeNotification___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v7 = [*(*(*(a1 + 32) + 8) + 40) portType];
  if ([v7 isEqualToString:*MEMORY[0x277CB8198]])
  {
  }

  else
  {
    v8 = [*(*(*(a1 + 32) + 8) + 40) portType];
    v9 = [v8 isEqualToString:*MEMORY[0x277CB81A0]];

    if ((v9 & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

@end