@interface JavaTextMessageFormat_Field
+ (void)initialize;
@end

@implementation JavaTextMessageFormat_Field

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [JavaTextMessageFormat_Field alloc];
    JavaTextFormat_Field_initWithNSString_(v2, @"message argument field");
    JreStrongAssignAndConsume(&JavaTextMessageFormat_Field_ARGUMENT_, v2);
    atomic_store(1u, JavaTextMessageFormat_Field__initialized);
  }
}

@end