@interface IAMICMessageMetadataStorage
- (IAMICMessageMetadataStorage)init;
@end

@implementation IAMICMessageMetadataStorage

- (IAMICMessageMetadataStorage)init
{
  v6.receiver = self;
  v6.super_class = IAMICMessageMetadataStorage;
  v2 = [(IAMICMessageMetadataStorage *)&v6 init];
  if (v2)
  {
    mEMORY[0x277D7FAE0] = [MEMORY[0x277D7FAE0] sharedManager];
    iTunesCloudIAMManager = v2->_iTunesCloudIAMManager;
    v2->_iTunesCloudIAMManager = mEMORY[0x277D7FAE0];
  }

  return v2;
}

@end