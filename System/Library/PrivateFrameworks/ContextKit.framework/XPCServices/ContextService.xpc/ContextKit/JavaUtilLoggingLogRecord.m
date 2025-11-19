@interface JavaUtilLoggingLogRecord
+ (void)initialize;
- (id)initSource;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)a3;
- (void)setLevelWithJavaUtilLoggingLevel:(id)a3;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3;
@end

@implementation JavaUtilLoggingLogRecord

- (void)setLevelWithJavaUtilLoggingLevel:(id)a3
{
  if (!a3)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"level == null");
    objc_exception_throw(v5);
  }

  p_level = &self->level_;

  JreStrongAssign(p_level, a3);
}

- (id)initSource
{
  if ((result[13] & 1) == 0)
  {
    v1 = result;
    result = [new_JavaLangThrowable_init() getStackTrace];
    if (!result)
    {
LABEL_12:
      JreThrowNullPointerException();
    }

    v2 = 0;
    v3 = result + 3;
    v4 = &result[*(result + 2) + 3];
    while (v3 < v4)
    {
      v6 = *v3++;
      v5 = v6;
      if (!v6)
      {
        goto LABEL_12;
      }

      v7 = v2;
      v8 = [v5 getClassName];
      if (!v8)
      {
        goto LABEL_12;
      }

      result = [v8 hasPrefix:{objc_msgSend(JavaUtilLoggingLogger_class_(), "getName")}];
      v2 = result | v7;
      if ((result & 1) == 0 && ((v7 ^ 1) & 1) == 0)
      {
        JreStrongAssign(v1 + 3, [v5 getClassName]);
        result = JreStrongAssign(v1 + 4, [v5 getMethodName]);
        break;
      }
    }

    *(v1 + 104) = 1;
  }

  return result;
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 defaultWriteObject];
  [a3 writeByteWithInt:1];
  [a3 writeByteWithInt:4];
  parameters = self->parameters_;
  if (parameters)
  {
    [a3 writeIntWithInt:parameters->super.size_];
    v6 = self->parameters_;
    p_elementType = &v6->elementType_;
    v8 = &(&v6->elementType_)[v6->super.size_];
    while (p_elementType < v8)
    {
      v10 = *p_elementType++;
      v9 = v10;
      if (v10)
      {
        v11 = [v9 description];
      }

      else
      {
        v11 = 0;
      }

      [a3 writeObjectWithId:v11];
    }
  }

  else
  {

    [a3 writeIntWithInt:0xFFFFFFFFLL];
  }
}

- (void)readObjectWithJavaIoObjectInputStream:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 defaultReadObject];
  v5 = [a3 readByte];
  v6 = [a3 readByte];
  if (v5 != 1)
  {
    v13 = v6;
    JavaLangByte_valueOfWithByte_(v5);
    JavaLangByte_valueOfWithByte_(v13);
    v21 = JreStrcat("$@C@", v14, v15, v16, v17, v18, v19, v20, @"Different version ");
    v22 = new_JavaIoIOException_initWithNSString_(v21);
    objc_exception_throw(v22);
  }

  v7 = [a3 readInt];
  if ((v7 & 0x80000000) == 0)
  {
    v8 = [IOSObjectArray newArrayWithLength:v7 type:NSObject_class_()];
    JreStrongAssignAndConsume(&self->parameters_, v8);
    parameters = self->parameters_;
    if (parameters->super.size_ >= 1)
    {
      v10 = 0;
      do
      {
        IOSObjectArray_Set(parameters, v10++, [a3 readObject]);
        parameters = self->parameters_;
      }

      while (v10 < parameters->super.size_);
    }
  }

  resourceBundleName = self->resourceBundleName_;
  if (resourceBundleName)
  {
    ResourceBundleWithNSString = JavaUtilLoggingLogger_loadResourceBundleWithNSString_(resourceBundleName);
    JreStrongAssign(&self->resourceBundle_, ResourceBundleWithNSString);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilLoggingLogRecord;
  [(JavaUtilLoggingLogRecord *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = new_JavaLangThreadLocal_init();
    JreStrongAssignAndConsume(&qword_100554978, v2);
    atomic_store(1u, JavaUtilLoggingLogRecord__initialized);
  }
}

@end