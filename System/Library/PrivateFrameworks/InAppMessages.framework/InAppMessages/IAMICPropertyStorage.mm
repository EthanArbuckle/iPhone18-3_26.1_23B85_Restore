@interface IAMICPropertyStorage
- (IAMICPropertyStorage)init;
@end

@implementation IAMICPropertyStorage

- (IAMICPropertyStorage)init
{
  v6.receiver = self;
  v6.super_class = IAMICPropertyStorage;
  v2 = [(IAMICPropertyStorage *)&v6 init];
  if (v2)
  {
    mEMORY[0x277D7FAE0] = [MEMORY[0x277D7FAE0] sharedManager];
    iTunesCloudIAMManager = v2->_iTunesCloudIAMManager;
    v2->_iTunesCloudIAMManager = mEMORY[0x277D7FAE0];
  }

  return v2;
}

@end