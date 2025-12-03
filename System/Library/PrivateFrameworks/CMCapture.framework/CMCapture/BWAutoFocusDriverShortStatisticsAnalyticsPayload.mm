@interface BWAutoFocusDriverShortStatisticsAnalyticsPayload
- (BWAutoFocusDriverShortStatisticsAnalyticsPayload)init;
- (id)eventDictionary;
- (void)dealloc;
- (void)reset;
@end

@implementation BWAutoFocusDriverShortStatisticsAnalyticsPayload

- (BWAutoFocusDriverShortStatisticsAnalyticsPayload)init
{
  v5.receiver = self;
  v5.super_class = BWAutoFocusDriverShortStatisticsAnalyticsPayload;
  v2 = [(BWAutoFocusDriverShortStatisticsAnalyticsPayload *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BWAutoFocusDriverShortStatisticsAnalyticsPayload *)v2 reset];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWAutoFocusDriverShortStatisticsAnalyticsPayload;
  [(BWAutoFocusDriverShortStatisticsAnalyticsPayload *)&v3 dealloc];
}

- (void)reset
{
  self->_portType = 0;

  self->_afDriverShortStatistics = 0;
}

- (id)eventDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  portType = self->_portType;
  if (portType)
  {
    [dictionary setObject:portType forKeyedSubscript:@"portType"];
  }

  afDriverShortStatistics = self->_afDriverShortStatistics;
  if (afDriverShortStatistics)
  {
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](afDriverShortStatistics forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798AA78), @"numberOfDetectedShorts"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_afDriverShortStatistics forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798AA70), @"maxShortLength"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_afDriverShortStatistics forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798AA68), @"maxAcceleration"}];
    [v4 setObject:-[NSDictionary objectForKeyedSubscript:](self->_afDriverShortStatistics forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798AA80), @"shortRecoveryStatus"}];
  }

  return v4;
}

@end