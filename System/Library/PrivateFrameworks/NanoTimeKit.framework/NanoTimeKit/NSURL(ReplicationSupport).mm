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
    pairingID = [v4 pairingID];
    _galleryLiteSupportDirectory = [self _galleryLiteSupportDirectory];
    v7 = _galleryLiteSupportDirectory;
    if (pairingID)
    {
      uUIDString = [pairingID UUIDString];
      v9 = [v7 URLByAppendingPathComponent:uUIDString isDirectory:1];
    }

    else
    {
      v9 = [_galleryLiteSupportDirectory URLByAppendingPathComponent:@"Bad_State" isDirectory:1];
    }
  }

  else
  {
    pairingID = [self _galleryLiteSupportDirectory];
    v9 = [pairingID URLByAppendingPathComponent:@"Unpaired" isDirectory:1];
  }

  return v9;
}

@end