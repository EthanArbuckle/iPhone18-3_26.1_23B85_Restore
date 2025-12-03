@interface ViewPossibleDevicesIntentResponse
- (ViewPossibleDevicesIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation ViewPossibleDevicesIntentResponse

- (ViewPossibleDevicesIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = ViewPossibleDevicesIntentResponse;
  v7 = [(ViewPossibleDevicesIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(ViewPossibleDevicesIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end