@interface JavaNetStandardSocketOptions_NetworkInterfaceSocketOption
- (JavaNetStandardSocketOptions_NetworkInterfaceSocketOption)initWithNSString:(id)a3 withInt:(int)a4;
- (id)validateAndConvertValueAfterGetWithJavaIoFileDescriptor:(id)a3 withId:(id)a4;
- (id)validateAndConvertValueBeforeSetWithJavaIoFileDescriptor:(id)a3 withId:(id)a4;
@end

@implementation JavaNetStandardSocketOptions_NetworkInterfaceSocketOption

- (JavaNetStandardSocketOptions_NetworkInterfaceSocketOption)initWithNSString:(id)a3 withInt:(int)a4
{
  v7 = JavaNetNetworkInterface_class_();
  JreStrongAssign(&self->super.name_, a3);
  JreStrongAssign(&self->super.type_, v7);
  self->super.socketOption_ = a4;
  return self;
}

- (id)validateAndConvertValueBeforeSetWithJavaIoFileDescriptor:(id)a3 withId:(id)a4
{
  if (!a4)
  {
    name = self->super.name_;
    v10 = JreStrcat("$$$", a2, a3, 0, v4, v5, v6, v7, @"value for ");
    goto LABEL_8;
  }

  v8 = [a4 getIndex];
  if (v8 == -1)
  {
    v10 = @"The NetworkInterface must have a valid index";
LABEL_8:
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  return JavaLangInteger_valueOfWithInt_(v8);
}

- (id)validateAndConvertValueAfterGetWithJavaIoFileDescriptor:(id)a3 withId:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    name = self->super.name_;
    v14 = JreStrcat("$$", v6, v7, v8, v9, v10, v11, v12, @"Unexpected type of value returned for ");
    v15 = new_JavaLangAssertionError_initWithId_(v14);
    objc_exception_throw(v15);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return JavaNetNetworkInterface_getByIndexWithInt_([a4 intValue]);
}

@end