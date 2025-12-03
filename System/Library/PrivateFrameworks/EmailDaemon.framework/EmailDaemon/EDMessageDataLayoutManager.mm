@interface EDMessageDataLayoutManager
+ (id)messageDataDirectoryURLForGlobalMessageID:(int64_t)d rootMessageDataDirectory:(id)directory;
+ (id)rootMessageDataDirectoryForBasePath:(id)path purgeable:(BOOL)purgeable;
@end

@implementation EDMessageDataLayoutManager

+ (id)messageDataDirectoryURLForGlobalMessageID:(int64_t)d rootMessageDataDirectory:(id)directory
{
  directoryCopy = directory;
  v6 = MEMORY[0x1E695DFF8];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
  stringValue = [v7 stringValue];
  v9 = [v6 fileURLWithPath:stringValue isDirectory:1 relativeToURL:directoryCopy];

  return v9;
}

+ (id)rootMessageDataDirectoryForBasePath:(id)path purgeable:(BOOL)purgeable
{
  purgeableCopy = purgeable;
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:path isDirectory:1];
  v6 = v5;
  if (purgeableCopy)
  {
    v7 = @"MessageData";
  }

  else
  {
    v7 = @"NonpurgeableMessageData";
  }

  v8 = [v5 URLByAppendingPathComponent:v7 isDirectory:1];

  return v8;
}

@end