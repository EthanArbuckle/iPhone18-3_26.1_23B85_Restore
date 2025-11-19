@interface NSString(Notification)
- (id)mtStringByAppendingNotificationDate:()Notification;
- (id)mtStringByRemovingNotificationDate;
- (id)mtStringByRemovingNotificationPrefixes;
@end

@implementation NSString(Notification)

- (id)mtStringByRemovingNotificationPrefixes
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = +[MTUserNotificationCenter notificationPrefixes];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      v7 = v1;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v1 = [v7 stringByReplacingOccurrencesOfString:*(*(&v11 + 1) + 8 * v6) withString:&stru_1F29360E0];

        ++v6;
        v7 = v1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v8 = [v1 mtStringByRemovingNotificationDate];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)mtStringByRemovingNotificationDate
{
  v1 = [a1 componentsSeparatedByString:@"_"];
  v2 = [v1 firstObject];

  return v2;
}

- (id)mtStringByAppendingNotificationDate:()Notification
{
  v4 = mtStringByAppendingNotificationDate__onceToken;
  v5 = a3;
  if (v4 != -1)
  {
    [NSString(Notification) mtStringByAppendingNotificationDate:];
  }

  v6 = [mtStringByAppendingNotificationDate____dateFormatter stringFromDate:v5];

  v7 = [a1 stringByAppendingFormat:@"%@%@", @"_", v6];

  return v7;
}

@end