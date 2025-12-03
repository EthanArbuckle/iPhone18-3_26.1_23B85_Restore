@interface ViewfinderErrorReporter
+ (void)_logError:(id)error;
@end

@implementation ViewfinderErrorReporter

+ (void)_logError:(id)error
{
  errorCopy = error;
  if (qword_10003F320 != -1)
  {
    sub_100025080();
  }

  v4 = qword_10003F318;
  if (os_log_type_enabled(qword_10003F318, OS_LOG_TYPE_ERROR))
  {
    sub_100025094(v4, errorCopy);
  }
}

@end