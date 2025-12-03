@interface JavaUtilLoggingFormatter
- (id)formatMessageWithJavaUtilLoggingLogRecord:(id)record;
@end

@implementation JavaUtilLoggingFormatter

- (id)formatMessageWithJavaUtilLoggingLogRecord:(id)record
{
  if (!record)
  {
    JreThrowNullPointerException();
  }

  getMessage = [record getMessage];
  getResourceBundle = [record getResourceBundle];
  if (getResourceBundle)
  {
    getMessage = [getResourceBundle getStringWithNSString:getMessage];
  }

  if (getMessage)
  {
    getParameters = [record getParameters];
    if (([getMessage indexOfString:@"{0"] & 0x80000000) == 0 && getParameters && getParameters[2] >= 1)
    {
      return JavaTextMessageFormat_formatWithNSString_withNSObjectArray_(getMessage, getParameters);
    }
  }

  return getMessage;
}

@end