@interface HMDTimeOfDayTimePeriodElement
- (BOOL)isEqual:(id)equal;
- (HMDTimeOfDayTimePeriodElement)initWithCoder:(id)coder;
- (HMDTimeOfDayTimePeriodElement)initWithDictionary:(id)dictionary;
- (HMDTimeOfDayTimePeriodElement)initWithHour:(unint64_t)hour minute:(unint64_t)minute;
- (id)attributeDescriptions;
- (id)serializedRegistrationForRemoteMessage;
- (void)encodeWithCoder:(id)coder;
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

- (HMDTimeOfDayTimePeriodElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"HMDTODTPE.ck.h"];
  v6 = [coderCopy decodeIntegerForKey:@"HMDTODTPE.ck.m"];

  return [(HMDTimeOfDayTimePeriodElement *)self initWithHour:v5 minute:v6];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[HMDTimeOfDayTimePeriodElement hour](self forKey:{"hour"), @"HMDTODTPE.ck.h"}];
  [coderCopy encodeInteger:-[HMDTimeOfDayTimePeriodElement minute](self forKey:{"minute"), @"HMDTODTPE.ck.m"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6 && (v7 = -[HMDTimeOfDayTimePeriodElement hour](self, "hour"), v7 == [v6 hour]))
  {
    minute = [(HMDTimeOfDayTimePeriodElement *)self minute];
    v9 = minute == [v6 minute];
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
  serializedRegistrationForRemoteMessage = [(HMDTimePeriodElement *)&v8 serializedRegistrationForRemoteMessage];
  v4 = [serializedRegistrationForRemoteMessage mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDTimeOfDayTimePeriodElement hour](self, "hour")}];
  [v4 setObject:v5 forKeyedSubscript:@"HMDTODTPE.ck.h"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDTimeOfDayTimePeriodElement minute](self, "minute")}];
  [v4 setObject:v6 forKeyedSubscript:@"HMDTODTPE.ck.m"];

  return v4;
}

- (HMDTimeOfDayTimePeriodElement)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_opt_class();
  type = [objc_opt_class() type];
  LODWORD(v5) = [v5 doesTypeMatch:dictionaryCopy against:type];

  if (v5)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"HMDTODTPE.ck.h"];
    integerValue = [v7 integerValue];

    v9 = [dictionaryCopy objectForKeyedSubscript:@"HMDTODTPE.ck.m"];
    integerValue2 = [v9 integerValue];

    self = [(HMDTimeOfDayTimePeriodElement *)self initWithHour:integerValue minute:integerValue2];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (HMDTimeOfDayTimePeriodElement)initWithHour:(unint64_t)hour minute:(unint64_t)minute
{
  v7.receiver = self;
  v7.super_class = HMDTimeOfDayTimePeriodElement;
  result = [(HMDTimeOfDayTimePeriodElement *)&v7 init];
  if (result)
  {
    result->_hour = hour;
    result->_minute = minute;
  }

  return result;
}

@end