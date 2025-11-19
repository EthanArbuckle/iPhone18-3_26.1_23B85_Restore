@interface CUIKORContentPayload
- (CUIKORContentPayload)initWithRequestId:(int64_t)a3 requestOptions:(unint64_t)a4 backgroundImage:(id)a5 textImage:(id)a6 textDrawInfo:(id)a7 travelTimeImage:(id)a8 travelTimeString:(id)a9;
@end

@implementation CUIKORContentPayload

- (CUIKORContentPayload)initWithRequestId:(int64_t)a3 requestOptions:(unint64_t)a4 backgroundImage:(id)a5 textImage:(id)a6 textDrawInfo:(id)a7 travelTimeImage:(id)a8 travelTimeString:(id)a9
{
  v23 = a5;
  v22 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v24.receiver = self;
  v24.super_class = CUIKORContentPayload;
  v18 = [(CUIKORContentPayload *)&v24 init];
  v19 = v18;
  if (v18)
  {
    v18->_requestId = a3;
    v18->_requestOptions = a4;
    objc_storeStrong(&v18->_backgroundImage, a5);
    objc_storeStrong(&v19->_textImage, a6);
    objc_storeStrong(&v19->_textDrawInfo, a7);
    objc_storeStrong(&v19->_travelTimeImage, a8);
    objc_storeStrong(&v19->_travelTimeString, a9);
  }

  return v19;
}

@end