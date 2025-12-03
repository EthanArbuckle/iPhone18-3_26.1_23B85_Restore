@interface HMDWoLANDarkPollInvalidIntervalLogEvent
- (HMDWoLANDarkPollInvalidIntervalLogEvent)initWithAccessory:(id)accessory interval:(id)interval minValueMinutes:(unsigned int)minutes maxValueMinutes:(unsigned int)valueMinutes wolanVersion:(unsigned __int8)version logType:(int64_t)type;
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)description;
@end

@implementation HMDWoLANDarkPollInvalidIntervalLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDWoLANDarkPollInvalidIntervalLogEvent logType](self, "logType")}];
  [dictionary setObject:v4 forKeyedSubscript:@"logType"];

  interval = [(HMDWoLANDarkPollInvalidIntervalLogEvent *)self interval];
  [dictionary setObject:interval forKeyedSubscript:@"interval"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[HMDWoLANDarkPollInvalidIntervalLogEvent minValueMinutes](self, "minValueMinutes")}];
  [dictionary setObject:v6 forKeyedSubscript:@"minValueMinutes"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[HMDWoLANDarkPollInvalidIntervalLogEvent maxValueMinutes](self, "maxValueMinutes")}];
  [dictionary setObject:v7 forKeyedSubscript:@"maxValueMinutes"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[HMDWoLANDarkPollInvalidIntervalLogEvent wolanVersion](self, "wolanVersion")}];
  [dictionary setObject:v8 forKeyedSubscript:@"wolanVersion"];

  v9 = [dictionary copy];

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  logType = [(HMDWoLANDarkPollInvalidIntervalLogEvent *)self logType];
  interval = [(HMDWoLANDarkPollInvalidIntervalLogEvent *)self interval];
  v6 = [v3 stringWithFormat:@"HMDWoLANDarkPollInvalidIntervalLogEvent - Log Type: %ld, interval: %@, maxValueMinutes: %u, minValueMinutes: %u, wolanVersion: %u", logType, interval, -[HMDWoLANDarkPollInvalidIntervalLogEvent maxValueMinutes](self, "maxValueMinutes"), -[HMDWoLANDarkPollInvalidIntervalLogEvent minValueMinutes](self, "minValueMinutes"), -[HMDWoLANDarkPollInvalidIntervalLogEvent wolanVersion](self, "wolanVersion")];

  return v6;
}

- (HMDWoLANDarkPollInvalidIntervalLogEvent)initWithAccessory:(id)accessory interval:(id)interval minValueMinutes:(unsigned int)minutes maxValueMinutes:(unsigned int)valueMinutes wolanVersion:(unsigned __int8)version logType:(int64_t)type
{
  accessoryCopy = accessory;
  intervalCopy = interval;
  v20.receiver = self;
  v20.super_class = HMDWoLANDarkPollInvalidIntervalLogEvent;
  v16 = [(HMMLogEvent *)&v20 init];
  if (v16)
  {
    identifier = [accessoryCopy identifier];
    accessoryIdentifier = v16->_accessoryIdentifier;
    v16->_accessoryIdentifier = identifier;

    objc_storeStrong(&v16->_interval, interval);
    v16->_minValueMinutes = minutes;
    v16->_maxValueMinutes = valueMinutes;
    v16->_wolanVersion = version;
    v16->_logType = type;
  }

  return v16;
}

@end