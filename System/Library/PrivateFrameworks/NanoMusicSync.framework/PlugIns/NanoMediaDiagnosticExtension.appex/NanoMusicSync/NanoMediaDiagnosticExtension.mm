@interface NanoMediaDiagnosticExtension
- (id)attachmentsForParameters:(id)parameters;
- (id)nanoMusicSyncDefaultsItem;
@end

@implementation NanoMediaDiagnosticExtension

- (id)attachmentsForParameters:(id)parameters
{
  v4 = +[NSMutableArray array];
  nanoMusicSyncDefaultsItem = [(NanoMediaDiagnosticExtension *)self nanoMusicSyncDefaultsItem];
  [v4 addObject:nanoMusicSyncDefaultsItem];

  return v4;
}

- (id)nanoMusicSyncDefaultsItem
{
  v2 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.NanoMusicSync"];
  dictionaryRepresentation = [v2 dictionaryRepresentation];
  NSLog(@"NanoMusicSync defaults: %@", dictionaryRepresentation);
  v4 = NSTemporaryDirectory();
  v5 = [NSURL fileURLWithPath:v4 isDirectory:1];

  v6 = [v5 URLByAppendingPathComponent:@"NanoMusicSyncDefaults"];
  v7 = [v6 URLByAppendingPathExtension:@"plist"];

  v13 = 0;
  v8 = [dictionaryRepresentation writeToURL:v7 error:&v13];
  v9 = v13;
  v10 = v9;
  if (v8)
  {
    NSLog(@"Successfully wrote to sync defaults file with URL: %@", v7);
  }

  else
  {
    NSLog(@"Failed to write to sync defaults file with error: %@", v9);
  }

  v11 = [DEAttachmentItem attachmentWithPathURL:v7];
  [v11 setDisplayName:@"NanoMusicSyncDefaults"];
  [v11 setDeleteOnAttach:&__kCFBooleanTrue];

  return v11;
}

@end