@interface HUFaceRecognitionUserPhotosLibrarySettingsViewController
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUFaceRecognitionUserPhotosLibrarySettingsViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4;
- (HUFaceRecognitionUserPhotosLibrarySettingsViewController)initWithUserPhotosLibraryItem:(id)a3;
- (id)buildItemModuleControllerForModule:(id)a3;
- (id)itemModuleControllers;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tappableTextView:(id)a3 tappedAtIndex:(unint64_t)a4 withAttributes:(id)a5;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
@end

@implementation HUFaceRecognitionUserPhotosLibrarySettingsViewController

- (HUFaceRecognitionUserPhotosLibrarySettingsViewController)initWithUserPhotosLibraryItem:(id)a3
{
  v4 = a3;
  v5 = [HUFaceRecognitionUserPhotosLibrarySettingsItemManager alloc];
  v6 = [v4 copy];
  v7 = [(HUFaceRecognitionUserPhotosLibrarySettingsItemManager *)v5 initWithDelegate:0 sourceItem:v6];

  v20.receiver = self;
  v20.super_class = HUFaceRecognitionUserPhotosLibrarySettingsViewController;
  v8 = [(HUItemTableViewController *)&v20 initWithItemManager:v7 tableViewStyle:1];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_photosLibrarySettingsItemManager, v7);
    [(HFItemManager *)v9->_photosLibrarySettingsItemManager setDelegate:v9];
    v10 = [v4 user];
    v11 = [v10 name];
    v18 = HULocalizedStringWithFormat(@"HUFaceRecognitionUsersPhotosLibraryTableViewCellTitle", @"%@", v12, v13, v14, v15, v16, v17, v11);
    [(HUFaceRecognitionUserPhotosLibrarySettingsViewController *)v9 setTitle:v18];
  }

  return v9;
}

- (HUFaceRecognitionUserPhotosLibrarySettingsViewController)initWithItemManager:(id)a3 tableViewStyle:(int64_t)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_);
  [v6 handleFailureInMethod:a2 object:self file:@"HUFaceRecognitionUserPhotosLibrarySettingsViewController.m" lineNumber:49 description:{@"%s is unavailable; use %@ instead", "-[HUFaceRecognitionUserPhotosLibrarySettingsViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (id)buildItemModuleControllerForModule:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_UnexpectedModu.isa, v4);
  }

  v5 = [HUFaceRecognitionUserPhotosLibrarySettingsModuleController alloc];
  v6 = [(HUFaceRecognitionUserPhotosLibrarySettingsItemManager *)self->_photosLibrarySettingsItemManager photosLibrarySettingsModule];
  v7 = [(HUFaceRecognitionUserPhotosLibrarySettingsModuleController *)v5 initWithModule:v6 host:self];
  [(HUFaceRecognitionUserPhotosLibrarySettingsViewController *)self setPhotosLibrarySettingsModuleController:v7];

  v8 = [(HUFaceRecognitionUserPhotosLibrarySettingsViewController *)self photosLibrarySettingsModuleController];

  return v8;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v13.receiver = self;
  v13.super_class = HUFaceRecognitionUserPhotosLibrarySettingsViewController;
  v5 = [(HUItemTableViewController *)&v13 tableView:a3 viewForFooterInSection:a4];
  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [v8 messageTextView];
  [v9 setTappableTextViewDelegate:self];

  v10 = [v8 messageTextView];
  [v10 setSelectable:0];

  v11 = [v8 messageTextView];
  [v11 _setInteractiveTextSelectionDisabled:1];

  return v6;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v5 = a3;
  v6 = [(HUFaceRecognitionUserPhotosLibrarySettingsViewController *)self photosLibrarySettingsItemManager];
  v7 = [v6 addNamesInPhotosLibraryItem];
  [v5 isEqual:v7];

  v8 = objc_opt_class();

  return v8;
}

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v18.receiver = self;
  v18.super_class = HUFaceRecognitionUserPhotosLibrarySettingsViewController;
  v11 = a4;
  [(HUItemTableViewController *)&v18 updateCell:v10 forItem:v11 indexPath:a5 animated:v6];
  v12 = [(HUFaceRecognitionUserPhotosLibrarySettingsViewController *)self photosLibrarySettingsItemManager:v18.receiver];
  v13 = [v12 addNamesInPhotosLibraryItem];
  LODWORD(self) = [v11 isEqual:v13];

  if (self)
  {
    objc_opt_class();
    v14 = v10;
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    v17 = [v16 textLabel];
    [v17 setNumberOfLines:0];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v19.receiver = self;
  v19.super_class = HUFaceRecognitionUserPhotosLibrarySettingsViewController;
  v7 = a3;
  [(HUItemTableViewController *)&v19 tableView:v7 didSelectRowAtIndexPath:v6];
  [v7 deselectRowAtIndexPath:v6 animated:{1, v19.receiver, v19.super_class}];

  v8 = [v6 section];
  v9 = [(HUItemTableViewController *)self itemManager];
  v10 = [v9 sectionIndexForDisplayedSectionIdentifier:@"HUFaceRecognitionAddNamesInPhotosLibrarySection"];

  if (v8 == v10)
  {
    v11 = [(HUItemTableViewController *)self itemManager];
    v12 = [v11 displayedItemAtIndexPath:v6];
    v13 = [(HUFaceRecognitionUserPhotosLibrarySettingsViewController *)self photosLibrarySettingsItemManager];
    v14 = [v13 addNamesInPhotosLibraryItem];
    v15 = [v12 isEqual:v14];

    if (v15)
    {
      v16 = [MEMORY[0x277D148E8] sharedInstance];
      v17 = [MEMORY[0x277CBEBC0] hf_photosLibraryPeopleAlbumURL];
      v18 = [v16 openURL:v17];
    }
  }
}

- (id)itemModuleControllers
{
  v3 = objc_opt_new();
  v7.receiver = self;
  v7.super_class = HUFaceRecognitionUserPhotosLibrarySettingsViewController;
  v4 = [(HUItemTableViewController *)&v7 itemModuleControllers];
  [v3 unionSet:v4];

  v5 = [(HUFaceRecognitionUserPhotosLibrarySettingsViewController *)self photosLibrarySettingsModuleController];
  [v3 na_safeAddObject:v5];

  return v3;
}

- (void)tappableTextView:(id)a3 tappedAtIndex:(unint64_t)a4 withAttributes:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277D740E8];
  v9 = a3;
  v10 = [a5 objectForKeyedSubscript:v8];
  v11 = [v10 absoluteString];
  v12 = [MEMORY[0x277CBEBC0] hf_photosLibraryPeopleAlbumURL];
  v13 = [v12 absoluteString];
  v14 = [v11 isEqualToString:v13];

  v15 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionUsePhotosLibrarySectionFooterPhotosLink", @"HUFaceRecognitionUsePhotosLibrarySectionFooterPhotosLink", 1);
  v16 = [v9 text];

  v17 = [v16 rangeOfString:v15];
  v19 = v18;

  if (v17 != 0x7FFFFFFFFFFFFFFFLL && v17 <= a4 && v17 + v19 > a4 && v14)
  {
    v20 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v21 = [MEMORY[0x277CBEBC0] hf_photosLibraryPeopleAlbumURL];
    v25 = 0;
    [v20 openSensitiveURL:v21 withOptions:0 error:&v25];
    v22 = v25;

    if (v22)
    {
      v23 = HFLogForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [MEMORY[0x277CBEBC0] hf_photosLibraryPeopleAlbumURL];
        *buf = 138412802;
        v27 = self;
        v28 = 2080;
        v29 = "[HUFaceRecognitionUserPhotosLibrarySettingsViewController tappableTextView:tappedAtIndex:withAttributes:]";
        v30 = 2112;
        v31 = v24;
        _os_log_error_impl(&dword_20CEB6000, v23, OS_LOG_TYPE_ERROR, "%@ (%s): Cannot open sensitive url %@", buf, 0x20u);
      }
    }

    else
    {
      [MEMORY[0x277D143D8] sendEvent:6];
    }
  }
}

@end