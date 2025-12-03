@interface NTKCFaceDetailViewController
- (BOOL)_cellIsHiddenBehindHeader:(id)header;
- (BOOL)_hasRemovedSystemApp;
- (BOOL)_isEditOptionFullyVisible:(id)visible;
- (BOOL)_isShareButtonEnabled;
- (BOOL)_shouldDisplayShowDebugItem;
- (CGSize)headerFaceSize;
- (NSString)reasonFaceCanNotBeAddedToLibrary;
- (NTKCFaceDetailViewController)initWithFace:(id)face inGallery:(BOOL)gallery externalAssets:(id)assets;
- (NTKCFaceDetailViewControllerDelegate)delegate;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_errorMessageForErrorCode:(int64_t)code;
- (id)_faceBundleForFace:(id)face;
- (id)_pruneComplicationsNotAvailableOnGizmo:(id)gizmo;
- (id)_pruneRemovedOrRestrictedComplications:(id)complications;
- (id)_sectionForEditOptionCollection:(id)collection;
- (id)complicationSection:(id)section allowedComplicationsForSlot:(id)slot;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_addFace;
- (void)_addFaceEndedForFace:(id)face;
- (void)_addOrRemoveDynamicSectionsWithCollection:(id)collection;
- (void)_addSectionForAction:(int64_t)action;
- (void)_addTapped;
- (void)_applySectionIndexKeysToCurrentSectionsFromIndex:(unint64_t)index;
- (void)_didTapShowDebug;
- (void)_dismissModalViewControllerPresentedByThisViewControllerAnimated:(BOOL)animated;
- (void)_ensureOtherSection;
- (void)_faceChangedOptionsForEditMode:(int64_t)mode;
- (void)_faceDidChange;
- (void)_faceDidChangeResourceDirectory;
- (void)_loadLibrary;
- (void)_presentDisconnectedDialog;
- (void)_reloadEditOptionSectionsDependentOnNTKEditModeComplications;
- (void)_setComplication:(id)complication forSlot:(id)slot;
- (void)_setEditOption:(id)option forMode:(int64_t)mode slot:(id)slot transiently:(BOOL)transiently;
- (void)_setFaceHasBeenEdited;
- (void)_setupDeviceConnectivityMonitor;
- (void)_teardownDeviceConnectivityMonitor;
- (void)_updateAddButton;
- (void)_updateShareButton;
- (void)actionSectionDidDelete:(id)delete;
- (void)actionSectionDidSelect:(id)select;
- (void)complicationSection:(id)section wantsToPresentPickerForSlot:(id)slot selectedComplication:(id)complication;
- (void)dealloc;
- (void)descriptionSection:(id)section didExpand:(BOOL)expand;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)editOptionSection:(id)section didModifyEditOption:(id)option transiently:(BOOL)transiently canceled:(BOOL)canceled;
- (void)editOptionSection:(id)section didSelectOptionAtIndex:(int64_t)index;
- (void)faceDetailComplicationPickerViewController:(id)controller didSelectComplication:(id)complication;
- (void)otherSectionDidSelectMonogramEdit:(id)edit;
- (void)photoSectionDidUpdate:(id)update;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setFace:(id)face;
- (void)setLibrary:(id)library;
- (void)shareFaceWithPreparingCompletion:(id)completion shareCompletion:(id)shareCompletion;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation NTKCFaceDetailViewController

- (NTKCFaceDetailViewController)initWithFace:(id)face inGallery:(BOOL)gallery externalAssets:(id)assets
{
  galleryCopy = gallery;
  faceCopy = face;
  assetsCopy = assets;
  v28.receiver = self;
  v28.super_class = NTKCFaceDetailViewController;
  v10 = [(NTKCFaceDetailViewController *)&v28 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    [(NTKCFaceDetailViewController *)v10 setInGallery:galleryCopy];
    if (v11->_inGallery)
    {
      copyFromGalleryFace = [faceCopy copyFromGalleryFace];
      [(NTKCFaceDetailViewController *)v11 setFace:copyFromGalleryFace];
    }

    else
    {
      [(NTKCFaceDetailViewController *)v11 setFace:faceCopy];
    }

    v13 = [[NTKCompanionFaceViewController alloc] initWithFace:v11->_face forEditing:1];
    [(NTKCFaceDetailViewController *)v11 setFaceVC:v13];

    [(NTKCFaceDetailViewController *)v11 setExternalAssets:assetsCopy];
    [(NTKCFaceDetailViewController *)v11 _loadLibrary];
    if (v11->_inGallery)
    {
      if (NTKCScreenStyle() == -1)
      {
        _LayoutConstants_1(v25);
        v14 = v26;
        v15 = &v27;
      }

      else
      {
        _LayoutConstants_1(&v23);
        v14 = v23;
        v15 = &v24;
      }
    }

    else
    {
      _LayoutConstants_1(v20);
      v14 = v21;
      v15 = &v22;
    }

    [(NTKCFaceDetailViewController *)v11 setHeaderFaceSize:v14, *v15];
    faceView = [(NTKFaceViewController *)v11->_faceVC faceView];
    selectedOptionsForCustomEditModes = [(NTKFace *)v11->_face selectedOptionsForCustomEditModes];
    [faceView prepareSwatchImagesForSelectedOptions:selectedOptionsForCustomEditModes];

    navigationItem = [(NTKCFaceDetailViewController *)v11 navigationItem];
    [navigationItem setLargeTitleDisplayMode:2];
  }

  return v11;
}

- (void)dealloc
{
  [(NTKCFaceDetailViewController *)self setFace:0];
  [(NTKCFaceDetailViewController *)self setLibrary:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, 0, 0);
  v4.receiver = self;
  v4.super_class = NTKCFaceDetailViewController;
  [(NTKCFaceDetailViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v71[1] = *MEMORY[0x277D85DE8];
  v69.receiver = self;
  v69.super_class = NTKCFaceDetailViewController;
  [(NTKCFaceDetailViewController *)&v69 viewDidLoad];
  v3 = BPSBackgroundColor();
  view = [(NTKCFaceDetailViewController *)self view];
  [view setBackgroundColor:v3];

  v54 = objc_alloc_init(MEMORY[0x277D75788]);
  [v54 configureWithTransparentBackground];
  v5 = [MEMORY[0x277D75210] effectWithStyle:2];
  [v54 setBackgroundEffect:v5];

  navigationController = [(NTKCFaceDetailViewController *)self navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setStandardAppearance:v54];

  v8 = objc_alloc(MEMORY[0x277D75B40]);
  v9 = [v8 initWithFrame:2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(NTKCFaceDetailViewController *)self setTableView:v9];

  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  v10 = BPSBackgroundColor();
  [(UITableView *)self->_tableView setBackgroundColor:v10];

  [(UITableView *)self->_tableView setIndicatorStyle:2];
  [(UITableView *)self->_tableView setSeparatorStyle:0];
  [(UITableView *)self->_tableView setSeparatorInset:0.0, NTKCScreenEdgeMargin(), 0.0, 0.0];
  [(UITableView *)self->_tableView setSectionHeaderTopPadding:0.0];
  [NTKCFaceDetailSectionController registerForTableView:self->_tableView];
  view2 = [(NTKCFaceDetailViewController *)self view];
  [view2 addSubview:self->_tableView];

  v12 = objc_opt_new();
  [(NTKCFaceDetailViewController *)self setHeaderView:v12];

  v13 = BPSBackgroundColor();
  [(_NTKCDetailHeaderView *)self->_headerView setBackgroundColor:v13];

  view3 = [(NTKCFaceDetailViewController *)self view];
  [view3 addSubview:self->_headerView];

  v15 = [[NTKCFaceContainerView alloc] initWithFaceSize:2 style:self->_headerFaceSize.width, self->_headerFaceSize.height];
  [(NTKCFaceDetailViewController *)self setFaceContainer:v15];

  view4 = [(NTKCompanionFaceViewController *)self->_faceVC view];
  [(NTKCFaceContainerView *)self->_faceContainer setFaceView:view4];

  [(_NTKCDetailHeaderView *)self->_headerView addSubview:self->_faceContainer];
  v17 = objc_opt_new();
  [(NTKCFaceDetailViewController *)self setFaceName:v17];

  v18 = BPSTextColor();
  [(UILabel *)self->_faceName setTextColor:v18];

  faceName = self->_faceName;
  if (self->_inGallery)
  {
    [(UILabel *)faceName setNumberOfLines:3];
    v20 = NTKCScreenStyle();
    v21 = 24.0;
    if (v20 == -1)
    {
      v21 = 20.0;
    }

    v22 = MEMORY[0x277D743F8];
  }

  else
  {
    [(UILabel *)faceName setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_faceName setMinimumScaleFactor:0.5];
    v21 = 17.0;
    v22 = MEMORY[0x277D74420];
  }

  v53 = [MEMORY[0x277D74300] systemFontOfSize:v21 weight:*v22];
  [(UILabel *)self->_faceName setFont:v53];
  if (self->_inGallery)
  {
    [(_NTKCDetailHeaderView *)self->_headerView addSubview:self->_faceName];
    currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
    isPaired = [currentDevice isPaired];

    if (!isPaired)
    {
      goto LABEL_11;
    }

    v25 = objc_opt_new();
    [(NTKCFaceDetailViewController *)self setAddButton:v25];

    [(UIButton *)self->_addButton addTarget:self action:sel__addTapped forControlEvents:64];
    [(UIButton *)self->_addButton sizeToFit];
    [(_NTKCDetailHeaderView *)self->_headerView addSubview:self->_addButton];
    v26 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [(NTKCFaceDetailViewController *)self setAddSpinner:v26];

    [(_NTKCDetailHeaderView *)self->_headerView addSubview:self->_addSpinner];
    [(NTKCFaceDetailViewController *)self _updateAddButton];
    v71[0] = self->_addButton;
    navigationItem = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:1];
    [(_NTKCDetailHeaderView *)self->_headerView setInteractableSubviews:navigationItem];
  }

  else
  {
    v28 = self->_faceName;
    navigationItem = [(NTKCFaceDetailViewController *)self navigationItem];
    [navigationItem setTitleView:v28];
  }

LABEL_11:
  v29 = objc_opt_new();
  [(NTKCFaceDetailViewController *)self setHeaderSeparator:v29];

  [(UIView *)self->_headerSeparator setHidden:1];
  [(_NTKCDetailHeaderView *)self->_headerView addSubview:self->_headerSeparator];
  v30 = objc_opt_new();
  [(NTKCFaceDetailViewController *)self setCurrentSections:v30];

  if ([NTKCFaceDetailDescriptionSectionController hasDescriptionSectionForFace:self->_face inGallery:self->_inGallery orExternal:self->_externalAssets != 0])
  {
    v31 = [[NTKCFaceDetailDescriptionSectionController alloc] initWithTableViewController:self face:self->_face inGallery:self->_inGallery external:self->_externalAssets != 0];
    [(NTKCFaceDetailViewController *)self setDescriptionSection:v31];

    [(NTKCFaceDetailDescriptionSectionController *)self->_descriptionSection setDelegate:self];
    [(NTKCFaceDetailSectionController *)self->_descriptionSection setSection:[(NSMutableArray *)self->_currentSections count]];
    [(NSMutableArray *)self->_currentSections addObject:self->_descriptionSection];
  }

  currentDevice2 = [MEMORY[0x277CBBAE8] currentDevice];
  isPaired2 = [currentDevice2 isPaired];

  if (isPaired2)
  {
    v34 = objc_opt_new();
    [(NTKCFaceDetailViewController *)self setEditOptionSections:v34];

    if ([(NTKFace *)self->_face isEditable])
    {
      editOptionsForCustomEditModes = [(NTKFace *)self->_face editOptionsForCustomEditModes];
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v36 = [editOptionsForCustomEditModes countByEnumeratingWithState:&v65 objects:v70 count:16];
      if (v36)
      {
        v37 = *v66;
        do
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v66 != v37)
            {
              objc_enumerationMutation(editOptionsForCustomEditModes);
            }

            v39 = *(*(&v65 + 1) + 8 * i);
            v40 = [(NTKCFaceDetailViewController *)self _sectionForEditOptionCollection:v39];
            if (v40)
            {
              [(NSMutableArray *)self->_editOptionSections addObject:v40];
              mode = [v39 mode];
              if (mode == [(NTKFace *)self->_face dynamicEditMode])
              {
                dynamicEditOptionSections = self->_dynamicEditOptionSections;
                if (!dynamicEditOptionSections)
                {
                  array = [MEMORY[0x277CBEB18] array];
                  v44 = self->_dynamicEditOptionSections;
                  self->_dynamicEditOptionSections = array;

                  dynamicEditOptionSections = self->_dynamicEditOptionSections;
                }

                [(NSMutableArray *)dynamicEditOptionSections addObject:v40];
              }
            }
          }

          v36 = [editOptionsForCustomEditModes countByEnumeratingWithState:&v65 objects:v70 count:16];
        }

        while (v36);
      }
    }

    if ([(NTKFace *)self->_face shouldColorEditModeBeAtTop])
    {
      v59 = 0;
      v60 = &v59;
      v61 = 0x3032000000;
      v62 = __Block_byref_object_copy__19;
      v63 = __Block_byref_object_dispose__19;
      v64 = 0;
      editOptionSections = self->_editOptionSections;
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __43__NTKCFaceDetailViewController_viewDidLoad__block_invoke;
      v58[3] = &unk_278781518;
      v58[4] = &v59;
      [(NSMutableArray *)editOptionSections enumerateObjectsUsingBlock:v58];
      if (v60[5])
      {
        [(NSMutableArray *)self->_editOptionSections removeObject:?];
        [(NSMutableArray *)self->_editOptionSections insertObject:v60[5] atIndex:0];
      }

      _Block_object_dispose(&v59, 8);
    }

    v46 = self->_editOptionSections;
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __43__NTKCFaceDetailViewController_viewDidLoad__block_invoke_2;
    v57[3] = &unk_278781540;
    v57[4] = self;
    [(NSMutableArray *)v46 enumerateObjectsUsingBlock:v57];
    if ([NTKCFaceDetailComplicationSectionController hasComplicationsForFace:self->_face])
    {
      v47 = [NTKCFaceDetailComplicationSectionController alloc];
      face = self->_face;
      faceView = [(NTKFaceViewController *)self->_faceVC faceView];
      v50 = [(NTKCFaceDetailComplicationSectionController *)v47 initWithTableViewController:self face:face faceView:faceView inGallery:self->_inGallery];

      [(NTKCFaceDetailComplicationSectionController *)v50 setDelegate:self];
      [(NTKCFaceDetailSectionController *)v50 setSection:[(NSMutableArray *)self->_currentSections count]];
      [(NSMutableArray *)self->_currentSections addObject:v50];
    }

    v51 = self->_face;
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __43__NTKCFaceDetailViewController_viewDidLoad__block_invoke_3;
    v56[3] = &unk_278781568;
    v56[4] = self;
    [(NTKFace *)v51 enumerateComplicationSlotsWithBlock:v56];
    if (self->_otherSection)
    {
      [(NTKCFaceDetailSectionController *)self->_otherSection setSection:[(NSMutableArray *)self->_currentSections count]];
      [(NSMutableArray *)self->_currentSections addObject:self->_otherSection];
    }

    if (!self->_inGallery)
    {
      [(NTKCFaceDetailViewController *)self _addSectionForAction:0];
      [(NTKCFaceDetailViewController *)self _addSectionForAction:1];
    }

    currentSections = self->_currentSections;
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __43__NTKCFaceDetailViewController_viewDidLoad__block_invoke_4;
    v55[3] = &unk_278781590;
    v55[4] = self;
    [(NSMutableArray *)currentSections enumerateObjectsUsingBlock:v55];
  }

  if (self->_descriptionSection && [(NSMutableArray *)self->_currentSections count]== 1)
  {
    [(NTKCFaceDetailDescriptionSectionController *)self->_descriptionSection setExpanded:1];
  }

  [(NTKCFaceDetailViewController *)self _updateShareButton];
  [(NTKCFaceDetailViewController *)self _faceDidChange];
}

void __43__NTKCFaceDetailViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 collection];
  v8 = [v7 collectionType];

  if (v8 == 1)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __43__NTKCFaceDetailViewController_viewDidLoad__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 1088);
  v4 = a2;
  [v4 setSection:{objc_msgSend(v3, "count")}];
  [*(*(a1 + 32) + 1088) addObject:v4];
}

void __43__NTKCFaceDetailViewController_viewDidLoad__block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_opt_class();
  v4 = [*(*(a1 + 32) + 1024) device];
  v5 = [v3 monogramSlotForDevice:v4];
  v6 = [v7 isEqualToString:v5];

  if (v6)
  {
    [*(a1 + 32) _ensureOtherSection];
    [*(*(a1 + 32) + 1120) addMonogramRowForSlot:v7];
  }
}

void __43__NTKCFaceDetailViewController_viewDidLoad__block_invoke_4(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [v5 setHasSpacerRow:{objc_msgSend(*(*(a1 + 32) + 1088), "count") - 1 > a3}];
  }
}

- (void)_addSectionForAction:(int64_t)action
{
  v4 = [[NTKCFaceDetailActionSectionController alloc] initWithTableViewController:self face:self->_face inGallery:self->_inGallery action:action];
  [(NTKCFaceDetailActionSectionController *)v4 setDelegate:self];
  [(NTKCFaceDetailSectionController *)v4 setSection:[(NSMutableArray *)self->_currentSections count]];
  [(NSMutableArray *)self->_currentSections addObject:v4];
}

- (void)_faceDidChange
{
  if ([(NTKCFaceDetailViewController *)self isViewLoaded]&& !self->_isSuppressingFaceDidChange)
  {
    v3 = MEMORY[0x277CCA898];
    name = [(NTKFace *)self->_face name];
    v5 = [v3 NTKHyphenatableString:name];
    [(UILabel *)self->_faceName setAttributedText:v5];

    [(UILabel *)self->_faceName sizeToFit];
    name2 = [(NTKFace *)self->_face name];
    navigationItem = [(NTKCFaceDetailViewController *)self navigationItem];
    [navigationItem setBackButtonTitle:name2];

    editOptionSections = self->_editOptionSections;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __46__NTKCFaceDetailViewController__faceDidChange__block_invoke;
    v43[3] = &unk_278781540;
    v43[4] = self;
    [(NSMutableArray *)editOptionSections enumerateObjectsUsingBlock:v43];
    [(NSMutableArray *)self->_currentSections enumerateObjectsUsingBlock:&__block_literal_global_52];
    if (self->_editOptionToMakeFullyVisible)
    {
      v9 = [(UITableView *)self->_tableView indexPathForCell:?];
      [(UITableView *)self->_tableView rectForRowAtIndexPath:v9];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      -[UITableView rectForHeaderInSection:](self->_tableView, "rectForHeaderInSection:", [v9 section]);
      x = v44.origin.x;
      y = v44.origin.y;
      width = v44.size.width;
      height = v44.size.height;
      v22 = v13 - CGRectGetHeight(v44);
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      v23 = v17 + CGRectGetHeight(v45);
      [(UITableView *)self->_tableView bounds];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      [(UITableView *)self->_tableView contentInset];
      v33 = v25 + v32;
      v35 = v27 + v34;
      v37 = v29 - (v32 + v36);
      v39 = v31 - (v34 + v38);
      v46.origin.x = v33;
      v46.origin.y = v35;
      v46.size.width = v37;
      v46.size.height = v39;
      v49.origin.x = v11;
      v49.origin.y = v22;
      v49.size.width = v15;
      v49.size.height = v23;
      if (!CGRectContainsRect(v46, v49))
      {
        v47.origin.x = v11;
        v47.origin.y = v22;
        v47.size.width = v15;
        v47.size.height = v23;
        MaxY = CGRectGetMaxY(v47);
        v48.origin.x = v33;
        v48.origin.y = v35;
        v48.size.width = v37;
        v48.size.height = v39;
        if (MaxY <= CGRectGetMaxY(v48))
        {
          v41 = 1;
        }

        else
        {
          v41 = 3;
        }

        [(UITableView *)self->_tableView scrollToRowAtIndexPath:v9 atScrollPosition:v41 animated:1];
      }

      [(NTKCFaceDetailViewController *)self setEditOptionToMakeFullyVisible:0];
    }

    view = [(NTKCFaceDetailViewController *)self view];
    [view setNeedsLayout];
  }
}

void __46__NTKCFaceDetailViewController__faceDidChange__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 collection];
  if ([v6 collectionType] == 5)
  {
    [*(a1 + 32) _addOrRemoveDynamicSectionsWithCollection:v6];
    *a4 = 1;
  }
}

- (void)_faceChangedOptionsForEditMode:(int64_t)mode
{
  v50 = *MEMORY[0x277D85DE8];
  [(NTKFace *)self->_face editOptionsForCustomEditModes];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v47 = 0u;
  v4 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v45;
    v34 = *v45;
    modeCopy = mode;
    do
    {
      v7 = 0;
      v36 = v5;
      do
      {
        if (*v45 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v44 + 1) + 8 * v7);
        if ([v8 mode] == mode)
        {
          v38 = v7;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          selfCopy3 = self;
          v10 = self->_editOptionSections;
          v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v41;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v41 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = *(*(&v40 + 1) + 8 * i);
                collection = [v15 collection];
                mode = [collection mode];
                mode2 = [v8 mode];

                if (mode == mode2)
                {
                  collection2 = [v15 collection];
                  slot = [collection2 slot];
                  slot2 = [v8 slot];

                  if (slot == slot2)
                  {
                    selectedOptionsForCustomEditModes = [(NTKFace *)selfCopy3->_face selectedOptionsForCustomEditModes];
                    v23 = [selectedOptionsForCustomEditModes mutableCopy];

                    slot3 = [v8 slot];

                    if (slot3)
                    {
                      face = selfCopy3->_face;
                      mode3 = [v8 mode];
                      slot4 = [v8 slot];
                      v28 = [(NTKFace *)face selectedOptionForCustomEditMode:mode3 slot:slot4];

                      v29 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "mode")}];
                      [v23 setObject:v28 forKeyedSubscript:v29];

                      selfCopy3 = self;
                    }

                    if ([v15 collectionChanged:v8 withSelectedOptions:v23])
                    {
                      v30 = [(NSMutableArray *)selfCopy3->_currentSections indexOfObject:v15];
                      tableView = self->_tableView;
                      v32 = [MEMORY[0x277CCAA78] indexSetWithIndex:v30];
                      v33 = tableView;
                      selfCopy3 = self;
                      [(UITableView *)v33 reloadSections:v32 withRowAnimation:5];
                    }
                  }
                }
              }

              v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v40 objects:v48 count:16];
            }

            while (v12);
          }

          v6 = v34;
          mode = modeCopy;
          v5 = v36;
          v7 = v38;
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v5);
  }
}

- (void)_faceDidChangeResourceDirectory
{
  if ([(NTKCFaceDetailViewController *)self isViewLoaded])
  {
    currentSections = self->_currentSections;

    [(NSMutableArray *)currentSections enumerateObjectsUsingBlock:&__block_literal_global_33];
  }
}

- (id)_sectionForEditOptionCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy collectionType] == 3)
  {
    [(NTKCFaceDetailViewController *)self _ensureOtherSection];
    [(NTKCFaceDetailOtherSectionController *)self->_otherSection addShowSecondsRow:collectionCopy];
    v5 = 0;
    goto LABEL_11;
  }

  if (+[NTKCFaceDetailPigmentSectionController hasSectionForFace:forEditMode:](NTKCFaceDetailPigmentSectionController, "hasSectionForFace:forEditMode:", self->_face, [collectionCopy mode]))
  {
    v6 = [NTKCFaceDetailPigmentSectionController alloc];
    face = self->_face;
    inGallery = self->_inGallery;
    faceView = [(NTKFaceViewController *)self->_faceVC faceView];
    v10 = [(NTKCFaceDetailPigmentSectionController *)v6 initWithTableViewController:self face:face inGallery:inGallery editOptionCollection:collectionCopy faceView:faceView];
    [(NTKCFaceDetailViewController *)self setPigmentSection:v10];

    v11 = 1128;
    [(NTKCFaceDetailEditOptionSectionController *)self->_pigmentSection setDelegate:self];
    [(NTKCFaceDetailPigmentSectionController *)self->_pigmentSection setParentViewController:self];
LABEL_7:
    v5 = *(&self->super.super.super.isa + v11);
    goto LABEL_11;
  }

  if (+[NTKCFaceDetailPhotosSectionController hasPhotosSectionForFace:forEditMode:](NTKCFaceDetailPhotosSectionController, "hasPhotosSectionForFace:forEditMode:", self->_face, [collectionCopy mode]))
  {
    v12 = [NTKCFaceDetailPhotosSectionController alloc];
    v13 = self->_face;
    v14 = self->_inGallery;
    faceView2 = [(NTKFaceViewController *)self->_faceVC faceView];
    v16 = [(NTKCFaceDetailPhotosSectionController *)v12 initWithTableViewController:self face:v13 inGallery:v14 editOptionCollection:collectionCopy faceView:faceView2 externalAssets:self->_externalAssets];
    [(NTKCFaceDetailViewController *)self setPhotosSection:v16];

    v11 = 1112;
    [(NTKCFaceDetailPhotosSectionController *)self->_photosSection setParentViewController:self];
    [(NTKCFaceDetailEditOptionSectionController *)self->_photosSection setDelegate:self];
    goto LABEL_7;
  }

  v17 = [NTKCFaceDetailViewContext alloc];
  v18 = self->_inGallery;
  faceView3 = [(NTKFaceViewController *)self->_faceVC faceView];
  v20 = [(NTKCFaceDetailViewContext *)v17 initInGallery:v18 faceView:faceView3 requestingViewController:self tableViewProvider:self collection:collectionCopy externalAssets:self->_externalAssets];

  v5 = [(NTKFace *)self->_face editOptionSectionControllerForContext:v20];
  if (!v5)
  {
    v21 = [NTKCFaceDetailEditOptionSectionController alloc];
    v22 = self->_face;
    v23 = self->_inGallery;
    faceView4 = [(NTKFaceViewController *)self->_faceVC faceView];
    v5 = [(NTKCFaceDetailEditOptionSectionController *)v21 initWithTableViewController:self face:v22 inGallery:v23 editOptionCollection:collectionCopy faceView:faceView4];
  }

  [(NTKCFaceDetailEditOptionSectionController *)v5 setDelegate:self];

LABEL_11:

  return v5;
}

- (void)_ensureOtherSection
{
  if (!self->_otherSection)
  {
    v3 = [(NTKCFaceDetailSectionController *)[NTKCFaceDetailOtherSectionController alloc] initWithTableViewController:self face:self->_face inGallery:self->_inGallery];
    [(NTKCFaceDetailViewController *)self setOtherSection:v3];

    otherSection = self->_otherSection;

    [(NTKCFaceDetailOtherSectionController *)otherSection setDelegate:self];
  }
}

- (void)viewDidLayoutSubviews
{
  v121.receiver = self;
  v121.super_class = NTKCFaceDetailViewController;
  [(NTKCFaceDetailViewController *)&v121 viewDidLayoutSubviews];
  view = [(NTKCFaceDetailViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  rect = v9;
  v115 = v8;

  IsRTL = CLKLayoutIsRTL();
  v120 = 0.0;
  v118 = 0u;
  v119 = 0u;
  memset(v117, 0, sizeof(v117));
  [(_NTKCDetailHeaderView *)self->_headerView frame];
  [(UITableView *)self->_tableView contentInset];
  v12 = v11;
  [(UITableView *)self->_tableView contentOffset];
  v14 = v12 + v13;
  [(UITableView *)self->_tableView _systemContentInset];
  v16 = v14 + v15;
  v17 = v14 + v15 < 0.0 && self->_intrinsicHeaderHeight != 0.0;
  [(NTKCFaceContainerView *)self->_faceContainer frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  view2 = [(NTKCFaceDetailViewController *)self view];
  [view2 safeAreaInsets];
  v113 = v27;

  v111 = v5;
  v122.origin.x = v5;
  v28 = v7;
  v122.origin.y = v7;
  v122.size.height = rect;
  v122.size.width = v115;
  Width = CGRectGetWidth(v122);
  if (v17)
  {
    v29 = self->_intrinsicHeaderHeight - v16;
  }

  else
  {
    v30 = *&v118;
    v123.origin.x = v19;
    v123.origin.y = v21;
    v123.size.width = v23;
    v123.size.height = v25;
    v29 = v30 + v30 + CGRectGetHeight(v123);
  }

  v31 = Width;
  [(_NTKCDetailHeaderView *)self->_headerView setFrame:0.0, v113, Width, v29];
  if (self->_intrinsicHeaderHeight == 0.0)
  {
    v124.origin.x = 0.0;
    v124.origin.y = v113;
    v124.size.width = Width;
    v124.size.height = v29;
    self->_intrinsicHeaderHeight = CGRectGetHeight(v124);
  }

  v112 = v29;
  if (v17)
  {
    [(NTKCFaceContainerView *)self->_faceContainer center];
    v33 = v32;
    MEMORY[0x2318D8E70]([(_NTKCDetailHeaderView *)self->_headerView bounds]);
    [(NTKCFaceContainerView *)self->_faceContainer setCenter:v33];
    [(NTKCFaceContainerView *)self->_faceContainer frame];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = v111;
    v43 = v115;
  }

  else
  {
    v42 = v111;
    if (self->_inGallery)
    {
      v43 = v115;
      if (IsRTL)
      {
        v125.origin.x = v111;
        v125.origin.y = v28;
        v125.size.width = v115;
        v125.size.height = rect;
        CGRectGetWidth(v125);
        v126.origin.x = v19;
        v126.origin.y = v21;
        v126.size.width = v23;
        v126.size.height = v25;
        CGRectGetWidth(v126);
        v31 = Width;
      }

      v44 = NTKCScreenEdgeMargin();
    }

    else
    {
      [(_NTKCDetailHeaderView *)self->_headerView bounds];
      v104 = 0;
      UIRectCenteredXInRectScale();
      v43 = v115;
    }

    [(_NTKCDetailHeaderView *)self->_headerView bounds:v44];
    UIRectCenteredYInRectScale();
    v35 = v45;
    v37 = v46;
    v39 = v47;
    v41 = v48;
    [(NTKCFaceContainerView *)self->_faceContainer setFrame:0];
  }

  if (self->_inGallery)
  {
    v109 = v41;
    v110 = v37;
    v49 = NTKCScreenStyle();
    v50 = &v118 + 1;
    if (v49 == -1)
    {
      v50 = &v119;
    }

    v51 = *v50;
    v108 = v28;
    if (IsRTL)
    {
      v127.origin.x = v35;
      v127.size.height = v41;
      v127.origin.y = v110;
      v52 = v39;
      v127.size.width = v39;
      MinX = CGRectGetMinX(v127);
    }

    else
    {
      v128.origin.x = v42;
      v128.origin.y = v28;
      v128.size.width = v43;
      v128.size.height = rect;
      v54 = CGRectGetWidth(v128);
      v129.origin.x = v35;
      v129.size.height = v41;
      v129.origin.y = v110;
      v52 = v39;
      v129.size.width = v39;
      MinX = v54 - CGRectGetMaxX(v129);
    }

    v55 = MinX - v51 - NTKCScreenEdgeMargin();
    [(UILabel *)self->_faceName sizeThatFits:v55, 1.79769313e308];
    v107 = v56;
    [(UILabel *)self->_faceName frame];
    if (IsRTL)
    {
      v60 = v57;
      v61 = v58;
      v130.origin.x = v35;
      v63 = v109;
      v62 = v110;
      v130.origin.y = v110;
      v130.size.width = v52;
      v105 = v59;
      v130.size.height = v109;
      v106 = v35;
      v64 = CGRectGetMinX(v130) - v51;
      v131.origin.x = v60;
      v131.origin.y = v61;
      v131.size.width = v55;
      v131.size.height = v105;
      v65 = v64 - CGRectGetWidth(v131);
      v35 = v106;
    }

    else
    {
      v132.origin.x = v35;
      v63 = v109;
      v62 = v110;
      v132.origin.y = v110;
      v132.size.width = v52;
      v132.size.height = v109;
      v65 = v51 + CGRectGetMaxX(v132);
    }

    v66 = v55;
    v133.origin.x = v35;
    v133.origin.y = v62;
    v133.size.width = v52;
    v133.size.height = v63;
    v67 = CGRectGetMinY(v133) + *(&v119 + 1);
    [(UILabel *)self->_faceName _firstLineBaselineOffsetFromBoundsTop];
    v69 = v67 - v68;
    [(UILabel *)self->_faceName setFrame:v65, v69, v55, v107];
    [(UIButton *)self->_addButton frame];
    v73 = v72;
    v75 = v74;
    if (IsRTL)
    {
      v76 = v70;
      v77 = v71;
      v134.origin.x = v65;
      v134.origin.y = v69;
      v134.size.width = v55;
      v134.size.height = v107;
      MaxX = CGRectGetMaxX(v134);
      v135.origin.x = v76;
      v135.origin.y = v77;
      v135.size.width = v73;
      v135.size.height = v75;
      v79 = MaxX - CGRectGetWidth(v135);
      v66 = v55;
    }

    else
    {
      v136.origin.x = v65;
      v136.origin.y = v69;
      v136.size.width = v55;
      v136.size.height = v107;
      v79 = CGRectGetMinX(v136);
    }

    v42 = v111;
    v137.origin.x = v65;
    v137.origin.y = v69;
    v137.size.width = v66;
    v137.size.height = v107;
    MinY = CGRectGetMinY(v137);
    [(UILabel *)self->_faceName _lastLineBaseline];
    v82 = MinY + v81 + v120;
    [(UIButton *)self->_addButton setFrame:v79, v82, v73, v75];
    [(UIActivityIndicatorView *)self->_addSpinner frame];
    [(UIActivityIndicatorView *)self->_addSpinner setFrame:v79, v82];
    v28 = v108;
    v43 = v115;
    v31 = Width;
  }

  [(UIView *)self->_headerSeparator frame];
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v138.origin.x = 0.0;
  v138.size.height = v112;
  v138.origin.y = v113;
  v138.size.width = v31;
  Height = CGRectGetHeight(v138);
  v139.origin.x = 0.0;
  v139.origin.y = v84;
  v139.size.width = v86;
  v139.size.height = v88;
  v90 = Height - CGRectGetHeight(v139);
  v140.origin.x = v42;
  v140.origin.y = v28;
  v140.size.width = v43;
  v140.size.height = rect;
  [(UIView *)self->_headerSeparator setFrame:0.0, v90, CGRectGetWidth(v140), v88];
  [(UITableView *)self->_tableView setFrame:v42, v28, v43, rect];
  [(UITableView *)self->_tableView contentOffset];
  v92 = v91;
  v94 = v93;
  intrinsicHeaderHeight = self->_intrinsicHeaderHeight;
  [(UITableView *)self->_tableView contentInset];
  if (v96 != intrinsicHeaderHeight)
  {
    v97 = intrinsicHeaderHeight - v96;
    [(UITableView *)self->_tableView setContentInset:intrinsicHeaderHeight];
    [(UITableView *)self->_tableView setContentOffset:v92, v94 - v97];
  }

  [(UITableView *)self->_tableView verticalScrollIndicatorInsets];
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v141.origin.x = 0.0;
  v141.origin.y = v113;
  v141.size.width = Width;
  v141.size.height = v112;
  [(UITableView *)self->_tableView setVerticalScrollIndicatorInsets:CGRectGetHeight(v141), v99, v101, v103];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = NTKCFaceDetailViewController;
  [(NTKCFaceDetailViewController *)&v5 viewWillAppear:appear];
  selectionFinishedHandler = self->_selectionFinishedHandler;
  if (selectionFinishedHandler)
  {
    selectionFinishedHandler[2]();
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = NTKCFaceDetailViewController;
  [(NTKCFaceDetailViewController *)&v6 viewDidAppear:appear];
  if (self->_inGallery)
  {
    v4 = kNTKCCAnalyticsFaceDetailsGallery;
  }

  else
  {
    v4 = kNTKCCAnalyticsFaceDetailsLibrary;
  }

  v5 = *v4;
  NTKCCAnalyticsIncrement(v5);
  [(NTKCFaceDetailViewController *)self _setupDeviceConnectivityMonitor];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = NTKCFaceDetailViewController;
  [(NTKCFaceDetailViewController *)&v4 viewWillDisappear:disappear];
  [(NTKCFaceDetailViewController *)self _dismissModalViewControllerPresentedByThisViewControllerAnimated:0];
  [(NTKCFaceDetailViewController *)self _teardownDeviceConnectivityMonitor];
}

- (void)_setupDeviceConnectivityMonitor
{
  device = [(NTKFace *)self->_face device];
  if ([device isRunningNapiliGMOrLater])
  {
    pairingID = [device pairingID];

    if (pairingID)
    {
      v5 = objc_alloc_init(NTKCDeviceConnectivityMonitor);
      deviceConnectivityMonitor = self->_deviceConnectivityMonitor;
      self->_deviceConnectivityMonitor = v5;

      v7 = self->_deviceConnectivityMonitor;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __63__NTKCFaceDetailViewController__setupDeviceConnectivityMonitor__block_invoke;
      v8[3] = &unk_2787802F8;
      v8[4] = self;
      [(NTKCDeviceConnectivityMonitor *)v7 startMonitoringWithCallback:v8];
    }
  }
}

void __63__NTKCFaceDetailViewController__setupDeviceConnectivityMonitor__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__NTKCFaceDetailViewController__setupDeviceConnectivityMonitor__block_invoke_2;
    block[3] = &unk_27877DB10;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_teardownDeviceConnectivityMonitor
{
  [(NTKCDeviceConnectivityMonitor *)self->_deviceConnectivityMonitor stopMonitoring];
  deviceConnectivityMonitor = self->_deviceConnectivityMonitor;
  self->_deviceConnectivityMonitor = 0;
}

- (void)_presentDisconnectedDialog
{
  v3 = NTKClockFaceLocalizedString(@"DEVICE_DISCONNECTED_TITLE", @"Unable to Edit");
  v4 = NTKClockFaceLocalizedString(@"DEVICE_DISCONNECTED_DETAIL", @"To edit this watch face, Apple Watch must be connected to iPhone.");
  v5 = NTKClockFaceLocalizedString(@"DEVICE_DISCONNECTED_OK", @"OK");
  v6 = [MEMORY[0x277D75110] alertControllerWithTitle:v3 message:v4 preferredStyle:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__NTKCFaceDetailViewController__presentDisconnectedDialog__block_invoke;
  v8[3] = &unk_27877E528;
  v8[4] = self;
  v7 = [MEMORY[0x277D750F8] actionWithTitle:v5 style:0 handler:v8];
  [v6 addAction:v7];
  [(NTKCFaceDetailViewController *)self presentViewController:v6 animated:1 completion:0];
}

void __58__NTKCFaceDetailViewController__presentDisconnectedDialog__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popViewControllerAnimated:1];
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  controllerCopy = controller;
  [(NTKCFaceDetailViewController *)self setModalViewControllerPresentedByThisViewController:controllerCopy];
  v10.receiver = self;
  v10.super_class = NTKCFaceDetailViewController;
  [(NTKCFaceDetailViewController *)&v10 presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  [(NTKCFaceDetailViewController *)self setModalViewControllerPresentedByThisViewController:0];
  v7.receiver = self;
  v7.super_class = NTKCFaceDetailViewController;
  [(NTKCFaceDetailViewController *)&v7 dismissViewControllerAnimated:animatedCopy completion:completionCopy];
}

- (void)_dismissModalViewControllerPresentedByThisViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  presentedViewController = [(NTKCFaceDetailViewController *)self presentedViewController];
  if (presentedViewController)
  {
    v6 = presentedViewController;
    presentedViewController2 = [(NTKCFaceDetailViewController *)self presentedViewController];
    modalViewControllerPresentedByThisViewController = [(NTKCFaceDetailViewController *)self modalViewControllerPresentedByThisViewController];

    if (presentedViewController2 == modalViewControllerPresentedByThisViewController)
    {

      [(NTKCFaceDetailViewController *)self dismissViewControllerAnimated:animatedCopy completion:0];
    }
  }
}

- (void)setFace:(id)face
{
  faceCopy = face;
  face = self->_face;
  if (face != faceCopy)
  {
    v7 = faceCopy;
    [(NTKFace *)face removeObserver:self];
    objc_storeStrong(&self->_face, face);
    [(NTKFace *)self->_face addObserver:self];
    faceCopy = v7;
  }
}

- (void)setLibrary:(id)library
{
  libraryCopy = library;
  library = self->_library;
  if (library != libraryCopy)
  {
    v7 = libraryCopy;
    [(NTKFaceCollection *)library removeObserver:self];
    objc_storeStrong(&self->_library, library);
    [(NTKFaceCollection *)self->_library addObserver:self];
    [(NTKCFaceDetailViewController *)self _updateAddButton];
    libraryCopy = v7;
  }
}

- (void)_loadLibrary
{
  v5 = +[NTKCompanionFaceCollectionsManager sharedInstance];
  device = [(NTKFace *)self->_face device];
  v4 = [v5 sharedFaceCollectionForDevice:device forCollectionIdentifier:@"LibraryFaces"];
  [(NTKCFaceDetailViewController *)self setLibrary:v4];
}

- (void)_setComplication:(id)complication forSlot:(id)slot
{
  face = self->_face;
  slotCopy = slot;
  complicationCopy = complication;
  v10 = [(NTKFace *)face complicationForSlot:slotCopy];
  [(NTKFace *)self->_face setComplication:complicationCopy forSlot:slotCopy];
  faceView = [(NTKFaceViewController *)self->_faceVC faceView];
  [faceView applyTransitionFraction:v10 fromComplication:complicationCopy toComplication:slotCopy slot:1.0];

  [faceView cleanupAfterEditing];
  [(NTKCFaceDetailViewController *)self _setFaceHasBeenEdited];
  [(NTKCFaceDetailViewController *)self _updateAddButton];
}

- (void)_reloadEditOptionSectionsDependentOnNTKEditModeComplications
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  editOptionSections = [(NTKCFaceDetailViewController *)self editOptionSections];
  v4 = [editOptionSections countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(editOptionSections);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        collection = [v8 collection];
        mode = [collection mode];

        faceView = [(NTKFaceViewController *)self->_faceVC faceView];
        v12 = objc_opt_class();
        device = [(NTKFace *)self->_face device];
        v14 = [v12 swatchForEditModeDependsOnOptions:mode forDevice:device];

        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v15 = v14;
        v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
        cell = v15;
        if (v16)
        {
          v18 = v16;
          v19 = *v22;
          while (2)
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v22 != v19)
              {
                objc_enumerationMutation(v15);
              }

              if ([*(*(&v21 + 1) + 8 * j) integerValue] == 1)
              {

                cell = [v8 cell];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [cell reloadVisibleCells];
                }

                goto LABEL_17;
              }
            }

            v18 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }

          cell = v15;
        }

LABEL_17:
      }

      v5 = [editOptionSections countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }
}

- (void)_setEditOption:(id)option forMode:(int64_t)mode slot:(id)slot transiently:(BOOL)transiently
{
  transientlyCopy = transiently;
  optionCopy = option;
  slotCopy = slot;
  v11 = [(NTKFace *)self->_face selectedOptionForCustomEditMode:mode slot:slotCopy];
  if (mode == 10 && !transientlyCopy || ([optionCopy isEqual:v11] & 1) == 0)
  {
    if (transientlyCopy)
    {
      faceView = [(NTKFaceViewController *)self->_faceVC faceView];
      [faceView setOption:optionCopy forCustomEditMode:mode slot:slotCopy];
    }

    else
    {
      [(NTKFace *)self->_face selectOption:optionCopy forCustomEditMode:mode slot:slotCopy];
      [(NTKCFaceDetailViewController *)self _setFaceHasBeenEdited];
    }
  }
}

- (BOOL)_isEditOptionFullyVisible:(id)visible
{
  selfCopy = self;
  v4 = [(UITableView *)self->_tableView indexPathForCell:visible];
  [(UITableView *)selfCopy->_tableView rectForRowAtIndexPath:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  -[UITableView rectForHeaderInSection:](selfCopy->_tableView, "rectForHeaderInSection:", [v4 section]);
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  v17 = v8 - CGRectGetHeight(v34);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v18 = v12 + CGRectGetHeight(v35);
  [(UITableView *)selfCopy->_tableView bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  [(UITableView *)selfCopy->_tableView contentInset];
  v28 = v22 + v27;
  v31 = v24 - (v29 + v30);
  v36.size.height = v26 - (v27 + v32);
  v36.origin.x = v20 + v29;
  v36.origin.y = v28;
  v36.size.width = v31;
  v37.origin.x = v6;
  v37.origin.y = v17;
  v37.size.width = v10;
  v37.size.height = v18;
  LOBYTE(selfCopy) = CGRectContainsRect(v36, v37);

  return selfCopy;
}

- (void)_setFaceHasBeenEdited
{
  if (!self->_faceHasBeenEdited)
  {
    self->_faceHasBeenEdited = 1;
    if (self->_inGallery)
    {
      v4 = kNTKCCAnalyticsEditFaceGallery;
    }

    else
    {
      v4 = kNTKCCAnalyticsEditFaceLibrary;
    }

    v7 = *v4;
    NTKCCAnalyticsIncrement(v7);
    face = self->_face;
    date = [MEMORY[0x277CBEAA8] date];
    [(NTKFace *)face setLastEditedDate:date];

    [(NTKFace *)self->_face incrementNumberOfCompanionEdits];
    [(NTKFace *)self->_face setEditedState:2];
  }
}

- (void)_updateAddButton
{
  if (self->_face && self->_addButton)
  {
    reasonFaceCanNotBeAddedToLibrary = [(NTKCFaceDetailViewController *)self reasonFaceCanNotBeAddedToLibrary];
    -[UIButton setDisabled:forReason:](self->_addButton, "setDisabled:forReason:", [reasonFaceCanNotBeAddedToLibrary length] != 0, reasonFaceCanNotBeAddedToLibrary);
  }
}

- (NSString)reasonFaceCanNotBeAddedToLibrary
{
  face = self->_face;
  library = self->_library;
  v11 = 0;
  v5 = NTKCanAddWatchFace(face, library, &v11);
  v6 = v11;
  v7 = v6;
  v8 = 0;
  if ((v5 & 1) == 0)
  {
    v8 = -[NTKCFaceDetailViewController _errorMessageForErrorCode:](self, "_errorMessageForErrorCode:", [v6 code]);
  }

  if ([(NTKFace *)self->_face faceStyle]== 22 && ![(NTKCFaceDetailPhotosSectionController *)self->_photosSection canAddFace])
  {
    v9 = NTKClockFaceLocalizedString(@"ACTION_ADD_DISABLED_NO_CUSTOM_PHOTOS", @"You must choose photos.");

    v8 = v9;
  }

  return v8;
}

- (id)_errorMessageForErrorCode:(int64_t)code
{
  if (code > 4)
  {
    if (code <= 6)
    {
      if (code == 5)
      {
        v7 = MEMORY[0x277CCACA8];
        v6 = NTKClockFaceLocalizedFormat(@"ACTION_ADD_DISABLED_FACE_LIMIT", @"too many faces");
        device = [(NTKFace *)self->_face device];
        name = NTKFaceLibraryMaxFaceCountForDevice(device);
      }

      else
      {
        v6 = NTKClockFaceLocalizedString(@"ACTION_ADD_DISABLED_SINGULAR_FACE", @"singular");
        v7 = MEMORY[0x277CCACA8];
        name = [(NTKFace *)self->_face name];
        device = name;
      }

      selfCopy = [v7 localizedStringWithFormat:v6, name];

      goto LABEL_26;
    }

    if (code == 11)
    {
      goto LABEL_11;
    }

    if (code == 8)
    {
      v4 = @"ACTION_ADD_DISABLED_NOT_SUPPORTED";
      v5 = @"not supported";
      goto LABEL_25;
    }

    goto LABEL_14;
  }

  if (code <= 1)
  {
    if (code == 1)
    {
LABEL_11:
      v4 = @"ACTION_ADD_DISABLED_NOT_SUPPORTED_DEVICE";
      v5 = @"wrong device";
LABEL_25:
      selfCopy = NTKClockFaceLocalizedString(v4, v5);
      goto LABEL_26;
    }

LABEL_14:
    v4 = @"ACTION_ADD_DISABLED_CANNOT_ADD_FACE_ON_DEVICE";
    v5 = @"Sorry, this watch face is not available on this device.";
    goto LABEL_25;
  }

  if (code != 2)
  {
    if (code == 3)
    {
      v4 = @"ACTION_ADD_DISABLED_NO_DEVICE";
      v5 = @"no device";
      goto LABEL_25;
    }

    goto LABEL_14;
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v11 = objc_opt_new();
  device2 = [(NTKFace *)self->_face device];
  pdrDeviceVersion = [device2 pdrDeviceVersion];

  if (HIWORD(pdrDeviceVersion) <= 4u)
  {
    v14 = NTKNewToGloryComplicationTypes();
    [v11 addIndexes:v14];
  }

  device3 = [(NTKFace *)self->_face device];
  pdrDeviceVersion2 = [device3 pdrDeviceVersion];

  if (!(pdrDeviceVersion2 >> 18))
  {
    v17 = NTKNewToFortuneComplicationTypes();
    [v11 addIndexes:v17];
  }

  face = self->_face;
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __58__NTKCFaceDetailViewController__errorMessageForErrorCode___block_invoke;
  v27 = &unk_278780C38;
  selfCopy = self;
  v19 = v11;
  v29 = v19;
  v30 = &v31;
  [(NTKFace *)face enumerateComplicationSlotsWithBlock:&v24];
  if (v32[3])
  {
    v20 = NTKClockFaceLocalizedString(@"ACTION_ADD_DISABLED_GIZMO_VERSION_NOT_SUPPORTED_FOR_COMPLICATION", @"gizmo version not supported for complication");
    v21 = MEMORY[0x277CCACA8];
    v22 = NTKComplicationTypeLocalizedLabelText(v32[3]);
    selfCopy = [v21 localizedStringWithFormat:v20, v22, v24, v25, v26, v27, selfCopy];
  }

  else
  {
    selfCopy = 0;
  }

  _Block_object_dispose(&v31, 8);
LABEL_26:

  return selfCopy;
}

uint64_t __58__NTKCFaceDetailViewController__errorMessageForErrorCode___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 face];
  v8 = [v7 complicationForSlot:v6];

  v9 = [v8 complicationType];
  result = [*(a1 + 40) containsIndex:v9];
  if (result)
  {
    *(*(*(a1 + 48) + 8) + 24) = v9;
    *a3 = 1;
  }

  return result;
}

- (BOOL)_hasRemovedSystemApp
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  face = self->_face;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__NTKCFaceDetailViewController__hasRemovedSystemApp__block_invoke;
  v5[3] = &unk_27877FB58;
  v5[4] = self;
  v5[5] = &v6;
  [(NTKFace *)face enumerateComplicationSlotsWithBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __52__NTKCFaceDetailViewController__hasRemovedSystemApp__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 face];
  v12 = [v7 complicationForSlot:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v12 appBundleIdentifier];
    v9 = [v8 isEqualToString:@"com.apple.stocks.watchapp"];

    if (v9)
    {
      v10 = 9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = [v12 complicationType];
  }

  v11 = [*(*(a1 + 32) + 1024) device];
  *(*(*(a1 + 40) + 8) + 24) = [NTKCompanion1stPartyApp complicationType:v10 mapsToRemovedSystemAppOnDevice:v11];

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

- (void)_addTapped
{
  if ([(UIButton *)self->_addButton disabled])
  {
    disabledReason = [(UIButton *)self->_addButton disabledReason];
    if ([disabledReason length])
    {
      v3 = MEMORY[0x277D75110];
      v4 = NTKClockFaceLocalizedString(@"ACTION_ADD_DISABLED_TITLE", @"title");
      v5 = [v3 alertControllerWithTitle:v4 message:disabledReason preferredStyle:1];

      v6 = MEMORY[0x277D750F8];
      v7 = NTKClockFaceLocalizedString(@"ACTION_ADD_DISABLED_OK", @"OK");
      v8 = [v6 actionWithTitle:v7 style:0 handler:0];
      [v5 addAction:v8];

      [(NTKCFaceDetailViewController *)self presentViewController:v5 animated:1 completion:0];
    }
  }

  else if (![(NTKCFaceDetailViewController *)self _hasRemovedSystemApp])
  {

    [(NTKCFaceDetailViewController *)self _addFace];
  }
}

- (void)_addFace
{
  v90[3] = *MEMORY[0x277D85DE8];
  if ([(NTKCFaceDetailPhotosSectionController *)self->_photosSection hasChanges])
  {
    [(UIActivityIndicatorView *)self->_addSpinner startAnimating];
    [(UIButton *)self->_addButton setHidden:1];
    photosSection = self->_photosSection;
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __40__NTKCFaceDetailViewController__addFace__block_invoke;
    v87[3] = &unk_27877DB10;
    v87[4] = self;
    [(NTKCFaceDetailPhotosSectionController *)photosSection saveChangesWithCompletion:v87];
  }

  else
  {
    if ([(UIButton *)self->_addButton isHidden])
    {
      [(UIActivityIndicatorView *)self->_addSpinner stopAnimating];
      [(UIButton *)self->_addButton setHidden:0];
    }

    v4 = [(NTKFace *)self->_face copy];
    v5 = v4;
    if (self->_externalAssets)
    {
      v6 = 8;
    }

    else
    {
      v6 = 6;
    }

    [v4 setOrigin:v6];
    if ([v5 editedState] == 2)
    {
      lastEditedDate = [v5 lastEditedDate];
      [v5 setCreationDate:lastEditedDate];
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
      [v5 setCreationDate:date];

      [v5 setEditedState:1];
    }

    [(NTKFaceCollection *)self->_library appendFace:v5 suppressingCallbackToObserver:0];
    [(NTKFaceCollection *)self->_library setSelectedFace:v5 suppressingCallbackToObserver:0];
    NTKCCAnalyticsIncrement(kNTKCCAnalyticsAddFace[0]);
    [(UIButton *)self->_addButton setUserInteractionEnabled:0];
    [(UIButton *)self->_addButton setSelected:1];
    tabBarController = [(NTKCFaceDetailViewController *)self tabBarController];

    if (tabBarController)
    {
      tabBarController2 = [(NTKCFaceDetailViewController *)self tabBarController];
      tabBar = [tabBarController2 tabBar];

      subviews = [tabBar subviews];
      firstObject = [subviews firstObject];

      if (!firstObject)
      {
        firstObject = tabBar;
      }

      [firstObject bounds];
      v82 = firstObject;
      [firstObject convertRect:0 toView:?];
      x = v91.origin.x;
      y = v91.origin.y;
      width = v91.size.width;
      height = v91.size.height;
      CGRectGetWidth(v91);
      items = [tabBar items];
      [items count];
      UICeilToViewScale();
      v20 = v19;

      if (CLKLayoutIsRTL())
      {
        v92.origin.x = x;
        v92.origin.y = y;
        v92.size.width = width;
        v92.size.height = height;
        v20 = CGRectGetWidth(v92) - v20;
      }

      v93.origin.x = x;
      v93.origin.y = y;
      v93.size.width = width;
      v93.size.height = height;
      CGRectGetHeight(v93);
      UIFloorToViewScale();
      v22 = v21;
      v94.origin.x = x;
      v94.origin.y = y;
      v94.size.width = width;
      v94.size.height = height;
      v80 = v20 + CGRectGetMinX(v94);
      v95.origin.x = x;
      v95.origin.y = y;
      v95.size.width = width;
      v95.size.height = height;
      v79 = v22 + CGRectGetMinY(v95);
      v81 = tabBar;
      v23 = [(NTKCFaceContainerView *)self->_faceContainer snapshotViewAfterScreenUpdates:0];
      view = [(NTKCFaceDetailViewController *)self view];
      window = [view window];
      [window addSubview:v23];

      faceContainer = self->_faceContainer;
      [(NTKCFaceContainerView *)faceContainer bounds];
      [(NTKCFaceContainerView *)faceContainer convertRect:0 toView:?];
      [v23 setFrame:?];
      [MEMORY[0x277CD9FF0] begin];
      v27 = MEMORY[0x277CD9FF0];
      v83[0] = MEMORY[0x277D85DD0];
      v83[1] = 3221225472;
      v83[2] = __40__NTKCFaceDetailViewController__addFace__block_invoke_2;
      v83[3] = &unk_27877E238;
      v84 = v23;
      selfCopy = self;
      v86 = v5;
      v28 = v23;
      [v27 setCompletionBlock:v83];
      v29 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"position"];
      [v29 setDuration:1.08];
      [v29 setFillMode:*MEMORY[0x277CDA238]];
      [v29 setRemovedOnCompletion:0];
      [v29 setKeyTimes:&unk_28418AEA0];
      [v28 bounds];
      v30 = v96.origin.x;
      v31 = v96.origin.y;
      v32 = v96.size.width;
      v33 = v96.size.height;
      v34 = CGRectGetWidth(v96) * 0.1 * 0.5;
      v97.origin.x = v30;
      v97.origin.y = v31;
      v97.size.width = v32;
      v97.size.height = v33;
      v35 = CGRectGetHeight(v97) * 0.1 * 0.5;
      v36 = MEMORY[0x277CCAE60];
      layer = [v28 layer];
      [layer position];
      v38 = [v36 valueWithCGPoint:?];
      v90[0] = v38;
      v39 = MEMORY[0x277CCAE60];
      [v28 center];
      v41 = v34 + v40;
      [v28 center];
      v43 = [v39 valueWithCGPoint:{v41, v42 - v35}];
      v90[1] = v43;
      v44 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v80, v79}];
      v90[2] = v44;
      v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:3];
      [v29 setValues:v45];

      LODWORD(v46) = 1053944709;
      LODWORD(v47) = 0.75;
      LODWORD(v48) = 1.0;
      v49 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v46 :0.0 :v47 :v48];
      v89[0] = v49;
      LODWORD(v50) = 1058474557;
      LODWORD(v51) = 0.25;
      LODWORD(v52) = 1.0;
      v53 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v51 :0.0 :v50 :v52];
      v89[1] = v53;
      v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:2];
      [v29 setTimingFunctions:v54];

      layer2 = [v28 layer];
      [layer2 addAnimation:v29 forKey:0];

      v56 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform.scale.xy"];
      [v56 setDuration:1.08];
      fillMode = [v29 fillMode];
      [v56 setFillMode:fillMode];

      [v56 setRemovedOnCompletion:0];
      keyTimes = [v29 keyTimes];
      [v56 setKeyTimes:keyTimes];

      [v56 setValues:&unk_28418AEB8];
      timingFunctions = [v29 timingFunctions];
      [v56 setTimingFunctions:timingFunctions];

      layer3 = [v28 layer];
      [layer3 addAnimation:v56 forKey:0];

      v61 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"transform.rotation"];
      [v61 setDuration:1.08];
      fillMode2 = [v29 fillMode];
      [v61 setFillMode:fillMode2];

      [v61 setRemovedOnCompletion:0];
      [v61 setKeyTimes:&unk_28418AED0];
      [v61 setValues:&unk_28418AEE8];
      v63 = *MEMORY[0x277CDA7C8];
      v64 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
      v88[0] = v64;
      LODWORD(v65) = 1063004406;
      LODWORD(v66) = 1059648963;
      LODWORD(v67) = 1.0;
      v68 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v65 :0.0 :v66 :v67];
      v88[1] = v68;
      LODWORD(v69) = 1049247089;
      LODWORD(v70) = 1062501089;
      LODWORD(v71) = 1.0;
      v72 = [MEMORY[0x277CD9EF8] functionWithControlPoints:v69 :0.0 :v70 :v71];
      v88[2] = v72;
      v73 = [MEMORY[0x277CD9EF8] functionWithName:v63];
      v88[3] = v73;
      v74 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:4];
      [v61 setTimingFunctions:v74];

      layer4 = [v28 layer];
      [layer4 addAnimation:v61 forKey:0];

      v76 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
      [v76 setDuration:1.08];
      fillMode3 = [v29 fillMode];
      [v76 setFillMode:fillMode3];

      [v76 setRemovedOnCompletion:0];
      [v76 setKeyTimes:&unk_28418AF00];
      [v76 setValues:&unk_28418AF18];
      layer5 = [v28 layer];
      [layer5 addAnimation:v76 forKey:0];

      [MEMORY[0x277CD9FF0] commit];
    }

    else
    {
      [(NTKCFaceDetailViewController *)self _addFaceEndedForFace:v5];
    }
  }
}

uint64_t __40__NTKCFaceDetailViewController__addFace__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 _addFaceEndedForFace:v3];
}

- (void)_addFaceEndedForFace:(id)face
{
  v3 = MEMORY[0x277CCAB98];
  faceCopy = face;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter postNotificationName:@"NTKCFaceDetailViewControllerDidAddFace" object:faceCopy];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NSMutableArray *)self->_currentSections objectAtIndexedSubscript:section];
  numberOfRows = [v4 numberOfRows];

  return numberOfRows;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  currentSections = self->_currentSections;
  pathCopy = path;
  v6 = -[NSMutableArray objectAtIndexedSubscript:](currentSections, "objectAtIndexedSubscript:", [pathCopy section]);
  v7 = [pathCopy row];

  [v6 heightForRow:v7];
  v9 = v8;

  return v9;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  v4 = [(NSMutableArray *)self->_currentSections objectAtIndexedSubscript:section];
  [v4 heightForHeaderView];
  v6 = v5;

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  currentSections = self->_currentSections;
  pathCopy = path;
  v6 = -[NSMutableArray objectAtIndexedSubscript:](currentSections, "objectAtIndexedSubscript:", [pathCopy section]);
  v7 = [pathCopy row];

  v8 = [v6 cellForRow:v7];

  return v8;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v4 = [(NSMutableArray *)self->_currentSections objectAtIndexedSubscript:section];
  headerView = [v4 headerView];

  return headerView;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view cellForRowAtIndexPath:pathCopy];
  v8 = [(NTKCFaceDetailViewController *)self _cellIsHiddenBehindHeader:v7];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = -[NSMutableArray objectAtIndexedSubscript:](self->_currentSections, "objectAtIndexedSubscript:", [pathCopy section]);
    if ([v10 canSelectRow:{objc_msgSend(pathCopy, "row")}])
    {
      v11 = pathCopy;
    }

    else
    {
      v11 = 0;
    }

    v9 = v11;
  }

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectRowAtIndexPath:pathCopy animated:1];
  v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_currentSections, "objectAtIndexedSubscript:", [pathCopy section]);
  v7 = [pathCopy row];

  [v8 didSelectRow:v7];
}

- (BOOL)_cellIsHiddenBehindHeader:(id)header
{
  tableView = self->_tableView;
  [header frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  view = [(NTKCFaceDetailViewController *)self view];
  [(UITableView *)tableView convertRect:view toView:v6, v8, v10, v12];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v24.origin.x = v15;
  v24.origin.y = v17;
  v24.size.width = v19;
  v24.size.height = v21;
  MaxY = CGRectGetMaxY(v24);
  [(_NTKCDetailHeaderView *)self->_headerView frame];
  return MaxY <= CGRectGetMaxY(v25);
}

- (id)_pruneRemovedOrRestrictedComplications:(id)complications
{
  v24 = *MEMORY[0x277D85DE8];
  complicationsCopy = complications;
  device = [(NTKFace *)self->_face device];
  v6 = [NTKComplicationProvider providerForDevice:device];
  disabledComplicationTypes = [v6 disabledComplicationTypes];

  if ([disabledComplicationTypes count])
  {
    v8 = [complicationsCopy mutableCopy];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = complicationsCopy;
    v9 = complicationsCopy;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          if ([v14 complicationType])
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
              appBundleIdentifier = [v15 appBundleIdentifier];

              if (appBundleIdentifier == @"com.apple.stocks.watchapp" && [disabledComplicationTypes containsIndex:9])
              {
                [v8 removeObject:v15];
              }
            }

            else if ([disabledComplicationTypes containsIndex:{objc_msgSend(v14, "complicationType")}])
            {
              [v8 removeObject:v14];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    complicationsCopy = v18;
  }

  else
  {
    v8 = complicationsCopy;
  }

  return v8;
}

- (id)_pruneComplicationsNotAvailableOnGizmo:(id)gizmo
{
  v28 = *MEMORY[0x277D85DE8];
  gizmoCopy = gizmo;
  device = [(NTKFace *)self->_face device];
  pdrDeviceVersion = [device pdrDeviceVersion];

  v22 = [gizmoCopy mutableCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = gizmoCopy;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    v11 = HIWORD(pdrDeviceVersion);
    v12 = pdrDeviceVersion >> 18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        complicationType = [v14 complicationType];
        if (v11 <= 4)
        {
          v16 = complicationType;
          v17 = NTKNewToGloryComplicationTypes();
          v18 = [v17 containsIndex:v16];

          if (v18)
          {
            [v22 removeObject:v14];
          }

          if (!v12)
          {
            v19 = NTKNewToFortuneComplicationTypes();
            v20 = [v19 containsIndex:v16];

            if (v20)
            {
              [v22 removeObject:v14];
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  return v22;
}

- (void)scrollViewDidScroll:(id)scroll
{
  [(UITableView *)self->_tableView contentInset];
  v5 = v4;
  [(UITableView *)self->_tableView contentOffset];
  v7 = v5 + v6;
  [(UITableView *)self->_tableView _systemContentInset];
  v9 = v7 + v8;
  if (self->_intrinsicHeaderHeight != 0.0 && v9 < 0.0 || ([(_NTKCDetailHeaderView *)self->_headerView bounds], CGRectGetHeight(v13) > self->_intrinsicHeaderHeight))
  {
    view = [(NTKCFaceDetailViewController *)self view];
    [view setNeedsLayout];
  }

  headerSeparator = self->_headerSeparator;

  [(UIView *)headerSeparator setHidden:v9 <= 0.0];
}

- (void)descriptionSection:(id)section didExpand:(BOOL)expand
{
  [(UITableView *)self->_tableView beginUpdates:section];
  tableView = self->_tableView;

  [(UITableView *)tableView endUpdates];
}

- (void)editOptionSection:(id)section didModifyEditOption:(id)option transiently:(BOOL)transiently canceled:(BOOL)canceled
{
  self->_isSuppressingFaceDidChange = transiently;
  optionCopy = option;
  collection = [section collection];
  mode = [collection mode];
  slot = [collection slot];
  [(NTKCFaceDetailViewController *)self _setEditOption:optionCopy forMode:mode slot:slot transiently:self->_isSuppressingFaceDidChange];
}

- (void)editOptionSection:(id)section didSelectOptionAtIndex:(int64_t)index
{
  sectionCopy = section;
  v6 = [sectionCopy cellForRow:0];
  if (![(NTKCFaceDetailViewController *)self _isEditOptionFullyVisible:v6])
  {
    [(NTKCFaceDetailViewController *)self setEditOptionToMakeFullyVisible:v6];
  }

  collection = [sectionCopy collection];
  if ([collection collectionType] == 5)
  {
    [(NTKCFaceDetailViewController *)self _addOrRemoveDynamicSectionsWithCollection:collection];
  }

  v8 = [sectionCopy optionAtIndex:index];
  mode = [collection mode];
  slot = [collection slot];
  [(NTKCFaceDetailViewController *)self _setEditOption:v8 forMode:mode slot:slot];
}

- (void)_addOrRemoveDynamicSectionsWithCollection:(id)collection
{
  numberOfDynamicSections = [(NTKFace *)self->_face numberOfDynamicSections];
  v5 = [(NSMutableArray *)self->_dynamicEditOptionSections count];
  v6 = v5;
  if (numberOfDynamicSections <= v5)
  {
    if (numberOfDynamicSections >= v5)
    {
      goto LABEL_13;
    }

    do
    {
      currentSections = self->_currentSections;
      v13 = [(NSMutableArray *)self->_dynamicEditOptionSections objectAtIndexedSubscript:--v6];
      v14 = [(NSMutableArray *)currentSections indexOfObject:v13];

      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(NSMutableArray *)self->_dynamicEditOptionSections removeLastObject];
        [(NSMutableArray *)self->_currentSections removeObjectAtIndex:v14];
      }
    }

    while (v6 > numberOfDynamicSections);
  }

  else
  {
    do
    {
      v7 = [(NTKFace *)self->_face newDynamicEditOptionCollectionForSection:v6];
      v8 = [(NTKCFaceDetailViewController *)self _sectionForEditOptionCollection:v7];
      if (v8)
      {
        v9 = self->_currentSections;
        v10 = [(NSMutableArray *)self->_dynamicEditOptionSections objectAtIndexedSubscript:v6 - 1];
        v11 = [(NSMutableArray *)v9 indexOfObject:v10];

        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(NSMutableArray *)self->_dynamicEditOptionSections addObject:v8];
          [(NSMutableArray *)self->_currentSections insertObject:v8 atIndex:v11 + 1];
        }
      }

      ++v6;
    }

    while (numberOfDynamicSections != v6);
  }

  v15 = self->_currentSections;
  lastObject = [(NSMutableArray *)self->_dynamicEditOptionSections lastObject];
  v17 = [(NSMutableArray *)v15 indexOfObject:lastObject];

  if (v17 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NTKCFaceDetailViewController *)self _applySectionIndexKeysToCurrentSectionsFromIndex:v17 + 1];
  }

LABEL_13:
  tableView = self->_tableView;

  [(UITableView *)tableView reloadData];
}

- (void)_applySectionIndexKeysToCurrentSectionsFromIndex:(unint64_t)index
{
  v5 = [(NSMutableArray *)self->_currentSections count];
  v6 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{index, v5 - index}];
  [(NSMutableArray *)self->_currentSections enumerateObjectsAtIndexes:v6 options:0 usingBlock:&__block_literal_global_190];
}

- (void)photoSectionDidUpdate:(id)update
{
  [(NTKCFaceDetailViewController *)self _updateAddButton];

  [(NTKCFaceDetailViewController *)self _updateShareButton];
}

- (id)complicationSection:(id)section allowedComplicationsForSlot:(id)slot
{
  v5 = [(NTKFace *)self->_face allowedComplicationsForSlot:slot];
  if (!self->_inGallery)
  {
    v6 = [(NTKCFaceDetailViewController *)self _pruneRemovedOrRestrictedComplications:v5];

    v5 = [(NTKCFaceDetailViewController *)self _pruneComplicationsNotAvailableOnGizmo:v6];
  }

  return v5;
}

- (void)complicationSection:(id)section wantsToPresentPickerForSlot:(id)slot selectedComplication:(id)complication
{
  complicationCopy = complication;
  slotCopy = slot;
  v9 = [NTKCFaceDetailComplicationPickerViewController alloc];
  face = [(NTKCFaceDetailViewController *)self face];
  v13 = [(NTKCFaceDetailComplicationPickerViewController *)v9 initWithFace:face slot:slotCopy selectedComplication:complicationCopy];

  [(NTKCFaceDetailComplicationPickerViewController *)v13 setDelegate:self];
  navigationController = [(NTKCFaceDetailViewController *)self navigationController];

  if (navigationController)
  {
    navigationController2 = [(NTKCFaceDetailViewController *)self navigationController];
    [navigationController2 pushViewController:v13 animated:1];
  }

  else
  {
    [(NTKCFaceDetailViewController *)self presentViewController:v13 animated:1 completion:0];
  }
}

- (void)faceDetailComplicationPickerViewController:(id)controller didSelectComplication:(id)complication
{
  v23 = *MEMORY[0x277D85DE8];
  complicationCopy = complication;
  slot = [controller slot];
  [(NTKCFaceDetailViewController *)self _setComplication:complicationCopy forSlot:slot];

  navigationController = [(NTKCFaceDetailViewController *)self navigationController];

  if (navigationController)
  {
    navigationController2 = [(NTKCFaceDetailViewController *)self navigationController];
    viewControllers = [navigationController2 viewControllers];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    reverseObjectEnumerator = [viewControllers reverseObjectEnumerator];
    v12 = [reverseObjectEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = *v19;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v12 = v15;
            goto LABEL_12;
          }
        }

        v12 = [reverseObjectEnumerator countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    navigationController3 = [(NTKCFaceDetailViewController *)self navigationController];
    v17 = [navigationController3 popToViewController:v12 animated:1];
  }

  else
  {
    [(NTKCFaceDetailViewController *)self dismissViewControllerAnimated:1 completion:&__block_literal_global_193_0];
  }
}

- (void)otherSectionDidSelectMonogramEdit:(id)edit
{
  v5 = objc_opt_new();
  [v5 setShowsDoneButton:1];
  v4 = [[NTKCNavigationController alloc] initWithRootViewController:v5];
  [(NTKCFaceDetailViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)actionSectionDidSelect:(id)select
{
  delegate = [(NTKCFaceDetailViewController *)self delegate];
  [delegate libraryDetail:self didSelectFace:self->_face];

  v5 = kNTKCCAnalyticsSelectFace[0];

  NTKCCAnalyticsIncrement(v5);
}

- (void)actionSectionDidDelete:(id)delete
{
  delegate = [(NTKCFaceDetailViewController *)self delegate];
  v5 = [delegate libraryDetail:self canRemoveFace:self->_face];

  if (v5)
  {
    v7 = MEMORY[0x277D75110];
    v8 = NTKCCustomizationLocalizedString(@"REMOVE_FACE_TITLE", @"title", v6);
    v10 = NTKCCustomizationLocalizedString(@"REMOVE_FACE_MESSAGE", @"message", v9);
    v11 = [v7 alertControllerWithTitle:v8 message:v10 preferredStyle:1];

    v12 = MEMORY[0x277D750F8];
    v14 = NTKCCustomizationLocalizedString(@"REMOVE_FACE_CANCEL", @"Cancel", v13);
    v15 = [v12 actionWithTitle:v14 style:1 handler:0];
    [v11 addAction:v15];

    v16 = MEMORY[0x277D750F8];
    v18 = NTKCCustomizationLocalizedString(@"REMOVE_FACE_OK", @"OK", v17);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __55__NTKCFaceDetailViewController_actionSectionDidDelete___block_invoke;
    v20[3] = &unk_27877E528;
    v20[4] = self;
    v19 = [v16 actionWithTitle:v18 style:0 handler:v20];
    [v11 addAction:v19];

    [(NTKCFaceDetailViewController *)self presentViewController:v11 animated:1 completion:0];
  }
}

void __55__NTKCFaceDetailViewController_actionSectionDidDelete___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 libraryDetail:*(a1 + 32) didRemoveFace:*(*(a1 + 32) + 1024)];

  v3 = kNTKCCAnalyticsRemoveFace[0];

  NTKCCAnalyticsIncrement(v3);
}

- (void)_updateShareButton
{
  if (!self->_externalAssets)
  {
    v15 = objc_opt_new();
    if (!self->_shareNavButton)
    {
      v4 = objc_alloc(MEMORY[0x277D751E0]);
      v5 = [MEMORY[0x277D755B8] systemImageNamed:@"square.and.arrow.up"];
      v6 = [v4 initWithImage:v5 style:0 target:self action:sel__didTapShareButton];
      [(NTKCFaceDetailViewController *)self setShareNavButton:v6];
    }

    shareNavButton = [(NTKCFaceDetailViewController *)self shareNavButton];
    [v15 addObject:shareNavButton];

    [(UIBarButtonItem *)self->_shareNavButton setEnabled:[(NTKCFaceDetailViewController *)self _isShareButtonEnabled]];
    if ([(NTKCFaceDetailViewController *)self _shouldDisplayShowDebugItem])
    {
      if (!self->_debugNavButton)
      {
        v8 = objc_alloc(MEMORY[0x277D751E0]);
        v9 = [MEMORY[0x277D755B8] systemImageNamed:@"ant"];
        v10 = [v8 initWithImage:v9 style:0 target:self action:sel__didTapShowDebug];
        [(NTKCFaceDetailViewController *)self setDebugNavButton:v10];
      }

      debugNavButton = [(NTKCFaceDetailViewController *)self debugNavButton];
      [v15 addObject:debugNavButton];
    }

    navigationItem = [(NTKCFaceDetailViewController *)self navigationItem];
    [navigationItem setRightBarButtonItems:v15];

    shareButtonChangedHandler = [(NTKCFaceDetailViewController *)self shareButtonChangedHandler];

    if (shareButtonChangedHandler)
    {
      shareButtonChangedHandler2 = [(NTKCFaceDetailViewController *)self shareButtonChangedHandler];
      shareButtonChangedHandler2[2]();
    }
  }
}

- (BOOL)_shouldDisplayShowDebugItem
{
  if (!CLKInternalBuild())
  {
    return 0;
  }

  v3 = [(NTKCFaceDetailViewController *)self _faceBundleForFace:self->_face];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 companionShouldDisplayDebugMenuForFace:self->_face];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_faceBundleForFace:(id)face
{
  bundleIdentifier = [face bundleIdentifier];
  if (bundleIdentifier)
  {
    v5 = +[NTKFaceBundleManager sharedManager];
    device = [(NTKFace *)self->_face device];
    v7 = [v5 faceBundleForBundleIdentifier:bundleIdentifier onDevice:device];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_isShareButtonEnabled
{
  if ([(NTKFace *)self->_face faceStyle]!= 22)
  {
    return 1;
  }

  face = self->_face;

  return NTKPhotosFaceHasPhotos(face);
}

- (void)shareFaceWithPreparingCompletion:(id)completion shareCompletion:(id)shareCompletion
{
  completionCopy = completion;
  shareCompletionCopy = shareCompletion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__NTKCFaceDetailViewController_shareFaceWithPreparingCompletion_shareCompletion___block_invoke;
  aBlock[3] = &unk_27877FF60;
  aBlock[4] = self;
  v8 = shareCompletionCopy;
  v20 = v8;
  v9 = _Block_copy(aBlock);
  if ([(NTKCFaceDetailPhotosSectionController *)self->_photosSection hasChanges])
  {
    view = [(NTKCFaceDetailViewController *)self view];
    [view setUserInteractionEnabled:0];

    v11 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v11 startAnimating];
    v12 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v11];
    navigationItem = [(NTKCFaceDetailViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v12];

    [(UIButton *)self->_addButton setDisabled:1 forReason:0];
    photosSection = self->_photosSection;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __81__NTKCFaceDetailViewController_shareFaceWithPreparingCompletion_shareCompletion___block_invoke_2;
    v15[3] = &unk_2787815D8;
    v15[4] = self;
    v16 = completionCopy;
    v17 = v9;
    v18 = v8;
    [(NTKCFaceDetailPhotosSectionController *)photosSection saveChangesWithCompletion:v15];
  }

  else
  {
    completionCopy[2](completionCopy);
    v9[2](v9);
  }
}

void __81__NTKCFaceDetailViewController_shareFaceWithPreparingCompletion_shareCompletion___block_invoke(uint64_t a1)
{
  v3 = +[NTKGreenfieldCompanionShareController sharedController];
  v2 = [*(a1 + 32) face];
  [v3 shareWatchFace:v2 fromViewController:*(a1 + 32) completion:*(a1 + 40)];
}

uint64_t __81__NTKCFaceDetailViewController_shareFaceWithPreparingCompletion_shareCompletion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = v2[144];
  v4 = [v2 navigationItem];
  [v4 setRightBarButtonItem:v3];

  [*(a1 + 32) _updateAddButton];
  v5 = [*(a1 + 32) view];
  [v5 setUserInteractionEnabled:1];

  v6 = [*(a1 + 32) view];
  v7 = [v6 window];

  v8 = 48;
  if (!v7)
  {
    v8 = 56;
  }

  v9 = *(*(a1 + v8) + 16);

  return v9();
}

- (void)_didTapShowDebug
{
  v3 = [(NTKCFaceDetailViewController *)self _faceBundleForFace:self->_face];
  if (v3)
  {
    v5 = v3;
    v4 = [v3 viewControllerForCompanionDebugMenuWithFace:self->_face];
    if (v4)
    {
      [(NTKCFaceDetailViewController *)self presentViewController:v4 animated:1 completion:0];
    }

    v3 = v5;
  }
}

- (NTKCFaceDetailViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)headerFaceSize
{
  width = self->_headerFaceSize.width;
  height = self->_headerFaceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end