@interface JavaNetStandardSocketOptions_$1
- (JavaNetStandardSocketOptions_$1)initWithNSString:(id)a3 withIOSClass:(id)a4 withInt:(int)a5;
- (id)validateAndConvertValueAfterGetWithJavaIoFileDescriptor:(id)a3 withId:(id)a4;
- (id)validateAndConvertValueBeforeSetWithJavaIoFileDescriptor:(id)a3 withId:(id)a4;
@end

@implementation JavaNetStandardSocketOptions_$1

- (id)validateAndConvertValueBeforeSetWithJavaIoFileDescriptor:(id)a3 withId:(id)a4
{
  v7.receiver = self;
  v7.super_class = JavaNetStandardSocketOptions__1;
  v5 = [(JavaNetStandardSocketOptions_SocketOptionImpl *)&v7 validateAndConvertValueBeforeSetWithJavaIoFileDescriptor:a3 withId:?];
  if (a4 && ([a4 intValue] & 0x80000000) != 0)
  {
    if ((atomic_load_explicit(JavaLangBoolean__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_100223CE4();
    }

    return JavaLangBoolean_FALSE__;
  }

  return v5;
}

- (id)validateAndConvertValueAfterGetWithJavaIoFileDescriptor:(id)a3 withId:(id)a4
{
  v4 = a4;
  if (a4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = JavaLangInteger_valueOfWithInt_(-1);
    }
  }

  v8.receiver = self;
  v8.super_class = JavaNetStandardSocketOptions__1;
  return [(JavaNetStandardSocketOptions_SocketOptionImpl *)&v8 validateAndConvertValueAfterGetWithJavaIoFileDescriptor:a3 withId:v4];
}

- (JavaNetStandardSocketOptions_$1)initWithNSString:(id)a3 withIOSClass:(id)a4 withInt:(int)a5
{
  JreStrongAssign(&self->super.name_, a3);
  JreStrongAssign(&self->super.type_, a4);
  self->super.socketOption_ = a5;
  return self;
}

@end