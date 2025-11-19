@interface DDRTaskRemoveWifiBTTrustData
- (void)run;
@end

@implementation DDRTaskRemoveWifiBTTrustData

- (void)run
{
  v17 = +[NSFileManager defaultManager];
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Library/Preferences/com.apple.network.eapclient.tls.TrustExceptions.plist"];
  v4 = [v17 fileExistsAtPath:v3];

  if (v4)
  {
    v5 = NSHomeDirectory();
    v6 = [v5 stringByAppendingPathComponent:@"Library/Preferences/com.apple.network.eapclient.tls.TrustExceptions.plist"];
    [v17 removeItemAtPath:v6 error:0];
  }

  v7 = NSHomeDirectory();
  v8 = [v7 stringByAppendingPathComponent:@"Library/Preferences/com.apple.network.eapclient.eapfast.plist"];
  v9 = [v17 fileExistsAtPath:v8];

  if (v9)
  {
    v10 = NSHomeDirectory();
    v11 = [v10 stringByAppendingPathComponent:@"Library/Preferences/com.apple.network.eapclient.eapfast.plist"];
    [v17 removeItemAtPath:v11 error:0];
  }

  v12 = NSHomeDirectory();
  v13 = [v12 stringByAppendingPathComponent:@"Library/Preferences/com.apple.ids.deviceproperties.plist"];
  v14 = [v17 fileExistsAtPath:v13];

  if (v14)
  {
    v15 = NSHomeDirectory();
    v16 = [v15 stringByAppendingPathComponent:@"Library/Preferences/com.apple.ids.deviceproperties.plist"];
    [v17 removeItemAtPath:v16 error:0];
  }
}

@end