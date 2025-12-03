@interface MFSecureWindow
- (_TtC16MagnifierSupportP33_5ED5CD080D73374E7AF8ACA82011EE8D14MFSecureWindow)initWithFrame:(CGRect)frame;
@end

@implementation MFSecureWindow

- (_TtC16MagnifierSupportP33_5ED5CD080D73374E7AF8ACA82011EE8D14MFSecureWindow)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MFSecureWindow();
  return [(MFSecureWindow *)&v8 initWithFrame:x, y, width, height];
}

@end