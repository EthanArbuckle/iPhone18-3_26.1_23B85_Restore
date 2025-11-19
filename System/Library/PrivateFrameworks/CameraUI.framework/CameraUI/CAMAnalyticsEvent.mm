@interface CAMAnalyticsEvent
+ (double)bucketedPowerOf2ForValue:(double)a3 allowZero:(BOOL)a4 minPositiveValue:(double)a5 maxValue:(double)a6;
+ (id)bucketedGigabytesStringForBytes:(int64_t)a3 allowZero:(BOOL)a4 minPositiveValue:(double)a5 maxValue:(double)a6;
- (CAMAnalyticsEvent)init;
- (CAMAnalyticsEvent)initWithEvent:(id)a3;
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
    v3 = [MEMORY[0x1E696AFB0] UUID];
    v4 = [v3 UUIDString];
    uuid = v2->_uuid;
    v2->_uuid = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    eventMap = v2->__eventMap;
    v2->__eventMap = v6;

    v8 = v2;
  }

  return v2;
}

- (CAMAnalyticsEvent)initWithEvent:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CAMAnalyticsEvent;
  v5 = [(CAMAnalyticsEvent *)&v14 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AFB0] UUID];
    v7 = [v6 UUIDString];
    uuid = v5->_uuid;
    v5->_uuid = v7;

    v9 = [v4 _eventMap];
    v10 = [v9 mutableCopy];
    eventMap = v5->__eventMap;
    v5->__eventMap = v10;

    v12 = v5;
  }

  return v5;
}

- (void)publish
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(CAMAnalyticsEvent *)self eventName];
  v4 = [v2 stringWithFormat:@"com.apple.cameraui.%@", v3];

  AnalyticsSendEventLazy();
}

+ (id)bucketedGigabytesStringForBytes:(int64_t)a3 allowZero:(BOOL)a4 minPositiveValue:(double)a5 maxValue:(double)a6
{
  v6 = a4;
  [a1 gigabytesForBytes:a3];
  [a1 bucketedPowerOf2ForValue:v6 allowZero:? minPositiveValue:? maxValue:?];
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%g", v8];
}

+ (double)bucketedPowerOf2ForValue:(double)a3 allowZero:(BOOL)a4 minPositiveValue:(double)a5 maxValue:(double)a6
{
  if (a3 <= 0.0 && a4)
  {
    return 0.0;
  }

  if (a3 < a5)
  {
    a3 = a5;
  }

  if (a3 > a6)
  {
    a3 = a6;
  }

  v8 = ceil(log2(a3));

  return exp2(v8);
}

@end