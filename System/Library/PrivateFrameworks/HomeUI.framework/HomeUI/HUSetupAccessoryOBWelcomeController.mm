@interface HUSetupAccessoryOBWelcomeController
- (HFServiceLikeItem)item;
- (HUSetupAccessoryOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentView:(id)view;
- (HUSetupAccessoryOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon item:(id)item;
- (double)_contentAspectRatio;
@end

@implementation HUSetupAccessoryOBWelcomeController

- (HUSetupAccessoryOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon item:(id)item
{
  itemCopy = item;
  iconCopy = icon;
  textCopy = text;
  titleCopy = title;
  v14 = [HUHomeAccessoryTileView alloc];
  v15 = [(HUHomeAccessoryTileView *)v14 initWithFrame:itemCopy item:0 iconOnlyTile:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  v18.receiver = self;
  v18.super_class = HUSetupAccessoryOBWelcomeController;
  v16 = [(HUTopContentOBWelcomeController *)&v18 initWithTitle:titleCopy detailText:textCopy icon:iconCopy contentView:v15];

  if (v16)
  {
    objc_storeStrong(&v16->_homeAccessoryTileView, v15);
    [(HUTopContentOBWelcomeController *)v16 setContentInsets:0.0, 24.0, 0.0, 24.0];
  }

  return v16;
}

- (HUSetupAccessoryOBWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentView:(id)view
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v9 = NSStringFromSelector(sel_initWithTitle_detailText_icon_item_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUSetupAccessoryOBWelcomeController.m" lineNumber:33 description:{@"%s is unavailable; use %@ instead", "-[HUSetupAccessoryOBWelcomeController initWithTitle:detailText:icon:contentView:]", v9}];

  return 0;
}

- (HFServiceLikeItem)item
{
  homeAccessoryTileView = [(HUSetupAccessoryOBWelcomeController *)self homeAccessoryTileView];
  item = [homeAccessoryTileView item];

  return item;
}

- (double)_contentAspectRatio
{
  homeAccessoryTileView = [(HUSetupAccessoryOBWelcomeController *)self homeAccessoryTileView];
  [homeAccessoryTileView aspectRatio];
  v4 = v3;

  return v4;
}

@end