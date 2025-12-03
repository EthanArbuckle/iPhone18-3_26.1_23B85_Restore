@interface DNDToggleDoNotDisturbIntentResponse
- (DNDToggleDoNotDisturbIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation DNDToggleDoNotDisturbIntentResponse

- (DNDToggleDoNotDisturbIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = DNDToggleDoNotDisturbIntentResponse;
  v7 = [(DNDToggleDoNotDisturbIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(DNDToggleDoNotDisturbIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end