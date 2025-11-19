@interface JavaNetStandardSocketOptions_PositiveIntegerSocketOption
- (JavaNetStandardSocketOptions_PositiveIntegerSocketOption)initWithNSString:(id)a3 withInt:(int)a4;
- (id)validateAndConvertValueAfterGetWithJavaIoFileDescriptor:(id)a3 withId:(id)a4;
- (id)validateAndConvertValueBeforeSetWithJavaIoFileDescriptor:(id)a3 withId:(id)a4;
@end

@implementation JavaNetStandardSocketOptions_PositiveIntegerSocketOption

- (JavaNetStandardSocketOptions_PositiveIntegerSocketOption)initWithNSString:(id)a3 withInt:(int)a4
{
  v7 = JavaLangInteger_class_();
  JreStrongAssign(&self->super.name_, a3);
  JreStrongAssign(&self->super.type_, v7);
  self->super.socketOption_ = a4;
  return self;
}

- (id)validateAndConvertValueBeforeSetWithJavaIoFileDescriptor:(id)a3 withId:(id)a4
{
  if (!a4)
  {
    JreThrowNullPointerException();
  }

  if ([a4 intValue] <= 0)
  {
    v14 = JreStrcat("$$", v6, v7, v8, v9, v10, v11, v12, self->super.name_);
    v15 = new_JavaLangIllegalArgumentException_initWithNSString_(v14);
    objc_exception_throw(v15);
  }

  return a4;
}

- (id)validateAndConvertValueAfterGetWithJavaIoFileDescriptor:(id)a3 withId:(id)a4
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if (!a4)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v13 = [a4 intValue];
  if (v13 <= 0)
  {
LABEL_9:
    name = self->super.name_;
    v15 = JreStrcat("$$$@", v6, v7, v8, v9, v10, v11, v12, @"Unexpected value for option ");
    v16 = new_JavaLangAssertionError_initWithId_(v15);
    objc_exception_throw(v16);
  }

  return JavaLangInteger_valueOfWithInt_(v13);
}

@end