@interface MKFSoftwareUpdate
@end

@implementation MKFSoftwareUpdate

void __34___MKFSoftwareUpdate_homeRelation__block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"accessory.home.modelID == $HOMEMODELID"];
  v1 = homeRelation__hmf_once_v1_147564;
  homeRelation__hmf_once_v1_147564 = v0;
}

@end