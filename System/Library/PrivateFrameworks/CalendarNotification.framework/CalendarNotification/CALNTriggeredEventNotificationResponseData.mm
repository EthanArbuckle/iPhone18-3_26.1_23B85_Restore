@interface CALNTriggeredEventNotificationResponseData
- (CALNTriggeredEventNotificationResponseData)initWithCoder:(id)a3;
- (CALNTriggeredEventNotificationResponseData)initWithHypothesis:(id)a3 lastFireTimeOfAlertOffsetFromTravelTime:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CALNTriggeredEventNotificationResponseData

- (CALNTriggeredEventNotificationResponseData)initWithHypothesis:(id)a3 lastFireTimeOfAlertOffsetFromTravelTime:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CALNTriggeredEventNotificationResponseData;
  v9 = [(CALNTriggeredEventNotificationResponseData *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_hypothesis, a3);
    v11 = [v8 copy];
    lastFireTimeOfAlertOffsetFromTravelTime = v10->_lastFireTimeOfAlertOffsetFromTravelTime;
    v10->_lastFireTimeOfAlertOffsetFromTravelTime = v11;
  }

  return v10;
}

- (CALNTriggeredEventNotificationResponseData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hypothesis"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastFireTimeOfAlertOffsetFromTravelTime"];

  v7 = [(CALNTriggeredEventNotificationResponseData *)self initWithHypothesis:v5 lastFireTimeOfAlertOffsetFromTravelTime:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CALNTriggeredEventNotificationResponseData *)self hypothesis];
  [v4 encodeObject:v5 forKey:@"hypothesis"];

  v6 = [(CALNTriggeredEventNotificationResponseData *)self lastFireTimeOfAlertOffsetFromTravelTime];
  [v4 encodeObject:v6 forKey:@"lastFireTimeOfAlertOffsetFromTravelTime"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CALNTriggeredEventNotificationResponseData *)self lastFireTimeOfAlertOffsetFromTravelTime];
  v6 = [(CALNTriggeredEventNotificationResponseData *)self hypothesis];
  v7 = [v3 stringWithFormat:@"<%@: %p>(lastFireTimeOfAlertOffsetFromTravelTime = %@, hypothesis = %@)", v4, self, v5, v6];

  return v7;
}

@end