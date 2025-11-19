@interface MFSecureWindow
- (_TtC16MagnifierSupportP33_5ED5CD080D73374E7AF8ACA82011EE8D14MFSecureWindow)initWithFrame:(CGRect)a3;
@end

@implementation MFSecureWindow

- (_TtC16MagnifierSupportP33_5ED5CD080D73374E7AF8ACA82011EE8D14MFSecureWindow)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MFSecureWindow();
  return [(MFSecureWindow *)&v8 initWithFrame:x, y, width, height];
}

@end