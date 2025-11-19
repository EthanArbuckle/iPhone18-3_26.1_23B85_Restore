@interface HURestrictedGuestScheduleItem
- (HURestrictedGuestScheduleItem)initWithHome:(id)a3 user:(id)a4;
- (HURestrictedGuestScheduleItem)initWithSchedule:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HURestrictedGuestScheduleItem

- (HURestrictedGuestScheduleItem)initWithHome:(id)a3 user:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"HURestrictedGuestScheduleItem.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"home"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"HURestrictedGuestScheduleItem.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"user"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = HURestrictedGuestScheduleItem;
  v11 = [(HURestrictedGuestScheduleItem *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_home, a3);
    objc_storeStrong(&v12->_user, a4);
  }

  return v12;
}

- (HURestrictedGuestScheduleItem)initWithSchedule:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HURestrictedGuestScheduleItem.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"schedule"}];
  }

  v11.receiver = self;
  v11.super_class = HURestrictedGuestScheduleItem;
  v7 = [(HURestrictedGuestScheduleItem *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_schedule, a3);
  }

  return v8;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v73 = *MEMORY[0x277D85DE8];
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v7 = [(HURestrictedGuestScheduleItem *)self schedule];
    v8 = [(HURestrictedGuestScheduleItem *)self user];
    v9 = [v8 hf_prettyDescription];
    v10 = [(HURestrictedGuestScheduleItem *)self home];
    *buf = 138413314;
    v64 = self;
    v65 = 2112;
    v66 = v6;
    v67 = 2112;
    v68 = v7;
    v69 = 2112;
    v70 = v9;
    v71 = 2112;
    v72 = v10;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ Attempting to update HURestrictedGuestScheduleItem with schedule [%@], user [%@], home [%@].", buf, 0x34u);
  }

  v11 = objc_opt_new();
  v12 = [(HURestrictedGuestScheduleItem *)self home];
  if (v12)
  {
    v13 = v12;
    v14 = [(HURestrictedGuestScheduleItem *)self user];
    if (v14)
    {
      v15 = v14;
      v16 = [(HURestrictedGuestScheduleItem *)self home];
      v17 = [(HURestrictedGuestScheduleItem *)self user];
      v18 = [v16 hf_userIsRestrictedGuest:v17];

      if (v18)
      {
        v19 = [(HURestrictedGuestScheduleItem *)self home];
        v20 = [(HURestrictedGuestScheduleItem *)self user];
        v21 = [v19 homeAccessControlForUser:v20];

        v22 = [v21 restrictedGuestAccessSettings];
        v23 = MEMORY[0x277D14A08];
        v24 = [v22 guestAccessSchedule];
        v25 = [v23 scheduleBuilderFromHomeAccessSchedule:v24];

        v26 = HFLogForCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = NSStringFromSelector(a2);
          v28 = [v22 guestAccessSchedule];
          *buf = 138413058;
          v64 = self;
          v65 = 2112;
          v66 = v27;
          v67 = 2112;
          v68 = v25;
          v69 = 2112;
          v70 = v28;
          _os_log_impl(&dword_20CEB6000, v26, OS_LOG_TYPE_DEFAULT, "%@:%@ Constructed schedule builder [%@] from guest access schedule [%@].", buf, 0x2Au);
        }

        v29 = [(HURestrictedGuestScheduleItem *)self home];
        v30 = [v29 hf_currentUserIsRestrictedGuest];

        if (v30)
        {
          v31 = 0;
        }

        else
        {
          v31 = _HULocalizedStringWithDefaultValue(@"HUEditButtonTitle", @"HUEditButtonTitle", 1);
        }

        v38 = MEMORY[0x277CBEB98];
        v39 = [(HURestrictedGuestScheduleItem *)self home];
        v40 = [(HURestrictedGuestScheduleItem *)self user];
        v41 = [v38 setWithObjects:{v39, v40, 0}];
        [v11 setObject:v41 forKeyedSubscript:*MEMORY[0x277D13DA8]];

        goto LABEL_18;
      }
    }

    else
    {
    }
  }

  v25 = [(HURestrictedGuestScheduleItem *)self schedule];

  if (v25)
  {
    v32 = MEMORY[0x277D14A08];
    v33 = [(HURestrictedGuestScheduleItem *)self schedule];
    v25 = [v32 scheduleBuilderFromSchedule:v33];

    v34 = HFLogForCategory();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = NSStringFromSelector(a2);
      v36 = [(HURestrictedGuestScheduleItem *)self schedule];
      *buf = 138413058;
      v64 = self;
      v65 = 2112;
      v66 = v35;
      v67 = 2112;
      v68 = v25;
      v69 = 2112;
      v70 = v36;
      _os_log_impl(&dword_20CEB6000, v34, OS_LOG_TYPE_DEFAULT, "%@:%@ Constructed schedule builder [%@] from schedule [%@].", buf, 0x2Au);
    }

    v37 = [MEMORY[0x277CCABB0] numberWithInt:v25 == 0];
    [v11 setObject:v37 forKeyedSubscript:*MEMORY[0x277D13FB8]];

    v31 = _HULocalizedStringWithDefaultValue(@"HUEditButtonTitle", @"HUEditButtonTitle", 1);
  }

  else
  {
    [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D13FB8]];
    v31 = 0;
  }

LABEL_18:
  v42 = [v25 estimatedScheduleType];
  v43 = [MEMORY[0x277D14A50] localizedStringFromScheduleType:v42];
  v44 = @"Home.Users.Guests.Access.Schedule";
  if (v42 == 2)
  {
    v50 = [v25 rules];
    v51 = [v50 count];

    if (v51 < 2)
    {
      v54 = MEMORY[0x277D14A50];
      v55 = [v25 rules];
      v56 = [v55 anyObject];
      v49 = [v54 localizedMainStringForRule:v56];

      v57 = MEMORY[0x277D14A50];
      v43 = [v25 rules];
      v58 = [v43 anyObject];
      v52 = [v57 localizedDetailedStringForRule:v58];

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
    if (v42 != 1)
    {
      v52 = 0;
      goto LABEL_29;
    }

    v45 = [v25 rules];
    if ([v45 count] > 1)
    {
      v49 = HFLocalizedString();
    }

    else
    {
      v46 = MEMORY[0x277D14A50];
      v47 = [v25 rules];
      v48 = [v47 anyObject];
      v49 = [v46 localizedMainStringForRule:v48];

      v43 = v47;
    }

    v52 = 0;
    v53 = @"%@.SpecificDates";
    v43 = v45;
  }

  v44 = [MEMORY[0x277CCACA8] stringWithFormat:v53, @"Home.Users.Guests.Access.Schedule"];
  v43 = v49;
LABEL_29:
  [v11 setObject:v43 forKeyedSubscript:*MEMORY[0x277D13F60]];
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