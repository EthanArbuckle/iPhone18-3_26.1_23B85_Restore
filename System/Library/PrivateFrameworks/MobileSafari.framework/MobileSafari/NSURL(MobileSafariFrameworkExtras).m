@interface NSURL(MobileSafariFrameworkExtras)
+ (BOOL)_sf_canCreateURLsFromDropSession:()MobileSafariFrameworkExtras;
- (uint64_t)sf_isFacetimeURL;
- (uint64_t)sf_isOfflineReadingListURL;
- (uint64_t)sf_isTestWebArchiveURL;
@end

@implementation NSURL(MobileSafariFrameworkExtras)

- (uint64_t)sf_isOfflineReadingListURL
{
  v9 = *MEMORY[0x1E69E9840];
  if (![a1 isFileURL])
  {
    return 0;
  }

  v2 = [a1 path];
  v3 = [v2 length];

  if (!v3 || ![a1 getFileSystemRepresentation:__s maxLength:1024])
  {
    return 0;
  }

  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:__s length:strlen(__s) encoding:4 freeWhenDone:0];
  v5 = [MEMORY[0x1E69E20F8] readingListArchivesDirectoryPath];
  v6 = [v4 safari_hasCaseInsensitivePrefix:v5];

  return v6;
}

- (uint64_t)sf_isTestWebArchiveURL
{
  v9 = *MEMORY[0x1E69E9840];
  if (![a1 isFileURL])
  {
    return 0;
  }

  v2 = [a1 path];
  v3 = [v2 length];

  if (!v3 || ![a1 getFileSystemRepresentation:__s maxLength:1024])
  {
    return 0;
  }

  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:__s length:strlen(__s) encoding:4 freeWhenDone:0];
  v5 = _SFSafariTestContentDirectoryPath();
  v6 = [v4 safari_hasCaseInsensitivePrefix:v5];

  return v6;
}

- (uint64_t)sf_isFacetimeURL
{
  if ([a1 isFaceTimeURL] & 1) != 0 || (objc_msgSend(a1, "isFaceTimePromptURL") & 1) != 0 || (objc_msgSend(a1, "isFaceTimeAudioURL"))
  {
    return 1;
  }

  return [a1 isFaceTimeAudioPromptURL];
}

+ (BOOL)_sf_canCreateURLsFromDropSession:()MobileSafariFrameworkExtras
{
  v3 = a3;
  v4 = allowedClasses();
  v5 = [_SFDropSession dropSession:v3 containsItemsMatching:localObjectLoader allowedTypeIdentifiers:0 allowedClasses:v4];

  return v5;
}

@end