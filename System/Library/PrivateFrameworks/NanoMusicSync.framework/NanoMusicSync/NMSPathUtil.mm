@interface NMSPathUtil
+ (id)_nanoMusicSyncDirectory;
+ (id)mediaSyncInfoDirectory;
+ (id)musicBackupDirectory;
+ (id)podcastsDirectory;
+ (id)recentMusicDirectory;
@end

@implementation NMSPathUtil

+ (id)mediaSyncInfoDirectory
{
  v2 = [a1 _nanoMusicSyncDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"MediaSyncInfo"];

  return v3;
}

+ (id)podcastsDirectory
{
  v2 = [a1 _nanoMusicSyncDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"Podcasts"];

  return v3;
}

+ (id)recentMusicDirectory
{
  v2 = [a1 _nanoMusicSyncDirectory];
  v3 = [MEMORY[0x277CCACA8] pathWithComponents:&unk_286C8D370];
  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

+ (id)musicBackupDirectory
{
  v2 = [a1 _nanoMusicSyncDirectory];
  v3 = [MEMORY[0x277CCACA8] pathWithComponents:&unk_286C8D388];
  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

+ (id)_nanoMusicSyncDirectory
{
  if (_nanoMusicSyncDirectory_onceToken != -1)
  {
    +[NMSPathUtil _nanoMusicSyncDirectory];
  }

  v3 = _nanoMusicSyncDirectory_path;

  return v3;
}

void __38__NMSPathUtil__nanoMusicSyncDirectory__block_invoke()
{
  v5[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCACA8];
  v5[0] = CPSharedResourcesDirectory();
  v5[1] = @"Library";
  v5[2] = @"NanoMusicSync";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v2 = [v0 pathWithComponents:v1];
  v3 = _nanoMusicSyncDirectory_path;
  _nanoMusicSyncDirectory_path = v2;

  v4 = *MEMORY[0x277D85DE8];
}

@end