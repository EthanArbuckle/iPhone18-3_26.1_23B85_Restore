@interface NRGError
+ (id)errorWithCode:(int64_t)a3;
@end

@implementation NRGError

+ (id)errorWithCode:(int64_t)a3
{
  v4 = 0;
  v11[1] = *MEMORY[0x277D85DE8];
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"(%@) No NanoResourceGrabber proxy returned", @"NRGErrorNoProxy"];
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_17;
        }

        [MEMORY[0x277CCACA8] stringWithFormat:@"(%@) Not yet implemented", @"NRGErrorNotImplemented"];
      }
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@) NanoResourceGrabber cannot connect to service", @"NRGErrorCannotConnect"];
    }
  }

  else if (a3 > 4)
  {
    if (a3 == 5)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@) Request already pending", @"NRGErrorRequestAlreadyPending"];
    }

    else
    {
      if (a3 != 6)
      {
        goto LABEL_17;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"(%@) No data returned for request", @"NRGErrorNoData"];
    }
  }

  else if (a3 == 3)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"(%@) No paired device", @"NRGErrorNoPairedDevice"];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"(%@) Request timed out", @"NRGErrorTimedOut"];
  }
  v4 = ;
LABEL_17:
  v5 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277CCA450];
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 errorWithDomain:@"com.apple.NanoResourceGrabber" code:a3 userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end