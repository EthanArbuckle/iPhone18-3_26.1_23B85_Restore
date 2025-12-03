@interface HMIVideoAnalyzerDynamicConfiguration
- (BOOL)isEqual:(id)equal;
- (HMIVideoAnalyzerDynamicConfiguration)init;
- (HMIVideoAnalyzerDynamicConfiguration)initWithCoder:(id)coder;
- (id)attributeDescriptions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIVideoAnalyzerDynamicConfiguration

- (HMIVideoAnalyzerDynamicConfiguration)init
{
  v6.receiver = self;
  v6.super_class = HMIVideoAnalyzerDynamicConfiguration;
  v2 = [(HMIVideoAnalyzerDynamicConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_eventTriggers = 0;
    activityZones = v2->_activityZones;
    v2->_activityZones = MEMORY[0x277CBEBF8];

    v3->_recognizeFaces = 0;
  }

  return v3;
}

- (id)attributeDescriptions
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMIVideoAnalyzerDynamicConfiguration *)self eventTriggers];
  v4 = HMIVideoAnalyzerEventTriggersAsString();
  v5 = [v3 initWithName:@"Event Triggers" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMIVideoAnalyzerDynamicConfiguration *)self recognizeFaces];
  v7 = HMFBooleanToString();
  v8 = [v6 initWithName:@"Recognize Faces" value:v7];
  v16[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = MEMORY[0x277CCABB0];
  activityZones = [(HMIVideoAnalyzerDynamicConfiguration *)self activityZones];
  v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(activityZones, "count")}];
  v13 = [v9 initWithName:@"Activity Zone Count" value:v12];
  v16[2] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      eventTriggers = [(HMIVideoAnalyzerDynamicConfiguration *)self eventTriggers];
      v7 = eventTriggers == [(HMIVideoAnalyzerDynamicConfiguration *)v5 eventTriggers];
      LODWORD(eventTriggers) = [(HMIVideoAnalyzerDynamicConfiguration *)self recognizeFaces];
      v8 = v7 & ~(eventTriggers ^ [(HMIVideoAnalyzerDynamicConfiguration *)v5 recognizeFaces]);
      activityZones = [(HMIVideoAnalyzerDynamicConfiguration *)self activityZones];
      activityZones2 = [(HMIVideoAnalyzerDynamicConfiguration *)v5 activityZones];

      LOBYTE(v5) = HMFEqualObjects();
      v11 = v8 & v5;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (HMIVideoAnalyzerDynamicConfiguration)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(HMIVideoAnalyzerDynamicConfiguration *)self init];
  v6 = MEMORY[0x277CBEB98];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = NSStringFromSelector(sel_activityZones);
  v10 = [coderCopy decodeObjectOfClasses:v8 forKey:v9];
  [(HMIVideoAnalyzerDynamicConfiguration *)v5 setActivityZones:v10];

  v11 = NSStringFromSelector(sel_eventTriggers);
  -[HMIVideoAnalyzerDynamicConfiguration setEventTriggers:](v5, "setEventTriggers:", [coderCopy decodeIntegerForKey:v11]);

  v12 = NSStringFromSelector(sel_recognizeFaces);
  v13 = [coderCopy decodeBoolForKey:v12];

  [(HMIVideoAnalyzerDynamicConfiguration *)v5 setRecognizeFaces:v13];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  activityZones = [(HMIVideoAnalyzerDynamicConfiguration *)self activityZones];
  v6 = NSStringFromSelector(sel_activityZones);
  [coderCopy encodeObject:activityZones forKey:v6];

  eventTriggers = [(HMIVideoAnalyzerDynamicConfiguration *)self eventTriggers];
  v8 = NSStringFromSelector(sel_eventTriggers);
  [coderCopy encodeInteger:eventTriggers forKey:v8];

  recognizeFaces = [(HMIVideoAnalyzerDynamicConfiguration *)self recognizeFaces];
  v10 = NSStringFromSelector(sel_recognizeFaces);
  [coderCopy encodeBool:recognizeFaces forKey:v10];
}

@end