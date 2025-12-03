@interface IMHoldOffGridDeliveryReceiptPipelineComponent
- (id)runIndividuallyWithInput:(id)input;
@end

@implementation IMHoldOffGridDeliveryReceiptPipelineComponent

- (id)runIndividuallyWithInput:(id)input
{
  v17 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  if ([inputCopy wantsDeliveryReceipt])
  {
    mEMORY[0x277D1A9F8] = [MEMORY[0x277D1A9F8] sharedInstance];
    personalOffGridMode = [mEMORY[0x277D1A9F8] personalOffGridMode];

    wantsDeliveryReceipt = [inputCopy wantsDeliveryReceipt];
    v7 = personalOffGridMode == 2 ? 0 : wantsDeliveryReceipt;
    [inputCopy setWantsDeliveryReceipt:v7];
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        wantsDeliveryReceipt2 = [inputCopy wantsDeliveryReceipt];
        v10 = @"NO";
        if (wantsDeliveryReceipt2)
        {
          v10 = @"YES";
        }

        v14[0] = 67109378;
        v14[1] = personalOffGridMode;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "<IMHoldOffGridDeliveryReceiptPipelineComponent> Personal off grid status is %d, wantsDeliveryReceipt: %@", v14, 0x12u);
      }
    }
  }

  v11 = [objc_alloc(MEMORY[0x277D18E08]) initWithValue:inputCopy];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end