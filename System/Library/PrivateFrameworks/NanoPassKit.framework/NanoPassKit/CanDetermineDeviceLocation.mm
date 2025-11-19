@interface CanDetermineDeviceLocation
@end

@implementation CanDetermineDeviceLocation

void ___CanDetermineDeviceLocation_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBFC10] locationServicesEnabled];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x277CBFC10];
    v5 = PKPassKitCoreBundle();
    v6 = [v4 authorizationStatusForBundle:v5];
  }

  else
  {
    v6 = 2;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___CanDetermineDeviceLocation_block_invoke_2;
  v7[3] = &unk_279947A58;
  v10 = v3;
  v9 = v6;
  v8 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

uint64_t ___CanDetermineDeviceLocation_block_invoke_2(uint64_t a1)
{
  if (*(a1 + 44) == 1)
  {
    v1 = (*(a1 + 40) - 3) < 0xFFFFFFFE;
  }

  return (*(*(a1 + 32) + 16))();
}

@end