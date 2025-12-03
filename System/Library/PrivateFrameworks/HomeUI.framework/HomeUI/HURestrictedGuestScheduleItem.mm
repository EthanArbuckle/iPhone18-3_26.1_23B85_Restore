@interface HURestrictedGuestScheduleItem
- (HURestrictedGuestScheduleItem)initWithHome:(id)home user:(id)user;
- (HURestrictedGuestScheduleItem)initWithSchedule:(id)schedule;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HURestrictedGuestScheduleItem

- (HURestrictedGuestScheduleItem)initWithHome:(id)home user:(id)user
{
  homeCopy = home;
  userCopy = user;
  v10 = userCopy;
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"HURestrictedGuestScheduleItem.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"home"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HURestrictedGuestScheduleItem.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"user"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = HURestrictedGuestScheduleItem;
  v11 = [(HURestrictedGuestScheduleItem *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_home, home);
    objc_storeStrong(&v12->_user, user);
  }

  return v12;
}

- (HURestrictedGuestScheduleItem)initWithSchedule:(id)schedule
{
  scheduleCopy = schedule;
  if (!scheduleCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HURestrictedGuestScheduleItem.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"schedule"}];
  }

  v11.receiver = self;
  v11.super_class = HURestrictedGuestScheduleItem;
  v7 = [(HURestrictedGuestScheduleItem *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_schedule, schedule);
  }

  return v8;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v73 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    schedule = [(HURestrictedGuestScheduleItem *)self schedule];
    user = [(HURestrictedGuestScheduleItem *)self user];
    hf_prettyDescription = [user hf_prettyDescription];
    home = [(HURestrictedGuestScheduleItem *)self home];
    *buf = 138413314;
    selfCopy3 = self;
    v65 = 2112;
    v66 = v6;
    v67 = 2112;
    v68 = schedule;
    v69 = 2112;
    v70 = hf_prettyDescription;
    v71 = 2112;
    v72 = home;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ Attempting to update HURestrictedGuestScheduleItem with schedule [%@], user [%@], home [%@].", buf, 0x34u);
  }

  v11 = objc_opt_new();
  home2 = [(HURestrictedGuestScheduleItem *)self home];
  if (home2)
  {
    v13 = home2;
    user2 = [(HURestrictedGuestScheduleItem *)self user];
    if (user2)
    {
      v15 = user2;
      home3 = [(HURestrictedGuestScheduleItem *)self home];
      user3 = [(HURestrictedGuestScheduleItem *)self user];
      v18 = [home3 hf_userIsRestrictedGuest:user3];

      if (v18)
      {
        home4 = [(HURestrictedGuestScheduleItem *)self home];
        user4 = [(HURestrictedGuestScheduleItem *)self user];
        v21 = [home4 homeAccessControlForUser:user4];

        restrictedGuestAccessSettings = [v21 restrictedGuestAccessSettings];
        v23 = MEMORY[0x277D14A08];
        guestAccessSchedule = [restrictedGuestAccessSettings guestAccessSchedule];
        schedule2 = [v23 scheduleBuilderFromHomeAccessSchedule:guestAccessSchedule];

        v26 = HFLogForCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = NSStringFromSelector(a2);
          guestAccessSchedule2 = [restrictedGuestAccessSettings guestAccessSchedule];
          *buf = 138413058;
          selfCopy3 = self;
          v65 = 2112;
          v66 = v27;
          v67 = 2112;
          v68 = schedule2;
          v69 = 2112;
          v70 = guestAccessSchedule2;
          _os_log_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_DEFAULT, "%@:%@ Constructed schedule builder [%@] from guest access schedule [%@].", buf, 0x2Au);
        }

        home5 = [(HURestrictedGuestScheduleItem *)self home];
        hf_currentUserIsRestrictedGuest = [home5 hf_currentUserIsRestrictedGuest];

        if (hf_currentUserIsRestrictedGuest)
        {
          v31 = 0;
        }

        else
        {
          v31 = _HULocalizedStringWithDefaultValue(@"HUEditButtonTitle", @"HUEditButtonTitle", 1);
        }

        v38 = MEMORY[0x277CBEB98];
        home6 = [(HURestrictedGuestScheduleItem *)self home];
        user5 = [(HURestrictedGuestScheduleItem *)self user];
        v41 = [v38 setWithObjects:{home6, user5, 0}];
        [v11 setObject:v41 forKeyedSubscript:*MEMORY[0x277D13DA8]];

        goto LABEL_18;
      }
    }

    else
    {
    }
  }

  schedule2 = [(HURestrictedGuestScheduleItem *)self schedule];

  if (schedule2)
  {
    v32 = MEMORY[0x277D14A08];
    schedule3 = [(HURestrictedGuestScheduleItem *)self schedule];
    schedule2 = [v32 scheduleBuilderFromSchedule:schedule3];

    v34 = HFLogForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = NSStringFromSelector(a2);
      schedule4 = [(HURestrictedGuestScheduleItem *)self schedule];
      *buf = 138413058;
      selfCopy3 = self;
      v65 = 2112;
      v66 = v35;
      v67 = 2112;
      v68 = schedule2;
      v69 = 2112;
      v70 = schedule4;
      _os_log_impl(&dword_20CEB6000, v34, OS_LOG_TYPE_DEFAULT, "%@:%@ Constructed schedule builder [%@] from schedule [%@].", buf, 0x2Au);
    }

    v37 = [MEMORY[0x277CCABB0] numberWithInt:schedule2 == 0];
    [v11 setObject:v37 forKeyedSubscript:*MEMORY[0x277D13FB8]];

    v31 = _HULocalizedStringWithDefaultValue(@"HUEditButtonTitle", @"HUEditButtonTitle", 1);
  }

  else
  {
    [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
    v31 = 0;
  }

LABEL_18:
  estimatedScheduleType = [schedule2 estimatedScheduleType];
  rules3 = [MEMORY[0x277D14A50] localizedStringFromScheduleType:estimatedScheduleType];
  v44 = @"Home.Users.Guests.Access.Schedule";
  if (estimatedScheduleType == 2)
  {
    rules = [schedule2 rules];
    v51 = [rules count];

    if (v51 < 2)
    {
      v54 = MEMORY[0x277D14A50];
      rules2 = [schedule2 rules];
      anyObject = [rules2 anyObject];
      v49 = [v54 localizedMainStringForRule:anyObject];

      v57 = MEMORY[0x277D14A50];
      rules3 = [schedule2 rules];
      anyObject2 = [rules3 anyObject];
      v52 = [v57 localizedDetailedStringForRule:anyObject2];

      v53 = @"%@.CustomSingle";
    }

    else
    {
      v49 = HFLocalizedString();
      v52 = 0;
      v53 = @"%@.CustomMultipleTimes";
    }
  }

  else
  {
    if (estimatedScheduleType != 1)
    {
      v52 = 0;
      goto LABEL_29;
    }

    rules4 = [schedule2 rules];
    if ([rules4 count] > 1)
    {
      v49 = HFLocalizedString();
    }

    else
    {
      v46 = MEMORY[0x277D14A50];
      rules5 = [schedule2 rules];
      anyObject3 = [rules5 anyObject];
      v49 = [v46 localizedMainStringForRule:anyObject3];

      rules3 = rules5;
    }

    v52 = 0;
    v53 = @"%@.SpecificDates";
    rules3 = rules4;
  }

  v44 = [MEMORY[0x277CCACA8] stringWithFormat:v53, @"Home.Users.Guests.Access.Schedule"];
  rules3 = v49;
LABEL_29:
  [v11 setObject:rules3 forKeyedSubscript:*MEMORY[0x277D13F60]];
  [v11 setObject:v31 forKeyedSubscript:*MEMORY[0x277D13E30]];
  [v11 setObject:v52 forKeyedSubscript:*MEMORY[0x277D13E20]];
  [v11 setObject:v44 forKeyedSubscript:*MEMORY[0x277D13DC8]];
  v59 = [MEMORY[0x277D755D0] configurationWithScale:0];
  v60 = [objc_alloc(MEMORY[0x277D14728]) initWithSystemImageNamed:@"calendar" configuration:v59];
  [v11 setObject:v60 forKeyedSubscript:*MEMORY[0x277D13E88]];

  [v11 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D13F10]];
  v61 = [MEMORY[0x277D2C900] futureWithResult:v11];

  return v61;
}

@end