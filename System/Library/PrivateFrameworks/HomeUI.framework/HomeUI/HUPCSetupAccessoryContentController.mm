@interface HUPCSetupAccessoryContentController
- (HFServiceLikeItem)item;
- (HUPCSetupAccessoryContentController)initWithTitle:(id)title detailText:(id)text item:(id)item;
- (double)_contentAspectRatio;
@end

@implementation HUPCSetupAccessoryContentController

- (HUPCSetupAccessoryContentController)initWithTitle:(id)title detailText:(id)text item:(id)item
{
  itemCopy = item;
  textCopy = text;
  titleCopy = title;
  v11 = [HUHomeAccessoryTileView alloc];
  v12 = [(HUHomeAccessoryTileView *)v11 initWithFrame:itemCopy item:0 iconOnlyTile:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  v15.receiver = self;
  v15.super_class = HUPCSetupAccessoryContentController;
  v13 = [(HUPCCenterFillContentController *)&v15 initWithTitle:titleCopy detailText:textCopy contentView:v12];

  if (v13)
  {
    objc_storeStrong(&v13->_homeAccessoryTileView, v12);
    [(HUPCCenterFillContentController *)v13 setContentInsets:0.0, 24.0, 0.0, 24.0];
  }

  return v13;
}

- (HFServiceLikeItem)item
{
  homeAccessoryTileView = [(HUPCSetupAccessoryContentController *)self homeAccessoryTileView];
  item = [homeAccessoryTileView item];

  return item;
}

- (double)_contentAspectRatio
{
  homeAccessoryTileView = [(HUPCSetupAccessoryContentController *)self homeAccessoryTileView];
  [homeAccessoryTileView aspectRatio];
  v4 = v3;

  return v4;
}

@end