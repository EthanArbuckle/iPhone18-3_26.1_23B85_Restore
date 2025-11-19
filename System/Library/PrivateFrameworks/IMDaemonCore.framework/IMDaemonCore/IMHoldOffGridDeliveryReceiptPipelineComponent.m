@interface IMHoldOffGridDeliveryReceiptPipelineComponent
- (id)runIndividuallyWithInput:(id)a3;
@end

@implementation IMHoldOffGridDeliveryReceiptPipelineComponent

- (id)runIndividuallyWithInput:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 wantsDeliveryReceipt])
  {
    v4 = [MEMORY[0x277D1A9F8] sharedInstance];
    v5 = [v4 personalOffGridMode];

    v6 = [v3 wantsDeliveryReceipt];
    v7 = v5 == 2 ? 0 : v6;
    [v3 setWantsDeliveryReceipt:v7];
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [v3 wantsDeliveryReceipt];
        v10 = @"NO";
        if (v9)
        {
          v10 = @"YES";
        }

        v14[0] = 67109378;
        v14[1] = v5;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "<IMHoldOffGridDeliveryReceiptPipelineComponent> Personal off grid status is %d, wantsDeliveryReceipt: %@", v14, 0x12u);
      }
    }
  }

  v11 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:v3];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end