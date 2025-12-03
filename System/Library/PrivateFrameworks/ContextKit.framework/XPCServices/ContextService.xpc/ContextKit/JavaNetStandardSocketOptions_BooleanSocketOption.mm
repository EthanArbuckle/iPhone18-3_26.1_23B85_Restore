@interface JavaNetStandardSocketOptions_BooleanSocketOption
- (JavaNetStandardSocketOptions_BooleanSocketOption)initWithNSString:(id)string withInt:(int)int;
@end

@implementation JavaNetStandardSocketOptions_BooleanSocketOption

- (JavaNetStandardSocketOptions_BooleanSocketOption)initWithNSString:(id)string withInt:(int)int
{
  v7 = JavaLangBoolean_class_();
  JreStrongAssign(&self->super.name_, string);
  JreStrongAssign(&self->super.type_, v7);
  self->super.socketOption_ = int;
  return self;
}

@end