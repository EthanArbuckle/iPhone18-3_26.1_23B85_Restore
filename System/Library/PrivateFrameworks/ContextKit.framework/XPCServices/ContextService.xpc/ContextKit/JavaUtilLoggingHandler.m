@interface JavaUtilLoggingHandler
+ (void)initialize;
- (BOOL)isLoggableWithJavaUtilLoggingLogRecord:(id)a3;
- (id)getErrorManager;
- (void)dealloc;
- (void)initPropertiesWithNSString:(id)a3 withNSString:(id)a4 withNSString:(id)a5 withNSString:(id)a6;
- (void)internalSetEncodingWithNSString:(id)a3;
- (void)internalSetFormatterWithJavaUtilLoggingFormatter:(id)a3;
- (void)printInvalidPropMessageWithNSString:(id)a3 withNSString:(id)a4 withJavaLangException:(id)a5;
- (void)setEncodingWithNSString:(id)a3;
- (void)setErrorManagerWithJavaUtilLoggingErrorManager:(id)a3;
- (void)setFilterWithJavaUtilLoggingFilter:(id)a3;
- (void)setFormatterWithJavaUtilLoggingFormatter:(id)a3;
- (void)setLevelWithJavaUtilLoggingLevel:(id)a3;
@end

@implementation JavaUtilLoggingHandler

- (void)printInvalidPropMessageWithNSString:(id)a3 withNSString:(id)a4 withJavaLangException:(id)a5
{
  prefix = self->prefix_;
  v10 = JreStrcat("$$C$C$", a2, a3, a4, a5, v5, v6, v7, @"Invalid property value for ");
  errorMan = self->errorMan_;
  if (!errorMan)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilLoggingErrorManager *)errorMan errorWithNSString:v10 withJavaLangException:a5 withInt:0];
}

- (void)initPropertiesWithNSString:(id)a3 withNSString:(id)a4 withNSString:(id)a5 withNSString:(id)a6
{
  LogManager = JavaUtilLoggingLogManager_getLogManager();
  if (!LogManager)
  {
    JreThrowNullPointerException();
  }

  v18 = LogManager;
  v19 = [LogManager getPropertyWithNSString:{JreStrcat("$$", v11, v12, v13, v14, v15, v16, v17, self->prefix_)}];
  if (v19)
  {
    v20 = sub_10027FF6C(v19);
    v21 = JavaUtilLoggingFilter_class_();
    if (v20 && ([v21 isInstance:v20] & 1) == 0)
    {
      JreThrowClassCastException();
    }

    JreStrongAssign(&self->filter_, v20);
  }

  else
  {
    v29 = sub_10027FF1C(a4);
    v30 = JavaUtilLoggingFilter_class_();
    if (v29 && ([v30 isInstance:v29] & 1) == 0)
    {
      goto LABEL_21;
    }

    JreStrongAssign(&self->filter_, v29);
  }

  v31 = [v18 getPropertyWithNSString:{JreStrcat("$$", v22, v23, v24, v25, v26, v27, v28, self->prefix_)}];
  if (v31)
  {
    v32 = JavaUtilLoggingLevel_parseWithNSString_(v31);
  }

  else
  {
    v32 = JavaUtilLoggingLevel_parseWithNSString_(a3);
  }

  JreStrongAssign(&self->level_, v32);
  v40 = [v18 getPropertyWithNSString:{JreStrcat("$$", v33, v34, v35, v36, v37, v38, v39, self->prefix_)}];
  if (!v40)
  {
    v49 = sub_10027FF1C(a5);
    objc_opt_class();
    if (!v49 || (objc_opt_isKindOfClass() & 1) != 0)
    {
      JreStrongAssign(&self->formatter_, v49);
      goto LABEL_19;
    }

LABEL_21:
    JreThrowClassCastException();
  }

  v41 = sub_10027FF6C(v40);
  objc_opt_class();
  if (v41 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  JreStrongAssign(&self->formatter_, v41);
LABEL_19:
  -[JavaUtilLoggingHandler internalSetEncodingWithNSString:](self, "internalSetEncodingWithNSString:", [v18 getPropertyWithNSString:{JreStrcat("$$", v42, v43, v44, v45, v46, v47, v48, self->prefix_)}]);
}

- (id)getErrorManager
{
  LogManager = JavaUtilLoggingLogManager_getLogManager();
  if (!LogManager)
  {
    JreThrowNullPointerException();
  }

  [LogManager checkAccess];
  return self->errorMan_;
}

- (BOOL)isLoggableWithJavaUtilLoggingLogRecord:(id)a3
{
  if (!a3)
  {
    v11 = new_JavaLangNullPointerException_initWithNSString_(@"record == null");
    objc_exception_throw(v11);
  }

  level = self->level_;
  if (!level)
  {
    goto LABEL_15;
  }

  v6 = [(JavaUtilLoggingLevel *)level intValue];
  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  if (!JavaUtilLoggingLevel_OFF_)
  {
    goto LABEL_15;
  }

  if (v6 == [JavaUtilLoggingLevel_OFF_ intValue])
  {
    return 0;
  }

  v7 = [a3 getLevel];
  if (!v7)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  v8 = [v7 intValue];
  if (v8 < [(JavaUtilLoggingLevel *)self->level_ intValue])
  {
    return 0;
  }

  filter = self->filter_;
  if (!filter)
  {
    return 1;
  }

  return [(JavaUtilLoggingFilter *)filter isLoggableWithJavaUtilLoggingLogRecord:a3];
}

- (void)internalSetEncodingWithNSString:(id)a3
{
  if (a3)
  {
    if (!JavaNioCharsetCharset_isSupportedWithNSString_(a3))
    {
      v7 = new_JavaIoUnsupportedEncodingException_initWithNSString_(a3);
      objc_exception_throw(v7);
    }

    p_encoding = &self->encoding_;
    v6 = a3;
  }

  else
  {
    p_encoding = &self->encoding_;
    v6 = 0;
  }

  JreStrongAssign(p_encoding, v6);
}

- (void)setEncodingWithNSString:(id)a3
{
  LogManager = JavaUtilLoggingLogManager_getLogManager();
  if (!LogManager)
  {
    JreThrowNullPointerException();
  }

  [LogManager checkAccess];

  [(JavaUtilLoggingHandler *)self internalSetEncodingWithNSString:a3];
}

- (void)setErrorManagerWithJavaUtilLoggingErrorManager:(id)a3
{
  LogManager = JavaUtilLoggingLogManager_getLogManager();
  if (!LogManager)
  {
    JreThrowNullPointerException();
  }

  [LogManager checkAccess];
  if (!a3)
  {
    v6 = new_JavaLangNullPointerException_initWithNSString_(@"newErrorManager == null");
    objc_exception_throw(v6);
  }

  JreStrongAssign(&self->errorMan_, a3);
}

- (void)setFilterWithJavaUtilLoggingFilter:(id)a3
{
  LogManager = JavaUtilLoggingLogManager_getLogManager();
  if (!LogManager)
  {
    JreThrowNullPointerException();
  }

  [LogManager checkAccess];

  JreStrongAssign(&self->filter_, a3);
}

- (void)internalSetFormatterWithJavaUtilLoggingFormatter:(id)a3
{
  if (!a3)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"newFormatter == null");
    objc_exception_throw(v5);
  }

  p_formatter = &self->formatter_;

  JreStrongAssign(p_formatter, a3);
}

- (void)setFormatterWithJavaUtilLoggingFormatter:(id)a3
{
  LogManager = JavaUtilLoggingLogManager_getLogManager();
  if (!LogManager)
  {
    JreThrowNullPointerException();
  }

  [LogManager checkAccess];

  [(JavaUtilLoggingHandler *)self internalSetFormatterWithJavaUtilLoggingFormatter:a3];
}

- (void)setLevelWithJavaUtilLoggingLevel:(id)a3
{
  if (!a3)
  {
    v6 = new_JavaLangNullPointerException_initWithNSString_(@"newLevel == null");
    objc_exception_throw(v6);
  }

  LogManager = JavaUtilLoggingLogManager_getLogManager();
  if (!LogManager)
  {
    JreThrowNullPointerException();
  }

  [LogManager checkAccess];

  JreStrongAssign(&self->level_, a3);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilLoggingHandler;
  [(JavaUtilLoggingHandler *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10019B6E8();
    }

    JreStrongAssign(&qword_100557018, JavaUtilLoggingLevel_ALL_);
    atomic_store(1u, &JavaUtilLoggingHandler__initialized);
  }
}

@end