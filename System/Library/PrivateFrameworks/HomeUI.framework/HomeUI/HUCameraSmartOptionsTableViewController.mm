@interface HUCameraSmartOptionsTableViewController
- (BOOL)shouldHideHeaderAboveSection:(int64_t)a3;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
@end

@implementation HUCameraSmartOptionsTableViewController

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(HUItemTableViewController *)self itemManager];
  v8 = [v7 displayedSectionIdentifierForSectionIndex:a4];

  if (![v8 isEqualToString:@"HUCameraSmartDetectionSettingsOnOffSectionIdentifier"] || (-[HUItemTableViewController itemManager](self, "itemManager"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "sectionIndexForDisplayedSectionIdentifier:", @"HUCameraSmartDetectionSettingsMotionDetectionSectionIdentifier"), v9, v11 = 10.0, v10 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v14.receiver = self;
    v14.super_class = HUCameraSmartOptionsTableViewController;
    [(HUItemTableViewController *)&v14 tableView:v6 heightForFooterInSection:a4];
    v11 = v12;
  }

  return v11;
}

- (BOOL)shouldHideHeaderAboveSection:(int64_t)a3
{
  v4 = [(HUItemTableViewController *)self itemManager];
  v5 = [v4 displayedSectionIdentifierForSectionIndex:a3];

  LOBYTE(v4) = [v5 isEqualToString:@"HUCameraSmartDetectionSettingsMotionDetectionSectionIdentifier"];
  return v4;
}

@end