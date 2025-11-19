@interface JavaNetStandardSocketOptions_SocketOptionImpl
- (JavaNetStandardSocketOptions_SocketOptionImpl)initWithNSString:(id)a3 withIOSClass:(id)a4 withInt:(int)a5;
- (id)getValueWithJavaIoFileDescriptor:(id)a3;
- (id)validateAndConvertValueBeforeSetWithJavaIoFileDescriptor:(id)a3 withId:(id)a4;
- (void)dealloc;
- (void)setValueWithJavaIoFileDescriptor:(id)a3 withId:(id)a4;
@end

@implementation JavaNetStandardSocketOptions_SocketOptionImpl

- (JavaNetStandardSocketOptions_SocketOptionImpl)initWithNSString:(id)a3 withIOSClass:(id)a4 withInt:(int)a5
{
  JreStrongAssign(&self->name_, a3);
  JreStrongAssign(&self->type_, a4);
  self->socketOption_ = a5;
  return self;
}

- (void)setValueWithJavaIoFileDescriptor:(id)a3 withId:(id)a4
{
  if (a4)
  {
    type = self->type_;
    if (!type)
    {
      JreThrowNullPointerException();
    }

    if (!-[IOSClass isAssignableFrom:](type, "isAssignableFrom:", [a4 getClass]))
    {
      name = self->name_;
      v22 = JreStrcat("$@$$", v8, v9, v10, v11, v12, v13, v14, @"Invalid type ");
      v23 = new_JavaLangAssertionError_initWithId_(v22);
      objc_exception_throw(v23);
    }
  }

  v15 = [(JavaNetStandardSocketOptions_SocketOptionImpl *)self validateAndConvertValueBeforeSetWithJavaIoFileDescriptor:a3 withId:a4];
  socketOption = self->socketOption_;

  LibcoreIoIoBridge_setSocketOptionWithJavaIoFileDescriptor_withInt_withId_(a3, socketOption, v15, v16, v17, v18, v19, v20);
}

- (id)validateAndConvertValueBeforeSetWithJavaIoFileDescriptor:(id)a3 withId:(id)a4
{
  if (!a4)
  {
    name = self->name_;
    v9 = JreStrcat("$$$", a2, a3, a4, v4, v5, v6, v7, @"value for ");
    v10 = new_JavaLangIllegalArgumentException_initWithNSString_(v9);
    objc_exception_throw(v10);
  }

  return a4;
}

- (id)getValueWithJavaIoFileDescriptor:(id)a3
{
  v9 = [(JavaNetStandardSocketOptions_SocketOptionImpl *)self validateAndConvertValueAfterGetWithJavaIoFileDescriptor:a3 withId:LibcoreIoIoBridge_getSocketOptionWithJavaIoFileDescriptor_withInt_(a3, self->socketOption_, a3, v3, v4, v5, v6, v7)];
  v10 = v9;
  if (v9)
  {
    type = self->type_;
    if (!type)
    {
      JreThrowNullPointerException();
    }

    if (!-[IOSClass isAssignableFrom:](type, "isAssignableFrom:", [v9 getClass]))
    {
      name = self->name_;
      v20 = JreStrcat("$$", v12, v13, v14, v15, v16, v17, v18, @"Unexpected type of value returned for ");
      v21 = new_JavaLangAssertionError_initWithId_(v20);
      objc_exception_throw(v21);
    }
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetStandardSocketOptions_SocketOptionImpl;
  [(JavaNetStandardSocketOptions_SocketOptionImpl *)&v3 dealloc];
}

@end