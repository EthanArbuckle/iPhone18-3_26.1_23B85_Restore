@interface HUFaceRecognitionPersonEditorViewController
- (BOOL)automaticallyUpdatesViewControllerTitle;
- (BOOL)shouldManageTextFieldForItem:(id)item;
- (Class)cellClassForItem:(id)item indexPath:(id)path;
- (HUFaceRecognitionPersonEditorViewController)initWithPerson:(id)person personManager:(id)manager home:(id)home;
- (HUFaceRecognitionPersonEditorViewController)initWithPersonLikeItem:(id)item;
- (HUFaceRecognitionPersonEditorViewControllerDelegate)delegate;
- (id)presentFaceRecognitionAddPersonSettingsForUnknownPersonEvent:(id)event animated:(BOOL)animated;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (void)_deletePerson;
- (void)_presentAddPersonViewController;
- (void)addPersonViewControllerDidFinish:(id)finish;
- (void)itemManager:(id)manager didUpdateResultsForSourceItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path;
- (void)switchCell:(id)cell didTurnOn:(BOOL)on;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)textFieldDidEndEditing:(id)editing;
- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HUFaceRecognitionPersonEditorViewController

- (HUFaceRecognitionPersonEditorViewController)initWithPersonLikeItem:(id)item
{
  itemCopy = item;
  v5 = [HUFaceRecognitionPersonEditorItemManager alloc];
  v6 = [itemCopy copy];
  v7 = [(HUFaceRecognitionPersonEditorItemManager *)v5 initWithDelegate:self sourceItem:v6];

  v15.receiver = self;
  v15.super_class = HUFaceRecognitionPersonEditorViewController;
  v8 = [(HUItemTableViewController *)&v15 initWithItemManager:v7 tableViewStyle:1];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_personItemManager, v7);
    latestResults = [itemCopy latestResults];
    v11 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    if (v11)
    {
      name = v11;
    }

    else
    {
      person = [itemCopy person];
      name = [person name];

      if (!name)
      {
        name = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionPersonEditorViewControllerTitleUnknownPerson", @"HUFaceRecognitionPersonEditorViewControllerTitleUnknownPerson", 1);
      }
    }

    [(HUFaceRecognitionPersonEditorViewController *)v9 setTitle:name];

    v9->_shouldUpdateDelegate = 0;
  }

  return v9;
}

- (HUFaceRecognitionPersonEditorViewController)initWithPerson:(id)person personManager:(id)manager home:(id)home
{
  v8 = MEMORY[0x277D14908];
  homeCopy = home;
  managerCopy = manager;
  personCopy = person;
  v12 = [[v8 alloc] initWithPerson:personCopy fromPersonManager:managerCopy home:homeCopy];

  v13 = [(HUFaceRecognitionPersonEditorViewController *)self initWithPersonLikeItem:v12];
  return v13;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v15[1] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = HUFaceRecognitionPersonEditorViewController;
  [(HUItemTableViewController *)&v13 viewWillDisappear:disappear];
  delegate = [(HUFaceRecognitionPersonEditorViewController *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    shouldUpdateDelegate = [(HUFaceRecognitionPersonEditorViewController *)self shouldUpdateDelegate];

    if (shouldUpdateDelegate)
    {
      personItemManager = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
      personItem = [personItemManager personItem];
      v14 = *MEMORY[0x277D13BB8];
      v15[0] = MEMORY[0x277CBEC38];
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v10 = [personItem updateWithOptions:v9];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __65__HUFaceRecognitionPersonEditorViewController_viewWillDisappear___block_invoke;
      v12[3] = &unk_277DC3248;
      v12[4] = self;
      v11 = [v10 addSuccessBlock:v12];
    }
  }
}

void __65__HUFaceRecognitionPersonEditorViewController_viewWillDisappear___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 personItemManager];
  v4 = [v3 personItem];
  [v5 personEditorViewController:v2 didUpdateItem:v4];
}

- (BOOL)automaticallyUpdatesViewControllerTitle
{
  personItemManager = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  personItem = [personItemManager personItem];
  latestResults = [personItem latestResults];
  v5 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  LOBYTE(personItemManager) = [v5 length] != 0;
  return personItemManager;
}

- (Class)cellClassForItem:(id)item indexPath:(id)path
{
  itemCopy = item;
  personItemManager = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  faceCropItem = [personItemManager faceCropItem];

  if (faceCropItem != itemCopy)
  {
    personItemManager2 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
    nameItem = [personItemManager2 nameItem];

    if (nameItem != itemCopy)
    {
      personItemManager3 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
      hideNotificationsItem = [personItemManager3 hideNotificationsItem];

      if (hideNotificationsItem != itemCopy)
      {
        personItemManager4 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
        deleteItem = [personItemManager4 deleteItem];
        if (![itemCopy isEqual:deleteItem])
        {
          personItemManager5 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
          addNameItem = [personItemManager5 addNameItem];
          [itemCopy isEqual:addNameItem];
        }
      }
    }
  }

  v16 = objc_opt_class();

  return v16;
}

- (void)setupCell:(id)cell forItem:(id)item indexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v8 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    [v10 setDelegate:self];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [cellCopy setSelectionStyle:0];
  }

  personItemManager = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  deleteItem = [personItemManager deleteItem];
  v13 = [itemCopy isEqual:deleteItem];

  if ((v13 & 1) != 0 || (-[HUFaceRecognitionPersonEditorViewController personItemManager](self, "personItemManager"), v14 = objc_claimAutoreleasedReturnValue(), [v14 addNameItem], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(itemCopy, "isEqual:", v15), v15, v14, v16))
  {
    objc_opt_class();
    v17 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    [v19 setDestructive:v13];
  }
}

- (void)updateCell:(id)cell forItem:(id)item indexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v23.receiver = self;
  v23.super_class = HUFaceRecognitionPersonEditorViewController;
  [(HUItemTableViewController *)&v23 updateCell:cellCopy forItem:itemCopy indexPath:path animated:animatedCopy];
  personItemManager = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  nameItem = [personItemManager nameItem];

  if (nameItem == itemCopy)
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

    latestResults = [itemCopy latestResults];
    v18 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F70]];
    textField = [v16 textField];
    [textField setPlaceholder:v18];

    latestResults2 = [itemCopy latestResults];
    v21 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    textField2 = [v16 textField];
    [textField2 setText:v21];
  }
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  personItemManager = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  v7 = [personItemManager displayedItemAtIndexPath:pathCopy];

  personItemManager2 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  nameItem = [personItemManager2 nameItem];
  if (v7 == nameItem)
  {
    goto LABEL_6;
  }

  personItemManager3 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  hideNotificationsItem = [personItemManager3 hideNotificationsItem];
  v12 = hideNotificationsItem;
  if (v7 == hideNotificationsItem)
  {

LABEL_6:
    goto LABEL_7;
  }

  personItemManager4 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  faceCropItem = [personItemManager4 faceCropItem];

  if (v7 != faceCropItem)
  {
    v15 = pathCopy;
    goto LABEL_8;
  }

LABEL_7:
  v15 = 0;
LABEL_8:

  return v15;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v24.receiver = self;
  v24.super_class = HUFaceRecognitionPersonEditorViewController;
  [(HUItemTableViewController *)&v24 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  personItemManager = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  v9 = [personItemManager displayedItemAtIndexPath:pathCopy];

  personItemManager2 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  deleteItem = [personItemManager2 deleteItem];
  v12 = [v9 isEqual:deleteItem];

  if (v12)
  {
    [(HUFaceRecognitionPersonEditorViewController *)self _deletePerson];
  }

  else
  {
    personItemManager3 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
    addNameItem = [personItemManager3 addNameItem];
    v15 = [v9 isEqual:addNameItem];

    if (v15)
    {
      personItemManager4 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
      sourceItem = [personItemManager4 sourceItem];
      latestResults = [sourceItem latestResults];
      v19 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13CF8]];
      bOOLValue = [v19 BOOLValue];

      if (bOOLValue)
      {
        [(HUFaceRecognitionPersonEditorViewController *)self _presentAddPersonViewController];
      }

      else
      {
        mEMORY[0x277D148E8] = [MEMORY[0x277D148E8] sharedInstance];
        hf_photosLibraryPeopleAlbumURL = [MEMORY[0x277CBEBC0] hf_photosLibraryPeopleAlbumURL];
        v23 = [mEMORY[0x277D148E8] openURL:hf_photosLibraryPeopleAlbumURL];
      }
    }
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)itemManager:(id)manager didUpdateResultsForSourceItem:(id)item
{
  v16 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = HUFaceRecognitionPersonEditorViewController;
  [(HUItemTableViewController *)&v13 itemManager:manager didUpdateResultsForSourceItem:itemCopy];
  latestResults = [itemCopy latestResults];
  v8 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
  bOOLValue = [v8 BOOLValue];

  if (bOOLValue)
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = itemCopy;
      _os_log_error_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_ERROR, "Source item has determined it needs to hide: %@. Dismissing.", buf, 0xCu);
    }

    navigationController = [(HUFaceRecognitionPersonEditorViewController *)self navigationController];
    v12 = [navigationController popViewControllerAnimated:1];
  }
}

- (void)switchCell:(id)cell didTurnOn:(BOOL)on
{
  onCopy = on;
  cellCopy = cell;
  tableView = [(HUFaceRecognitionPersonEditorViewController *)self tableView];
  v8 = [tableView indexPathForCell:cellCopy];

  itemManager = [(HUItemTableViewController *)self itemManager];
  v10 = [itemManager displayedItemAtIndexPath:v8];

  personItemManager = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  hideNotificationsItem = [personItemManager hideNotificationsItem];
  v13 = [v10 isEqual:hideNotificationsItem];

  if (v13)
  {
    personItemManager2 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
    personItem = [personItemManager2 personItem];

    v16 = !onCopy;
    itemManager2 = [(HUItemTableViewController *)self itemManager];
    home = [itemManager2 home];
    personSettingsManager = [home personSettingsManager];

    latestResults = [personItem latestResults];
    v21 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14060]];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __68__HUFaceRecognitionPersonEditorViewController_switchCell_didTurnOn___block_invoke;
    v23[3] = &unk_277DC3270;
    v24 = personItem;
    v26 = onCopy;
    v25 = cellCopy;
    v27 = !onCopy;
    v22 = personItem;
    [personSettingsManager updateClassificationNotificationsEnabled:v16 forPersonWithUUID:v21 completion:v23];
  }
}

void __68__HUFaceRecognitionPersonEditorViewController_switchCell_didTurnOn___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) person];
      v6 = *(a1 + 48);
      v8 = 138412802;
      v9 = v5;
      if (v6)
      {
        v7 = @"ON";
      }

      else
      {
        v7 = @"OFF";
      }

      v10 = 2112;
      v11 = v7;
      v12 = 2112;
      v13 = v3;
      _os_log_error_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_ERROR, "Update for person %@ disable notification setting %@ failed with error %@", &v8, 0x20u);
    }

    [*(a1 + 40) setOn:(*(a1 + 49) & 1) == 0];
  }
}

- (BOOL)shouldManageTextFieldForItem:(id)item
{
  itemCopy = item;
  personItemManager = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  nameItem = [personItemManager nameItem];

  return nameItem == itemCopy;
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  personItemManager = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  sourceItem = [personItemManager sourceItem];
  latestResults = [sourceItem latestResults];
  v8 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  v9 = MEMORY[0x277D14CE8];
  text = [editingCopy text];
  v11 = [v9 sanitizeUserEnteredHomeKitName:text];

  if ([v11 length] || !v8)
  {
    if ([v11 length])
    {
      personItemManager2 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
      personItem = [personItemManager2 personItem];

      personManager = [personItem personManager];
      person = [personItem person];
      v16 = [personManager hf_namePerson:person name:v11];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __70__HUFaceRecognitionPersonEditorViewController_textFieldDidEndEditing___block_invoke;
      v20[3] = &unk_277DB7E90;
      v21 = editingCopy;
      v22 = v8;
      v17 = [v16 addFailureBlock:v20];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __70__HUFaceRecognitionPersonEditorViewController_textFieldDidEndEditing___block_invoke_2;
      v19[3] = &unk_277DC3298;
      v19[4] = self;
      v18 = [v17 addSuccessBlock:v19];
    }
  }

  else
  {
    [editingCopy setText:v8];
  }
}

void __70__HUFaceRecognitionPersonEditorViewController_textFieldDidEndEditing___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  [v3 setText:v2];
  v5 = [MEMORY[0x277D14640] sharedHandler];
  [v5 handleError:v4];
}

- (void)_deletePerson
{
  personItemManager = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  personItem = [personItemManager personItem];

  personManager = [personItem personManager];
  person = [personItem person];

  if (person)
  {
    person2 = [personItem person];
    uUID = [person2 UUID];
    [personManager hf_removePersonWithUUID:uUID];
  }

  else
  {
    person2 = [personItem latestResults];
    uUID = [person2 objectForKeyedSubscript:*MEMORY[0x277D13CE8]];
    [personManager hf_removeFaceCropsWithUUIDs:uUID];
  }
  v9 = ;

  objc_initWeak(&location, self);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __60__HUFaceRecognitionPersonEditorViewController__deletePerson__block_invoke;
  v15 = &unk_277DB99B8;
  objc_copyWeak(&v16, &location);
  v10 = [v9 addSuccessBlock:&v12];
  v11 = [v10 addFailureBlock:{&__block_literal_global_249, v12, v13, v14, v15}];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __60__HUFaceRecognitionPersonEditorViewController__deletePerson__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained navigationController];
  v2 = [v1 popViewControllerAnimated:1];
}

void __60__HUFaceRecognitionPersonEditorViewController__deletePerson__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14640];
  v3 = a2;
  v4 = [v2 sharedHandler];
  [v4 handleError:v3];
}

- (void)_presentAddPersonViewController
{
  objc_opt_class();
  personItemManager = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  sourceItem = [personItemManager sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v5 = sourceItem;
  }

  else
  {
    v5 = 0;
  }

  v14 = v5;

  v6 = v14;
  if (v14)
  {
    event = [v14 event];
    v8 = [HUFaceRecognitionAddPersonViewController alloc];
    itemManager = [(HUItemTableViewController *)self itemManager];
    home = [itemManager home];
    v11 = [(HUFaceRecognitionAddPersonViewController *)v8 initWithSignificantEvent:event home:home];

    [(HUFaceRecognitionAddPersonViewController *)v11 setDelegate:self];
    navigationController = [(HUFaceRecognitionPersonEditorViewController *)self navigationController];
    v13 = [navigationController hu_pushPreloadableViewController:v11 animated:1];

    v6 = v14;
  }
}

- (id)presentFaceRecognitionAddPersonSettingsForUnknownPersonEvent:(id)event animated:(BOOL)animated
{
  eventCopy = event;
  hu_preloadContent = [(HUItemTableViewController *)self hu_preloadContent];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __117__HUFaceRecognitionPersonEditorViewController_presentFaceRecognitionAddPersonSettingsForUnknownPersonEvent_animated___block_invoke;
  v10[3] = &unk_277DBE0A0;
  v11 = eventCopy;
  selfCopy = self;
  v7 = eventCopy;
  v8 = [hu_preloadContent flatMap:v10];

  return v8;
}

id __117__HUFaceRecognitionPersonEditorViewController_presentFaceRecognitionAddPersonSettingsForUnknownPersonEvent_animated___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 faceClassification];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 person];
      v6 = [v5 name];
      v7 = [v6 length];

      if (!v7)
      {
        v15 = [*(a1 + 40) itemManager];
        v16 = [v15 home];
        v17 = [v16 personManager];
        v14 = [v17 UUID];

        v18 = [v4 personManagerUUID];
        LOBYTE(v16) = [v14 isEqual:v18];

        if (v16)
        {
          v19 = [HUFaceRecognitionAddPersonViewController alloc];
          v20 = *(a1 + 32);
          v21 = [*(a1 + 40) itemManager];
          v22 = [v21 home];
          v23 = [(HUFaceRecognitionAddPersonViewController *)v19 initWithSignificantEvent:v20 home:v22];

          v24 = [*(a1 + 40) navigationController];
          v12 = [v24 hu_pushPreloadableViewController:v23 animated:1];
        }

        else
        {
          v25 = HFLogForCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v29 = *(a1 + 32);
            v30 = 138412546;
            v31 = v4;
            v32 = 2112;
            v33 = v29;
            _os_log_error_impl(&dword_20CEB6000, v25, OS_LOG_TYPE_ERROR, "Face classification %@ for event %@ contains an unnamed person from the photo library; name must be added inside Photos", &v30, 0x16u);
          }

          v26 = MEMORY[0x277D2C900];
          v23 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
          v12 = [v26 futureWithError:v23];
        }

        goto LABEL_18;
      }

      v8 = HFLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        v10 = [v4 person];
        v30 = 138412802;
        v31 = v4;
        v32 = 2112;
        v33 = v9;
        v34 = 2112;
        v35 = v10;
        _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "Face classification %@ for event %@ already contains tagged person %@; add person settings not supported", &v30, 0x20u);
      }
    }

    else
    {
      v8 = HFLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v28 = *(a1 + 32);
        v30 = 138412290;
        v31 = v28;
        _os_log_error_impl(&dword_20CEB6000, v8, OS_LOG_TYPE_ERROR, "No face classification for event %@; add person settings not supported", &v30, 0xCu);
      }
    }

    v13 = MEMORY[0x277D2C900];
    v14 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
    v12 = [v13 futureWithError:v14];
LABEL_18:

    goto LABEL_19;
  }

  v11 = HFLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v30) = 0;
    _os_log_impl(&dword_20CEB6000, v11, OS_LOG_TYPE_DEFAULT, "No event provided; add person settings not supported", &v30, 2u);
  }

  v12 = [MEMORY[0x277D2C900] futureWithNoResult];
LABEL_19:

  return v12;
}

- (void)addPersonViewControllerDidFinish:(id)finish
{
  v12[1] = *MEMORY[0x277D85DE8];
  [(HUFaceRecognitionPersonEditorViewController *)self setShouldUpdateDelegate:1];
  personItemManager = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  personItem = [personItemManager personItem];

  v11 = *MEMORY[0x277D13BB8];
  v12[0] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [personItem updateWithOptions:v7];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__HUFaceRecognitionPersonEditorViewController_addPersonViewControllerDidFinish___block_invoke;
  v10[3] = &unk_277DC32C0;
  v10[4] = self;
  v10[5] = a2;
  v9 = [v8 addSuccessBlock:v10];
}

void __80__HUFaceRecognitionPersonEditorViewController_addPersonViewControllerDidFinish___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) personItemManager];
  v2 = [v3 reloadAndUpdateAllItemsFromSenderSelector:*(a1 + 40)];
}

- (HUFaceRecognitionPersonEditorViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end