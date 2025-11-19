@interface FMFetchOptions
- (FMFetchOptions)init;
@end

@implementation FMFetchOptions

- (FMFetchOptions)init
{
  v3.receiver = self;
  v3.super_class = FMFetchOptions;
  return [(FMFetchOptions *)&v3 init];
}

@end