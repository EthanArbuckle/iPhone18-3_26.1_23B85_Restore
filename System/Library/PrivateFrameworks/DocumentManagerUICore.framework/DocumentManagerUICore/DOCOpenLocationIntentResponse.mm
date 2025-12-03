@interface DOCOpenLocationIntentResponse
- (DOCOpenLocationIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation DOCOpenLocationIntentResponse

- (DOCOpenLocationIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = DOCOpenLocationIntentResponse;
  v7 = [(DOCOpenLocationIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(DOCOpenLocationIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end