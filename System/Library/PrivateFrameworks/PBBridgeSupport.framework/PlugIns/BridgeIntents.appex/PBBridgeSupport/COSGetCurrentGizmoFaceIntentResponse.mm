@interface COSGetCurrentGizmoFaceIntentResponse
- (COSGetCurrentGizmoFaceIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation COSGetCurrentGizmoFaceIntentResponse

- (COSGetCurrentGizmoFaceIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = COSGetCurrentGizmoFaceIntentResponse;
  v7 = [(COSGetCurrentGizmoFaceIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(COSGetCurrentGizmoFaceIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end