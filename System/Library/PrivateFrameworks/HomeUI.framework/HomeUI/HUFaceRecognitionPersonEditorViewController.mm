@interface HUFaceRecognitionPersonEditorViewController
- (BOOL)automaticallyUpdatesViewControllerTitle;
- (BOOL)shouldManageTextFieldForItem:(id)a3;
- (Class)cellClassForItem:(id)a3 indexPath:(id)a4;
- (HUFaceRecognitionPersonEditorViewController)initWithPerson:(id)a3 personManager:(id)a4 home:(id)a5;
- (HUFaceRecognitionPersonEditorViewController)initWithPersonLikeItem:(id)a3;
- (HUFaceRecognitionPersonEditorViewControllerDelegate)delegate;
- (id)presentFaceRecognitionAddPersonSettingsForUnknownPersonEvent:(id)a3 animated:(BOOL)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (void)_deletePerson;
- (void)_presentAddPersonViewController;
- (void)addPersonViewControllerDidFinish:(id)a3;
- (void)itemManager:(id)a3 didUpdateResultsForSourceItem:(id)a4;
- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5;
- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)textFieldDidEndEditing:(id)a3;
- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HUFaceRecognitionPersonEditorViewController

- (HUFaceRecognitionPersonEditorViewController)initWithPersonLikeItem:(id)a3
{
  v4 = a3;
  v5 = [HUFaceRecognitionPersonEditorItemManager alloc];
  v6 = [v4 copy];
  v7 = [(HUFaceRecognitionPersonEditorItemManager *)v5 initWithDelegate:self sourceItem:v6];

  v15.receiver = self;
  v15.super_class = HUFaceRecognitionPersonEditorViewController;
  v8 = [(HUItemTableViewController *)&v15 initWithItemManager:v7 tableViewStyle:1];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_personItemManager, v7);
    v10 = [v4 latestResults];
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v13 = [v4 person];
      v12 = [v13 name];

      if (!v12)
      {
        v12 = _HULocalizedStringWithDefaultValue(@"HUFaceRecognitionPersonEditorViewControllerTitleUnknownPerson", @"HUFaceRecognitionPersonEditorViewControllerTitleUnknownPerson", 1);
      }
    }

    [(HUFaceRecognitionPersonEditorViewController *)v9 setTitle:v12];

    v9->_shouldUpdateDelegate = 0;
  }

  return v9;
}

- (HUFaceRecognitionPersonEditorViewController)initWithPerson:(id)a3 personManager:(id)a4 home:(id)a5
{
  v8 = MEMORY[0x277D14908];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[v8 alloc] initWithPerson:v11 fromPersonManager:v10 home:v9];

  v13 = [(HUFaceRecognitionPersonEditorViewController *)self initWithPersonLikeItem:v12];
  return v13;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = HUFaceRecognitionPersonEditorViewController;
  [(HUItemTableViewController *)&v13 viewWillDisappear:a3];
  v4 = [(HUFaceRecognitionPersonEditorViewController *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(HUFaceRecognitionPersonEditorViewController *)self shouldUpdateDelegate];

    if (v6)
    {
      v7 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
      v8 = [v7 personItem];
      v14 = *MEMORY[0x277D13BB8];
      v15[0] = MEMORY[0x277CBEC38];
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v10 = [v8 updateWithOptions:v9];
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
  v2 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  v3 = [v2 personItem];
  v4 = [v3 latestResults];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  LOBYTE(v2) = [v5 length] != 0;
  return v2;
}

- (Class)cellClassForItem:(id)a3 indexPath:(id)a4
{
  v5 = a3;
  v6 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  v7 = [v6 faceCropItem];

  if (v7 != v5)
  {
    v8 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
    v9 = [v8 nameItem];

    if (v9 != v5)
    {
      v10 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
      v11 = [v10 hideNotificationsItem];

      if (v11 != v5)
      {
        v12 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
        v13 = [v12 deleteItem];
        if (![v5 isEqual:v13])
        {
          v14 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
          v15 = [v14 addNameItem];
          [v5 isEqual:v15];
        }
      }
    }
  }

  v16 = objc_opt_class();

  return v16;
}

- (void)setupCell:(id)a3 forItem:(id)a4 indexPath:(id)a5
{
  v20 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v8 = v20;
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
    [v20 setSelectionStyle:0];
  }

  v11 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  v12 = [v11 deleteItem];
  v13 = [v7 isEqual:v12];

  if ((v13 & 1) != 0 || (-[HUFaceRecognitionPersonEditorViewController personItemManager](self, "personItemManager"), v14 = objc_claimAutoreleasedReturnValue(), [v14 addNameItem], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v7, "isEqual:", v15), v15, v14, v16))
  {
    objc_opt_class();
    v17 = v20;
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

- (void)updateCell:(id)a3 forItem:(id)a4 indexPath:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v23.receiver = self;
  v23.super_class = HUFaceRecognitionPersonEditorViewController;
  [(HUItemTableViewController *)&v23 updateCell:v10 forItem:v11 indexPath:a5 animated:v6];
  v12 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  v13 = [v12 nameItem];

  if (v13 == v11)
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

    v17 = [v11 latestResults];
    v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277D13F70]];
    v19 = [v16 textField];
    [v19 setPlaceholder:v18];

    v20 = [v11 latestResults];
    v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
    v22 = [v16 textField];
    [v22 setText:v21];
  }
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  v7 = [v6 displayedItemAtIndexPath:v5];

  v8 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  v9 = [v8 nameItem];
  if (v7 == v9)
  {
    goto LABEL_6;
  }

  v10 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  v11 = [v10 hideNotificationsItem];
  v12 = v11;
  if (v7 == v11)
  {

LABEL_6:
    goto LABEL_7;
  }

  v13 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  v14 = [v13 faceCropItem];

  if (v7 != v14)
  {
    v15 = v5;
    goto LABEL_8;
  }

LABEL_7:
  v15 = 0;
LABEL_8:

  return v15;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = HUFaceRecognitionPersonEditorViewController;
  [(HUItemTableViewController *)&v24 tableView:v6 didSelectRowAtIndexPath:v7];
  v8 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  v9 = [v8 displayedItemAtIndexPath:v7];

  v10 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  v11 = [v10 deleteItem];
  v12 = [v9 isEqual:v11];

  if (v12)
  {
    [(HUFaceRecognitionPersonEditorViewController *)self _deletePerson];
  }

  else
  {
    v13 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
    v14 = [v13 addNameItem];
    v15 = [v9 isEqual:v14];

    if (v15)
    {
      v16 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
      v17 = [v16 sourceItem];
      v18 = [v17 latestResults];
      v19 = [v18 objectForKeyedSubscript:*MEMORY[0x277D13CF8]];
      v20 = [v19 BOOLValue];

      if (v20)
      {
        [(HUFaceRecognitionPersonEditorViewController *)self _presentAddPersonViewController];
      }

      else
      {
        v21 = [MEMORY[0x277D148E8] sharedInstance];
        v22 = [MEMORY[0x277CBEBC0] hf_photosLibraryPeopleAlbumURL];
        v23 = [v21 openURL:v22];
      }
    }
  }

  [v6 deselectRowAtIndexPath:v7 animated:1];
}

- (void)itemManager:(id)a3 didUpdateResultsForSourceItem:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v13.receiver = self;
  v13.super_class = HUFaceRecognitionPersonEditorViewController;
  [(HUItemTableViewController *)&v13 itemManager:a3 didUpdateResultsForSourceItem:v6];
  v7 = [v6 latestResults];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = HFLogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v6;
      _os_log_error_impl(&dword_20CEB6000, v10, OS_LOG_TYPE_ERROR, "Source item has determined it needs to hide: %@. Dismissing.", buf, 0xCu);
    }

    v11 = [(HUFaceRecognitionPersonEditorViewController *)self navigationController];
    v12 = [v11 popViewControllerAnimated:1];
  }
}

- (void)switchCell:(id)a3 didTurnOn:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HUFaceRecognitionPersonEditorViewController *)self tableView];
  v8 = [v7 indexPathForCell:v6];

  v9 = [(HUItemTableViewController *)self itemManager];
  v10 = [v9 displayedItemAtIndexPath:v8];

  v11 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  v12 = [v11 hideNotificationsItem];
  v13 = [v10 isEqual:v12];

  if (v13)
  {
    v14 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
    v15 = [v14 personItem];

    v16 = !v4;
    v17 = [(HUItemTableViewController *)self itemManager];
    v18 = [v17 home];
    v19 = [v18 personSettingsManager];

    v20 = [v15 latestResults];
    v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277D14060]];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __68__HUFaceRecognitionPersonEditorViewController_switchCell_didTurnOn___block_invoke;
    v23[3] = &unk_277DC3270;
    v24 = v15;
    v26 = v4;
    v25 = v6;
    v27 = !v4;
    v22 = v15;
    [v19 updateClassificationNotificationsEnabled:v16 forPersonWithUUID:v21 completion:v23];
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

- (BOOL)shouldManageTextFieldForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  v6 = [v5 nameItem];

  return v6 == v4;
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  v6 = [v5 sourceItem];
  v7 = [v6 latestResults];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  v9 = MEMORY[0x277D14CE8];
  v10 = [v4 text];
  v11 = [v9 sanitizeUserEnteredHomeKitName:v10];

  if ([v11 length] || !v8)
  {
    if ([v11 length])
    {
      v12 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
      v13 = [v12 personItem];

      v14 = [v13 personManager];
      v15 = [v13 person];
      v16 = [v14 hf_namePerson:v15 name:v11];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __70__HUFaceRecognitionPersonEditorViewController_textFieldDidEndEditing___block_invoke;
      v20[3] = &unk_277DB7E90;
      v21 = v4;
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
    [v4 setText:v8];
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
  v3 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  v4 = [v3 personItem];

  v5 = [v4 personManager];
  v6 = [v4 person];

  if (v6)
  {
    v7 = [v4 person];
    v8 = [v7 UUID];
    [v5 hf_removePersonWithUUID:v8];
  }

  else
  {
    v7 = [v4 latestResults];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13CE8]];
    [v5 hf_removeFaceCropsWithUUIDs:v8];
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
  v3 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  v4 = [v3 sourceItem];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v14 = v5;

  v6 = v14;
  if (v14)
  {
    v7 = [v14 event];
    v8 = [HUFaceRecognitionAddPersonViewController alloc];
    v9 = [(HUItemTableViewController *)self itemManager];
    v10 = [v9 home];
    v11 = [(HUFaceRecognitionAddPersonViewController *)v8 initWithSignificantEvent:v7 home:v10];

    [(HUFaceRecognitionAddPersonViewController *)v11 setDelegate:self];
    v12 = [(HUFaceRecognitionPersonEditorViewController *)self navigationController];
    v13 = [v12 hu_pushPreloadableViewController:v11 animated:1];

    v6 = v14;
  }
}

- (id)presentFaceRecognitionAddPersonSettingsForUnknownPersonEvent:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  v6 = [(HUItemTableViewController *)self hu_preloadContent];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __117__HUFaceRecognitionPersonEditorViewController_presentFaceRecognitionAddPersonSettingsForUnknownPersonEvent_animated___block_invoke;
  v10[3] = &unk_277DBE0A0;
  v11 = v5;
  v12 = self;
  v7 = v5;
  v8 = [v6 flatMap:v10];

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

- (void)addPersonViewControllerDidFinish:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  [(HUFaceRecognitionPersonEditorViewController *)self setShouldUpdateDelegate:1];
  v5 = [(HUFaceRecognitionPersonEditorViewController *)self personItemManager];
  v6 = [v5 personItem];

  v11 = *MEMORY[0x277D13BB8];
  v12[0] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v6 updateWithOptions:v7];
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