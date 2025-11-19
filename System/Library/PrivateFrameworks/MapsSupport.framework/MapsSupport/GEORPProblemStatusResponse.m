@interface GEORPProblemStatusResponse
+ (GEORPProblemStatusResponse)problemStatusResponseWithNotificationID:(id)a3;
- (BOOL)writeToDisk:(id)a3 error:(id *)a4;
@end

@implementation GEORPProblemStatusResponse

- (BOOL)writeToDisk:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([RAPNotification isValidNotificationID:v6])
  {
    v7 = [RAPNotification filenameForNotificationID:v6];
    v8 = +[RAPNotification notificationCachePath];
    v9 = [v8 stringByAppendingPathComponent:v7];

    if (v9)
    {
      v10 = [(GEORPProblemStatusResponse *)self data];
      v11 = [v10 writeToFile:v9 options:1 error:a4];
    }

    else
    {
      if (!a4)
      {
        v11 = 0;
        goto LABEL_9;
      }

      v10 = +[RAPNotification errorDomain];
      [NSError errorWithDomain:v10 code:-1 userInfo:0];
      *a4 = v11 = 0;
    }

LABEL_9:
    goto LABEL_10;
  }

  if (!a4)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v7 = +[RAPNotification errorDomain];
  [NSError errorWithDomain:v7 code:-2 userInfo:0];
  *a4 = v11 = 0;
LABEL_10:

LABEL_11:
  return v11;
}

+ (GEORPProblemStatusResponse)problemStatusResponseWithNotificationID:(id)a3
{
  v3 = a3;
  if ([RAPNotification isValidNotificationID:v3])
  {
    v4 = [RAPNotification filenameForNotificationID:v3];
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