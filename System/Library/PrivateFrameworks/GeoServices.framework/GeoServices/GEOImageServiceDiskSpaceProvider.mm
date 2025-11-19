@interface GEOImageServiceDiskSpaceProvider
- (BOOL)_shouldPurgeForUrgency:(int)a3;
- (int)minimumUregency;
@end

@implementation GEOImageServiceDiskSpaceProvider

- (BOOL)_shouldPurgeForUrgency:(int)a3
{
  if ([(GEOImageServiceDiskSpaceProvider *)self minimumUregency]> a3)
  {
    goto LABEL_2;
  }

  v4 = +[NSFileManager defaultManager];
  v5 = [GEOFilePaths pathFor:28];
  v6 = [v4 fileExistsAtPath:v5];

  if (v6)
  {
    LOBYTE(v3) = 1;
    return v3;
  }

  if (qword_100096058 != -1)
  {
    dispatch_once(&qword_100096058, &stru_1000822E8);
  }

  v7 = qword_100096050;
  v3 = os_log_type_enabled(qword_100096050, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "ImageService DB does not exist. Nothing to purge.", v9, 2u);
LABEL_2:
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (int)minimumUregency
{
  v2 = GeoServicesConfig_ImageServiceSupported[1];
  if (GEOConfigGetBOOL())
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

@end