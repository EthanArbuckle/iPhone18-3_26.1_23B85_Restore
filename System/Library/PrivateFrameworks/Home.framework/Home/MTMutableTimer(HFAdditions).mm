@interface MTMutableTimer(HFAdditions)
- (void)hf_moveToRoom:()HFAdditions withMediaProfileContainer:;
@end

@implementation MTMutableTimer(HFAdditions)

- (void)hf_moveToRoom:()HFAdditions withMediaProfileContainer:
{
  v29[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  hf_home = [v7 hf_home];
  v9 = [self hf_targetAccessoryInHome:hf_home];
  room = [v9 room];
  v11 = [room isEqual:v6];

  if (v11)
  {
    v12 = HFLogForCategory(4uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy3 = self;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "Not moving timer: %@ since it is already in room: %@ ", buf, 0x16u);
    }
  }

  else
  {
    accessories = [v7 accessories];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __71__MTMutableTimer_HFAdditions__hf_moveToRoom_withMediaProfileContainer___block_invoke;
    v20[3] = &unk_277DF3888;
    v14 = v6;
    v21 = v14;
    v15 = [accessories na_firstObjectPassingTest:v20];

    if (v15)
    {
      v16 = COTimerSiriContextTargetReferenceForAccessory();
      v28 = *MEMORY[0x277CFD060];
      v29[0] = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      [self setSiriContext:v17];

      v18 = HFLogForCategory(4uLL);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        selfCopy3 = self;
        v24 = 2112;
        v25 = v14;
        v26 = 2112;
        v27 = v15;
        _os_log_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_DEFAULT, "Moved timer: %@ to room: %@ using targetReferenceAccessory: %@", buf, 0x20u);
      }
    }

    else
    {
      v16 = HFLogForCategory(4uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        selfCopy3 = self;
        v24 = 2112;
        v25 = v14;
        _os_log_error_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_ERROR, "Error moving timer: %@ to room: %@ since there is no targetReferenceAccessory for that room", buf, 0x16u);
      }
    }

    v12 = v21;
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end