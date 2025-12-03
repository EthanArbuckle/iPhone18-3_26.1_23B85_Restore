@interface HURestrictedGuestScheduleItemManager
- (HURestrictedGuestScheduleItemManager)initWithHome:(id)home user:(id)user delegate:(id)delegate;
- (HURestrictedGuestScheduleItemManager)initWithSchedule:(id)schedule delegate:(id)delegate;
- (id)_buildItemModulesForHome:(id)home;
@end

@implementation HURestrictedGuestScheduleItemManager

- (HURestrictedGuestScheduleItemManager)initWithHome:(id)home user:(id)user delegate:(id)delegate
{
  homeCopy = home;
  userCopy = user;
  delegateCopy = delegate;
  if (homeCopy)
  {
    if (userCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HURestrictedGuestScheduleItemManager.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"home"}];

    if (userCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HURestrictedGuestScheduleItemManager.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"user"}];

LABEL_3:
  if (([homeCopy hf_userIsRestrictedGuest:userCopy] & 1) == 0)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"HURestrictedGuestScheduleItemManager.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"[home hf_userIsRestrictedGuest:user]"}];
  }

  v19.receiver = self;
  v19.super_class = HURestrictedGuestScheduleItemManager;
  v13 = [(HFItemManager *)&v19 initWithDelegate:delegateCopy sourceItem:0];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_overrideHome, home);
    objc_storeStrong(&v14->_user, user);
    v14->_scheduleContext = 0;
  }

  return v14;
}

- (HURestrictedGuestScheduleItemManager)initWithSchedule:(id)schedule delegate:(id)delegate
{
  scheduleCopy = schedule;
  delegateCopy = delegate;
  if (!scheduleCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HURestrictedGuestScheduleItemManager.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"schedule"}];
  }

  v14.receiver = self;
  v14.super_class = HURestrictedGuestScheduleItemManager;
  v10 = [(HFItemManager *)&v14 initWithDelegate:delegateCopy sourceItem:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_inviteUserSchedule, schedule);
    v11->_scheduleContext = 1;
  }

  return v11;
}

- (id)_buildItemModulesForHome:(id)home
{
  v33 = *MEMORY[0x277D85DE8];
  if (![(HURestrictedGuestScheduleItemManager *)self scheduleContext])
  {
    overrideHome = [(HURestrictedGuestScheduleItemManager *)self overrideHome];
    user = [(HURestrictedGuestScheduleItemManager *)self user];
    v8 = [overrideHome homeAccessControlForUser:user];

    restrictedGuestAccessSettings = [v8 restrictedGuestAccessSettings];
    guestAccessSchedule = [restrictedGuestAccessSettings guestAccessSchedule];
    v7 = [MEMORY[0x277D14A08] scheduleBuilderFromHomeAccessSchedule:guestAccessSchedule];
    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = NSStringFromSelector(a2);
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HURestrictedGuestScheduleItemManager scheduleContext](self, "scheduleContext")}];
      *buf = 138413314;
      selfCopy2 = self;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v7;
      v29 = 2112;
      v30 = guestAccessSchedule;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_20CEB6000, v16, OS_LOG_TYPE_DEFAULT, "%@:%@ Constructed new schedule builder [%@] from guest access schedule [%@] with context [%@].", buf, 0x34u);
    }

    goto LABEL_8;
  }

  if ([(HURestrictedGuestScheduleItemManager *)self scheduleContext]== 1)
  {
    v5 = MEMORY[0x277D14A08];
    inviteUserSchedule = [(HURestrictedGuestScheduleItemManager *)self inviteUserSchedule];
    v7 = [v5 scheduleBuilderFromSchedule:inviteUserSchedule];

    v8 = HFLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(a2);
      inviteUserSchedule2 = [(HURestrictedGuestScheduleItemManager *)self inviteUserSchedule];
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HURestrictedGuestScheduleItemManager scheduleContext](self, "scheduleContext")}];
      *buf = 138413314;
      selfCopy2 = self;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v7;
      v29 = 2112;
      v30 = inviteUserSchedule2;
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