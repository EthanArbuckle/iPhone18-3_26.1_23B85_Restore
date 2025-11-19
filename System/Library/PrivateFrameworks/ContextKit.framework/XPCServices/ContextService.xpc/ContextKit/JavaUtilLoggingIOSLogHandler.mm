@interface JavaUtilLoggingIOSLogHandler
- (void)publishWithJavaUtilLoggingLogRecord:(id)a3;
@end

@implementation JavaUtilLoggingIOSLogHandler

- (void)publishWithJavaUtilLoggingLogRecord:(id)a3
{
  if (![(JavaUtilLoggingHandler *)self isLoggableWithJavaUtilLoggingLogRecord:?])
  {
    return;
  }

  if (!a3)
  {
    goto LABEL_21;
  }

  v5 = [a3 getLevel];
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = [v5 intValue];
  if (v6 > 899)
  {
    if (v6 == 1000)
    {
      v7 = OS_LOG_TYPE_ERROR;
      goto LABEL_14;
    }

    if (v6 == 900)
    {
      v7 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_14;
    }
  }

  else if (v6 == 700 || v6 == 800)
  {
    v7 = OS_LOG_TYPE_INFO;
    goto LABEL_14;
  }

  v7 = OS_LOG_TYPE_DEBUG;
  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    return;
  }

LABEL_14:
  v8 = [(JavaUtilLoggingHandler *)self getFormatter];
  if (!v8)
  {
    goto LABEL_21;
  }

  v9 = new_JavaLangStringBuilder_initWithNSString_([v8 formatWithJavaUtilLoggingLogRecord:a3]);
  if ([a3 getThrown])
  {
    [(JavaLangStringBuilder *)v9 appendWithChar:10];
    v10 = new_JavaIoStringWriter_init();
    v11 = [a3 getThrown];
    if (v11)
    {
      [v11 printStackTraceWithJavaIoPrintWriter:new_JavaIoPrintWriter_initWithJavaIoWriter_(v10)];
      [(JavaLangStringBuilder *)v9 appendWithNSString:[(JavaIoStringWriter *)v10 description]];
      goto LABEL_18;
    }

LABEL_21:
    JreThrowNullPointerException();
  }

LABEL_18:
  v12 = [(JavaLangStringBuilder *)v9 description];

  sub_100177C84(v12, v7);
}

@end