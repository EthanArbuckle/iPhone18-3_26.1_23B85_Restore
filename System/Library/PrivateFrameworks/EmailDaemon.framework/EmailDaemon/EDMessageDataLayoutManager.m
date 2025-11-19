@interface EDMessageDataLayoutManager
+ (id)messageDataDirectoryURLForGlobalMessageID:(int64_t)a3 rootMessageDataDirectory:(id)a4;
+ (id)rootMessageDataDirectoryForBasePath:(id)a3 purgeable:(BOOL)a4;
@end

@implementation EDMessageDataLayoutManager

+ (id)messageDataDirectoryURLForGlobalMessageID:(int64_t)a3 rootMessageDataDirectory:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E695DFF8];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v8 = [v7 stringValue];
  v9 = [v6 fileURLWithPath:v8 isDirectory:1 relativeToURL:v5];

  return v9;
}

+ (id)rootMessageDataDirectoryForBasePath:(id)a3 purgeable:(BOOL)a4
{
  v4 = a4;
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:a3 isDirectory:1];
  v6 = v5;
  if (v4)
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