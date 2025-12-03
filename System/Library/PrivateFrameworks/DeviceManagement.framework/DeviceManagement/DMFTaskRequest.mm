@interface DMFTaskRequest
+ (BOOL)isPermittedOnPlatform:(unint64_t)platform;
@end

@implementation DMFTaskRequest

+ (BOOL)isPermittedOnPlatform:(unint64_t)platform
{
  permittedPlatforms = [self permittedPlatforms];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:platform];
  v6 = [permittedPlatforms containsObject:v5];

  return v6;
}

@end