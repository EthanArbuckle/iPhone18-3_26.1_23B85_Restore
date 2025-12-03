@interface CAMAnalyticsEvent
+ (double)bucketedPowerOf2ForValue:(double)value allowZero:(BOOL)zero minPositiveValue:(double)positiveValue maxValue:(double)maxValue;
+ (id)bucketedGigabytesStringForBytes:(int64_t)bytes allowZero:(BOOL)zero minPositiveValue:(double)value maxValue:(double)maxValue;
- (CAMAnalyticsEvent)init;
- (CAMAnalyticsEvent)initWithEvent:(id)event;
- (void)publish;
@end

@implementation CAMAnalyticsEvent

- (CAMAnalyticsEvent)init
{
  v10.receiver = self;
  v10.super_class = CAMAnalyticsEvent;
  v2 = [(CAMAnalyticsEvent *)&v10 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    uuid = v2->_uuid;
    v2->_uuid = uUIDString;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    eventMap = v2->__eventMap;
    v2->__eventMap = v6;

    v8 = v2;
  }

  return v2;
}

- (CAMAnalyticsEvent)initWithEvent:(id)event
{
  eventCopy = event;
  v14.receiver = self;
  v14.super_class = CAMAnalyticsEvent;
  v5 = [(CAMAnalyticsEvent *)&v14 init];
  if (v5)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    uuid = v5->_uuid;
    v5->_uuid = uUIDString;

    _eventMap = [eventCopy _eventMap];
    v10 = [_eventMap mutableCopy];
    eventMap = v5->__eventMap;
    v5->__eventMap = v10;

    v12 = v5;
  }

  return v5;
}

- (void)publish
{
  v2 = MEMORY[0x1E696AEC0];
  eventName = [(CAMAnalyticsEvent *)self eventName];
  v4 = [v2 stringWithFormat:@"com.apple.cameraui.%@", eventName];

  AnalyticsSendEventLazy();
}

+ (id)bucketedGigabytesStringForBytes:(int64_t)bytes allowZero:(BOOL)zero minPositiveValue:(double)value maxValue:(double)maxValue
{
  zeroCopy = zero;
  [self gigabytesForBytes:bytes];
  [self bucketedPowerOf2ForValue:zeroCopy allowZero:? minPositiveValue:? maxValue:?];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%g", v8];
}

+ (double)bucketedPowerOf2ForValue:(double)value allowZero:(BOOL)zero minPositiveValue:(double)positiveValue maxValue:(double)maxValue
{
  if (value <= 0.0 && zero)
  {
    return 0.0;
  }

  if (value < positiveValue)
  {
    value = positiveValue;
  }

  if (value > maxValue)
  {
    value = maxValue;
  }

  v8 = ceil(log2(value));

  return exp2(v8);
}

@end