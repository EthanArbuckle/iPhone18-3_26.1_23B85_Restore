@interface HMDTimeOfDayTimePeriodElement
- (BOOL)isEqual:(id)a3;
- (HMDTimeOfDayTimePeriodElement)initWithCoder:(id)a3;
- (HMDTimeOfDayTimePeriodElement)initWithDictionary:(id)a3;
- (HMDTimeOfDayTimePeriodElement)initWithHour:(unint64_t)a3 minute:(unint64_t)a4;
- (id)attributeDescriptions;
- (id)serializedRegistrationForRemoteMessage;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDTimeOfDayTimePeriodElement

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDTimeOfDayTimePeriodElement hour](self, "hour")}];
  v5 = [v3 initWithName:@"Hour" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDTimeOfDayTimePeriodElement minute](self, "minute")}];
  v8 = [v6 initWithName:@"Minute" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDTimeOfDayTimePeriodElement)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"HMDTODTPE.ck.h"];
  v6 = [v4 decodeIntegerForKey:@"HMDTODTPE.ck.m"];

  return [(HMDTimeOfDayTimePeriodElement *)self initWithHour:v5 minute:v6];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[HMDTimeOfDayTimePeriodElement hour](self forKey:{"hour"), @"HMDTODTPE.ck.h"}];
  [v4 encodeInteger:-[HMDTimeOfDayTimePeriodElement minute](self forKey:{"minute"), @"HMDTODTPE.ck.m"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v7 = -[HMDTimeOfDayTimePeriodElement hour](self, "hour"), v7 == [v6 hour]))
  {
    v8 = [(HMDTimeOfDayTimePeriodElement *)self minute];
    v9 = v8 == [v6 minute];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)serializedRegistrationForRemoteMessage
{
  v8.receiver = self;
  v8.super_class = HMDTimeOfDayTimePeriodElement;
  v3 = [(HMDTimePeriodElement *)&v8 serializedRegistrationForRemoteMessage];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDTimeOfDayTimePeriodElement hour](self, "hour")}];
  [v4 setObject:v5 forKeyedSubscript:@"HMDTODTPE.ck.h"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDTimeOfDayTimePeriodElement minute](self, "minute")}];
  [v4 setObject:v6 forKeyedSubscript:@"HMDTODTPE.ck.m"];

  return v4;
}

- (HMDTimeOfDayTimePeriodElement)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [objc_opt_class() type];
  LODWORD(v5) = [v5 doesTypeMatch:v4 against:v6];

  if (v5)
  {
    v7 = [v4 objectForKeyedSubscript:@"HMDTODTPE.ck.h"];
    v8 = [v7 integerValue];

    v9 = [v4 objectForKeyedSubscript:@"HMDTODTPE.ck.m"];
    v10 = [v9 integerValue];

    self = [(HMDTimeOfDayTimePeriodElement *)self initWithHour:v8 minute:v10];
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (HMDTimeOfDayTimePeriodElement)initWithHour:(unint64_t)a3 minute:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = HMDTimeOfDayTimePeriodElement;
  result = [(HMDTimeOfDayTimePeriodElement *)&v7 init];
  if (result)
  {
    result->_hour = a3;
    result->_minute = a4;
  }

  return result;
}

@end