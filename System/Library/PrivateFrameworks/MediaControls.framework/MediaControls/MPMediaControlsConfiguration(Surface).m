@interface MPMediaControlsConfiguration(Surface)
- (uint64_t)mru_surface;
@end

@implementation MPMediaControlsConfiguration(Surface)

- (uint64_t)mru_surface
{
  result = [a1 surface];
  if ((result - 1) >= 0xB)
  {
    return 0;
  }

  return result;
}

@end