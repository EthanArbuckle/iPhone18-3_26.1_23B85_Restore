@interface HUPCSetupAccessoryContentController
- (HFServiceLikeItem)item;
- (HUPCSetupAccessoryContentController)initWithTitle:(id)a3 detailText:(id)a4 item:(id)a5;
- (double)_contentAspectRatio;
@end

@implementation HUPCSetupAccessoryContentController

- (HUPCSetupAccessoryContentController)initWithTitle:(id)a3 detailText:(id)a4 item:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [HUHomeAccessoryTileView alloc];
  v12 = [(HUHomeAccessoryTileView *)v11 initWithFrame:v8 item:0 iconOnlyTile:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  v15.receiver = self;
  v15.super_class = HUPCSetupAccessoryContentController;
  v13 = [(HUPCCenterFillContentController *)&v15 initWithTitle:v10 detailText:v9 contentView:v12];

  if (v13)
  {
    objc_storeStrong(&v13->_homeAccessoryTileView, v12);
    [(HUPCCenterFillContentController *)v13 setContentInsets:0.0, 24.0, 0.0, 24.0];
  }

  return v13;
}

- (HFServiceLikeItem)item
{
  v2 = [(HUPCSetupAccessoryContentController *)self homeAccessoryTileView];
  v3 = [v2 item];

  return v3;
}

- (double)_contentAspectRatio
{
  v2 = [(HUPCSetupAccessoryContentController *)self homeAccessoryTileView];
  [v2 aspectRatio];
  v4 = v3;

  return v4;
}

@end