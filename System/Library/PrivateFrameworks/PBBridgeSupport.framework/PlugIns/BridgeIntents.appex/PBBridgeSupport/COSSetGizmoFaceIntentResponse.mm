@interface COSSetGizmoFaceIntentResponse
- (COSSetGizmoFaceIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation COSSetGizmoFaceIntentResponse

- (COSSetGizmoFaceIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = COSSetGizmoFaceIntentResponse;
  v7 = [(COSSetGizmoFaceIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(COSSetGizmoFaceIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end