@interface NavdAnalytics
- (void)addValueForKey:(const char *)key value:(unint64_t)value;
- (void)recordEarlyDepartureDelta:(double)delta lateDepartureDelta:(double)departureDelta earlyArrivalDelta:(double)arrivalDelta lateArrivalDelta:(double)lateArrivalDelta rerouteCount:(unint64_t)count uiNotification:(unint64_t)notification;
- (void)recordHypothesisCount:(unint64_t)count forClient:(id)client;
@end

@implementation NavdAnalytics

- (void)addValueForKey:(const char *)key value:(unint64_t)value
{
  v4 = [[NSString alloc] initWithUTF8String:key];
  AnalyticsSendEventLazy();
}

- (void)recordEarlyDepartureDelta:(double)delta lateDepartureDelta:(double)departureDelta earlyArrivalDelta:(double)arrivalDelta lateArrivalDelta:(double)lateArrivalDelta rerouteCount:(unint64_t)count uiNotification:(unint64_t)notification
{
  if ((~notification & 3) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = 3;
  }

  if (notification)
  {
    v9 = v8;
  }

  else
  {
    v9 = notification & 2;
  }

  [GEOAPPortal captureTimeToLeaveHypothesisEventWithEarlyDepartureDelta:count lateDepartureDelta:v9 earlyArrivalDelta:delta lateArrivalDelta:departureDelta rerouteCount:arrivalDelta uiNotification:lateArrivalDelta];
}

- (void)recordHypothesisCount:(unint64_t)count forClient:(id)client
{
  clientCopy = client;
  if ([clientCopy isCalendarClientInfo])
  {
    v6 = "com.apple.navd.hypothesisSentToCal";
  }

  else
  {
    if (![clientCopy isNavdClientInfo])
    {
      goto LABEL_6;
    }

    v6 = "com.apple.navd.hypothesisSentToRoutine";
  }

  [(NavdAnalytics *)self addValueForKey:v6 value:count];
LABEL_6:
}

@end