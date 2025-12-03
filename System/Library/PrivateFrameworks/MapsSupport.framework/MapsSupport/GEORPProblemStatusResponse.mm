@interface GEORPProblemStatusResponse
+ (GEORPProblemStatusResponse)problemStatusResponseWithNotificationID:(id)d;
- (BOOL)writeToDisk:(id)disk error:(id *)error;
@end

@implementation GEORPProblemStatusResponse

- (BOOL)writeToDisk:(id)disk error:(id *)error
{
  diskCopy = disk;
  if ([RAPNotification isValidNotificationID:diskCopy])
  {
    v7 = [RAPNotification filenameForNotificationID:diskCopy];
    v8 = +[RAPNotification notificationCachePath];
    v9 = [v8 stringByAppendingPathComponent:v7];

    if (v9)
    {
      data = [(GEORPProblemStatusResponse *)self data];
      v11 = [data writeToFile:v9 options:1 error:error];
    }

    else
    {
      if (!error)
      {
        v11 = 0;
        goto LABEL_9;
      }

      data = +[RAPNotification errorDomain];
      [NSError errorWithDomain:data code:-1 userInfo:0];
      *error = v11 = 0;
    }

LABEL_9:
    goto LABEL_10;
  }

  if (!error)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v7 = +[RAPNotification errorDomain];
  [NSError errorWithDomain:v7 code:-2 userInfo:0];
  *error = v11 = 0;
LABEL_10:

LABEL_11:
  return v11;
}

+ (GEORPProblemStatusResponse)problemStatusResponseWithNotificationID:(id)d
{
  dCopy = d;
  if ([RAPNotification isValidNotificationID:dCopy])
  {
    v4 = [RAPNotification filenameForNotificationID:dCopy];
    v5 = +[RAPNotification notificationCachePath];
    v6 = [v5 stringByAppendingPathComponent:v4];

    if (v6)
    {
      v7 = [[NSData alloc] initWithContentsOfFile:v6];
      if (v7)
      {
        v8 = [[GEORPProblemStatusResponse alloc] initWithData:v7];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end