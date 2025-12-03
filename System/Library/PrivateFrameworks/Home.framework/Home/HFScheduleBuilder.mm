@interface HFScheduleBuilder
+ (id)scheduleBuilderFromHomeAccessSchedule:(id)schedule;
+ (id)scheduleBuilderFromSchedule:(id)schedule;
+ (id)scheduleBuilderFromType:(unint64_t)type withDefaultRules:(BOOL)rules;
+ (id)scheduleBuilderFromYearDayRules:(id)rules weekDayRules:(id)dayRules;
- (BOOL)isEqual:(id)equal;
- (HFScheduleBuilder)init;
- (id)build;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)estimatedScheduleType;
- (unint64_t)hash;
@end

@implementation HFScheduleBuilder

- (HFScheduleBuilder)init
{
  v7.receiver = self;
  v7.super_class = HFScheduleBuilder;
  v2 = [(HFScheduleBuilder *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CBEB98]);
    v4 = [v3 initWithArray:MEMORY[0x277CBEBF8]];
    v5 = *(v2 + 2);
    *(v2 + 2) = v4;

    *(v2 + 4) = 0;
    *(v2 + 24) = xmmword_20DD97520;
  }

  return v2;
}

+ (id)scheduleBuilderFromType:(unint64_t)type withDefaultRules:(BOOL)rules
{
  rulesCopy = rules;
  v8 = objc_alloc_init(HFScheduleBuilder);
  v9 = v8;
  if (type == 2)
  {
    [(HFScheduleBuilder *)v8 setSupportsWeekDayRules:1];
    if (!rulesCopy)
    {
      goto LABEL_12;
    }

    v11 = MEMORY[0x277CBEB98];
    v12 = 2;
  }

  else
  {
    if (type != 1)
    {
      if (type)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"HFScheduleBuilder.m" lineNumber:122 description:{@"Unknown schedule type", type}];
      }

      else
      {
        [(HFScheduleBuilder *)v8 setMinNumberOfRules:0];
        [(HFScheduleBuilder *)v9 setMaxNumberOfRules:0];
        currentHandler = [MEMORY[0x277CBEB98] set];
        [(HFScheduleBuilder *)v9 setRules:currentHandler];
      }

      goto LABEL_11;
    }

    [(HFScheduleBuilder *)v8 setSupportsYearDayRules:1];
    if (!rulesCopy)
    {
      goto LABEL_12;
    }

    v11 = MEMORY[0x277CBEB98];
    v12 = 1;
  }

  currentHandler = [HFScheduleRule defaultRuleForType:v12];
  v13 = [v11 setWithObject:currentHandler];
  [(HFScheduleBuilder *)v9 setRules:v13];

LABEL_11:
LABEL_12:

  return v9;
}

+ (id)scheduleBuilderFromHomeAccessSchedule:(id)schedule
{
  scheduleCopy = schedule;
  v5 = scheduleCopy;
  if (scheduleCopy)
  {
    weekDayRules = [scheduleCopy weekDayRules];
    v7 = [weekDayRules na_map:&__block_literal_global_18_9];

    yearDayRules = [v5 yearDayRules];
    v9 = [yearDayRules na_map:&__block_literal_global_21_5];

    v10 = [self scheduleBuilderFromYearDayRules:v9 weekDayRules:v7];
  }

  else
  {
    v10 = [self scheduleBuilderFromType:0 withDefaultRules:0];
  }

  return v10;
}

HFScheduleRule *__59__HFScheduleBuilder_scheduleBuilderFromHomeAccessSchedule___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HFScheduleRule alloc] initWithWeekDayRule:v2];

  return v3;
}

HFScheduleRule *__59__HFScheduleBuilder_scheduleBuilderFromHomeAccessSchedule___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HFScheduleRule alloc] initWithYearDayRule:v2];

  return v3;
}

+ (id)scheduleBuilderFromSchedule:(id)schedule
{
  scheduleCopy = schedule;
  if (!scheduleCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFScheduleBuilder.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"schedule"}];
  }

  allYearDayRules = [scheduleCopy allYearDayRules];
  allObjects = [allYearDayRules allObjects];
  allWeekDayRules = [scheduleCopy allWeekDayRules];
  allObjects2 = [allWeekDayRules allObjects];
  v10 = [self scheduleBuilderFromYearDayRules:allObjects weekDayRules:allObjects2];

  return v10;
}

+ (id)scheduleBuilderFromYearDayRules:(id)rules weekDayRules:(id)dayRules
{
  rulesCopy = rules;
  dayRulesCopy = dayRules;
  v9 = dayRulesCopy;
  if (!rulesCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFScheduleBuilder.m" lineNumber:155 description:{@"Invalid parameter not satisfying: %@", @"yearDayRules"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_18:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFScheduleBuilder.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"weekDayRules"}];

    goto LABEL_3;
  }

  if (!dayRulesCopy)
  {
    goto LABEL_18;
  }

LABEL_3:
  v10 = objc_alloc_init(HFScheduleBuilder);
  if ([v9 hmf_isEmpty] && (objc_msgSend(rulesCopy, "hmf_isEmpty") & 1) != 0)
  {
    [(HFScheduleBuilder *)v10 setMinNumberOfRules:0];
    [(HFScheduleBuilder *)v10 setMaxNumberOfRules:0];
    v11 = [MEMORY[0x277CBEB98] set];
  }

  else
  {
    v11 = [MEMORY[0x277CBEB58] set];
    if (([v9 hmf_isEmpty] & 1) == 0)
    {
      [(HFScheduleBuilder *)v10 setSupportsWeekDayRules:1];
      [v11 addObjectsFromArray:v9];
    }

    if (([rulesCopy hmf_isEmpty] & 1) == 0)
    {
      [(HFScheduleBuilder *)v10 setSupportsYearDayRules:1];
      [v11 addObjectsFromArray:rulesCopy];
    }

    v12 = [v11 count];
    maxNumberOfRules = [(HFScheduleBuilder *)v10 maxNumberOfRules];
    if (v12 <= maxNumberOfRules)
    {
      v14 = maxNumberOfRules;
    }

    else
    {
      v14 = v12;
    }

    [(HFScheduleBuilder *)v10 setMaxNumberOfRules:v14];
  }

  [(HFScheduleBuilder *)v10 setRules:v11];

  return v10;
}

- (unint64_t)estimatedScheduleType
{
  rules = [(HFScheduleBuilder *)self rules];
  hmf_isEmpty = [rules hmf_isEmpty];

  if (hmf_isEmpty)
  {
    return 0;
  }

  rules2 = [(HFScheduleBuilder *)self rules];
  allObjects = [rules2 allObjects];
  firstObject = [allObjects firstObject];
  isYearDayRule = [firstObject isYearDayRule];

  if (isYearDayRule)
  {
    return 1;
  }

  rules3 = [(HFScheduleBuilder *)self rules];
  allObjects2 = [rules3 allObjects];
  firstObject2 = [allObjects2 firstObject];
  [firstObject2 isWeekDayRule];

  return 2;
}

- (id)build
{
  if ([HFScheduleValidator isValid:self])
  {
    v3 = [HFSchedule alloc];
    rules = [(HFScheduleBuilder *)self rules];
    v5 = [rules copy];
    v6 = [(HFSchedule *)v3 initWithScheduleRules:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  rules = [(HFScheduleBuilder *)self rules];
  v6 = [rules copy];
  v7 = v4[2];
  v4[2] = v6;

  *(v4 + 8) = [(HFScheduleBuilder *)self supportsWeekDayRules];
  *(v4 + 9) = [(HFScheduleBuilder *)self supportsYearDayRules];
  v4[3] = [(HFScheduleBuilder *)self minNumberOfRules];
  v4[4] = [(HFScheduleBuilder *)self maxNumberOfRules];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  rules = [(HFScheduleBuilder *)equalCopy rules];
  rules2 = [(HFScheduleBuilder *)self rules];
  if (![rules isEqualToSet:rules2] || (v7 = -[HFScheduleBuilder supportsWeekDayRules](equalCopy, "supportsWeekDayRules"), v7 != -[HFScheduleBuilder supportsWeekDayRules](self, "supportsWeekDayRules")) || (v8 = -[HFScheduleBuilder supportsYearDayRules](equalCopy, "supportsYearDayRules"), v8 != -[HFScheduleBuilder supportsYearDayRules](self, "supportsYearDayRules")) || (v9 = -[HFScheduleBuilder minNumberOfRules](equalCopy, "minNumberOfRules"), v9 != -[HFScheduleBuilder minNumberOfRules](self, "minNumberOfRules")))
  {

    goto LABEL_10;
  }

  maxNumberOfRules = [(HFScheduleBuilder *)equalCopy maxNumberOfRules];
  maxNumberOfRules2 = [(HFScheduleBuilder *)self maxNumberOfRules];

  if (maxNumberOfRules != maxNumberOfRules2)
  {
LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

LABEL_8:
  v12 = 1;
LABEL_11:

  return v12;
}

- (unint64_t)hash
{
  rules = [(HFScheduleBuilder *)self rules];
  v4 = [rules hash];

  if ([(HFScheduleBuilder *)self supportsWeekDayRules])
  {
    v5 = 1231;
  }

  else
  {
    v5 = 1237;
  }

  v6 = v5 - v4 + 32 * v4;
  if ([(HFScheduleBuilder *)self supportsYearDayRules])
  {
    v7 = 1231;
  }

  else
  {
    v7 = 1237;
  }

  v8 = [(HFScheduleBuilder *)self minNumberOfRules]- (v7 - v6 + 32 * v6) + 32 * (v7 - v6 + 32 * v6);
  return [(HFScheduleBuilder *)self maxNumberOfRules]- v8 + 32 * v8 + 28629151;
}

- (id)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  rules = [(HFScheduleBuilder *)self rules];
  v5 = [v3 appendObject:rules withName:@"rules"];

  v6 = [v3 appendBool:-[HFScheduleBuilder supportsWeekDayRules](self withName:{"supportsWeekDayRules"), @"supportsWeekDayRules"}];
  v7 = [v3 appendBool:-[HFScheduleBuilder supportsYearDayRules](self withName:{"supportsYearDayRules"), @"supportsYearDayRules"}];
  v8 = [v3 appendUnsignedInteger:-[HFScheduleBuilder minNumberOfRules](self withName:{"minNumberOfRules"), @"minNumberOfRules"}];
  v9 = [v3 appendUnsignedInteger:-[HFScheduleBuilder maxNumberOfRules](self withName:{"maxNumberOfRules"), @"maxNumberOfRules"}];
  build = [v3 build];

  return build;
}

@end