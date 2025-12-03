@interface OpenURLsIntentResponse
- (OpenURLsIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation OpenURLsIntentResponse

- (OpenURLsIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = OpenURLsIntentResponse;
  v7 = [(OpenURLsIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(OpenURLsIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end