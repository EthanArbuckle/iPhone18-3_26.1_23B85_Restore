@interface AVQueuePlayer(OverlappedPlayback)
- (uint64_t)mpc_setSupportsAdvanceTimeForOverlappedPlayback:()OverlappedPlayback;
@end

@implementation AVQueuePlayer(OverlappedPlayback)

- (uint64_t)mpc_setSupportsAdvanceTimeForOverlappedPlayback:()OverlappedPlayback
{
  result = ICCurrentApplicationIsSystemApp();
  if ((result & 1) == 0)
  {
    result = _os_feature_enabled_impl();
    if (result)
    {
      result = objc_opt_respondsToSelector();
      if (result)
      {

        return [a1 setSupportsAdvanceTimeForOverlappedPlayback:a3];
      }
    }
  }

  return result;
}

@end