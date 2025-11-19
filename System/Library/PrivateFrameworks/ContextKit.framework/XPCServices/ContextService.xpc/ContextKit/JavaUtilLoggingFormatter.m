@interface JavaUtilLoggingFormatter
- (id)formatMessageWithJavaUtilLoggingLogRecord:(id)a3;
@end

@implementation JavaUtilLoggingFormatter

- (id)formatMessageWithJavaUtilLoggingLogRecord:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = [a3 getMessage];
  v5 = [a3 getResourceBundle];
  if (v5)
  {
    v4 = [v5 getStringWithNSString:v4];
  }

  if (v4)
  {
    v6 = [a3 getParameters];
    if (([v4 indexOfString:@"{0"] & 0x80000000) == 0 && v6 && v6[2] >= 1)
    {
      return JavaTextMessageFormat_formatWithNSString_withNSObjectArray_(v4, v6);
    }
  }

  return v4;
}

@end