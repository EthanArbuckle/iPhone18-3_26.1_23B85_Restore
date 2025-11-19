@interface HKMHDaySummary
- (BOOL)isEqual:(id)a3;
- (HKMHDaySummary)initWithCoder:(id)a3;
- (HKMHDaySummary)initWithDayIndex:(int64_t)a3 momentaryStatesOfMind:(id)a4 dailyStateOfMind:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMHDaySummary

- (HKMHDaySummary)initWithDayIndex:(int64_t)a3 momentaryStatesOfMind:(id)a4 dailyStateOfMind:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = HKMHDaySummary;
  v10 = [(HKMHDaySummary *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_dayIndex = a3;
    v12 = [v8 copy];
    momentaryStatesOfMind = v11->_momentaryStatesOfMind;
    v11->_momentaryStatesOfMind = v12;

    v14 = [v9 copy];
    dailyStateOfMind = v11->_dailyStateOfMind;
    v11->_dailyStateOfMind = v14;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (self->_dayIndex != v5[1] || ![(NSArray *)self->_momentaryStatesOfMind isEqualToArray:v5[2]])
    {
      goto LABEL_8;
    }

    dailyStateOfMind = self->_dailyStateOfMind;
    v7 = v5[3];
    if (dailyStateOfMind == v7)
    {
      v8 = 1;
      goto LABEL_9;
    }

    if (v7)
    {
      v8 = [(HKStateOfMind *)dailyStateOfMind isEqual:?];
    }

    else
    {
LABEL_8:
      v8 = 0;
    }

LABEL_9:

    goto LABEL_10;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  dayIndex = self->_dayIndex;
  v4 = [(NSArray *)self->_momentaryStatesOfMind hash]^ dayIndex;
  return v4 ^ [(HKStateOfMind *)self->_dailyStateOfMind hash];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_dayIndex];
  v6 = [v3 stringWithFormat:@"<%@:%p index:%@ dailyState:%@ states:%@>", v4, self, v5, self->_dailyStateOfMind, self->_momentaryStatesOfMind];

  return v6;
}

- (HKMHDaySummary)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"DayIndex"];
  v6 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"MomentaryStatesOfMind"];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DailyStateOfMind"];

  v9 = [(HKMHDaySummary *)self initWithDayIndex:v5 momentaryStatesOfMind:v7 dailyStateOfMind:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  dayIndex = self->_dayIndex;
  v5 = a3;
  [v5 encodeInteger:dayIndex forKey:@"DayIndex"];
  [v5 encodeObject:self->_momentaryStatesOfMind forKey:@"MomentaryStatesOfMind"];
  [v5 encodeObject:self->_dailyStateOfMind forKey:@"DailyStateOfMind"];
}

@end