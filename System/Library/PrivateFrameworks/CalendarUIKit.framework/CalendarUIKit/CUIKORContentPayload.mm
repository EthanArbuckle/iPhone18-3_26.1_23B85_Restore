@interface CUIKORContentPayload
- (CUIKORContentPayload)initWithRequestId:(int64_t)id requestOptions:(unint64_t)options backgroundImage:(id)image textImage:(id)textImage textDrawInfo:(id)info travelTimeImage:(id)timeImage travelTimeString:(id)string;
@end

@implementation CUIKORContentPayload

- (CUIKORContentPayload)initWithRequestId:(int64_t)id requestOptions:(unint64_t)options backgroundImage:(id)image textImage:(id)textImage textDrawInfo:(id)info travelTimeImage:(id)timeImage travelTimeString:(id)string
{
  imageCopy = image;
  textImageCopy = textImage;
  infoCopy = info;
  timeImageCopy = timeImage;
  stringCopy = string;
  v24.receiver = self;
  v24.super_class = CUIKORContentPayload;
  v18 = [(CUIKORContentPayload *)&v24 init];
  v19 = v18;
  if (v18)
  {
    v18->_requestId = id;
    v18->_requestOptions = options;
    objc_storeStrong(&v18->_backgroundImage, image);
    objc_storeStrong(&v19->_textImage, textImage);
    objc_storeStrong(&v19->_textDrawInfo, info);
    objc_storeStrong(&v19->_travelTimeImage, timeImage);
    objc_storeStrong(&v19->_travelTimeString, string);
  }

  return v19;
}

@end