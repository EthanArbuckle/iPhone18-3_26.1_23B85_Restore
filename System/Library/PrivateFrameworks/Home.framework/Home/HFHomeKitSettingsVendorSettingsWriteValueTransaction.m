@interface HFHomeKitSettingsVendorSettingsWriteValueTransaction
@end

@implementation HFHomeKitSettingsVendorSettingsWriteValueTransaction

__CFString *__75___HFHomeKitSettingsVendorSettingsWriteValueTransaction_descriptionBuilder__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasStarted])
  {
    v2 = [*(a1 + 32) settingWriteFuture];
    v3 = [v2 isFinished];

    if (v3)
    {
      v4 = [*(a1 + 32) error];

      if (v4)
      {
        v5 = [*(a1 + 32) error];
        v6 = [v5 na_isCancelledError];

        if (v6)
        {
          v7 = @"Cancelled";
        }

        else
        {
          v8 = MEMORY[0x277CCACA8];
          v9 = [*(a1 + 32) error];
          v10 = [v9 localizedDescription];
          v7 = [v8 stringWithFormat:@"Failed (Error: %@)", v10];
        }
      }

      else
      {
        v7 = @"Succeeded";
      }
    }

    else
    {
      v7 = @"In Progress";
    }
  }

  else
  {
    v7 = @"Queued";
  }

  return v7;
}

@end