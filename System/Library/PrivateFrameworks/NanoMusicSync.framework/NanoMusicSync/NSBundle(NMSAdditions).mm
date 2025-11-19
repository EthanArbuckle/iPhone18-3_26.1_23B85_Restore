@interface NSBundle(NMSAdditions)
+ (id)nanoMusicSyncBundle;
@end

@implementation NSBundle(NMSAdditions)

+ (id)nanoMusicSyncBundle
{
  if (nanoMusicSyncBundle_onceToken != -1)
  {
    +[NSBundle(NMSAdditions) nanoMusicSyncBundle];
  }

  v1 = nanoMusicSyncBundle___nanoMusicSyncBundle;

  return v1;
}

@end