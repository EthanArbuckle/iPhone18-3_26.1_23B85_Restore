@interface NSString(CacheManagementAdditions)
+ (id)stringWithFileSystemRepresentation:()CacheManagementAdditions length:;
+ (uint64_t)stringWithFileSystemRepresentation:()CacheManagementAdditions;
@end

@implementation NSString(CacheManagementAdditions)

+ (id)stringWithFileSystemRepresentation:()CacheManagementAdditions length:
{
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 stringWithFileSystemRepresentation:a3 length:a4];

  return v7;
}

+ (uint64_t)stringWithFileSystemRepresentation:()CacheManagementAdditions
{
  v4 = strlen(__s);
  v5 = MEMORY[0x1E696AEC0];

  return [v5 stringWithFileSystemRepresentation:__s length:v4];
}

@end