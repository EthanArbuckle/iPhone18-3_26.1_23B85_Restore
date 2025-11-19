@interface _GEOSimpleETARequestConfig
- (id)offlineTaskQueue;
@end

@implementation _GEOSimpleETARequestConfig

- (id)offlineTaskQueue
{
  v2 = GeoOfflineConfig_SimpleETAMaxConcurrentOfflineTasks[1];
  UInteger = GEOConfigGetUInteger();
  if (UInteger)
  {
    if (qword_1000961C8 != -1)
    {
      dispatch_once(&qword_1000961C8, &stru_100083D48);
    }

    UInteger = qword_1000961B8;
  }

  return UInteger;
}

@end