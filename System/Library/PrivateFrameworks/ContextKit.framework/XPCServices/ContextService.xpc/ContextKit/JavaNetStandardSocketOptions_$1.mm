@interface JavaNetStandardSocketOptions_$1
- (JavaNetStandardSocketOptions_$1)initWithNSString:(id)string withIOSClass:(id)class withInt:(int)int;
- (id)validateAndConvertValueAfterGetWithJavaIoFileDescriptor:(id)descriptor withId:(id)id;
- (id)validateAndConvertValueBeforeSetWithJavaIoFileDescriptor:(id)descriptor withId:(id)id;
@end

@implementation JavaNetStandardSocketOptions_$1

- (id)validateAndConvertValueBeforeSetWithJavaIoFileDescriptor:(id)descriptor withId:(id)id
{
  v7.receiver = self;
  v7.super_class = JavaNetStandardSocketOptions__1;
  v5 = [(JavaNetStandardSocketOptions_SocketOptionImpl *)&v7 validateAndConvertValueBeforeSetWithJavaIoFileDescriptor:descriptor withId:?];
  if (id && ([id intValue] & 0x80000000) != 0)
  {
    if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100223CE4();
    }

    return JavaLangBoolean_FALSE__;
  }

  return v5;
}

- (id)validateAndConvertValueAfterGetWithJavaIoFileDescriptor:(id)descriptor withId:(id)id
{
  idCopy = id;
  if (id)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      idCopy = JavaLangInteger_valueOfWithInt_(-1);
    }
  }

  v8.receiver = self;
  v8.super_class = JavaNetStandardSocketOptions__1;
  return [(JavaNetStandardSocketOptions_SocketOptionImpl *)&v8 validateAndConvertValueAfterGetWithJavaIoFileDescriptor:descriptor withId:idCopy];
}

- (JavaNetStandardSocketOptions_$1)initWithNSString:(id)string withIOSClass:(id)class withInt:(int)int
{
  JreStrongAssign(&self->super.name_, string);
  JreStrongAssign(&self->super.type_, class);
  self->super.socketOption_ = int;
  return self;
}

@end