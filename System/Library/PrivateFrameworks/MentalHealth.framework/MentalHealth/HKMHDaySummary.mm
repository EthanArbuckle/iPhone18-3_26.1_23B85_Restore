@interface HKMHDaySummary
- (BOOL)isEqual:(id)equal;
- (HKMHDaySummary)initWithCoder:(id)coder;
- (HKMHDaySummary)initWithDayIndex:(int64_t)index momentaryStatesOfMind:(id)mind dailyStateOfMind:(id)ofMind;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMHDaySummary

- (HKMHDaySummary)initWithDayIndex:(int64_t)index momentaryStatesOfMind:(id)mind dailyStateOfMind:(id)ofMind
{
  mindCopy = mind;
  ofMindCopy = ofMind;
  v17.receiver = self;
  v17.super_class = HKMHDaySummary;
  v10 = [(HKMHDaySummary *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_dayIndex = index;
    v12 = [mindCopy copy];
    momentaryStatesOfMind = v11->_momentaryStatesOfMind;
    v11->_momentaryStatesOfMind = v12;

    v14 = [ofMindCopy copy];
    dailyStateOfMind = v11->_dailyStateOfMind;
    v11->_dailyStateOfMind = v14;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

- (HKMHDaySummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"DayIndex"];
  v6 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"MomentaryStatesOfMind"];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DailyStateOfMind"];

  v9 = [(HKMHDaySummary *)self initWithDayIndex:v5 momentaryStatesOfMind:v7 dailyStateOfMind:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  dayIndex = self->_dayIndex;
  coderCopy = coder;
  [coderCopy encodeInteger:dayIndex forKey:@"DayIndex"];
  [coderCopy encodeObject:self->_momentaryStatesOfMind forKey:@"MomentaryStatesOfMind"];
  [coderCopy encodeObject:self->_dailyStateOfMind forKey:@"DailyStateOfMind"];
}

@end