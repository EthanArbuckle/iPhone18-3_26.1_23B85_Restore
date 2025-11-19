@interface HFAnalyticsCameraTimelinePinchToZoomEvent
- (HFAnalyticsCameraTimelinePinchToZoomEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsCameraTimelinePinchToZoomEvent

- (HFAnalyticsCameraTimelinePinchToZoomEvent)initWithData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:@"didPinchToZoom"];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    NSLog(&cfstr_ErrorHfanalyti_9.isa);
  }

  objc_opt_class();
  v8 = [v4 objectForKeyedSubscript:@"pinchToZoomCount"];
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    NSLog(&cfstr_ErrorHfanalyti_10.isa);
  }

  v12.receiver = self;
  v12.super_class = HFAnalyticsCameraTimelinePinchToZoomEvent;
  v10 = [(HFAnalyticsEvent *)&v12 initWithEventType:57];
  if (v10)
  {
    v10->_didPinchToZoom = [v7 BOOLValue];
    v10->_pinchToZoomCount = [v7 unsignedIntValue];
  }

  return v10;
}

- (id)payload
{
  v8.receiver = self;
  v8.super_class = HFAnalyticsCameraTimelinePinchToZoomEvent;
  v3 = [(HFAnalyticsEvent *)&v8 payload];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HFAnalyticsCameraTimelinePinchToZoomEvent didPinchToZoom](self, "didPinchToZoom")}];
  [v4 setObject:v5 forKeyedSubscript:@"didPinchToZoom"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFAnalyticsCameraTimelinePinchToZoomEvent pinchToZoomCount](self, "pinchToZoomCount")}];
  [v4 setObject:v6 forKeyedSubscript:@"pinchToZoomCount"];

  return v4;
}

@end