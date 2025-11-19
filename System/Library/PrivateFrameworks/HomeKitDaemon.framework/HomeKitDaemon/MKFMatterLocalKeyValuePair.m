@interface MKFMatterLocalKeyValuePair
@end

@implementation MKFMatterLocalKeyValuePair

void __43___MKFMatterLocalKeyValuePair_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v2_173279;
  homeRelation__hmf_once_v2_173279 = v0;
}

@end