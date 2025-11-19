@interface MUPersonalGuidesSectionController
- (MUPersonalGuidesSectionController)initWithMapItem:(id)a3 collectionViewProvider:(id)a4;
- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel;
- (void)_setupSectionView;
- (void)reloadCollectionsAnimated:(BOOL)a3;
- (void)setActive:(BOOL)a3;
- (void)verticalCardContainerView:(id)a3 didSelectRow:(id)a4 atIndex:(unint64_t)a5;
@end

@implementation MUPersonalGuidesSectionController

- (void)verticalCardContainerView:(id)a3 didSelectRow:(id)a4 atIndex:(unint64_t)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [(NSDictionary *)self->_collectionViews allKeys];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [(NSDictionary *)self->_wrappedSectionViewsByIdentifier objectForKeyedSubscript:v12];

        if (v13 == v6)
        {
          [(MUPlaceSectionController *)self captureInfoCardAction:0 eventValue:0 feedbackType:0];
          WeakRetained = objc_loadWeakRetained(&self->_viewProvider);
          [WeakRetained collectionIdentifierSelected:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel
{
  sectionHeaderViewModel = self->_sectionHeaderViewModel;
  if (!sectionHeaderViewModel)
  {
    v4 = [MUPlaceSectionHeaderViewModel alloc];
    v5 = _MULocalizedStringFromThisBundle(@"In Your Guides [Placecard]");
    v6 = [(MUPlaceSectionHeaderViewModel *)v4 initWithTitleString:v5];
    v7 = self->_sectionHeaderViewModel;
    self->_sectionHeaderViewModel = v6;

    sectionHeaderViewModel = self->_sectionHeaderViewModel;
  }

  return sectionHeaderViewModel;
}

- (void)reloadCollectionsAnimated:(BOOL)a3
{
  v69 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  v53 = self;
  WeakRetained = objc_loadWeakRetained(&self->_viewProvider);
  v6 = [WeakRetained collectionViews];

  if ([v6 count])
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = [v6 allValues];
    v9 = [v7 setWithArray:v8];

    v4 = v9;
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  v11 = v53->_collectionViews;
  if ([(NSDictionary *)v53->_collectionViews count])
  {
    v12 = MEMORY[0x1E695DFD8];
    v13 = [(NSDictionary *)v11 allValues];
    v14 = [v12 setWithArray:v13];

    v10 = v14;
  }

  if ([v4 isEqualToSet:v10])
  {
    v15 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5620000, v15, OS_LOG_TYPE_INFO, "MUPersonalGuidesSectionController:  Not updating personal guides as incoming == current", buf, 2u);
    }
  }

  else
  {
    v44 = v11;
    v45 = v10;
    v47 = v4;
    v16 = [v6 copy];
    collectionViews = v53->_collectionViews;
    v53->_collectionViews = v16;

    IsMacCatalyst = MapKitIdiomIsMacCatalyst();
    if (IsMacCatalyst)
    {
      v19 = 8.0;
    }

    else
    {
      v19 = 0.0;
    }

    if (IsMacCatalyst)
    {
      v20 = 16.0;
    }

    else
    {
      v20 = 0.0;
    }

    v46 = v6;
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
    v52 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{4 * -[NSObject count](v15, "count")}];
    v51 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = [(NSDictionary *)v53->_collectionViews allKeys];
    v54 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
    if (v54)
    {
      v49 = *v63;
      v21 = *MEMORY[0x1E695F058];
      v22 = *(MEMORY[0x1E695F058] + 8);
      v23 = *(MEMORY[0x1E695F058] + 16);
      v24 = *(MEMORY[0x1E695F058] + 24);
      v50 = v15;
      do
      {
        for (i = 0; i != v54; ++i)
        {
          if (*v63 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v61 = *(*(&v62 + 1) + 8 * i);
          v26 = [(NSDictionary *)v53->_collectionViews objectForKeyedSubscript:?];
          v27 = [[MUPlaceSectionRowView alloc] initWithFrame:v21, v22, v23, v24];
          [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
          [(MUPlaceSectionRowView *)v27 setAccessibilityIdentifier:@"PersonalGuide"];
          [(MUPlaceSectionRowView *)v27 addSubview:v26];
          v60 = [v26 topAnchor];
          v59 = [(MUPlaceSectionRowView *)v27 topAnchor];
          v58 = [v60 constraintEqualToAnchor:v59 constant:v19];
          v67[0] = v58;
          v57 = [v26 bottomAnchor];
          v56 = [(MUPlaceSectionRowView *)v27 bottomAnchor];
          v55 = [v57 constraintEqualToAnchor:v56 constant:-v19];
          v67[1] = v55;
          v28 = [v26 leadingAnchor];
          v29 = [(MUPlaceSectionRowView *)v27 leadingAnchor];
          v30 = [v28 constraintEqualToAnchor:v29 constant:v20];
          v67[2] = v30;
          v31 = [v26 trailingAnchor];
          v32 = [(MUPlaceSectionRowView *)v27 trailingAnchor];
          v33 = [v31 constraintEqualToAnchor:v32 constant:-v20];
          v67[3] = v33;
          v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:4];
          [v52 addObjectsFromArray:v34];

          [v51 setObject:v27 forKey:v61];
          v15 = v50;
          [v50 addObject:v27];
        }

        v54 = [obj countByEnumeratingWithState:&v62 objects:v68 count:16];
      }

      while (v54);
    }

    v35 = [v51 copy];
    wrappedSectionViewsByIdentifier = v53->_wrappedSectionViewsByIdentifier;
    v53->_wrappedSectionViewsByIdentifier = v35;

    v37 = MEMORY[0x1E696ACD8];
    v38 = [v52 copy];
    [v37 activateConstraints:v38];

    containerView = v53->_containerView;
    v40 = [v15 copy];
    [(MUPlaceVerticalCardContainerView *)containerView setRowViews:v40];

    v41 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5620000, v41, OS_LOG_TYPE_INFO, "MUPersonalGuidesSectionController: Detected change in user collections and telling parent to update content", buf, 2u);
    }

    v42 = [(MUPlaceSectionController *)v53 delegate];
    [v42 placeSectionControllerDidUpdateContent:v53];

    v6 = v46;
    v4 = v47;
    v11 = v44;
    v10 = v45;
  }

  v43 = *MEMORY[0x1E69E9840];
}

- (void)setActive:(BOOL)a3
{
  if (self->_active == a3)
  {
    if (!self->_active)
    {
      return;
    }
  }

  else
  {
    self->_active = a3;
    if (!a3)
    {
      return;
    }
  }

  v4 = MUGetPlaceCardLog();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5620000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUPersonalGuidesSectionControllerActivate", "", buf, 2u);
  }

  [(MUPersonalGuidesSectionController *)self reloadCollectionsAnimated:1];
  v5 = MUGetPlaceCardLog();
  if (os_signpost_enabled(v5))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5620000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUPersonalGuidesSectionControllerActivate", "", v6, 2u);
  }
}

- (void)_setupSectionView
{
  v9 = +[MUPlaceVerticalCardConfiguration separatorConfiguration];
  v3 = [[MUPlaceVerticalCardContainerView alloc] initWithConfiguration:v9];
  containerView = self->_containerView;
  self->_containerView = v3;

  [(MUPlaceVerticalCardContainerView *)self->_containerView setDelegate:self];
  [(MUPlaceVerticalCardContainerView *)self->_containerView setAccessibilityIdentifier:@"PersonalGuidesContainer"];
  v5 = self->_containerView;
  v6 = [(MUPersonalGuidesSectionController *)self sectionHeaderViewModel];
  v7 = [MUPlaceSectionView insetPlatterSectionViewForContentView:v5 sectionHeaderViewModel:v6 sectionFooterViewModel:0];
  sectionView = self->_sectionView;
  self->_sectionView = v7;

  [(MUPlaceSectionView *)self->_sectionView configureWithSectionController:self];
}

- (MUPersonalGuidesSectionController)initWithMapItem:(id)a3 collectionViewProvider:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = MUPersonalGuidesSectionController;
  v7 = [(MUPlaceSectionController *)&v12 initWithMapItem:a3];
  if (v7)
  {
    v8 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v8))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUPersonalGuidesSectionControllerInit", "", v11, 2u);
    }

    objc_storeWeak(&v7->_viewProvider, v6);
    [(MUPersonalGuidesSectionController *)v7 _setupSectionView];
    v9 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v9))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUPersonalGuidesSectionControllerInit", "", v11, 2u);
    }
  }

  return v7;
}

@end