@interface TabGroupPickerViewController
- (BOOL)_shouldShowCheckmarkForTabGroup:(id)group;
- (TabGroupPickerViewController)initWithTabGroupProvider:(id)provider;
- (id)_checkmarkAccessoryForTabGroup:(id)group;
- (id)_moreButtonAccessoryForTabGroup:(id)group inCell:(id)cell;
- (id)_swipeActionsConfigurationForIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath;
- (void)_enumerateTabGroupSectionsWithBlock:(id)block;
- (void)_reloadData;
- (void)_reloadDataIfNeeded;
- (void)_removeDataUnrelatedToTabGroups;
- (void)_updateTitle;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)doneButtonTapped;
- (void)loadView;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setNeedsReloadData;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation TabGroupPickerViewController

- (TabGroupPickerViewController)initWithTabGroupProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = TabGroupPickerViewController;
  v5 = [(TabGroupPickerViewController *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_tabGroupProvider, providerCopy);
    [providerCopy registerTabGroupManagerObserver:v6];
    v7 = v6;
  }

  return v6;
}

- (void)loadView
{
  v21.receiver = self;
  v21.super_class = TabGroupPickerViewController;
  [(TabGroupPickerViewController *)&v21 loadView];
  v3 = [objc_alloc(MEMORY[0x277D75290]) initWithAppearance:2];
  if ([MEMORY[0x277D49A08] isSolariumEnabled])
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v3 setBackgroundColor:clearColor];
  }

  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __40__TabGroupPickerViewController_loadView__block_invoke;
  v18[3] = &unk_2781D7E78;
  objc_copyWeak(&v19, &location);
  [v3 setTrailingSwipeActionsConfigurationProvider:v18];
  v5 = objc_alloc(MEMORY[0x277D752B8]);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __40__TabGroupPickerViewController_loadView__block_invoke_2;
  v15 = &unk_2781D7EA0;
  v6 = v3;
  v16 = v6;
  objc_copyWeak(&v17, &location);
  v7 = [v5 initWithSectionProvider:&v12];
  v8 = objc_alloc(MEMORY[0x277D752A0]);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v10 = [v8 initWithFrame:v7 collectionViewLayout:?];
  collectionView = self->_collectionView;
  self->_collectionView = v10;

  [(UICollectionView *)self->_collectionView setAccessibilityIdentifier:@"TabGroupCollectionView"];
  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setDragDelegate:self];
  [(UICollectionView *)self->_collectionView setDropDelegate:self];
  [(UICollectionView *)self->_collectionView setAutoresizingMask:18];
  [(TabGroupPickerViewController *)self setView:self->_collectionView];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

id __40__TabGroupPickerViewController_loadView__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained _swipeActionsConfigurationForIndexPath:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __40__TabGroupPickerViewController_loadView__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x277CFB868] sectionWithListConfiguration:*(a1 + 32) layoutEnvironment:v5];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [v6 contentInsets];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = objc_loadWeakRetained(WeakRetained + 124);
    v15 = v14;
    v16 = 12.0;
    if (a2)
    {
      if (a2 == 1)
      {
        if (([v14 hasMultipleProfiles] & 1) == 0 || (objc_msgSend(v15, "privateTabGroupIfAvailable"), v20 = objc_claimAutoreleasedReturnValue(), v20, v18 = v9, !v20))
        {
          v16 = 0.0;
          v18 = 0.0;
        }
      }

      else if (a2 != 3 || (v17 = [v14 hasMultipleProfiles], v16 = 0.0, v18 = 0.0, (v17 & 1) != 0))
      {
        v16 = 12.0;
        v18 = v9;
      }
    }

    else
    {
      v18 = 10.0;
    }

    [v6 setContentInsets:{v18, v11, v16, v13}];
    v19 = v6;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)viewDidLoad
{
  v52.receiver = self;
  v52.super_class = TabGroupPickerViewController;
  [(TabGroupPickerViewController *)&v52 viewDidLoad];
  [(TabGroupPickerViewController *)self _updateTitle];
  editButtonItem = [(TabGroupPickerViewController *)self editButtonItem];
  [editButtonItem setAccessibilityIdentifier:@"EditButton"];

  editButtonItem2 = [(TabGroupPickerViewController *)self editButtonItem];
  navigationItem = [(TabGroupPickerViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:editButtonItem2];

  v6 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:self action:sel_doneButtonTapped];
  doneButton = self->_doneButton;
  self->_doneButton = v6;

  [(UIBarButtonItem *)self->_doneButton setAccessibilityIdentifier:@"DoneButton"];
  v8 = self->_doneButton;
  navigationItem2 = [(TabGroupPickerViewController *)self navigationItem];
  [navigationItem2 setRightBarButtonItem:v8];

  objc_initWeak(&location, self);
  v10 = MEMORY[0x277D752B0];
  v11 = objc_opt_class();
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __43__TabGroupPickerViewController_viewDidLoad__block_invoke;
  v49[3] = &unk_2781D7EC8;
  objc_copyWeak(&v50, &location);
  v12 = [v10 registrationWithCellClass:v11 configurationHandler:v49];
  v13 = MEMORY[0x277D752B0];
  v14 = objc_opt_class();
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __43__TabGroupPickerViewController_viewDidLoad__block_invoke_2;
  v47[3] = &unk_2781D7EF0;
  objc_copyWeak(&v48, &location);
  v15 = [v13 registrationWithCellClass:v14 configurationHandler:v47];
  v16 = MEMORY[0x277D752B0];
  v17 = objc_opt_class();
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __43__TabGroupPickerViewController_viewDidLoad__block_invoke_3;
  v45[3] = &unk_2781D7EC8;
  objc_copyWeak(&v46, &location);
  v18 = [v16 registrationWithCellClass:v17 configurationHandler:v45];
  v19 = MEMORY[0x277D752B0];
  v20 = objc_opt_class();
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __43__TabGroupPickerViewController_viewDidLoad__block_invoke_4;
  v43[3] = &unk_2781D7EC8;
  objc_copyWeak(&v44, &location);
  v21 = [v19 registrationWithCellClass:v20 configurationHandler:v43];
  v22 = objc_alloc(MEMORY[0x277D752D0]);
  collectionView = self->_collectionView;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __43__TabGroupPickerViewController_viewDidLoad__block_invoke_5;
  v38[3] = &unk_2781D7F18;
  v24 = v18;
  v39 = v24;
  v25 = v12;
  v40 = v25;
  v26 = v21;
  v41 = v26;
  v27 = v15;
  v42 = v27;
  v28 = [v22 initWithCollectionView:collectionView cellProvider:v38];
  dataSource = self->_dataSource;
  self->_dataSource = v28;

  v30 = objc_alloc_init(MEMORY[0x277D752D8]);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __43__TabGroupPickerViewController_viewDidLoad__block_invoke_6;
  v36[3] = &unk_2781D7F40;
  objc_copyWeak(&v37, &location);
  [v30 setCanReorderItemHandler:v36];
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __43__TabGroupPickerViewController_viewDidLoad__block_invoke_7;
  v34 = &unk_2781D7F68;
  objc_copyWeak(&v35, &location);
  [v30 setDidReorderHandler:&v31];
  [(UICollectionViewDiffableDataSource *)self->_dataSource setReorderingHandlers:v30, v31, v32, v33, v34];
  [(TabGroupPickerViewController *)self _reloadData];
  objc_destroyWeak(&v35);
  objc_destroyWeak(&v37);

  objc_destroyWeak(&v44);
  objc_destroyWeak(&v46);

  objc_destroyWeak(&v48);
  objc_destroyWeak(&v50);
  objc_destroyWeak(&location);
}

void __43__TabGroupPickerViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v11 = WeakRetained;
    if (WeakRetained)
    {
      v12 = objc_loadWeakRetained(WeakRetained + 124);
      v13 = [MEMORY[0x277D756E0] cellConfiguration];
      v14 = [v12 imageForTabGroup:v9];
      [v13 setImage:v14];

      if (![v12 hasMultipleProfiles] || (objc_msgSend(v9, "isNamed") & 1) != 0 || (objc_msgSend(v9, "isPrivateBrowsing") & 1) != 0)
      {
        v15 = [v9 displayTitle];
        [v13 setText:v15];
      }

      else
      {
        v25 = [v12 activeProfile];
        v15 = [v25 title];

        v26 = objc_alloc(MEMORY[0x277CCAB48]);
        v27 = MEMORY[0x277CCACA8];
        v28 = [v9 displayTitle];
        v29 = [v27 stringWithFormat:@"%@ — %@", v15, v28];
        v30 = [v26 initWithString:v29];

        v32 = *MEMORY[0x277D740C0];
        v31 = [MEMORY[0x277D75348] secondaryLabelColor];
        [v30 addAttribute:v32 value:v31 range:{objc_msgSend(v15, "length"), objc_msgSend(v30, "length") - objc_msgSend(v15, "length")}];

        [v13 setAttributedText:v30];
      }

      v16 = [v13 textProperties];
      [v16 setNumberOfLines:2];

      [v7 setContentConfiguration:v13];
      v17 = [MEMORY[0x277CBEB18] array];
      v18 = [v11 _checkmarkAccessoryForTabGroup:v9];
      [v17 safari_addObjectUnlessNil:v18];

      v19 = [v11 _moreButtonAccessoryForTabGroup:v9 inCell:v7];
      [v17 safari_addObjectUnlessNil:v19];

      if ([v8 section] || !objc_msgSend(v9, "isNamed"))
      {
        [v7 setAccessibilityIdentifier:@"LocalTabGroupCell"];
      }

      else
      {
        v20 = objc_alloc_init(MEMORY[0x277D75280]);
        [v20 setDisplayedState:1];
        [v17 addObject:v20];
        v33[0] = @"isSyncable";
        if ([v9 isSyncable])
        {
          v21 = @"true";
        }

        else
        {
          v21 = @"false";
        }

        v33[1] = @"isPrivate";
        v34[0] = v21;
        if ([v9 isPrivateBrowsing])
        {
          v22 = @"true";
        }

        else
        {
          v22 = @"false";
        }

        v34[1] = v22;
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
        v24 = WBSMakeAccessibilityIdentifier();
        [v7 setAccessibilityIdentifier:v24];
      }

      [v7 setAccessories:v17];
    }
  }
}

void __43__TabGroupPickerViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = [MEMORY[0x277D756E0] cellConfiguration];
    v8 = [v5 row];
    if (v8)
    {
      if (v8 != 1)
      {
LABEL_7:
        [v14 setContentConfiguration:v7];

        goto LABEL_8;
      }

      v9 = objc_loadWeakRetained(WeakRetained + 124);
      v10 = [v9 moveLocalTabsToNewGroupTitle];
      [v7 setText:v10];

      v11 = @"CreateNewTabGroupFromLocalTabsCell";
    }

    else
    {
      v9 = _WBSLocalizedString();
      [v7 setText:v9];
      v11 = @"CreateNewEmptyTabGroupCell";
    }

    v12 = [MEMORY[0x277D755B8] systemImageNamed:@"plus"];
    [v7 setImage:v12];

    [v14 setAccessibilityIdentifier:v11];
    v13 = [v14 accessibilityTraits];
    [v14 setAccessibilityTraits:*MEMORY[0x277D76548] | v13];
    goto LABEL_7;
  }

LABEL_8:
}

void __43__TabGroupPickerViewController_viewDidLoad__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v15 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = [MEMORY[0x277D756E0] cellConfiguration];
    v9 = [v6 displayTitle];
    [v8 setText:v9];

    v10 = objc_loadWeakRetained(WeakRetained + 124);
    v11 = [v10 imageForTabGroup:v6];
    [v8 setImage:v11];

    [v15 setAccessibilityIdentifier:@"PrivateTabGroup"];
    [v15 setContentConfiguration:v8];
    v12 = [MEMORY[0x277CBEB18] array];
    v13 = [WeakRetained _checkmarkAccessoryForTabGroup:v6];
    [v12 safari_addObjectUnlessNil:v13];

    v14 = [WeakRetained _moreButtonAccessoryForTabGroup:v6 inCell:v15];
    [v12 safari_addObjectUnlessNil:v14];

    [v15 setAccessories:v12];
  }
}

void __43__TabGroupPickerViewController_viewDidLoad__block_invoke_4(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(WeakRetained + 124);
    v7 = [MEMORY[0x277D756E0] valueCellConfiguration];
    v8 = [MEMORY[0x277D755B8] _systemImageNamed:@"person.crop.rectangle.stack"];
    [v7 setImage:v8];

    v9 = _WBSLocalizedString();
    [v7 setText:v9];

    v10 = [v6 activeProfile];
    v11 = [v10 title];
    [v7 setSecondaryText:v11];

    [v3 setContentConfiguration:v7];
    v12 = objc_alloc(MEMORY[0x277D75278]);
    v13 = [v6 menuForSwitchingProfiles];
    v14 = [v12 initWithMenu:v13];

    [v3 setAccessibilityIdentifier:@"ProfileSwitcher"];
    v16[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    [v3 setAccessories:v15];
  }
}

id __43__TabGroupPickerViewController_viewDidLoad__block_invoke_5(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v8 section];
  v11 = 0;
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v12 = 56;
    }

    else
    {
      if (v10 != 3)
      {
        goto LABEL_13;
      }

      v12 = 48;
    }
  }

  else if (v10)
  {
    if (v10 != 1)
    {
      goto LABEL_13;
    }

    v12 = 32;
  }

  else
  {
    v13 = [v9 isPrivateBrowsing];
    v12 = 40;
    if (v13)
    {
      v12 = 32;
    }
  }

  v11 = [v7 dequeueConfiguredReusableCellWithRegistration:*(a1 + v12) forIndexPath:v8 item:v9];
LABEL_13:

  return v11;
}

uint64_t __43__TabGroupPickerViewController_viewDidLoad__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained[126] indexPathForItemIdentifier:v3];
    if ([v6 section])
    {
      v7 = 0;
    }

    else
    {
      v7 = [v3 isNamed];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __43__TabGroupPickerViewController_viewDidLoad__block_invoke_7(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15 difference];
  if ([v3 hasChanges])
  {
    v4 = [v3 insertions];
    v5 = [v4 firstObject];
    v6 = [v5 object];

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v8 = [v15 initialSnapshot];
      v9 = [v8 itemIdentifiersInSectionWithIdentifier:&unk_2827FBF20];

      v10 = [v15 finalSnapshot];
      v11 = [v10 itemIdentifiersInSectionWithIdentifier:&unk_2827FBF20];

      v12 = [v11 indexOfObject:v6];
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v9 lastObject];
      }

      else
      {
        [v9 objectAtIndexedSubscript:v12];
      }
      v13 = ;
      *(WeakRetained + 1024) = 1;
      v14 = objc_loadWeakRetained(WeakRetained + 124);
      [v14 moveTabGroup:v6 beforeOrAfterTabGroup:v13];

      *(WeakRetained + 1024) = 0;
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = TabGroupPickerViewController;
  [(TabGroupPickerViewController *)&v5 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  [(TabGroupPickerViewController *)self _reloadData];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = TabGroupPickerViewController;
  [(TabGroupPickerViewController *)&v3 viewWillLayoutSubviews];
  [(TabGroupPickerViewController *)self _reloadDataIfNeeded];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = TabGroupPickerViewController;
  [(TabGroupPickerViewController *)&v5 viewWillDisappear:disappear];
  willDisappear = self->_willDisappear;
  if (willDisappear)
  {
    willDisappear[2]();
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  editingCopy = editing;
  v10.receiver = self;
  v10.super_class = TabGroupPickerViewController;
  [(TabGroupPickerViewController *)&v10 setEditing:editing animated:animated];
  if (editingCopy)
  {
    doneButton = 0;
    v7 = @"DoneButton";
  }

  else
  {
    doneButton = self->_doneButton;
    v7 = @"EditButton";
  }

  navigationItem = [(TabGroupPickerViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:doneButton];

  editButtonItem = [(TabGroupPickerViewController *)self editButtonItem];
  [editButtonItem setAccessibilityIdentifier:v7];

  [(UICollectionView *)self->_collectionView setEditing:editingCopy];
  if (editingCopy)
  {
    [(TabGroupPickerViewController *)self _removeDataUnrelatedToTabGroups];
  }

  else
  {
    [(TabGroupPickerViewController *)self _reloadData];
  }
}

- (void)_removeDataUnrelatedToTabGroups
{
  snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  [snapshot deleteSectionsWithIdentifiers:&unk_2827FC538];
  [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:snapshot animatingDifferences:1];
}

- (void)doneButtonTapped
{
  presentingViewController = [(TabGroupPickerViewController *)self presentingViewController];
  [presentingViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)setNeedsReloadData
{
  self->_needsReloadData = !self->_isReordering;
  view = [(TabGroupPickerViewController *)self view];
  [view setNeedsLayout];
}

- (void)_reloadDataIfNeeded
{
  if (self->_needsReloadData)
  {
    [(TabGroupPickerViewController *)self _reloadData];
  }
}

- (void)_reloadData
{
  v21[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_tabGroupProvider);
  if ([(TabGroupPickerViewController *)self isViewLoaded]&& WeakRetained && !self->_isReordering)
  {
    if ([(UICollectionView *)self->_collectionView hasUncommittedUpdates])
    {
      self->_needsReloadData = 1;
    }

    else
    {
      self->_needsReloadData = 0;
      v4 = objc_alloc_init(MEMORY[0x277CFB890]);
      [(TabGroupPickerViewController *)self _updateTitle];
      [v4 appendSectionsWithIdentifiers:&unk_2827FC550];
      v5 = MEMORY[0x277CBEB18];
      unnamedTabGroup = [WeakRetained unnamedTabGroup];
      v7 = [v5 arrayWithObject:unnamedTabGroup];

      namedTabGroups = [WeakRetained namedTabGroups];
      [v7 addObjectsFromArray:namedTabGroups];

      privateTabGroupIfAvailable = [WeakRetained privateTabGroupIfAvailable];
      if (!-[UICollectionView isEditing](self->_collectionView, "isEditing") && [WeakRetained hasMultipleProfiles])
      {
        v21[0] = @"Profile Switcher";
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
        [v4 appendItemsWithIdentifiers:v10 intoSectionWithIdentifier:&unk_2827FBF50];

        v20 = @"Profile Switcher";
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
        [v4 reconfigureItemsWithIdentifiers:v11];
      }

      hasMultipleProfiles = [WeakRetained hasMultipleProfiles];
      [v4 appendItemsWithIdentifiers:v7 intoSectionWithIdentifier:&unk_2827FBF20];
      if (hasMultipleProfiles)
      {
        [v4 reloadItemsWithIdentifiers:v7];
        if (privateTabGroupIfAvailable)
        {
          v19 = privateTabGroupIfAvailable;
          v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
          [v4 appendItemsWithIdentifiers:v13 intoSectionWithIdentifier:&unk_2827FBF68];

          v18 = privateTabGroupIfAvailable;
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
          [v4 reloadItemsWithIdentifiers:v14];
        }
      }

      else
      {
        if (privateTabGroupIfAvailable)
        {
          v17 = privateTabGroupIfAvailable;
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
          [v4 appendItemsWithIdentifiers:v15 intoSectionWithIdentifier:&unk_2827FBF20];
        }

        [v4 reloadItemsWithIdentifiers:v7];
      }

      if (![(UICollectionView *)self->_collectionView isEditing])
      {
        [v4 appendItemsWithIdentifiers:&unk_2827FC568 intoSectionWithIdentifier:&unk_2827FBF38];
        moveLocalTabsToNewGroupTitle = [WeakRetained moveLocalTabsToNewGroupTitle];

        if (moveLocalTabsToNewGroupTitle)
        {
          [v4 appendItemsWithIdentifiers:&unk_2827FC580 intoSectionWithIdentifier:&unk_2827FBF38];
          [v4 reconfigureItemsWithIdentifiers:&unk_2827FC580];
        }
      }

      [(UICollectionViewDiffableDataSource *)self->_dataSource applySnapshot:v4 animatingDifferences:1];
    }
  }
}

- (void)_enumerateTabGroupSectionsWithBlock:(id)block
{
  blockCopy = block;
  v5 = 0;
  v13 = 1000;
  v6 = 1;
  while (1)
  {
    v14 = v6;
    v7 = [*(&self->super.super.super.isa + v13) numberOfItemsInSection:{v5, v13}];
    if (v7 >= 1)
    {
      break;
    }

LABEL_6:
    v6 = 0;
    v5 = 1;
    if ((v14 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v8 = v7;
  v9 = 0;
  while (1)
  {
    v10 = [MEMORY[0x277CCAA70] indexPathForItem:v9 inSection:v5];
    v11 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:v10];
    v15 = 0;
    blockCopy[2](blockCopy, v11, v10, &v15);
    v12 = v15;

    if (v12)
    {
      break;
    }

    if (v8 == ++v9)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
}

- (BOOL)_shouldShowCheckmarkForTabGroup:(id)group
{
  groupCopy = group;
  WeakRetained = objc_loadWeakRetained(&self->_tabGroupProvider);
  activeTabGroupOrTabGroupVisibleInSwitcher = [WeakRetained activeTabGroupOrTabGroupVisibleInSwitcher];
  v7 = [groupCopy isEqual:activeTabGroupOrTabGroupVisibleInSwitcher];

  return v7;
}

- (id)_checkmarkAccessoryForTabGroup:(id)group
{
  if ([(TabGroupPickerViewController *)self _shouldShowCheckmarkForTabGroup:group])
  {
    v3 = objc_alloc_init(MEMORY[0x277D75248]);
    [v3 setDisplayedState:2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_moreButtonAccessoryForTabGroup:(id)group inCell:(id)cell
{
  groupCopy = group;
  cellCopy = cell;
  if ([groupCopy isPrivateBrowsing] && (+[Application sharedApplication](Application, "sharedApplication"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isPrivateBrowsingLocked"), v8, (v9 & 1) != 0) || (objc_msgSend(groupCopy, "isNamed") & 1) == 0 && !objc_msgSend(groupCopy, "hasTextForPasteboard"))
  {
    v22 = 0;
  }

  else
  {
    moreButton = [cellCopy moreButton];

    if (!moreButton)
    {
      plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
      clearColor = [MEMORY[0x277D75348] clearColor];
      background = [plainButtonConfiguration background];
      [background setBackgroundColor:clearColor];

      v14 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918] scale:2];
      [plainButtonConfiguration setPreferredSymbolConfigurationForImage:v14];

      v15 = [MEMORY[0x277D755B8] systemImageNamed:@"ellipsis.circle"];
      [plainButtonConfiguration setImage:v15];

      v16 = [MEMORY[0x277D75220] buttonWithConfiguration:plainButtonConfiguration primaryAction:0];
      [v16 setShowsMenuAsPrimaryAction:1];
      [cellCopy setMoreButton:v16];
    }

    WeakRetained = objc_loadWeakRetained(&self->_tabGroupProvider);
    v18 = [WeakRetained menuForTabGroup:groupCopy variant:2];
    moreButton2 = [cellCopy moreButton];
    [moreButton2 setMenu:v18];

    v20 = objc_alloc(MEMORY[0x277D75250]);
    moreButton3 = [cellCopy moreButton];
    v22 = [v20 initWithCustomView:moreButton3 placement:1];

    [v22 setDisplayedState:1];
  }

  return v22;
}

- (id)_swipeActionsConfigurationForIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:pathCopy];
    if ([v6 isNamed])
    {
      WeakRetained = objc_loadWeakRetained(&self->_tabGroupProvider);
      v5 = [WeakRetained swipeActionsConfigurationForTabGroup:v6 forPickerSheet:1];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)_updateTitle
{
  WeakRetained = objc_loadWeakRetained(&self->_tabGroupProvider);
  if ([WeakRetained hasMultipleProfiles])
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = _WBSLocalizedString();
    activeProfile = [WeakRetained activeProfile];
    title = [activeProfile title];
    v7 = [v3 stringWithFormat:v4, title];
    [(TabGroupPickerViewController *)self setTitle:v7];
  }

  else
  {
    v4 = _WBSLocalizedString();
    [(TabGroupPickerViewController *)self setTitle:v4];
  }
}

- (id)collectionView:(id)view contextMenuConfigurationForItemAtIndexPath:(id)path point:(CGPoint)point
{
  pathCopy = path;
  if ([pathCopy section] <= 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_tabGroupProvider);
    v9 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:pathCopy];
    v7 = [WeakRetained contextMenuConfigurationForTabGroup:v9 variant:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath
{
  proposedIndexPathCopy = proposedIndexPath;
  WeakRetained = objc_loadWeakRetained(&self->_tabGroupProvider);
  namedTabGroups = [WeakRetained namedTabGroups];
  v10 = [namedTabGroups count];

  if ([proposedIndexPathCopy section] <= 0 && objc_msgSend(proposedIndexPathCopy, "row") <= 0)
  {
    v11 = MEMORY[0x277CCAA70];
    v12 = 1;
    goto LABEL_6;
  }

  if ([proposedIndexPathCopy section] > 0 || objc_msgSend(proposedIndexPathCopy, "row") > v10)
  {
    v11 = MEMORY[0x277CCAA70];
    v12 = v10;
LABEL_6:
    v13 = [v11 indexPathForRow:v12 inSection:0];
    goto LABEL_7;
  }

  v13 = proposedIndexPathCopy;
LABEL_7:
  v14 = v13;

  return v14;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  WeakRetained = objc_loadWeakRetained(&self->_tabGroupProvider);
  section = [pathCopy section];
  if (section >= 2)
  {
    if (section == 2)
    {
      v14 = [pathCopy row] == 1;
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __72__TabGroupPickerViewController_collectionView_didSelectItemAtIndexPath___block_invoke;
      v18 = &unk_2781D7F90;
      selfCopy = self;
      v20 = pathCopy;
      [WeakRetained createTabGroupFromExistingTabs:v14 completionHandler:&v15];
    }
  }

  else
  {
    presentingViewController = [(TabGroupPickerViewController *)self presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];

    v11 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:pathCopy];
    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] didSwitchToTabGroupFromLocation:4];

    if (([WeakRetained scrollTabSwitcherToTabGroupIfShowing:v11] & 1) == 0)
    {
      uuid = [v11 uuid];
      [WeakRetained setActiveTabGroupUUID:uuid];
    }
  }

  [viewCopy deselectItemAtIndexPath:pathCopy animated:{1, v15, v16, v17, v18, selfCopy}];
}

void __72__TabGroupPickerViewController_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = [*(a1 + 32) presentingViewController];
    [v3 dismissViewControllerAnimated:1 completion:0];
  }

  v4 = [*(a1 + 40) row] == 1;
  v5 = [MEMORY[0x277D499B8] sharedLogger];
  [v5 didCreateTabGroupFromLocation:4 prepopulatedWithTabs:v4];
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  v11[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if ((-[TabGroupPickerViewController isEditing](self, "isEditing") & 1) != 0 || [pathCopy section])
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v9 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:pathCopy];
    if ([v9 isNamed])
    {
      v10 = [MEMORY[0x277D75470] _sf_itemWithTabGroup:v9];
      v11[0] = v10;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    }

    else
    {
      v7 = MEMORY[0x277CBEBF8];
    }
  }

  return v7;
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    v7 = 0;
  }

  else
  {
    v8 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:pathCopy];
    if ([v8 isNamed])
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
    }
  }

  v9 = [objc_alloc(MEMORY[0x277D752E8]) initWithDropOperation:v7 intent:1];

  return v9;
}

@end