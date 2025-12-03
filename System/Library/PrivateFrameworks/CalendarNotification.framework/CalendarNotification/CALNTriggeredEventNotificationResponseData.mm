@interface CALNTriggeredEventNotificationResponseData
- (CALNTriggeredEventNotificationResponseData)initWithCoder:(id)coder;
- (CALNTriggeredEventNotificationResponseData)initWithHypothesis:(id)hypothesis lastFireTimeOfAlertOffsetFromTravelTime:(id)time;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CALNTriggeredEventNotificationResponseData

- (CALNTriggeredEventNotificationResponseData)initWithHypothesis:(id)hypothesis lastFireTimeOfAlertOffsetFromTravelTime:(id)time
{
  hypothesisCopy = hypothesis;
  timeCopy = time;
  v14.receiver = self;
  v14.super_class = CALNTriggeredEventNotificationResponseData;
  v9 = [(CALNTriggeredEventNotificationResponseData *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_hypothesis, hypothesis);
    v11 = [timeCopy copy];
    lastFireTimeOfAlertOffsetFromTravelTime = v10->_lastFireTimeOfAlertOffsetFromTravelTime;
    v10->_lastFireTimeOfAlertOffsetFromTravelTime = v11;
  }

  return v10;
}

- (CALNTriggeredEventNotificationResponseData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hypothesis"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastFireTimeOfAlertOffsetFromTravelTime"];

  v7 = [(CALNTriggeredEventNotificationResponseData *)self initWithHypothesis:v5 lastFireTimeOfAlertOffsetFromTravelTime:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  hypothesis = [(CALNTriggeredEventNotificationResponseData *)self hypothesis];
  [coderCopy encodeObject:hypothesis forKey:@"hypothesis"];

  lastFireTimeOfAlertOffsetFromTravelTime = [(CALNTriggeredEventNotificationResponseData *)self lastFireTimeOfAlertOffsetFromTravelTime];
  [coderCopy encodeObject:lastFireTimeOfAlertOffsetFromTravelTime forKey:@"lastFireTimeOfAlertOffsetFromTravelTime"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  lastFireTimeOfAlertOffsetFromTravelTime = [(CALNTriggeredEventNotificationResponseData *)self lastFireTimeOfAlertOffsetFromTravelTime];
  hypothesis = [(CALNTriggeredEventNotificationResponseData *)self hypothesis];
  v7 = [v3 stringWithFormat:@"<%@: %p>(lastFireTimeOfAlertOffsetFromTravelTime = %@, hypothesis = %@)", v4, self, lastFireTimeOfAlertOffsetFromTravelTime, hypothesis];

  return v7;
}

@end