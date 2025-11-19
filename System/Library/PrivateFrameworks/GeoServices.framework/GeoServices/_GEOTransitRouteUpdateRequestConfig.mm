@interface _GEOTransitRouteUpdateRequestConfig
+ (id)standardConfig;
@end

@implementation _GEOTransitRouteUpdateRequestConfig

+ (id)standardConfig
{
  if (qword_100096198 != -1)
  {
    dispatch_once(&qword_100096198, &stru_100083C98);
  }

  v3 = qword_1000961A0;

  return v3;
}

@end