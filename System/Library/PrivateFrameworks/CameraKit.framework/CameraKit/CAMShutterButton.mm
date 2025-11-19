@interface CAMShutterButton
+ (id)shutterButtonWithSpec:(CAMShutterButtonSpec)a3;
- (int64_t)mode;
@end

@implementation CAMShutterButton

+ (id)shutterButtonWithSpec:(CAMShutterButtonSpec)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___CAMShutterButton;
  v3 = objc_msgSendSuper2(&v5, sel_shutterButtonWithDesiredSpec_, a3.var0, a3.var1, a3.var2, a3.var3);

  return v3;
}

- (int64_t)mode
{
  v3.receiver = self;
  v3.super_class = CAMShutterButton;
  return [(CMKShutterButton *)&v3 buttonMode];
}

@end