@interface MSSendMailIntentResponse
- (MSSendMailIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation MSSendMailIntentResponse

- (MSSendMailIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = MSSendMailIntentResponse;
  v7 = [(MSSendMailIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(MSSendMailIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end