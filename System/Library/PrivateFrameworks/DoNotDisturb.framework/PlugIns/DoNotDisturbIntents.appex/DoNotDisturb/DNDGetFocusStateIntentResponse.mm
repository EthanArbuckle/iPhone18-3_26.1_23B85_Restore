@interface DNDGetFocusStateIntentResponse
- (DNDGetFocusStateIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation DNDGetFocusStateIntentResponse

- (DNDGetFocusStateIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = DNDGetFocusStateIntentResponse;
  v7 = [(DNDGetFocusStateIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(DNDGetFocusStateIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end