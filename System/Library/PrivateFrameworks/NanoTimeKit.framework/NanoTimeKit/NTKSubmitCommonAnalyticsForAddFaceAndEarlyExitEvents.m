@interface NTKSubmitCommonAnalyticsForAddFaceAndEarlyExitEvents
@end

@implementation NTKSubmitCommonAnalyticsForAddFaceAndEarlyExitEvents

void ___NTKSubmitCommonAnalyticsForAddFaceAndEarlyExitEvents_block_invoke(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) complicationForSlot:a2];
  if ([v3 complicationType] == 31 || !objc_msgSend(v3, "complicationType"))
  {
    v7 = [v3 appIdentifier];
    v8 = v7;
    v9 = @"ntk_unknown";
    if (v7)
    {
      v9 = v7;
    }

    v6 = v9;
  }

  else
  {
    v4 = [v3 appIdentifier];
    v5 = [v4 length];

    if (v5)
    {
      v6 = [v3 appIdentifier];
    }

    else
    {
      v6 = @"ntk_unknown";
    }
  }

  if (([(__CFString *)v6 isEqualToString:@"com.apple.nanotimekit.off"]& 1) == 0)
  {
    if ((_isFirstPartyComplicationBundleID(v6) & 1) == 0)
    {
      ++*(*(*(a1 + 48) + 8) + 24);

      v6 = @"ntk_third_party";
    }

    ++*(*(*(a1 + 56) + 8) + 24);
    v11 = @"firstPartyFaceComplications";
    v12[0] = v6;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    AnalyticsSendEvent();
  }
}

@end