@interface _GEOExperimentServiceRequestConfig
+ (id)standardConfig;
@end

@implementation _GEOExperimentServiceRequestConfig

+ (id)standardConfig
{
  if (qword_100095F68 != -1)
  {
    dispatch_once(&qword_100095F68, &stru_100081798);
  }

  v3 = qword_100095F70;

  return v3;
}

@end