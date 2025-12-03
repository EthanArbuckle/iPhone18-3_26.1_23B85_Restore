@interface JavaNetStandardSocketOptions_SocketOptionImpl
- (JavaNetStandardSocketOptions_SocketOptionImpl)initWithNSString:(id)string withIOSClass:(id)class withInt:(int)int;
- (id)getValueWithJavaIoFileDescriptor:(id)descriptor;
- (id)validateAndConvertValueBeforeSetWithJavaIoFileDescriptor:(id)descriptor withId:(id)id;
- (void)dealloc;
- (void)setValueWithJavaIoFileDescriptor:(id)descriptor withId:(id)id;
@end

@implementation JavaNetStandardSocketOptions_SocketOptionImpl

- (JavaNetStandardSocketOptions_SocketOptionImpl)initWithNSString:(id)string withIOSClass:(id)class withInt:(int)int
{
  JreStrongAssign(&self->name_, string);
  JreStrongAssign(&self->type_, class);
  self->socketOption_ = int;
  return self;
}

- (void)setValueWithJavaIoFileDescriptor:(id)descriptor withId:(id)id
{
  if (id)
  {
    type = self->type_;
    if (!type)
    {
      JreThrowNullPointerException();
    }

    if (!-[IOSClass isAssignableFrom:](type, "isAssignableFrom:", [id getClass]))
    {
      name = self->name_;
      v22 = JreStrcat("$@$$", v8, v9, v10, v11, v12, v13, v14, @"Invalid type ");
      v23 = new_JavaLangAssertionError_initWithId_(v22);
      objc_exception_throw(v23);
    }
  }

  v15 = [(JavaNetStandardSocketOptions_SocketOptionImpl *)self validateAndConvertValueBeforeSetWithJavaIoFileDescriptor:descriptor withId:id];
  socketOption = self->socketOption_;

  LibcoreIoIoBridge_setSocketOptionWithJavaIoFileDescriptor_withInt_withId_(descriptor, socketOption, v15, v16, v17, v18, v19, v20);
}

- (id)validateAndConvertValueBeforeSetWithJavaIoFileDescriptor:(id)descriptor withId:(id)id
{
  if (!id)
  {
    name = self->name_;
    v9 = JreStrcat("$$$", a2, descriptor, id, v4, v5, v6, v7, @"value for ");
    v10 = new_JavaLangIllegalArgumentException_initWithNSString_(v9);
    objc_exception_throw(v10);
  }

  return id;
}

- (id)getValueWithJavaIoFileDescriptor:(id)descriptor
{
  v9 = [(JavaNetStandardSocketOptions_SocketOptionImpl *)self validateAndConvertValueAfterGetWithJavaIoFileDescriptor:descriptor withId:LibcoreIoIoBridge_getSocketOptionWithJavaIoFileDescriptor_withInt_(descriptor, self->socketOption_, descriptor, v3, v4, v5, v6, v7)];
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