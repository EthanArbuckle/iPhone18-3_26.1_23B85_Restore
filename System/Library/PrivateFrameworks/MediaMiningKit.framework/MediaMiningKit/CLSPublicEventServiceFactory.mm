@interface CLSPublicEventServiceFactory
+ (id)publicEventServiceClient;
+ (id)publicEventServiceClientForSourceService:(int64_t)service;
@end

@implementation CLSPublicEventServiceFactory

+ (id)publicEventServiceClientForSourceService:(int64_t)service
{
  if (service)
  {
    if (service != 1)
    {
      goto LABEL_10;
    }

    v3 = +[CLSLogging sharedLogging];
    loggingConnection = [v3 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_INFO, "PublicEventQueryFactory - creating PublicEventShazamServiceClient", buf, 2u);
    }

    v5 = off_2788A61E8;
  }

  else
  {
    v6 = +[CLSLogging sharedLogging];
    loggingConnection = [v6 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_22F907000, loggingConnection, OS_LOG_TYPE_INFO, "PublicEventQueryFactory - creating PublicEventGeoServiceClient", v8, 2u);
    }

    v5 = off_2788A61B8;
  }

  self = objc_alloc_init(*v5);
LABEL_10:

  return self;
}

+ (id)publicEventServiceClient
{
  v3 = _os_feature_enabled_impl();

  return [self publicEventServiceClientForSourceService:v3];
}

@end