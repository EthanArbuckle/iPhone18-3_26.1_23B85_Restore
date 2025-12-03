@interface HUFaceRecognitionUserPhotosLibrarySettingsViewController
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUFaceRecognitionUserPhotosLibrarySettingsViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style;
- (HUFaceRecognitionUserPhotosLibrarySettingsViewController)initWithUserPhotosLibraryItem:(id)item;
- (id)buildItemModuleControllerForModule:(id)module;
- (id)itemModuleControllers;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tappableTextView:(id)view tappedAtIndex:(unint64_t)index withAttributes:(id)attributes;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
@end

@implementation HUFaceRecognitionUserPhotosLibrarySettingsViewController

- (HUFaceRecognitionUserPhotosLibrarySettingsViewController)initWithUserPhotosLibraryItem:(id)item
{
  itemCopy = item;
  v5 = [HUFaceRecognitionUserPhotosLibrarySettingsItemManager alloc];
  v6 = [itemCopy copy];
  v7 = [(HUFaceRecognitionUserPhotosLibrarySettingsItemManager *)v5 initWithDelegate:0 sourceItem:v6];

  v20.receiver = self;
  v20.super_class = HUFaceRecognitionUserPhotosLibrarySettingsViewController;
  v8 = [(HUItemTableViewController *)&v20 initWithItemManager:v7 tableViewStyle:1];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_photosLibrarySettingsItemManager, v7);
    [(HFItemManager *)v9->_photosLibrarySettingsItemManager setDelegate:v9];
    user = [itemCopy user];
    name = [user name];
    v18 = HULocalizedStringWithFormat(@"HUFaceRecognitionUsersPhotosLibraryTableViewCellTitle", @"%@", v12, v13, v14, v15, v16, v17, name);
    [(HUFaceRecognitionUserPhotosLibrarySettingsViewController *)v9 setTitle:v18];
  }

  return v9;
}

- (HUFaceRecognitionUserPhotosLibrarySettingsViewController)initWithItemManager:(id)manager tableViewStyle:(int64_t)style
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v7 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUFaceRecognitionUserPhotosLibrarySettingsViewController.m" lineNumber:49 description:{@"%s is unavailable; use %@ instead", "-[HUFaceRecognitionUserPhotosLibrarySettingsViewController initWithItemManager:tableViewStyle:]", v7}];

  return 0;
}

- (id)buildItemModuleControllerForModule:(id)module
{
  moduleCopy = module;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_UnexpectedModu.isa, moduleCopy);
  }

  v5 = [HUFaceRecognitionUserPhotosLibrarySettingsModuleController alloc];
  photosLibrarySettingsModule = [(HUFaceRecognitionUserPhotosLibrarySettingsItemManager *)self->_photosLibrarySettingsItemManager photosLibrarySettingsModule];
  v7 = [(HUFaceRecognitionUserPhotosLibrarySettingsModuleController *)v5 initWithModule:photosLibrarySettingsModule host:self];
  [(HUFaceRecognitionUserPhotosLibrarySettingsViewController *)self setPhotosLibrarySettingsModuleController:v7];

  photosLibrarySettingsModuleController = [(HUFaceRecognitionUserPhotosLibrarySettingsViewController *)self photosLibrarySettingsModuleController];

  return photosLibrarySettingsModuleController;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  v13.receiver = self;
  v13.super_class = HUFaceRecognitionUserPhotosLibrarySettingsViewController;
  v5 = [(HUItemTableViewController *)&v13 tableView:view viewForFooterInSection:section];
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

  messageTextView = [v8 messageTextView];
  [messageTextView setTappableTextViewDelegate:self];

  messageTextView2 = [v8 messageTextView];
  [messageTextView2 setSelectable:0];

  messageTextView3 = [v8 messageTextView];
  [messageTextView3 _setInteractiveTextSelectionDisabled:1];

  return v6;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  photosLibrarySettingsItemManager = [(HUFaceRecognitionUserPhotosLibrarySettingsViewController *)self photosLibrarySettingsItemManager];
  addNamesInPhotosLibraryItem = [photosLibrarySettingsItemManager addNamesInPhotosLibraryItem];
  [itemCopy isEqual:addNamesInPhotosLibraryItem];

  v8 = objc_opt_class();

  return v8;
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  v18.receiver = self;
  v18.super_class = HUFaceRecognitionUserPhotosLibrarySettingsViewController;
  itemCopy = item;
  [(HUItemTableViewController *)&v18 updateCell:cellCopy forItem:itemCopy indexPath:path animated:animatedCopy];
  v12 = [(HUFaceRecognitionUserPhotosLibrarySettingsViewController *)self photosLibrarySettingsItemManager:v18.receiver];
  addNamesInPhotosLibraryItem = [v12 addNamesInPhotosLibraryItem];
  LODWORD(self) = [itemCopy isEqual:addNamesInPhotosLibraryItem];

  if (self)
  {
    objc_opt_class();
    v14 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    textLabel = [v16 textLabel];
    [textLabel setNumberOfLines:0];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v19.receiver = self;
  v19.super_class = HUFaceRecognitionUserPhotosLibrarySettingsViewController;
  viewCopy = view;
  [(HUItemTableViewController *)&v19 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:{1, v19.receiver, v19.super_class}];

  section = [pathCopy section];
  itemManager = [(HUItemTableViewController *)self itemManager];
  v10 = [itemManager sectionIndexForDisplayedSectionIdentifier:@"HUFaceRecognitionAddNamesInPhotosLibrarySection"];

  if (section == v10)
  {
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    v12 = [itemManager2 displayedItemAtIndexPath:pathCopy];
    photosLibrarySettingsItemManager = [(HUFaceRecognitionUserPhotosLibrarySettingsViewController *)self photosLibrarySettingsItemManager];
    addNamesInPhotosLibraryItem = [photosLibrarySettingsItemManager addNamesInPhotosLibraryItem];
    v15 = [v12 isEqual:addNamesInPhotosLibraryItem];

    if (v15)
    {
      mEMORY[0x277D148E8] = [MEMORY[0x277D148E8] sharedInstance];
      hf_photosLibraryPeopleAlbumURL = [MEMORY[0x277CBEBC0] hf_photosLibraryPeopleAlbumURL];
      v18 = [mEMORY[0x277D148E8] openURL:hf_photosLibraryPeopleAlbumURL];
    }
  }
}

- (id)itemModuleControllers
{
  v3 = objc_opt_new();
  v7.receiver = self;
  v7.super_class = HUFaceRecognitionUserPhotosLibrarySettingsViewController;
  itemModuleControllers = [(HUItemTableViewController *)&v7 itemModuleControllers];
  [v3 unionSet:itemModuleControllers];

  photosLibrarySettingsModuleController = [(HUFaceRecognitionUserPhotosLibrarySettingsViewController *)self photosLibrarySettingsModuleController];
  [v3 na_safeAddObject:photosLibrarySettingsModuleController];

  return v3;
}

- (void)tappableTextView:(id)view tappedAtIndex:(unint64_t)index withAttributes:(id)attributes
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277D740E8];
  viewCopy = view;
  v10 = [attributes objectForKeyedSubscript:v8];
  absoluteString = [v10 absoluteString];
  hf_photosLibraryPeopleAlbumURL = [MEMORY[0x277CBEBC0] hf_photosLibraryPeopleAlbumURL];
  absoluteString2 = [hf_photosLibraryPeopleAlbumURL absoluteString];
  v14 = [absoluteString isEqualToString:absoluteString2];

  v15 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionUsePhotosLibrarySectionFooterPhotosLink", @"HUFaceRecognitionUsePhotosLibrarySectionFooterPhotosLink", 1);
  text = [viewCopy text];

  v17 = [text rangeOfString:v15];
  v19 = v18;

  if (v17 != 0x7FFFFFFFFFFFFFFFLL && v17 <= index && v17 + v19 > index && v14)
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    hf_photosLibraryPeopleAlbumURL2 = [MEMORY[0x277CBEBC0] hf_photosLibraryPeopleAlbumURL];
    v25 = 0;
    [defaultWorkspace openSensitiveURL:hf_photosLibraryPeopleAlbumURL2 withOptions:0 error:&v25];
    v22 = v25;

    if (v22)
    {
      v23 = HFLogForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        hf_photosLibraryPeopleAlbumURL3 = [MEMORY[0x277CBEBC0] hf_photosLibraryPeopleAlbumURL];
        *buf = 138412802;
        selfCopy = self;
        v28 = 2080;
        v29 = "[HUFaceRecognitionUserPhotosLibrarySettingsViewController tappableTextView:tappedAtIndex:withAttributes:]";
        v30 = 2112;
        v31 = hf_photosLibraryPeopleAlbumURL3;
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