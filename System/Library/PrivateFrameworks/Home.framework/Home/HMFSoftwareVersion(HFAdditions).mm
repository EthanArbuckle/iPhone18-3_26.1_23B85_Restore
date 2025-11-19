@interface HMFSoftwareVersion(HFAdditions)
- (uint64_t)hf_canSupportCoordination;
@end

@implementation HMFSoftwareVersion(HFAdditions)

- (uint64_t)hf_canSupportCoordination
{
  if ([a1 majorVersion] < 0xE || objc_msgSend(a1, "majorVersion") == 14 && objc_msgSend(a1, "minorVersion") < 7)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

@end