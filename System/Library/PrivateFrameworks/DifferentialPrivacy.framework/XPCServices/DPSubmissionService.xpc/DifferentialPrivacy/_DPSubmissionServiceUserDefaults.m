@interface _DPSubmissionServiceUserDefaults
+ (BOOL)extraLoggingEnabled;
+ (BOOL)strictOHTTPDisabled;
+ (id)baaCertificateBackoffDate;
+ (id)qaKeyConfigURL;
+ (id)qaServerURL;
+ (void)setBAACertificateBackoffDate:(id)a3;
@end

@implementation _DPSubmissionServiceUserDefaults

+ (BOOL)extraLoggingEnabled
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"DPSubmissionServiceExtraLoggingEnabled"];

  return v3;
}

+ (id)baaCertificateBackoffDate
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"DPSubmissionServiceBAACertificateBackoffDate"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    [v5 removeObjectForKey:@"DPSubmissionServiceBAACertificateBackoffDate"];

    v4 = 0;
  }

  return v4;
}

+ (void)setBAACertificateBackoffDate:(id)a3
{
  v3 = a3;
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 setObject:v3 forKey:@"DPSubmissionServiceBAACertificateBackoffDate"];
}

+ (id)qaServerURL
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 stringForKey:@"DPSubmissionServiceQAServerURL"];

  return v3;
}

+ (id)qaKeyConfigURL
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 stringForKey:@"DPSubmissionServiceQAKeyConfigURL"];

  return v3;
}

+ (BOOL)strictOHTTPDisabled
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"DPSubmissionServiceStrictOHTTPDisabled"];

  return v3;
}

@end