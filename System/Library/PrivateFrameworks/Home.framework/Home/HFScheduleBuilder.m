@interface HFScheduleBuilder
+ (id)scheduleBuilderFromHomeAccessSchedule:(id)a3;
+ (id)scheduleBuilderFromSchedule:(id)a3;
+ (id)scheduleBuilderFromType:(unint64_t)a3 withDefaultRules:(BOOL)a4;
+ (id)scheduleBuilderFromYearDayRules:(id)a3 weekDayRules:(id)a4;
- (BOOL)isEqual:(id)a3;
- (HFScheduleBuilder)init;
- (id)build;
- (id)copyWithZone:(_NSZone *)a3;
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

+ (id)scheduleBuilderFromType:(unint64_t)a3 withDefaultRules:(BOOL)a4
{
  v4 = a4;
  v8 = objc_alloc_init(HFScheduleBuilder);
  v9 = v8;
  if (a3 == 2)
  {
    [(HFScheduleBuilder *)v8 setSupportsWeekDayRules:1];
    if (!v4)
    {
      goto LABEL_12;
    }

    v11 = MEMORY[0x277CBEB98];
    v12 = 2;
  }

  else
  {
    if (a3 != 1)
    {
      if (a3)
      {
        v10 = [MEMORY[0x277CCA890] currentHandler];
        [v10 handleFailureInMethod:a2 object:a1 file:@"HFScheduleBuilder.m" lineNumber:122 description:{@"Unknown schedule type", a3}];
      }

      else
      {
        [(HFScheduleBuilder *)v8 setMinNumberOfRules:0];
        [(HFScheduleBuilder *)v9 setMaxNumberOfRules:0];
        v10 = [MEMORY[0x277CBEB98] set];
        [(HFScheduleBuilder *)v9 setRules:v10];
      }

      goto LABEL_11;
    }

    [(HFScheduleBuilder *)v8 setSupportsYearDayRules:1];
    if (!v4)
    {
      goto LABEL_12;
    }

    v11 = MEMORY[0x277CBEB98];
    v12 = 1;
  }

  v10 = [HFScheduleRule defaultRuleForType:v12];
  v13 = [v11 setWithObject:v10];
  [(HFScheduleBuilder *)v9 setRules:v13];

LABEL_11:
LABEL_12:

  return v9;
}

+ (id)scheduleBuilderFromHomeAccessSchedule:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 weekDayRules];
    v7 = [v6 na_map:&__block_literal_global_18_9];

    v8 = [v5 yearDayRules];
    v9 = [v8 na_map:&__block_literal_global_21_5];

    v10 = [a1 scheduleBuilderFromYearDayRules:v9 weekDayRules:v7];
  }

  else
  {
    v10 = [a1 scheduleBuilderFromType:0 withDefaultRules:0];
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

+ (id)scheduleBuilderFromSchedule:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"HFScheduleBuilder.m" lineNumber:149 description:{@"Invalid parameter not satisfying: %@", @"schedule"}];
  }

  v6 = [v5 allYearDayRules];
  v7 = [v6 allObjects];
  v8 = [v5 allWeekDayRules];
  v9 = [v8 allObjects];
  v10 = [a1 scheduleBuilderFromYearDayRules:v7 weekDayRules:v9];

  return v10;
}

+ (id)scheduleBuilderFromYearDayRules:(id)a3 weekDayRules:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"HFScheduleBuilder.m" lineNumber:155 description:{@"Invalid parameter not satisfying: %@", @"yearDayRules"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_18:
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"HFScheduleBuilder.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"weekDayRules"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_3:
  v10 = objc_alloc_init(HFScheduleBuilder);
  if ([v9 hmf_isEmpty] && (objc_msgSend(v7, "hmf_isEmpty") & 1) != 0)
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

    if (([v7 hmf_isEmpty] & 1) == 0)
    {
      [(HFScheduleBuilder *)v10 setSupportsYearDayRules:1];
      [v11 addObjectsFromArray:v7];
    }

    v12 = [v11 count];
    v13 = [(HFScheduleBuilder *)v10 maxNumberOfRules];
    if (v12 <= v13)
    {
      v14 = v13;
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
  v3 = [(HFScheduleBuilder *)self rules];
  v4 = [v3 hmf_isEmpty];

  if (v4)
  {
    return 0;
  }

  v6 = [(HFScheduleBuilder *)self rules];
  v7 = [v6 allObjects];
  v8 = [v7 firstObject];
  v9 = [v8 isYearDayRule];

  if (v9)
  {
    return 1;
  }

  v10 = [(HFScheduleBuilder *)self rules];
  v11 = [v10 allObjects];
  v12 = [v11 firstObject];
  [v12 isWeekDayRule];

  return 2;
}

- (id)build
{
  if ([HFScheduleValidator isValid:self])
  {
    v3 = [HFSchedule alloc];
    v4 = [(HFScheduleBuilder *)self rules];
    v5 = [v4 copy];
    v6 = [(HFSchedule *)v3 initWithScheduleRules:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(HFScheduleBuilder *)self rules];
  v6 = [v5 copy];
  v7 = v4[2];
  v4[2] = v6;

  *(v4 + 8) = [(HFScheduleBuilder *)self supportsWeekDayRules];
  *(v4 + 9) = [(HFScheduleBuilder *)self supportsYearDayRules];
  v4[3] = [(HFScheduleBuilder *)self minNumberOfRules];
  v4[4] = [(HFScheduleBuilder *)self maxNumberOfRules];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = [(HFScheduleBuilder *)v4 rules];
  v6 = [(HFScheduleBuilder *)self rules];
  if (![v5 isEqualToSet:v6] || (v7 = -[HFScheduleBuilder supportsWeekDayRules](v4, "supportsWeekDayRules"), v7 != -[HFScheduleBuilder supportsWeekDayRules](self, "supportsWeekDayRules")) || (v8 = -[HFScheduleBuilder supportsYearDayRules](v4, "supportsYearDayRules"), v8 != -[HFScheduleBuilder supportsYearDayRules](self, "supportsYearDayRules")) || (v9 = -[HFScheduleBuilder minNumberOfRules](v4, "minNumberOfRules"), v9 != -[HFScheduleBuilder minNumberOfRules](self, "minNumberOfRules")))
  {

    goto LABEL_10;
  }

  v10 = [(HFScheduleBuilder *)v4 maxNumberOfRules];
  v11 = [(HFScheduleBuilder *)self maxNumberOfRules];

  if (v10 != v11)
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
  v3 = [(HFScheduleBuilder *)self rules];
  v4 = [v3 hash];

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
  v4 = [(HFScheduleBuilder *)self rules];
  v5 = [v3 appendObject:v4 withName:@"rules"];

  v6 = [v3 appendBool:-[HFScheduleBuilder supportsWeekDayRules](self withName:{"supportsWeekDayRules"), @"supportsWeekDayRules"}];
  v7 = [v3 appendBool:-[HFScheduleBuilder supportsYearDayRules](self withName:{"supportsYearDayRules"), @"supportsYearDayRules"}];
  v8 = [v3 appendUnsignedInteger:-[HFScheduleBuilder minNumberOfRules](self withName:{"minNumberOfRules"), @"minNumberOfRules"}];
  v9 = [v3 appendUnsignedInteger:-[HFScheduleBuilder maxNumberOfRules](self withName:{"maxNumberOfRules"), @"maxNumberOfRules"}];
  v10 = [v3 build];

  return v10;
}

@end