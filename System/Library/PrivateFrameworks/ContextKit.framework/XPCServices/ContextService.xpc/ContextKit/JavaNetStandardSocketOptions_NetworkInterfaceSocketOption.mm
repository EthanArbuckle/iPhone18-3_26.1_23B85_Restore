@interface JavaNetStandardSocketOptions_NetworkInterfaceSocketOption
- (JavaNetStandardSocketOptions_NetworkInterfaceSocketOption)initWithNSString:(id)string withInt:(int)int;
- (id)validateAndConvertValueAfterGetWithJavaIoFileDescriptor:(id)descriptor withId:(id)id;
- (id)validateAndConvertValueBeforeSetWithJavaIoFileDescriptor:(id)descriptor withId:(id)id;
@end

@implementation JavaNetStandardSocketOptions_NetworkInterfaceSocketOption

- (JavaNetStandardSocketOptions_NetworkInterfaceSocketOption)initWithNSString:(id)string withInt:(int)int
{
  v7 = JavaNetNetworkInterface_class_();
  JreStrongAssign(&self->super.name_, string);
  JreStrongAssign(&self->super.type_, v7);
  self->super.socketOption_ = int;
  return self;
}

- (id)validateAndConvertValueBeforeSetWithJavaIoFileDescriptor:(id)descriptor withId:(id)id
{
  if (!id)
  {
    name = self->super.name_;
    v10 = JreStrcat("$$$", a2, descriptor, 0, v4, v5, v6, v7, @"value for ");
    goto LABEL_8;
  }

  getIndex = [id getIndex];
  if (getIndex == -1)
  {
    v10 = @"The NetworkInterface must have a valid index";
LABEL_8:
    v11 = new_JavaLangIllegalArgumentException_initWithNSString_(v10);
    objc_exception_throw(v11);
  }

  return JavaLangInteger_valueOfWithInt_(getIndex);
}

- (id)validateAndConvertValueAfterGetWithJavaIoFileDescriptor:(id)descriptor withId:(id)id
{
  if (!id)
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

  return JavaNetNetworkInterface_getByIndexWithInt_([id intValue]);
}

@end