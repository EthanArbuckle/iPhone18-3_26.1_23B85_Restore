@interface _GEOImageServiceRequestConfig
+ (id)standardConfig;
@end

@implementation _GEOImageServiceRequestConfig

+ (id)standardConfig
{
  if (qword_100096118 != -1)
  {
    dispatch_once(&qword_100096118, &stru_1000832F8);
  }

  v3 = qword_100096120;

  return v3;
}

@end