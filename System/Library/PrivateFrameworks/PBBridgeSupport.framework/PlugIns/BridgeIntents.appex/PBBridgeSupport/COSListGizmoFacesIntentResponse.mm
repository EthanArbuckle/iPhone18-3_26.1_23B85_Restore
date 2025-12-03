@interface COSListGizmoFacesIntentResponse
- (COSListGizmoFacesIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation COSListGizmoFacesIntentResponse

- (COSListGizmoFacesIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = COSListGizmoFacesIntentResponse;
  v7 = [(COSListGizmoFacesIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(COSListGizmoFacesIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end