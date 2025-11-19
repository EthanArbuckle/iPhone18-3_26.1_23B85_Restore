@interface HUSetupAccessoryOBWelcomeController
- (HFServiceLikeItem)item;
- (HUSetupAccessoryOBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentView:(id)a6;
- (HUSetupAccessoryOBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 item:(id)a6;
- (double)_contentAspectRatio;
@end

@implementation HUSetupAccessoryOBWelcomeController

- (HUSetupAccessoryOBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 item:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [HUHomeAccessoryTileView alloc];
  v15 = [(HUHomeAccessoryTileView *)v14 initWithFrame:v10 item:0 iconOnlyTile:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  v18.receiver = self;
  v18.super_class = HUSetupAccessoryOBWelcomeController;
  v16 = [(HUTopContentOBWelcomeController *)&v18 initWithTitle:v13 detailText:v12 icon:v11 contentView:v15];

  if (v16)
  {
    objc_storeStrong(&v16->_homeAccessoryTileView, v15);
    [(HUTopContentOBWelcomeController *)v16 setContentInsets:0.0, 24.0, 0.0, 24.0];
  }

  return v16;
}

- (HUSetupAccessoryOBWelcomeController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentView:(id)a6
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithTitle_detailText_icon_item_);
  [v8 handleFailureInMethod:a2 object:self file:@"HUSetupAccessoryOBWelcomeController.m" lineNumber:33 description:{@"%s is unavailable; use %@ instead", "-[HUSetupAccessoryOBWelcomeController initWithTitle:detailText:icon:contentView:]", v9}];

  return 0;
}

- (HFServiceLikeItem)item
{
  v2 = [(HUSetupAccessoryOBWelcomeController *)self homeAccessoryTileView];
  v3 = [v2 item];

  return v3;
}

- (double)_contentAspectRatio
{
  v2 = [(HUSetupAccessoryOBWelcomeController *)self homeAccessoryTileView];
  [v2 aspectRatio];
  v4 = v3;

  return v4;
}

@end