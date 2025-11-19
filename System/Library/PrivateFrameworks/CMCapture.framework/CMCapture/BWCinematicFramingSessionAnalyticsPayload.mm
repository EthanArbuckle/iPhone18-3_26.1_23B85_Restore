@interface BWCinematicFramingSessionAnalyticsPayload
- (BWCinematicFramingSessionAnalyticsPayload)init;
- (id)eventDictionary;
- (void)dealloc;
- (void)reset;
@end

@implementation BWCinematicFramingSessionAnalyticsPayload

- (BWCinematicFramingSessionAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWCinematicFramingSessionAnalyticsPayload;
  v2 = [(BWCinematicFramingSessionAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWCinematicFramingSessionAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWCinematicFramingSessionAnalyticsPayload;
  [(BWCinematicFramingSessionAnalyticsPayload *)&v3 dealloc];
}

- (void)reset
{
  self->_cinematicFramingMaxPeopleDetected = 0;

  self->_cinematicFramingROIHeatMap = 0;
  self->_clientApplicationID = 0;
  self->_cinematicFramingControlMode = -1;
}

- (id)eventDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_cinematicFramingMaxPeopleDetected), @"cinematicFramingMaxPeopleDetected"}];
  [v3 setObject:self->_cinematicFramingROIHeatMap forKeyedSubscript:@"cinematicFramingROIHeatMap"];
  [v3 setObject:self->_clientApplicationID forKeyedSubscript:@"clientApplicationID"];
  [v3 setObject:+[BWCoreAnalyticsReporter commonClientApplicationID:](BWCoreAnalyticsReporter forKeyedSubscript:{self->_clientApplicationID), @"commonClientApplicationID"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", self->_cinematicFramingControlMode), @"cinematicFramingControlMode"}];
  return v3;
}

@end