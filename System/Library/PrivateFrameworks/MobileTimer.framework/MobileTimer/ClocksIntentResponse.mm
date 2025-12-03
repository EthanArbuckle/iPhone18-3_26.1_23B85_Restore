@interface ClocksIntentResponse
- (ClocksIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation ClocksIntentResponse

- (ClocksIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = ClocksIntentResponse;
  v7 = [(ClocksIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(ClocksIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end