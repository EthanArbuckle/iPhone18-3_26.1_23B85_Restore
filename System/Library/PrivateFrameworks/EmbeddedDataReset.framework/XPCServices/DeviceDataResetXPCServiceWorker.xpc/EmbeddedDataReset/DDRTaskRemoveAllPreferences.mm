@interface DDRTaskRemoveAllPreferences
- (void)run;
@end

@implementation DDRTaskRemoveAllPreferences

- (void)run
{
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Library"];
  v4 = [v3 stringByAppendingPathComponent:@"Preferences"];

  v5 = v4;
  v6 = +[NSFileManager defaultManager];
  v18 = v5;
  v7 = [v6 contentsOfDirectoryAtPath:v5 error:0];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 pathExtension];
        v15 = [v14 isEqualToString:@"plist"];

        if (v15 && ([&off_100015930 containsObject:v13] & 1) == 0)
        {
          v16 = [v13 stringByDeletingPathExtension];
          v17 = +[NSUserDefaults standardUserDefaults];
          [v17 removePersistentDomainForName:v16];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  removeSubFiles(v18, &off_100015930);
}

@end