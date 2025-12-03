@interface JavaUtilLoggingHandler
+ (void)initialize;
- (BOOL)isLoggableWithJavaUtilLoggingLogRecord:(id)record;
- (id)getErrorManager;
- (void)dealloc;
- (void)initPropertiesWithNSString:(id)string withNSString:(id)sString withNSString:(id)nSString withNSString:(id)withNSString;
- (void)internalSetEncodingWithNSString:(id)string;
- (void)internalSetFormatterWithJavaUtilLoggingFormatter:(id)formatter;
- (void)printInvalidPropMessageWithNSString:(id)string withNSString:(id)sString withJavaLangException:(id)exception;
- (void)setEncodingWithNSString:(id)string;
- (void)setErrorManagerWithJavaUtilLoggingErrorManager:(id)manager;
- (void)setFilterWithJavaUtilLoggingFilter:(id)filter;
- (void)setFormatterWithJavaUtilLoggingFormatter:(id)formatter;
- (void)setLevelWithJavaUtilLoggingLevel:(id)level;
@end

@implementation JavaUtilLoggingHandler

- (void)printInvalidPropMessageWithNSString:(id)string withNSString:(id)sString withJavaLangException:(id)exception
{
  prefix = self->prefix_;
  v10 = JreStrcat("$$C$C$", a2, string, sString, exception, v5, v6, v7, @"Invalid property value for ");
  errorMan = self->errorMan_;
  if (!errorMan)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilLoggingErrorManager *)errorMan errorWithNSString:v10 withJavaLangException:exception withInt:0];
}

- (void)initPropertiesWithNSString:(id)string withNSString:(id)sString withNSString:(id)nSString withNSString:(id)withNSString
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
    v29 = sub_10027FF1C(sString);
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
    v32 = JavaUtilLoggingLevel_parseWithNSString_(string);
  }

  JreStrongAssign(&self->level_, v32);
  v40 = [v18 getPropertyWithNSString:{JreStrcat("$$", v33, v34, v35, v36, v37, v38, v39, self->prefix_)}];
  if (!v40)
  {
    v49 = sub_10027FF1C(nSString);
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

- (BOOL)isLoggableWithJavaUtilLoggingLogRecord:(id)record
{
  if (!record)
  {
    v11 = new_JavaLangNullPointerException_initWithNSString_(@"record == null");
    objc_exception_throw(v11);
  }

  level = self->level_;
  if (!level)
  {
    goto LABEL_15;
  }

  intValue = [(JavaUtilLoggingLevel *)level intValue];
  if ((atomic_load_explicit(JavaUtilLoggingLevel__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10019B6E8();
  }

  if (!JavaUtilLoggingLevel_OFF_)
  {
    goto LABEL_15;
  }

  if (intValue == [JavaUtilLoggingLevel_OFF_ intValue])
  {
    return 0;
  }

  getLevel = [record getLevel];
  if (!getLevel)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  intValue2 = [getLevel intValue];
  if (intValue2 < [(JavaUtilLoggingLevel *)self->level_ intValue])
  {
    return 0;
  }

  filter = self->filter_;
  if (!filter)
  {
    return 1;
  }

  return [(JavaUtilLoggingFilter *)filter isLoggableWithJavaUtilLoggingLogRecord:record];
}

- (void)internalSetEncodingWithNSString:(id)string
{
  if (string)
  {
    if (!JavaNioCharsetCharset_isSupportedWithNSString_(string))
    {
      v7 = new_JavaIoUnsupportedEncodingException_initWithNSString_(string);
      objc_exception_throw(v7);
    }

    p_encoding = &self->encoding_;
    stringCopy = string;
  }

  else
  {
    p_encoding = &self->encoding_;
    stringCopy = 0;
  }

  JreStrongAssign(p_encoding, stringCopy);
}

- (void)setEncodingWithNSString:(id)string
{
  LogManager = JavaUtilLoggingLogManager_getLogManager();
  if (!LogManager)
  {
    JreThrowNullPointerException();
  }

  [LogManager checkAccess];

  [(JavaUtilLoggingHandler *)self internalSetEncodingWithNSString:string];
}

- (void)setErrorManagerWithJavaUtilLoggingErrorManager:(id)manager
{
  LogManager = JavaUtilLoggingLogManager_getLogManager();
  if (!LogManager)
  {
    JreThrowNullPointerException();
  }

  [LogManager checkAccess];
  if (!manager)
  {
    v6 = new_JavaLangNullPointerException_initWithNSString_(@"newErrorManager == null");
    objc_exception_throw(v6);
  }

  JreStrongAssign(&self->errorMan_, manager);
}

- (void)setFilterWithJavaUtilLoggingFilter:(id)filter
{
  LogManager = JavaUtilLoggingLogManager_getLogManager();
  if (!LogManager)
  {
    JreThrowNullPointerException();
  }

  [LogManager checkAccess];

  JreStrongAssign(&self->filter_, filter);
}

- (void)internalSetFormatterWithJavaUtilLoggingFormatter:(id)formatter
{
  if (!formatter)
  {
    v5 = new_JavaLangNullPointerException_initWithNSString_(@"newFormatter == null");
    objc_exception_throw(v5);
  }

  p_formatter = &self->formatter_;

  JreStrongAssign(p_formatter, formatter);
}

- (void)setFormatterWithJavaUtilLoggingFormatter:(id)formatter
{
  LogManager = JavaUtilLoggingLogManager_getLogManager();
  if (!LogManager)
  {
    JreThrowNullPointerException();
  }

  [LogManager checkAccess];

  [(JavaUtilLoggingHandler *)self internalSetFormatterWithJavaUtilLoggingFormatter:formatter];
}

- (void)setLevelWithJavaUtilLoggingLevel:(id)level
{
  if (!level)
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

  JreStrongAssign(&self->level_, level);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilLoggingHandler;
  [(JavaUtilLoggingHandler *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
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