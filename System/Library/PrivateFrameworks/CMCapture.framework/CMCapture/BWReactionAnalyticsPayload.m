@interface BWReactionAnalyticsPayload
- (BWReactionAnalyticsPayload)init;
- (id)eventDictionary;
- (void)dealloc;
- (void)reset;
@end

@implementation BWReactionAnalyticsPayload

- (BWReactionAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWReactionAnalyticsPayload;
  v2 = [(BWReactionAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWReactionAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWReactionAnalyticsPayload;
  [(BWReactionAnalyticsPayload *)&v3 dealloc];
}

- (void)reset
{
  self->_reactionType = 0;
  self->_uiTriggeredReaction = 0;

  self->_clientApplicationID = 0;
  self->_continuityCameraClientDeviceClass = 0;
}

- (id)eventDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_reactionType forKeyedSubscript:@"reactionType"];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", self->_uiTriggeredReaction), @"uiTriggeredReaction"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", +[BWCoreAnalyticsReporter clientApplicationIDType:](BWCoreAnalyticsReporter, "clientApplicationIDType:", self->_clientApplicationID)), @"clientIDType"}];
  [v3 setObject:self->_clientApplicationID forKeyedSubscript:@"clientApplicationID"];
  [v3 setObject:+[BWCoreAnalyticsReporter commonClientApplicationID:](BWCoreAnalyticsReporter forKeyedSubscript:{self->_clientApplicationID), @"commonClientApplicationID"}];
  continuityCameraClientDeviceClass = self->_continuityCameraClientDeviceClass;
  v5 = @"AppleTV";
  if (continuityCameraClientDeviceClass != 4)
  {
    v5 = 0;
  }

  if (continuityCameraClientDeviceClass == 100)
  {
    v6 = @"Mac";
  }

  else
  {
    v6 = v5;
  }

  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:@"continuityCameraClientDeviceClass"];
  }

  return v3;
}

@end