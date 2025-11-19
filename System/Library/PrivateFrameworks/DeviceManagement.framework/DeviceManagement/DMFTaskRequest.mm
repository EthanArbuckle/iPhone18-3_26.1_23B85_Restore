@interface DMFTaskRequest
+ (BOOL)isPermittedOnPlatform:(unint64_t)a3;
@end

@implementation DMFTaskRequest

+ (BOOL)isPermittedOnPlatform:(unint64_t)a3
{
  v4 = [a1 permittedPlatforms];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v4 containsObject:v5];

  return v6;
}

@end