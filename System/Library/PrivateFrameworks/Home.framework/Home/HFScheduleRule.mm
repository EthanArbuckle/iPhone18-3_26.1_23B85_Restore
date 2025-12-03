@interface HFScheduleRule
+ (id)defaultRuleForType:(unint64_t)type;
- (BOOL)isAllDayWeekDayRule;
- (BOOL)isEqual:(id)equal;
- (BOOL)isWeekDayRule;
- (BOOL)isYearDayRule;
- (HFScheduleRule)initWithWeekDayRule:(id)rule;
- (HFScheduleRule)initWithYearDayRule:(id)rule;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation HFScheduleRule

+ (id)defaultRuleForType:(unint64_t)type
{
  switch(type)
  {
    case 0uLL:
      v9 = 0;
      goto LABEL_10;
    case 2uLL:
      hf_startOfDay = [MEMORY[0x277CBEAB8] hf_componentsWithHour:0 minute:0];
      distantFuture = [MEMORY[0x277CBEAB8] hf_componentsWithHour:23 minute:59];
      v7 = [objc_alloc(MEMORY[0x277CD1F20]) initWithStartTime:hf_startOfDay endTime:distantFuture];
      v8 = [[HFScheduleRule alloc] initWithWeekDayRule:v7];
      break;
    case 1uLL:
      date = [MEMORY[0x277CBEAA8] date];
      hf_startOfDay = [date hf_startOfDay];

      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
      v7 = [objc_alloc(MEMORY[0x277CD1F48]) initWithValidFrom:hf_startOfDay validUntil:distantFuture];
      v8 = [[HFScheduleRule alloc] initWithYearDayRule:v7];
      break;
    default:
      hf_startOfDay = [MEMORY[0x277CCA890] currentHandler];
      distantFuture = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
      [hf_startOfDay handleFailureInMethod:a2 object:self file:@"HFScheduleRule.m" lineNumber:44 description:{@"Unknown schedule type [%@]", distantFuture}];
      v9 = 0;
      goto LABEL_9;
  }

  v9 = v8;

LABEL_9:
LABEL_10:

  return v9;
}

- (HFScheduleRule)initWithWeekDayRule:(id)rule
{
  ruleCopy = rule;
  if (!ruleCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFScheduleRule.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"weekDayRule"}];
  }

  v11.receiver = self;
  v11.super_class = HFScheduleRule;
  v7 = [(HFScheduleRule *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_weekDayRule, rule);
  }

  return v8;
}

- (HFScheduleRule)initWithYearDayRule:(id)rule
{
  ruleCopy = rule;
  if (!ruleCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFScheduleRule.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"yearDayRule"}];
  }

  v11.receiver = self;
  v11.super_class = HFScheduleRule;
  v7 = [(HFScheduleRule *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_yearDayRule, rule);
  }

  return v8;
}

- (BOOL)isWeekDayRule
{
  weekDayRule = [(HFScheduleRule *)self weekDayRule];
  v3 = weekDayRule != 0;

  return v3;
}

- (BOOL)isYearDayRule
{
  yearDayRule = [(HFScheduleRule *)self yearDayRule];
  v3 = yearDayRule != 0;

  return v3;
}

- (BOOL)isAllDayWeekDayRule
{
  v81 = *MEMORY[0x277D85DE8];
  isWeekDayRule = [(HFScheduleRule *)self isWeekDayRule];
  v5 = HFLogForCategory(0x4CuLL);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (isWeekDayRule)
  {
    if (v6)
    {
      v7 = NSStringFromSelector(a2);
      weekDayRule = [(HFScheduleRule *)self weekDayRule];
      *buf = 138413058;
      selfCopy4 = self;
      v61 = 2112;
      v62 = v7;
      v63 = 2112;
      v64 = weekDayRule;
      v65 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ Attempting to determine all-day rule for weekDayRule [%@] from schedule rule [%@].", buf, 0x2Au);
    }

    aSelector = a2;

    hf_sharedCalendar = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
    weekDayRule2 = [(HFScheduleRule *)self weekDayRule];
    startTime = [weekDayRule2 startTime];
    v5 = [hf_sharedCalendar dateFromComponents:startTime];

    dateComponents = [v5 dateComponents];
    hour = [dateComponents hour];
    v58 = dateComponents;
    minute = [dateComponents minute];
    hf_sharedCalendar2 = [MEMORY[0x277CBEAA8] hf_sharedCalendar];
    weekDayRule3 = [(HFScheduleRule *)self weekDayRule];
    endTime = [weekDayRule3 endTime];
    v17 = [hf_sharedCalendar2 dateFromComponents:endTime];

    dateComponents2 = [v17 dateComponents];
    hour2 = [dateComponents2 hour];
    v56 = dateComponents2;
    minute2 = [dateComponents2 minute];
    hf_startOfDay = [v5 hf_startOfDay];
    dateComponents3 = [hf_startOfDay dateComponents];
    hour3 = [dateComponents3 hour];

    v55 = hf_startOfDay;
    dateComponents4 = [hf_startOfDay dateComponents];
    minute3 = [dateComponents4 minute];

    v57 = v17;
    hf_endOfDay = [v17 hf_endOfDay];
    dateComponents5 = [hf_endOfDay dateComponents];
    hour4 = [dateComponents5 hour];

    v54 = hf_endOfDay;
    dateComponents6 = [hf_endOfDay dateComponents];
    minute4 = [dateComponents6 minute];

    v48 = minute3;
    v49 = hour3;
    v31 = hour == hour3 && minute == minute3;
    v32 = minute2;
    v33 = hour2;
    LODWORD(v36) = v31 && hour2 == hour4 && minute2 == minute4;
    v37 = HFLogForCategory(0x4CuLL);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      aSelectora = NSStringFromSelector(aSelector);
      v47 = [MEMORY[0x277CCABB0] numberWithInteger:hour];
      v38 = [MEMORY[0x277CCABB0] numberWithInteger:minute];
      v39 = [MEMORY[0x277CCABB0] numberWithInteger:v33];
      v40 = [MEMORY[0x277CCABB0] numberWithInteger:v32];
      v41 = [MEMORY[0x277CCABB0] numberWithInteger:v49];
      [MEMORY[0x277CCABB0] numberWithInteger:v48];
      v36 = v53 = v36;
      v42 = [MEMORY[0x277CCABB0] numberWithInteger:hour4];
      v43 = [MEMORY[0x277CCABB0] numberWithInteger:minute4];
      *buf = 138414850;
      selfCopy4 = self;
      v61 = 2112;
      v62 = aSelectora;
      v63 = 2112;
      v64 = v47;
      v65 = 2112;
      selfCopy2 = v38;
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
      selfCopy4 = self;
      v61 = 2112;
      v62 = v44;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ Not a weekDayRule. Unabled to determine if schedule rule is an all-day rule.", buf, 0x16u);
    }

    LOBYTE(v36) = 0;
  }

  v45 = *MEMORY[0x277D85DE8];
  return v36;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  weekDayRule = [(HFScheduleRule *)self weekDayRule];
  v6 = [weekDayRule copy];
  v7 = v4[1];
  v4[1] = v6;

  yearDayRule = [(HFScheduleRule *)self yearDayRule];
  v9 = [yearDayRule copy];
  v10 = v4[2];
  v4[2] = v9;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
  {
    objc_opt_class();
    v5 = equalCopy;
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
        weekDayRule = [(HFScheduleRule *)v5 weekDayRule];
        weekDayRule2 = [(HFScheduleRule *)self weekDayRule];
        v10 = [weekDayRule isEqual:weekDayRule2];

        if (v10)
        {
          v11 = 1;
LABEL_13:

          goto LABEL_14;
        }
      }

      if ([(HFScheduleRule *)v7 isYearDayRule])
      {
        yearDayRule = [(HFScheduleRule *)v5 yearDayRule];
        yearDayRule2 = [(HFScheduleRule *)self yearDayRule];
        v11 = [yearDayRule isEqual:yearDayRule2];

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
  weekDayRule = [(HFScheduleRule *)self weekDayRule];
  v4 = [weekDayRule hash];
  yearDayRule = [(HFScheduleRule *)self yearDayRule];
  v6 = [yearDayRule hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  weekDayRule = [(HFScheduleRule *)self weekDayRule];
  v5 = [v3 appendObject:weekDayRule withName:@"weekDayRule"];

  yearDayRule = [(HFScheduleRule *)self yearDayRule];
  v7 = [v3 appendObject:yearDayRule withName:@"yearDayRule"];

  build = [v3 build];

  return build;
}

@end