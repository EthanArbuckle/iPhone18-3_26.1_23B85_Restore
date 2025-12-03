@interface JavaUtilLoggingIOSLogHandler
- (void)publishWithJavaUtilLoggingLogRecord:(id)record;
@end

@implementation JavaUtilLoggingIOSLogHandler

- (void)publishWithJavaUtilLoggingLogRecord:(id)record
{
  if (![(JavaUtilLoggingHandler *)self isLoggableWithJavaUtilLoggingLogRecord:?])
  {
    return;
  }

  if (!record)
  {
    goto LABEL_21;
  }

  getLevel = [record getLevel];
  if (!getLevel)
  {
    goto LABEL_21;
  }

  intValue = [getLevel intValue];
  if (intValue > 899)
  {
    if (intValue == 1000)
    {
      v7 = OS_LOG_TYPE_ERROR;
      goto LABEL_14;
    }

    if (intValue == 900)
    {
      v7 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_14;
    }
  }

  else if (intValue == 700 || intValue == 800)
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
  getFormatter = [(JavaUtilLoggingHandler *)self getFormatter];
  if (!getFormatter)
  {
    goto LABEL_21;
  }

  v9 = new_JavaLangStringBuilder_initWithNSString_([getFormatter formatWithJavaUtilLoggingLogRecord:record]);
  if ([record getThrown])
  {
    [(JavaLangStringBuilder *)v9 appendWithChar:10];
    v10 = new_JavaIoStringWriter_init();
    getThrown = [record getThrown];
    if (getThrown)
    {
      [getThrown printStackTraceWithJavaIoPrintWriter:new_JavaIoPrintWriter_initWithJavaIoWriter_(v10)];
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