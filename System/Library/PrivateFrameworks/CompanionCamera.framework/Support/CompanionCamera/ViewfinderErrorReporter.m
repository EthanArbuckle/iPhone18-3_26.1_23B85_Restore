@interface ViewfinderErrorReporter
+ (void)_logError:(id)a3;
@end

@implementation ViewfinderErrorReporter

+ (void)_logError:(id)a3
{
  v3 = a3;
  if (qword_10003F320 != -1)
  {
    sub_100025080();
  }

  v4 = qword_10003F318;
  if (os_log_type_enabled(qword_10003F318, OS_LOG_TYPE_ERROR))
  {
    sub_100025094(v4, v3);
  }
}

@end