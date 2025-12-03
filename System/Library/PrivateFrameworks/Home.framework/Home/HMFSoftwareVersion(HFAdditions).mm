@interface HMFSoftwareVersion(HFAdditions)
- (uint64_t)hf_canSupportCoordination;
@end

@implementation HMFSoftwareVersion(HFAdditions)

- (uint64_t)hf_canSupportCoordination
{
  if ([self majorVersion] < 0xE || objc_msgSend(self, "majorVersion") == 14 && objc_msgSend(self, "minorVersion") < 7)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

@end