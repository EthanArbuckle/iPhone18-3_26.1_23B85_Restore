@interface HFScheduleRule
+ (id)defaultRuleForType:(unint64_t)a3;
- (BOOL)isAllDayWeekDayRule;
- (BOOL)isEqual:(id)a3;
- (BOOL)isWeekDayRule;
- (BOOL)isYearDayRule;
- (HFScheduleRule)initWithWeekDayRule:(id)a3;
- (HFScheduleRule)initWithYearDayRule:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation HFScheduleRule

+ (id)defaultRuleForType:(unint64_t)a3
{
  switch(a3)
  {
    case 0uLL:
      v9 = 0;
      goto LABEL_10;
    case 2uLL:
      v5 = [MEMORY[0x277CBEAB8] hf_componentsWithHour:0 minute:0];
      v6 = [MEMORY[0x277CBEAB8] hf_componentsWithHour:23 minute:59];
      v7 = [objc_alloc(MEMORY[0x277CD1F20]) initWithStartTime:v5 endTime:v6];
      v8 = [[HFScheduleRule alloc] initWithWeekDayRule:v7];
      break;
    case 1uLL:
      v4 = [MEMORY[0x277CBEAA8] date];
      v5 = [v4 hf_startOfDay];

      v6 = [MEMORY[0x277CBEAA8] distantFuture];
      v7 = [objc_alloc(MEMORY[0x277CD1F48]) initWithValidFrom:v5 validUntil:v6];
      v8 = [[HFScheduleRule alloc] initWithYearDayRule:v7];
      break;
    default:
      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      [v5 handleFailureInMethod:a2 object:a1 file:@"HFScheduleRule.m" lineNumber:44 description:{@"Unknown schedule type [%@]", v6}];
      v9 = 0;
      goto LABEL_9;
  }

  v9 = v8;

LABEL_9:
LABEL_10:

  return v9;
}

- (HFScheduleRule)initWithWeekDayRule:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HFScheduleRule.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"weekDayRule"}];
  }

  v11.receiver = self;
  v11.super_class = HFScheduleRule;
  v7 = [(HFScheduleRule *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_weekDayRule, a3);
  }

  return v8;
}

- (HFScheduleRule)initWithYearDayRule:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HFScheduleRule.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"yearDayRule"}];
  }

  v11.receiver = self;
  v11.super_class = HFScheduleRule;
  v7 = [(HFScheduleRule *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_yearDayRule, a3);
  }

  return v8;
}

- (BOOL)isWeekDayRule
{
  v2 = [(HFScheduleRule *)self weekDayRule];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isYearDayRule
{
  v2 = [(HFScheduleRule *)self yearDayRule];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isAllDayWeekDayRule
{
  v81 = *MEMORY[0x277D85DE8];
  v4 = [(HFScheduleRule *)self isWeekDayRule];
  v5 = HFLogForCategory(0x4CuLL);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = NSStringFromSelector(a2);
      v8 = [(HFScheduleRule *)self weekDayRule];
      *buf = 138413058;
      v60 = self;
      v61 = 2112;
      v62 = v7;
      v63 = 2112;
      v64 = v8;
      v65 = 2112;
      v66 = self;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ Attempting to determine all-day rule for weekDayRule [%@] from schedule rule [%@].", buf, 0x2Au);
    }

    aSelector = a2;

    v9 = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
    v10 = [(HFScheduleRule *)self weekDayRule];
    v11 = [v10 startTime];
    v5 = [v9 dateFromComponents:v11];

    v12 = [v5 dateComponents];
    v13 = [v12 hour];
    v58 = v12;
    v52 = [v12 minute];
    v14 = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
    v15 = [(HFScheduleRule *)self weekDayRule];
    v16 = [v15 endTime];
    v17 = [v14 dateFromComponents:v16];

    v18 = [v17 dateComponents];
    v19 = [v18 hour];
    v56 = v18;
    v20 = [v18 minute];
    v21 = [v5 hf_startOfDay];
    v22 = [v21 dateComponents];
    v23 = [v22 hour];

    v55 = v21;
    v24 = [v21 dateComponents];
    v25 = [v24 minute];

    v57 = v17;
    v26 = [v17 hf_endOfDay];
    v27 = [v26 dateComponents];
    v28 = [v27 hour];

    v54 = v26;
    v29 = [v26 dateComponents];
    v30 = [v29 minute];

    v48 = v25;
    v49 = v23;
    v31 = v13 == v23 && v52 == v25;
    v32 = v20;
    v33 = v19;
    LODWORD(v36) = v31 && v19 == v28 && v20 == v30;
    v37 = HFLogForCategory(0x4CuLL);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      aSelectora = NSStringFromSelector(aSelector);
      v47 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
      v38 = [MEMORY[0x277CCABB0] numberWithInteger:v52];
      v39 = [MEMORY[0x277CCABB0] numberWithInteger:v33];
      v40 = [MEMORY[0x277CCABB0] numberWithInteger:v32];
      v41 = [MEMORY[0x277CCABB0] numberWithInteger:v49];
      [MEMORY[0x277CCABB0] numberWithInteger:v48];
      v36 = v53 = v36;
      v42 = [MEMORY[0x277CCABB0] numberWithInteger:v28];
      v43 = [MEMORY[0x277CCABB0] numberWithInteger:v30];
      *buf = 138414850;
      v60 = self;
      v61 = 2112;
      v62 = aSelectora;
      v63 = 2112;
      v64 = v47;
      v65 = 2112;
      v66 = v38;
      v67 = 2112;
      v68 = v39;
      v69 = 2112;
      v70 = v40;
      v71 = 2112;
      v72 = v41;
      v73 = 2112;
      v74 = v36;
      v75 = 2112;
      v76 = v42;
      v77 = 2112;
      v78 = v43;
      v79 = 1024;
      v80 = v53;
      _os_log_impl(&dword_20D9BF000, v37, OS_LOG_TYPE_DEFAULT, "%@:%@ startHour = [%@], startMinute = [%@], endHour = [%@], endMinute = [%@] | startOfDayHour = [%@], startOfDayMinute = [%@], endOfDayHour = [%@], endOfDayMinute = [%@] | isAllDayRule = %{BOOL}d", buf, 0x6Cu);

      LOBYTE(v36) = v53;
    }
  }

  else
  {
    if (v6)
    {
      v44 = NSStringFromSelector(a2);
      *buf = 138412546;
      v60 = self;
      v61 = 2112;
      v62 = v44;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ Not a weekDayRule. Unabled to determine if schedule rule is an all-day rule.", buf, 0x16u);
    }

    LOBYTE(v36) = 0;
  }

  v45 = *MEMORY[0x277D85DE8];
  return v36;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(HFScheduleRule *)self weekDayRule];
  v6 = [v5 copy];
  v7 = v4[1];
  v4[1] = v6;

  v8 = [(HFScheduleRule *)self yearDayRule];
  v9 = [v8 copy];
  v10 = v4[2];
  v4[2] = v9;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    objc_opt_class();
    v5 = v4;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (v7)
    {
      if ([(HFScheduleRule *)v7 isWeekDayRule])
      {
        v8 = [(HFScheduleRule *)v5 weekDayRule];
        v9 = [(HFScheduleRule *)self weekDayRule];
        v10 = [v8 isEqual:v9];

        if (v10)
        {
          v11 = 1;
LABEL_13:

          goto LABEL_14;
        }
      }

      if ([(HFScheduleRule *)v7 isYearDayRule])
      {
        v12 = [(HFScheduleRule *)v5 yearDayRule];
        v13 = [(HFScheduleRule *)self yearDayRule];
        v11 = [v12 isEqual:v13];

        goto LABEL_13;
      }
    }

    v11 = 0;
    goto LABEL_13;
  }

  v11 = 1;
LABEL_14:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(HFScheduleRule *)self weekDayRule];
  v4 = [v3 hash];
  v5 = [(HFScheduleRule *)self yearDayRule];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = [(HFScheduleRule *)self weekDayRule];
  v5 = [v3 appendObject:v4 withName:@"weekDayRule"];

  v6 = [(HFScheduleRule *)self yearDayRule];
  v7 = [v3 appendObject:v6 withName:@"yearDayRule"];

  v8 = [v3 build];

  return v8;
}

@end