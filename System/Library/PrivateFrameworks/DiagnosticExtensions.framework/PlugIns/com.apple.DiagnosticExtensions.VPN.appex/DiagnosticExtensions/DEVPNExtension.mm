@interface DEVPNExtension
- (id)attachmentsForParameters:(id)parameters;
@end

@implementation DEVPNExtension

- (id)attachmentsForParameters:(id)parameters
{
  v3 = +[NSFileManager defaultManager];
  v4 = [NSURL fileURLWithPath:@"/Library/Logs/CrashReporter"];
  v24 = v3;
  v5 = [v3 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:&__NSArray0__struct options:4 error:0];

  v6 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        absoluteString = [v12 absoluteString];
        v14 = [absoluteString rangeOfString:@"com.apple.networking.networkextension.log"];

        if (v14 != 0x7FFFFFFFFFFFFFFFLL)
        {
          pathExtension = [v12 pathExtension];
          [v6 addObject:pathExtension];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  [v6 addObject:@"log"];
  [DELogMover moveSystemLogsWithExtensions:v6];
  v16 = [NSRegularExpression regularExpressionWithPattern:@"com.apple.networking.networkextension.log.*" options:1 error:0];
  v17 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter"];
  v18 = [(DEVPNExtension *)self filesInDir:v17 matchingPattern:v16 excludingPattern:0];
  v19 = [v18 mutableCopy];

  v20 = [NSURL fileURLWithPath:@"/var/log/ppp.log" isDirectory:0];
  v25 = 0;
  if (([v20 checkResourceIsReachableAndReturnError:&v25] & 1) == 0)
  {
    v21 = [DEAttachmentItem attachmentWithPathURL:v20];
    [v19 addObject:v21];
  }

  return v19;
}

@end