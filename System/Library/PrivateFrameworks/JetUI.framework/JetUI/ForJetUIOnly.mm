@interface ForJetUIOnly
@end

@implementation ForJetUIOnly

double __ForJetUIOnly_MainScreenScale_block_invoke()
{
  MGGetFloat32Answer();
  result = v0;
  ForJetUIOnly_MainScreenScale_scale = *&result;
  return result;
}

@end