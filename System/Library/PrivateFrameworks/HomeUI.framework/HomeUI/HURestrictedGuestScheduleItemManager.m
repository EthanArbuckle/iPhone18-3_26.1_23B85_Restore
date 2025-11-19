@interface HURestrictedGuestScheduleItemManager
- (HURestrictedGuestScheduleItemManager)initWithHome:(id)a3 user:(id)a4 delegate:(id)a5;
- (HURestrictedGuestScheduleItemManager)initWithSchedule:(id)a3 delegate:(id)a4;
- (id)_buildItemModulesForHome:(id)a3;
@end

@implementation HURestrictedGuestScheduleItemManager

- (HURestrictedGuestScheduleItemManager)initWithHome:(id)a3 user:(id)a4 delegate:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HURestrictedGuestScheduleItemManager.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"home"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x277CCA890] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"HURestrictedGuestScheduleItemManager.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"user"}];

LABEL_3:
  if (([v10 hf_userIsRestrictedGuest:v11] & 1) == 0)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"HURestrictedGuestScheduleItemManager.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"[home hf_userIsRestrictedGuest:user]"}];
  }

  v19.receiver = self;
  v19.super_class = HURestrictedGuestScheduleItemManager;
  v13 = [(HFItemManager *)&v19 initWithDelegate:v12 sourceItem:0];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_overrideHome, a3);
    objc_storeStrong(&v14->_user, a4);
    v14->_scheduleContext = 0;
  }

  return v14;
}

- (HURestrictedGuestScheduleItemManager)initWithSchedule:(id)a3 delegate:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"HURestrictedGuestScheduleItemManager.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"schedule"}];
  }

  v14.receiver = self;
  v14.super_class = HURestrictedGuestScheduleItemManager;
  v10 = [(HFItemManager *)&v14 initWithDelegate:v9 sourceItem:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_inviteUserSchedule, a3);
    v11->_scheduleContext = 1;
  }

  return v11;
}

- (id)_buildItemModulesForHome:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  if (![(HURestrictedGuestScheduleItemManager *)self scheduleContext])
  {
    v12 = [(HURestrictedGuestScheduleItemManager *)self overrideHome];
    v13 = [(HURestrictedGuestScheduleItemManager *)self user];
    v8 = [v12 homeAccessControlForUser:v13];

    v14 = [v8 restrictedGuestAccessSettings];
    v15 = [v14 guestAccessSchedule];
    v7 = [MEMORY[0x277D14A08] scheduleBuilderFromHomeAccessSchedule:v15];
    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromSelector(a2);
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HURestrictedGuestScheduleItemManager scheduleContext](self, "scheduleContext")}];
      *buf = 138413314;
      v24 = self;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v7;
      v29 = 2112;
      v30 = v15;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@:%@ Constructed new schedule builder [%@] from guest access schedule [%@] with context [%@].", buf, 0x34u);
    }

    goto LABEL_8;
  }

  if ([(HURestrictedGuestScheduleItemManager *)self scheduleContext]== 1)
  {
    v5 = MEMORY[0x277D14A08];
    v6 = [(HURestrictedGuestScheduleItemManager *)self inviteUserSchedule];
    v7 = [v5 scheduleBuilderFromSchedule:v6];

    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(a2);
      v10 = [(HURestrictedGuestScheduleItemManager *)self inviteUserSchedule];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HURestrictedGuestScheduleItemManager scheduleContext](self, "scheduleContext")}];
      *buf = 138413314;
      v24 = self;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v7;
      v29 = 2112;
      v30 = v10;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_DEFAULT, "%@:%@ Constructed new schedule builder [%@] from home schedule [%@] with context [%@].", buf, 0x34u);
    }

LABEL_8:

    goto LABEL_10;
  }

  v7 = 0;
LABEL_10:
  v19 = [[HUScheduleEditorItemModule alloc] initWithItemUpdater:self scheduleBuilder:v7];
  v22 = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];

  return v20;
}

@end