@interface JavaNetStandardSocketOptions_BooleanSocketOption
- (JavaNetStandardSocketOptions_BooleanSocketOption)initWithNSString:(id)a3 withInt:(int)a4;
@end

@implementation JavaNetStandardSocketOptions_BooleanSocketOption

- (JavaNetStandardSocketOptions_BooleanSocketOption)initWithNSString:(id)a3 withInt:(int)a4
{
  v7 = JavaLangBoolean_class_();
  JreStrongAssign(&self->super.name_, a3);
  JreStrongAssign(&self->super.type_, v7);
  self->super.socketOption_ = a4;
  return self;
}

@end