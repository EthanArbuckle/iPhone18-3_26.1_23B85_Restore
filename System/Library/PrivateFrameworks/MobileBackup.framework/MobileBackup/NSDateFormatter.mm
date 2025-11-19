@interface NSDateFormatter
+ (id)ISO8601Formatter;
@end

@implementation NSDateFormatter

+ (id)ISO8601Formatter
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001282A8;
  block[3] = &unk_1003BBFE8;
  block[4] = a1;
  if (qword_1004217A0 != -1)
  {
    dispatch_once(&qword_1004217A0, block);
  }

  v2 = qword_100421798;

  return v2;
}

@end