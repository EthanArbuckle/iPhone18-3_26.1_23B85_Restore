@interface CKGroupUpdateBannerView
- (CKGroupUpdateBannerView)init;
@end

@implementation CKGroupUpdateBannerView

- (CKGroupUpdateBannerView)init
{
  v6.receiver = self;
  v6.super_class = CKGroupUpdateBannerView;
  v2 = [(CKGroupUpdateBannerView *)&v6 init];
  v3 = v2;
  if (v2)
  {
    groupUpdates = v2->_groupUpdates;
    v2->_groupUpdates = MEMORY[0x1E695E0F0];

    v3->_updateBannerType = 0;
  }

  return v3;
}

@end