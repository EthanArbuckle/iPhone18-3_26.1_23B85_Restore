@interface MKFMatterPath
@end

@implementation MKFMatterPath

void __30___MKFMatterPath_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"accessory.home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v7;
  homeRelation__hmf_once_v7 = v0;
}

@end