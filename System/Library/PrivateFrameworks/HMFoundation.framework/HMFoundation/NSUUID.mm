@interface NSUUID
@end

@implementation NSUUID

void __36__NSUUID_HMFoundation__hmf_zeroUUID__block_invoke()
{
  v3[2] = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  v3[1] = 0;
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v3];
  v1 = _MergedGlobals_70;
  _MergedGlobals_70 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end