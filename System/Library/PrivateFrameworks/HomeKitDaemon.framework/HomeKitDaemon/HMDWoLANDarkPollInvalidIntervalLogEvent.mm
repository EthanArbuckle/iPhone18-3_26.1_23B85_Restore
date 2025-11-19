@interface HMDWoLANDarkPollInvalidIntervalLogEvent
- (HMDWoLANDarkPollInvalidIntervalLogEvent)initWithAccessory:(id)a3 interval:(id)a4 minValueMinutes:(unsigned int)a5 maxValueMinutes:(unsigned int)a6 wolanVersion:(unsigned __int8)a7 logType:(int64_t)a8;
- (NSDictionary)coreAnalyticsEventDictionary;
- (NSString)description;
@end

@implementation HMDWoLANDarkPollInvalidIntervalLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDWoLANDarkPollInvalidIntervalLogEvent logType](self, "logType")}];
  [v3 setObject:v4 forKeyedSubscript:@"logType"];

  v5 = [(HMDWoLANDarkPollInvalidIntervalLogEvent *)self interval];
  [v3 setObject:v5 forKeyedSubscript:@"interval"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[HMDWoLANDarkPollInvalidIntervalLogEvent minValueMinutes](self, "minValueMinutes")}];
  [v3 setObject:v6 forKeyedSubscript:@"minValueMinutes"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[HMDWoLANDarkPollInvalidIntervalLogEvent maxValueMinutes](self, "maxValueMinutes")}];
  [v3 setObject:v7 forKeyedSubscript:@"maxValueMinutes"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[HMDWoLANDarkPollInvalidIntervalLogEvent wolanVersion](self, "wolanVersion")}];
  [v3 setObject:v8 forKeyedSubscript:@"wolanVersion"];

  v9 = [v3 copy];

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDWoLANDarkPollInvalidIntervalLogEvent *)self logType];
  v5 = [(HMDWoLANDarkPollInvalidIntervalLogEvent *)self interval];
  v6 = [v3 stringWithFormat:@"HMDWoLANDarkPollInvalidIntervalLogEvent - Log Type: %ld, interval: %@, maxValueMinutes: %u, minValueMinutes: %u, wolanVersion: %u", v4, v5, -[HMDWoLANDarkPollInvalidIntervalLogEvent maxValueMinutes](self, "maxValueMinutes"), -[HMDWoLANDarkPollInvalidIntervalLogEvent minValueMinutes](self, "minValueMinutes"), -[HMDWoLANDarkPollInvalidIntervalLogEvent wolanVersion](self, "wolanVersion")];

  return v6;
}

- (HMDWoLANDarkPollInvalidIntervalLogEvent)initWithAccessory:(id)a3 interval:(id)a4 minValueMinutes:(unsigned int)a5 maxValueMinutes:(unsigned int)a6 wolanVersion:(unsigned __int8)a7 logType:(int64_t)a8
{
  v14 = a3;
  v15 = a4;
  v20.receiver = self;
  v20.super_class = HMDWoLANDarkPollInvalidIntervalLogEvent;
  v16 = [(HMMLogEvent *)&v20 init];
  if (v16)
  {
    v17 = [v14 identifier];
    accessoryIdentifier = v16->_accessoryIdentifier;
    v16->_accessoryIdentifier = v17;

    objc_storeStrong(&v16->_interval, a4);
    v16->_minValueMinutes = a5;
    v16->_maxValueMinutes = a6;
    v16->_wolanVersion = a7;
    v16->_logType = a8;
  }

  return v16;
}

@end