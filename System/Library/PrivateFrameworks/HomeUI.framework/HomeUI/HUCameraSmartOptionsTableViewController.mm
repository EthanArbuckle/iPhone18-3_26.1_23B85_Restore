@interface HUCameraSmartOptionsTableViewController
- (BOOL)shouldHideHeaderAboveSection:(int64_t)section;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
@end

@implementation HUCameraSmartOptionsTableViewController

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  itemManager = [(HUItemTableViewController *)self itemManager];
  v8 = [itemManager displayedSectionIdentifierForSectionIndex:section];

  if (![v8 isEqualToString:@"HUCameraSmartDetectionSettingsOnOffSectionIdentifier"] || (-[HUItemTableViewController itemManager](self, "itemManager"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "sectionIndexForDisplayedSectionIdentifier:", @"HUCameraSmartDetectionSettingsMotionDetectionSectionIdentifier"), v9, v11 = 10.0, v10 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v14.receiver = self;
    v14.super_class = HUCameraSmartOptionsTableViewController;
    [(HUItemTableViewController *)&v14 tableView:viewCopy heightForFooterInSection:section];
    v11 = v12;
  }

  return v11;
}

- (BOOL)shouldHideHeaderAboveSection:(int64_t)section
{
  itemManager = [(HUItemTableViewController *)self itemManager];
  v5 = [itemManager displayedSectionIdentifierForSectionIndex:section];

  LOBYTE(itemManager) = [v5 isEqualToString:@"HUCameraSmartDetectionSettingsMotionDetectionSectionIdentifier"];
  return itemManager;
}

@end