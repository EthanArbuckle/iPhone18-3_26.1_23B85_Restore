@interface DNDToggleDoNotDisturbIntentResponse
- (DNDToggleDoNotDisturbIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4;
@end

@implementation DNDToggleDoNotDisturbIntentResponse

- (DNDToggleDoNotDisturbIntentResponse)initWithCode:(int64_t)a3 userActivity:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = DNDToggleDoNotDisturbIntentResponse;
  v7 = [(DNDToggleDoNotDisturbIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = a3;
    [(DNDToggleDoNotDisturbIntentResponse *)v7 setUserActivity:v6];
  }

  return v8;
}

@end