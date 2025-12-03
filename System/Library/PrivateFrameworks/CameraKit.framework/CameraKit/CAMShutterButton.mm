@interface CAMShutterButton
+ (id)shutterButtonWithSpec:(CAMShutterButtonSpec)spec;
- (int64_t)mode;
@end

@implementation CAMShutterButton

+ (id)shutterButtonWithSpec:(CAMShutterButtonSpec)spec
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___CAMShutterButton;
  v3 = objc_msgSendSuper2(&v5, sel_shutterButtonWithDesiredSpec_, spec.var0, spec.var1, spec.var2, spec.var3);

  return v3;
}

- (int64_t)mode
{
  v3.receiver = self;
  v3.super_class = CAMShutterButton;
  return [(CMKShutterButton *)&v3 buttonMode];
}

@end