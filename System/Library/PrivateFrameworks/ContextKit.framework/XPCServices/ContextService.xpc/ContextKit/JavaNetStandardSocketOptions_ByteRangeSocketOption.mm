@interface JavaNetStandardSocketOptions_ByteRangeSocketOption
- (JavaNetStandardSocketOptions_ByteRangeSocketOption)initWithNSString:(id)string withInt:(int)int;
- (id)validateAndConvertValueAfterGetWithJavaIoFileDescriptor:(id)descriptor withId:(id)id;
- (id)validateAndConvertValueBeforeSetWithJavaIoFileDescriptor:(id)descriptor withId:(id)id;
@end

@implementation JavaNetStandardSocketOptions_ByteRangeSocketOption

- (JavaNetStandardSocketOptions_ByteRangeSocketOption)initWithNSString:(id)string withInt:(int)int
{
  v7 = JavaLangInteger_class_();
  JreStrongAssign(&self->super.name_, string);
  JreStrongAssign(&self->super.type_, v7);
  self->super.socketOption_ = int;
  return self;
}

- (id)validateAndConvertValueBeforeSetWithJavaIoFileDescriptor:(id)descriptor withId:(id)id
{
  if (!id || ([id intValue] & 0x80000000) != 0 || objc_msgSend(id, "intValue") >= 256)
  {
    v11 = JreStrcat("$$@", a2, descriptor, id, v4, v5, v6, v7, self->super.name_);
    v12 = new_JavaLangIllegalArgumentException_initWithNSString_(v11);
    objc_exception_throw(v12);
  }

  return id;
}

- (id)validateAndConvertValueAfterGetWithJavaIoFileDescriptor:(id)descriptor withId:(id)id
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if (!id)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  intValue = [id intValue];
  if (intValue >= 0x100)
  {
LABEL_9:
    name = self->super.name_;
    v15 = JreStrcat("$$$@", v6, v7, v8, v9, v10, v11, v12, @"Unexpected value for option ");
    v16 = new_JavaLangAssertionError_initWithId_(v15);
    objc_exception_throw(v16);
  }

  return JavaLangInteger_valueOfWithInt_(intValue);
}

@end