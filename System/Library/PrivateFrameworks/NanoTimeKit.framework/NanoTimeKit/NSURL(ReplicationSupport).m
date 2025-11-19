@interface NSURL(ReplicationSupport)
+ (id)_galleryLiteSupportDirectory;
+ (id)galleryLiteSupportDirectoryForDevice:()ReplicationSupport;
@end

@implementation NSURL(ReplicationSupport)

+ (id)_galleryLiteSupportDirectory
{
  if (_galleryLiteSupportDirectory_onceToken != -1)
  {
    +[NSURL(ReplicationSupport) _galleryLiteSupportDirectory];
  }

  v1 = _galleryLiteSupportDirectory_url;

  return v1;
}

+ (id)galleryLiteSupportDirectoryForDevice:()ReplicationSupport
{
  v4 = a3;
  if ([v4 isPaired])
  {
    v5 = [v4 pairingID];
    v6 = [a1 _galleryLiteSupportDirectory];
    v7 = v6;
    if (v5)
    {
      v8 = [v5 UUIDString];
      v9 = [v7 URLByAppendingPathComponent:v8 isDirectory:1];
    }

    else
    {
      v9 = [v6 URLByAppendingPathComponent:@"Bad_State" isDirectory:1];
    }
  }

  else
  {
    v5 = [a1 _galleryLiteSupportDirectory];
    v9 = [v5 URLByAppendingPathComponent:@"Unpaired" isDirectory:1];
  }

  return v9;
}

@end