@interface CNUICreateContactIntentResponse
- (CNUICreateContactIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation CNUICreateContactIntentResponse

- (CNUICreateContactIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = CNUICreateContactIntentResponse;
  v7 = [(CNUICreateContactIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(CNUICreateContactIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end