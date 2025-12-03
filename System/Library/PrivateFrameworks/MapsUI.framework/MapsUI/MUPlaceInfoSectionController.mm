@interface MUPlaceInfoSectionController
- (BOOL)_shouldShowRapEditButtonForDetails;
- (BOOL)_shouldShowRapEditButtonForHours;
- (GEOInlineRapEnablement)inlineRapEnablement;
- (MUPlaceInfoSectionController)initWithPlaceItem:(id)item configuration:(id)configuration;
- (MUPlaceInfoSectionControllerDelegate)placeInfoDelegate;
- (MUPlaceSectionFooterViewModel)sectionFooterViewModel;
- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel;
- (MUUserInformationProvider)userInfoProvider;
- (NSArray)sectionViews;
- (id)_createAddressItem;
- (id)_loadHoursContentViewIfNeeded;
- (id)_loadPlaceInfoAddress:(id)address contact:(id)contact;
- (id)_loadPlaceInfoContentIfNeeded;
- (id)_loadRAPStatusViewIfNeeded;
- (id)_loadViewWithContactMetadata:(id)metadata;
- (id)_rapEditPlaceDetailsMenu;
- (id)draggableContent;
- (id)hoursSectionHeaderViewModel;
- (id)labeledValuesForContactValues:(id)values type:(int64_t)type;
- (int)_attributionStyle;
- (void)_buildSections;
- (void)_handleFactoidTap:(id)tap withReference:(id)reference;
- (void)_performActionItem:(id)item withOptions:(id)options;
- (void)_populateRevealedAnalyticsModule:(id)module;
- (void)_rapEditPlaceHoursSectionHeaderButtonTapped;
- (void)_refineMapItemForIdentifier:(id)identifier completion:(id)completion;
- (void)_tappedAddressItem;
- (void)_tappedContactOfType:(int64_t)type withLabeledValue:(id)value;
- (void)_tappedMessageType;
- (void)_tappedViewRAPReport;
- (void)hoursSectionView:(id)view didExpand:(BOOL)expand forConfiguration:(id)configuration;
- (void)refreshContents;
- (void)setPlaceNumberOfReportsInReview:(unint64_t)review;
@end

@implementation MUPlaceInfoSectionController

- (MUUserInformationProvider)userInfoProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_userInfoProvider);

  return WeakRetained;
}

- (MUPlaceInfoSectionControllerDelegate)placeInfoDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_placeInfoDelegate);

  return WeakRetained;
}

- (void)_populateRevealedAnalyticsModule:(id)module
{
  v47 = *MEMORY[0x1E69E9840];
  moduleCopy = module;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  availability = [(MUPlaceInfoSectionControllerConfiguration *)self->_configuration availability];
  supportsInlineReportAnIssue = [availability supportsInlineReportAnIssue];

  if (supportsInlineReportAnIssue)
  {
    v30 = moduleCopy;
    availability2 = [(MUPlaceInfoSectionControllerConfiguration *)self->_configuration availability];
    supportsHours = [availability2 supportsHours];

    if ((supportsHours & 1) == 0)
    {
      v10 = [MEMORY[0x1E69A24B0] moduleButtonForType:53];
      [v5 _mapsui_addObjectIfNotNil:v10];
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = self->_sectionStackViews;
    v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v41;
      do
      {
        v14 = 0;
        do
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v40 + 1) + 8 * v14);
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          viewModels = [v15 viewModels];
          v17 = [viewModels countByEnumeratingWithState:&v36 objects:v45 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v37;
            do
            {
              v20 = 0;
              do
              {
                if (*v37 != v19)
                {
                  objc_enumerationMutation(viewModels);
                }

                v21 = *(*(&v36 + 1) + 8 * v20);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  analyticsButtonValue = [v21 analyticsButtonValue];
                  [v5 _mapsui_addObjectIfNotNil:analyticsButtonValue];
                }

                ++v20;
              }

              while (v18 != v20);
              v18 = [viewModels countByEnumeratingWithState:&v36 objects:v45 count:16];
            }

            while (v18);
          }

          ++v14;
        }

        while (v14 != v12);
        v12 = [(NSMutableArray *)obj countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v12);
    }

    moduleCopy = v30;
  }

  if ([v5 count])
  {
    v23 = objc_alloc_init(MEMORY[0x1E69A24C0]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v24 = v5;
    v25 = [v24 countByEnumeratingWithState:&v32 objects:v44 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v33;
      do
      {
        v28 = 0;
        do
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [v23 addButtons:*(*(&v32 + 1) + 8 * v28++)];
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v32 objects:v44 count:16];
      }

      while (v26);
    }

    [moduleCopy setInfos:v23];
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (id)draggableContent
{
  firstObject = [(NSArray *)self->_sectionViews firstObject];
  v4 = MUIdiomInTraitEnvironment(firstObject);

  if (v4 == 5)
  {
    v5 = 0;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sectionStackViews = self->_sectionStackViews;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__MUPlaceInfoSectionController_draggableContent__block_invoke;
    v10[3] = &unk_1E821A420;
    v11 = v6;
    v8 = v6;
    [(NSMutableArray *)sectionStackViews enumerateObjectsUsingBlock:v10];
    v5 = [v8 copy];
  }

  return v5;
}

uint64_t __48__MUPlaceInfoSectionController_draggableContent__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 draggableContent];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = [*(a1 + 32) addObjectsFromArray:v3];
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)hoursSectionView:(id)view didExpand:(BOOL)expand forConfiguration:(id)configuration
{
  expandCopy = expand;
  configurationCopy = configuration;
  if (expandCopy)
  {
    v9 = configurationCopy;
    if ([configurationCopy isServiceHours])
    {
      hoursName = [v9 hoursName];
    }

    else
    {
      hoursName = 0;
    }

    [(MUPlaceSectionController *)self captureInfoCardAction:6012 eventValue:hoursName feedbackType:0];

    configurationCopy = v9;
  }
}

- (void)_performActionItem:(id)item withOptions:(id)options
{
  v15[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v14 = *MEMORY[0x1E696F108];
  itemCopy = item;
  v8 = [(MUPlaceSectionController *)self analyticsModuleForAction:0 presentationOptions:0];
  v15[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v10 = [v9 mutableCopy];

  if (optionsCopy)
  {
    [v10 addEntriesFromDictionary:optionsCopy];
  }

  actionDelegate = [(MUPlaceInfoSectionControllerConfiguration *)self->_configuration actionDelegate];
  v12 = [v10 copy];
  [actionDelegate performAction:itemCopy options:v12 completion:0];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_rapEditPlaceHoursSectionHeaderButtonTapped
{
  placeInfoDelegate = [(MUPlaceInfoSectionController *)self placeInfoDelegate];
  [placeInfoDelegate placeInfoSectionController:self didSelectEditPlaceDetailsOfType:4];
}

- (id)_rapEditPlaceDetailsMenu
{
  v28 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  inlineRapEnablement = [(MUPlaceInfoSectionController *)self inlineRapEnablement];
  v5 = inlineRapEnablement;
  if (inlineRapEnablement)
  {
    if ([inlineRapEnablement isPhoneEditable])
    {
      [array addObject:&unk_1F450DF28];
    }

    if ([v5 isWebsiteEditable])
    {
      [array addObject:&unk_1F450DF40];
    }

    if ([v5 isAddressEditable])
    {
      [array addObject:&unk_1F450DF58];
    }

    [array addObject:&unk_1F450DF70];
  }

  else
  {
    [array addObjectsFromArray:{&unk_1F450E398, 0}];
  }

  array2 = [MEMORY[0x1E695DF70] array];
  objc_initWeak(&location, self);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = array;
  v7 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        integerValue = [*(*(&v22 + 1) + 8 * i) integerValue];
        v11 = integerValue;
        v12 = MEMORY[0x1E69DC628];
        v13 = &stru_1F44CA030;
        if (integerValue <= 5)
        {
          v13 = _MULocalizedStringFromThisBundle(off_1E821A440[integerValue]);
        }

        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __56__MUPlaceInfoSectionController__rapEditPlaceDetailsMenu__block_invoke;
        v20[3] = &unk_1E821A3F8;
        objc_copyWeak(v21, &location);
        v21[1] = v11;
        v14 = [v12 actionWithTitle:v13 image:0 identifier:0 handler:v20];

        [array2 addObject:v14];
        objc_destroyWeak(v21);
      }

      v7 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v15 = [MEMORY[0x1E69DCC60] menuWithChildren:array2];
  objc_destroyWeak(&location);

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

void __56__MUPlaceInfoSectionController__rapEditPlaceDetailsMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained placeInfoDelegate];
    [v3 placeInfoSectionController:v4 didSelectEditPlaceDetailsOfType:*(a1 + 40)];

    WeakRetained = v4;
  }
}

- (BOOL)_shouldShowRapEditButtonForHours
{
  inlineRapEnablement = [(MUPlaceInfoSectionController *)self inlineRapEnablement];
  if (inlineRapEnablement)
  {
    inlineRapEnablement2 = [(MUPlaceInfoSectionController *)self inlineRapEnablement];
    isHoursEditable = [inlineRapEnablement2 isHoursEditable];
  }

  else
  {
    isHoursEditable = 1;
  }

  return isHoursEditable;
}

- (BOOL)_shouldShowRapEditButtonForDetails
{
  inlineRapEnablement = [(MUPlaceInfoSectionController *)self inlineRapEnablement];
  if (inlineRapEnablement)
  {
    inlineRapEnablement2 = [(MUPlaceInfoSectionController *)self inlineRapEnablement];
    if ([inlineRapEnablement2 isPhoneEditable])
    {
      isWebsiteEditable = 1;
    }

    else
    {
      inlineRapEnablement3 = [(MUPlaceInfoSectionController *)self inlineRapEnablement];
      isWebsiteEditable = [inlineRapEnablement3 isWebsiteEditable];
    }
  }

  else
  {
    isWebsiteEditable = 1;
  }

  return isWebsiteEditable;
}

- (void)_tappedViewRAPReport
{
  v3 = [MEMORY[0x1E696F308] actionItemWithType:3];
  [(MUPlaceInfoSectionController *)self _performActionItem:v3 withOptions:0];
}

- (void)_tappedAddressItem
{
  availability = [(MUPlaceInfoSectionControllerConfiguration *)self->_configuration availability];
  showEditAddressForHome = [availability showEditAddressForHome];

  if (showEditAddressForHome)
  {
    v5 = 25;
  }

  else
  {
    v5 = 30;
  }

  v6 = [MEMORY[0x1E696F308] actionItemWithType:v5];
  [(MUPlaceInfoSectionController *)self _performActionItem:v6 withOptions:0];
}

- (void)_tappedMessageType
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696F308] actionItemWithType:11];
  v7 = *MEMORY[0x1E696F108];
  v4 = [(MUPlaceSectionController *)self analyticsModuleForAction:0 presentationOptions:0];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  [(MUPlaceInfoSectionController *)self _performActionItem:v3 withOptions:v5];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_tappedContactOfType:(int64_t)type withLabeledValue:(id)value
{
  v12[1] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  if ((type - 1) > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_1C587A1B8[type - 1];
  }

  v8 = [MEMORY[0x1E696F308] actionItemWithType:v7];
  if (valueCopy)
  {
    v11 = *MEMORY[0x1E696F0E8];
    v12[0] = valueCopy;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v9 = 0;
  }

  [(MUPlaceInfoSectionController *)self _performActionItem:v8 withOptions:v9];

  v10 = *MEMORY[0x1E69E9840];
}

- (id)labeledValuesForContactValues:(id)values type:(int64_t)type
{
  v34[1] = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  availability = [(MUPlaceInfoSectionControllerConfiguration *)self->_configuration availability];
  if (![availability supportsInlineReportAnIssue])
  {

    goto LABEL_11;
  }

  v7 = [valuesCopy count];

  if (v7)
  {
LABEL_11:
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = valuesCopy;
    v11 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
    if (v11)
    {
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = [[MUContactLabeledValue alloc] initWithContactLabeledValue:v14 type:type];
          [(MUContactLabeledValue *)v15 setActionVariant:1];
          objc_initWeak(&location, self);
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __67__MUPlaceInfoSectionController_labeledValuesForContactValues_type___block_invoke_2;
          v24[3] = &unk_1E821A3D0;
          objc_copyWeak(v25, &location);
          v25[1] = type;
          v24[4] = v14;
          [(MUContactLabeledValue *)v15 setActionBlock:v24];
          [(MUAddMissingDataLabeledValue *)v10 addObject:v15];
          objc_destroyWeak(v25);
          objc_destroyWeak(&location);
        }

        v11 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
      }

      while (v11);
    }

    v16 = [(MUAddMissingDataLabeledValue *)v10 copy];
    goto LABEL_19;
  }

  if (type == 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2 * (type == 1);
  }

  inlineRapEnablement = [(MUPlaceInfoSectionController *)self inlineRapEnablement];

  if (!inlineRapEnablement || v8 <= 1)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

LABEL_27:
    v10 = [[MUAddMissingDataLabeledValue alloc] initWithType:v8];
    [(MUAddMissingDataLabeledValue *)v10 setActionVariant:1];
    objc_initWeak(&location, self);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __67__MUPlaceInfoSectionController_labeledValuesForContactValues_type___block_invoke;
    v30[3] = &unk_1E821A308;
    objc_copyWeak(v31, &location);
    v31[1] = v8;
    [(MUAddMissingDataLabeledValue *)v10 setActionBlock:v30];
    v34[0] = v10;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
    objc_destroyWeak(v31);
    objc_destroyWeak(&location);
LABEL_19:

    goto LABEL_20;
  }

  inlineRapEnablement2 = [(MUPlaceInfoSectionController *)self inlineRapEnablement];
  if (v8 == 3)
  {
    isWebsiteEditable = [inlineRapEnablement2 isWebsiteEditable];
  }

  else
  {
    isWebsiteEditable = [inlineRapEnablement2 isPhoneEditable];
  }

  v21 = isWebsiteEditable;

  if (v21)
  {
    goto LABEL_27;
  }

  v16 = MEMORY[0x1E695E0F0];
LABEL_20:

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

void __67__MUPlaceInfoSectionController_labeledValuesForContactValues_type___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained placeInfoDelegate];
    [v3 placeInfoSectionController:v4 didSelectAddMissingDataOfType:*(a1 + 40)];

    WeakRetained = v4;
  }
}

void __67__MUPlaceInfoSectionController_labeledValuesForContactValues_type___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _tappedContactOfType:*(a1 + 48) withLabeledValue:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (int)_attributionStyle
{
  moduleConfiguration = [(MUPlaceInfoSectionControllerConfiguration *)self->_configuration moduleConfiguration];

  if (!moduleConfiguration)
  {
    return 0;
  }

  moduleConfiguration2 = [(MUPlaceInfoSectionControllerConfiguration *)self->_configuration moduleConfiguration];
  attributionStyle = [moduleConfiguration2 attributionStyle];

  return attributionStyle;
}

- (MUPlaceSectionFooterViewModel)sectionFooterViewModel
{
  v26[1] = *MEMORY[0x1E69E9840];
  sectionFooterViewModel = self->_sectionFooterViewModel;
  if (sectionFooterViewModel)
  {
    v3 = sectionFooterViewModel;
  }

  else
  {
    _attributionStyle = [(MUPlaceInfoSectionController *)self _attributionStyle];
    if (_attributionStyle == 1)
    {
      v13 = _MULocalizedStringFromThisBundle(@"Developed in partnership with %@");
      mapItem = [(MUPlaceSectionController *)self mapItem];
      name = [mapItem name];

      v16 = [MUPlaceFooterAtributionViewModel alloc];
      v26[0] = name;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
      v18 = [(MUPlaceFooterAtributionViewModel *)v16 initWithFormatString:v13 providerNames:v17 isInteractable:0];
      v19 = self->_sectionFooterViewModel;
      self->_sectionFooterViewModel = v18;
    }

    else if (!_attributionStyle)
    {
      if (!-[MUPlaceInfoSectionControllerConfiguration isDeveloperPlaceCard](self->_configuration, "isDeveloperPlaceCard") || (-[MUPlaceSectionController mapItem](self, "mapItem"), v6 = objc_claimAutoreleasedReturnValue(), [v6 _attribution], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "requiresAttributionInDeveloperPlaceCard"), v7, v6, v8))
      {
        mapItem2 = [(MUPlaceSectionController *)self mapItem];
        _attribution = [mapItem2 _attribution];
        v11 = [MUPlaceFooterAtributionViewModel viewModelForMapItemAttribution:_attribution];
        v12 = self->_sectionFooterViewModel;
        self->_sectionFooterViewModel = v11;
      }
    }

    objc_initWeak(&location, self);
    v20 = self->_sectionFooterViewModel;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __54__MUPlaceInfoSectionController_sectionFooterViewModel__block_invoke;
    v23[3] = &unk_1E821BAC8;
    objc_copyWeak(&v24, &location);
    [(MUPlaceSectionFooterViewModel *)v20 setActionBlock:v23];
    v3 = self->_sectionFooterViewModel;
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v3;
}

void __54__MUPlaceInfoSectionController_sectionFooterViewModel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained placeInfoDelegate];
    v3 = [v5 mapItem];
    v4 = [v3 _attribution];
    [v2 placeInfoSectionController:v5 didTapAttribution:v4];

    WeakRetained = v5;
  }
}

- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel
{
  _shouldShowRapEditButtonForDetails = [(MUPlaceInfoSectionController *)self _shouldShowRapEditButtonForDetails];
  v4 = [MUPlaceSectionHeaderViewModel alloc];
  v5 = _MULocalizedStringFromThisBundle(@"Details [Placecard]");
  v6 = [(MUPlaceSectionHeaderViewModel *)v4 initWithTitleString:v5 showSeeMore:_shouldShowRapEditButtonForDetails];

  availability = [(MUPlaceInfoSectionControllerConfiguration *)self->_configuration availability];
  supportsInlineReportAnIssue = [availability supportsInlineReportAnIssue];

  if (supportsInlineReportAnIssue)
  {
    v9 = !_shouldShowRapEditButtonForDetails;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = _MULocalizedStringFromThisBundle(@"Edit [Placecard RAP]");
    [(MUPlaceSectionHeaderViewModel *)v6 setSeeMoreButtonText:v10];

    _rapEditPlaceDetailsMenu = [(MUPlaceInfoSectionController *)self _rapEditPlaceDetailsMenu];
    [(MUPlaceSectionHeaderViewModel *)v6 setSeeMoreButtonMenu:_rapEditPlaceDetailsMenu];

    [(MUPlaceSectionHeaderViewModel *)v6 setTarget:self selector:sel__rapEditPlaceDetailsButtonTapped];
  }

  return v6;
}

- (id)hoursSectionHeaderViewModel
{
  _shouldShowRapEditButtonForHours = [(MUPlaceInfoSectionController *)self _shouldShowRapEditButtonForHours];
  v4 = [MUPlaceSectionHeaderViewModel alloc];
  v5 = _MULocalizedStringFromThisBundle(@"Hours [Placecard Section Header]");
  v6 = [(MUPlaceSectionHeaderViewModel *)v4 initWithTitleString:v5 showSeeMore:1];

  availability = [(MUPlaceInfoSectionControllerConfiguration *)self->_configuration availability];
  supportsInlineReportAnIssue = [availability supportsInlineReportAnIssue];

  if (supportsInlineReportAnIssue)
  {
    v9 = !_shouldShowRapEditButtonForHours;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = _MULocalizedStringFromThisBundle(@"Edit [Placecard RAP]");
    [(MUPlaceSectionHeaderViewModel *)v6 setSeeMoreButtonText:v10];

    [(MUPlaceSectionHeaderViewModel *)v6 setTarget:self selector:sel__rapEditPlaceHoursSectionHeaderButtonTapped];
  }

  return v6;
}

- (void)_refineMapItemForIdentifier:(id)identifier completion:(id)completion
{
  v15[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = MEMORY[0x1E696F298];
  identifierCopy = identifier;
  sharedService = [v6 sharedService];
  v15[0] = identifierCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v10 = [sharedService ticketForIdentifiers:v9 traits:0];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__MUPlaceInfoSectionController__refineMapItemForIdentifier_completion___block_invoke;
  v13[3] = &unk_1E821A3A8;
  v14 = completionCopy;
  v11 = completionCopy;
  [v10 submitWithHandler:v13 networkActivity:0];

  v12 = *MEMORY[0x1E69E9840];
}

void __71__MUPlaceInfoSectionController__refineMapItemForIdentifier_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [v8 count];
  if (!a3 && v5)
  {
    v6 = *(a1 + 32);
    v7 = [v8 firstObject];
    (*(v6 + 16))(v6, v7);
  }
}

- (void)_handleFactoidTap:(id)tap withReference:(id)reference
{
  tapCopy = tap;
  referenceCopy = reference;
  v8 = objc_alloc(MEMORY[0x1E696F280]);
  placeIdentifier = [tapCopy placeIdentifier];
  v10 = [v8 initWithGEOMapItemIdentifier:placeIdentifier];

  if (v10)
  {
    v11 = objc_alloc_init(MUPresentationOptions);
    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __64__MUPlaceInfoSectionController__handleFactoidTap_withReference___block_invoke;
    v13[3] = &unk_1E821A380;
    objc_copyWeak(&v16, &location);
    v14 = referenceCopy;
    v12 = v11;
    v15 = v12;
    [(MUPlaceInfoSectionController *)self _refineMapItemForIdentifier:v10 completion:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __64__MUPlaceInfoSectionController__handleFactoidTap_withReference___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = [*(a1 + 32) linkStyle];
    if (v4 == 2)
    {
      v5 = [WeakRetained placeInfoDelegate];
      [v5 placeInfoSectionController:WeakRetained selectedViewPlaceWithMapItem:v6 options:*(a1 + 40)];
    }

    else
    {
      if (v4 != 1)
      {
        goto LABEL_7;
      }

      v5 = [WeakRetained placeInfoDelegate];
      [v5 placeInfoSectionController:WeakRetained selectedDirectionsWithMapItem:v6 options:*(a1 + 40)];
    }
  }

LABEL_7:
}

- (id)_createAddressItem
{
  v24 = *MEMORY[0x1E69E9840];
  mapItem = [(MUPlaceSectionController *)self mapItem];
  _addressFormattedAsLocation = [mapItem _addressFormattedAsLocation];

  v5 = [_addressFormattedAsLocation length];
  v6 = v5 != 0;
  if (v5)
  {
    v7 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v22 = 138412290;
      v23 = _addressFormattedAsLocation;
      _os_log_impl(&dword_1C5620000, v7, OS_LOG_TYPE_DEBUG, "We have a location formatted string %@", &v22, 0xCu);
    }
  }

  else
  {
    mapItem2 = [(MUPlaceSectionController *)self mapItem];
    _addressFormattedAsMultilineAddress = [mapItem2 _addressFormattedAsMultilineAddress];

    v7 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v22 = 138412290;
      v23 = _addressFormattedAsMultilineAddress;
      _os_log_impl(&dword_1C5620000, v7, OS_LOG_TYPE_DEBUG, "We have a multiline address string %@", &v22, 0xCu);
    }

    _addressFormattedAsLocation = _addressFormattedAsMultilineAddress;
  }

  moduleConfiguration = [(MUPlaceInfoSectionControllerConfiguration *)self->_configuration moduleConfiguration];

  if (moduleConfiguration)
  {
    moduleConfiguration2 = [(MUPlaceInfoSectionControllerConfiguration *)self->_configuration moduleConfiguration];
    locationStyle = [moduleConfiguration2 locationStyle];

    if (locationStyle == 2)
    {
      v13 = MUGetPlaceCardLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_1C5620000, v13, OS_LOG_TYPE_DEBUG, "Asking to suppress address with GEOLocationInfoStyleSuppress", &v22, 2u);
      }

      goto LABEL_19;
    }

    v6 = locationStyle == 1;
  }

  if (![_addressFormattedAsLocation length])
  {
LABEL_19:
    v14 = 0;
    goto LABEL_20;
  }

  v14 = objc_alloc_init(MULabeledValueActionViewModel);
  if (v6)
  {
    v15 = @"Location [Placecard]";
  }

  else
  {
    v15 = @"Address [Placecard]";
  }

  v16 = _MULocalizedStringFromThisBundle(v15);
  [(MULabeledValueActionViewModel *)v14 setTitleString:v16];

  [(MULabeledValueActionViewModel *)v14 setValueString:_addressFormattedAsLocation];
  [(MULabeledValueActionViewModel *)v14 setAnalyticsTarget:1502];
  availability = [(MUPlaceInfoSectionControllerConfiguration *)self->_configuration availability];
  showEditAddressForHome = [availability showEditAddressForHome];

  if (showEditAddressForHome)
  {
    [(MULabeledValueActionViewModel *)v14 setSymbolName:@"pencil"];
  }

  else if (!v6 && ![(MUPlaceInfoSectionControllerConfiguration *)self->_configuration isDeveloperPlaceCard])
  {
    v21 = +[MUContactsViewModelGenerator symbolImageForAddressItem];
    [(MULabeledValueActionViewModel *)v14 setSymbolName:v21];
  }

LABEL_20:

  v19 = *MEMORY[0x1E69E9840];

  return v14;
}

- (NSArray)sectionViews
{
  v2 = [(NSArray *)self->_sectionViews copy];

  return v2;
}

- (id)_loadRAPStatusViewIfNeeded
{
  placeNumberOfReportsInReview = [(MUPlaceInfoSectionController *)self placeNumberOfReportsInReview];
  if (placeNumberOfReportsInReview)
  {
    availability = [(MUPlaceInfoSectionControllerConfiguration *)self->_configuration availability];
    if ([(MUDisclosureActionViewModel *)availability supportsReportsInReview])
    {
      placeNumberOfReportsInReview2 = [(MUPlaceInfoSectionController *)self placeNumberOfReportsInReview];

      if (!placeNumberOfReportsInReview2)
      {
LABEL_11:
        placeNumberOfReportsInReview = self->_rapStatusContentView;
        goto LABEL_12;
      }

      availability = objc_alloc_init(MUDisclosureActionViewModel);
      mEMORY[0x1E69A1CD8] = [MEMORY[0x1E69A1CD8] sharedConfiguration];
      countryCode = [mEMORY[0x1E69A1CD8] countryCode];
      v8 = [countryCode isEqualToString:@"CN"];

      if (v8)
      {
        v9 = @"Number of reports [Placecard]";
      }

      else
      {
        v9 = @"Number of reports in review [Placecard]";
      }

      v10 = _MULocalizedStringFromThisBundle(v9);
      v11 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v10 validFormatSpecifiers:@"%lu" error:0, -[MUPlaceInfoSectionController placeNumberOfReportsInReview](self, "placeNumberOfReportsInReview")];
      [(MUDisclosureActionViewModel *)availability setTitleString:v11];
      userInfoProvider = [(MUPlaceInfoSectionController *)self userInfoProvider];
      userIcon = [userInfoProvider userIcon];
      [(MUDisclosureActionViewModel *)availability setImage:userIcon];

      objc_initWeak(&location, self);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __58__MUPlaceInfoSectionController__loadRAPStatusViewIfNeeded__block_invoke;
      v18[3] = &unk_1E821BAA0;
      objc_copyWeak(&v19, &location);
      [(MUDisclosureActionViewModel *)availability setActionBlock:v18];
      rapStatusContentView = self->_rapStatusContentView;
      if (!rapStatusContentView)
      {
        v15 = objc_alloc_init(MUDisclosureActionRowView);
        [(MKViewWithHairline *)v15 setBottomHairlineHidden:1];
        [(MUDisclosureActionRowView *)v15 setViewModel:availability];
        [(MUDisclosureActionRowView *)v15 setAccessibilityIdentifier:@"PlaceDetailsReportInReview"];
        v16 = self->_rapStatusContentView;
        self->_rapStatusContentView = v15;

        rapStatusContentView = self->_rapStatusContentView;
      }

      [(MUDisclosureActionRowView *)rapStatusContentView setViewModel:availability];
      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }

    goto LABEL_11;
  }

LABEL_12:

  return placeNumberOfReportsInReview;
}

void __58__MUPlaceInfoSectionController__loadRAPStatusViewIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _tappedViewRAPReport];
    WeakRetained = v2;
  }
}

- (id)_loadViewWithContactMetadata:(id)metadata
{
  v4 = MEMORY[0x1E695DF70];
  metadataCopy = metadata;
  v6 = objc_alloc_init(v4);
  emailAddresses = [metadataCopy emailAddresses];
  v8 = [(MUPlaceInfoSectionController *)self labeledValuesForContactValues:emailAddresses type:2];
  [v6 addObjectsFromArray:v8];

  phoneNumbers = [metadataCopy phoneNumbers];
  v10 = [(MUPlaceInfoSectionController *)self labeledValuesForContactValues:phoneNumbers type:1];
  [v6 addObjectsFromArray:v10];

  urlAddresses = [metadataCopy urlAddresses];

  v12 = [(MUPlaceInfoSectionController *)self labeledValuesForContactValues:urlAddresses type:3];
  [v6 addObjectsFromArray:v12];

  v13 = [MUPlaceInfoSectionView alloc];
  v14 = +[MUInfoCardStyle preferredVerticalCardConfiguration];
  v15 = [(MUPlaceVerticalCardContainerView *)v13 initWithConfiguration:v14];

  [(MUPlaceInfoSectionView *)v15 setAccessibilityIdentifier:@"PlaceDetailsInfo"];
  v16 = [v6 copy];
  [(MUPlaceInfoSectionView *)v15 setViewModels:v16];

  return v15;
}

- (id)_loadPlaceInfoAddress:(id)address contact:(id)contact
{
  v35 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  contactCopy = contact;
  v8 = MUGetPlaceCardLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    identifier = [addressCopy identifier];
    *buf = 138412546;
    v32 = identifier;
    v33 = 2112;
    v34 = contactCopy;
    _os_log_impl(&dword_1C5620000, v8, OS_LOG_TYPE_DEBUG, "Building section view for address: %@, contact: %@", buf, 0x16u);
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__MUPlaceInfoSectionController__loadPlaceInfoAddress_contact___block_invoke;
  aBlock[3] = &unk_1E821A330;
  v11 = v10;
  v30 = v11;
  v12 = _Block_copy(aBlock);
  v13 = [(MUContactsViewModelGenerator *)self->_contactsViewModelGenerator viewModelForAddress:addressCopy];
  objc_initWeak(buf, self);
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __62__MUPlaceInfoSectionController__loadPlaceInfoAddress_contact___block_invoke_2;
  v25 = &unk_1E821A358;
  objc_copyWeak(&v28, buf);
  v14 = addressCopy;
  v26 = v14;
  v15 = contactCopy;
  v27 = v15;
  v12[2](v12, v13, &v22);
  v16 = [MUPlaceInfoSectionView alloc];
  v17 = [MUInfoCardStyle preferredVerticalCardConfiguration:v22];
  v18 = [(MUPlaceVerticalCardContainerView *)v16 initWithConfiguration:v17];

  [(MUPlaceInfoSectionView *)v18 setAccessibilityIdentifier:@"PlaceDetailsInfo"];
  v19 = [v11 copy];
  [(MUPlaceInfoSectionView *)v18 setViewModels:v19];

  [(NSMutableArray *)self->_sectionStackViews addObject:v18];
  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);

  v20 = *MEMORY[0x1E69E9840];

  return v18;
}

void __62__MUPlaceInfoSectionController__loadPlaceInfoAddress_contact___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v6 = a2;
    v5 = [a3 copy];
    [v6 setActionBlock:v5];

    [*(a1 + 32) addObject:v6];
  }
}

void __62__MUPlaceInfoSectionController__loadPlaceInfoAddress_contact___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = objc_alloc_init(MUPresentationOptions);
    v4 = [v5 placeInfoDelegate];
    [v4 placeInfoSectionController:v5 selectedDirectionsWithAddress:*(a1 + 32) forContact:*(a1 + 40) options:v3];

    WeakRetained = v5;
  }
}

- (id)_loadPlaceInfoContentIfNeeded
{
  location[2] = *MEMORY[0x1E69E9840];
  placeInfoSectionView = self->_placeInfoSectionView;
  if (placeInfoSectionView)
  {
    v3 = placeInfoSectionView;
    goto LABEL_47;
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__MUPlaceInfoSectionController__loadPlaceInfoContentIfNeeded__block_invoke;
  aBlock[3] = &unk_1E821A330;
  v54 = v5;
  v70 = v54;
  v56 = _Block_copy(aBlock);
  contact = [(_MKPlaceItem *)self->_placeItem contact];
  if (!contact)
  {
    mapItem = [(MUPlaceSectionController *)self mapItem];
    _placeCardContact = [mapItem _placeCardContact];

    contact = _placeCardContact;
  }

  v53 = contact;
  emailAddresses = [contact emailAddresses];
  v10 = [(MUPlaceInfoSectionController *)self labeledValuesForContactValues:emailAddresses type:2];
  [v54 addObjectsFromArray:v10];

  phoneNumbers = [v53 phoneNumbers];
  v12 = [(MUPlaceInfoSectionController *)self labeledValuesForContactValues:phoneNumbers type:1];
  [v54 addObjectsFromArray:v12];

  urlAddresses = [v53 urlAddresses];
  v14 = [(MUPlaceInfoSectionController *)self labeledValuesForContactValues:urlAddresses type:3];
  [v54 addObjectsFromArray:v14];

  if (![(MUPlaceInfoSectionControllerConfiguration *)self->_configuration isDeveloperPlaceCard])
  {
    availability = [(MUPlaceInfoSectionControllerConfiguration *)self->_configuration availability];
    supportsMessagesForBusiness = [availability supportsMessagesForBusiness];

    if (supportsMessagesForBusiness)
    {
      mapItem2 = [(MUPlaceSectionController *)self mapItem];
      v18 = [MULabeledValueActionViewModel messageItemWithMapItem:mapItem2];

      objc_initWeak(location, self);
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __61__MUPlaceInfoSectionController__loadPlaceInfoContentIfNeeded__block_invoke_2;
      v67[3] = &unk_1E821BAA0;
      objc_copyWeak(&v68, location);
      v56[2](v56, v18, v67);
      objc_destroyWeak(&v68);
      objc_destroyWeak(location);
    }
  }

  if ([(MUPlaceInfoSectionControllerConfiguration *)self->_configuration isDeveloperPlaceCard])
  {
    factoidReferences = 0;
  }

  else
  {
    moduleConfiguration = [(MUPlaceInfoSectionControllerConfiguration *)self->_configuration moduleConfiguration];
    factoidReferences = [moduleConfiguration factoidReferences];
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = factoidReferences;
  v21 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
  if (v21)
  {
    v22 = *v64;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v64 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v63 + 1) + 8 * i);
        mapItem3 = [(_MKPlaceItem *)self->_placeItem mapItem];
        _geoMapItem = [mapItem3 _geoMapItem];
        _encyclopedicInfo = [_geoMapItem _encyclopedicInfo];
        v28 = [_encyclopedicInfo factoidAtIndex:{objc_msgSend(v24, "indexInFactoidComponent")}];

        if (v28)
        {
          v29 = objc_alloc_init(MULabeledValueActionViewModel);
          title = [v28 title];
          [(MULabeledValueActionViewModel *)v29 setTitleString:title];

          unstructuredValue = [v28 unstructuredValue];
          [(MULabeledValueActionViewModel *)v29 setValueString:unstructuredValue];

          linkStyle = [v24 linkStyle];
          switch(linkStyle)
          {
            case 2:
              [(MULabeledValueActionViewModel *)v29 setActionVariant:1];
              break;
            case 1:
              [(MULabeledValueActionViewModel *)v29 setActionVariant:0];
              if (MapKitIdiomIsMacCatalyst())
              {
                v35 = @"arrow.triangle.turn.up.right.circle";
              }

              else
              {
                v35 = @"arrow.triangle.turn.up.right.circle.fill";
              }

LABEL_24:
              [(MULabeledValueActionViewModel *)v29 setSymbolName:v35];
              break;
            case 0:
              placeIdentifier = [v28 placeIdentifier];
              v34 = placeIdentifier == 0;

              if (!v34)
              {
                [(MULabeledValueActionViewModel *)v29 setActionVariant:0];
                if (MapKitIdiomIsMacCatalyst())
                {
                  v35 = @"arrow.triangle.turn.up.right.circle";
                }

                else
                {
                  v35 = @"arrow.triangle.turn.up.right.circle.fill";
                }

                goto LABEL_24;
              }

              break;
          }

          if ([v28 shouldUseStructuredData])
          {
            v37 = [MUFactoidViewModel viewModelForFactoid:v28];
            valueString = [v37 valueString];
            [(MULabeledValueActionViewModel *)v29 setAlternativeTitleString:valueString];

            [(MULabeledValueActionViewModel *)v29 setEmphasizeValueString:1];
          }

          objc_initWeak(location, self);
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 3221225472;
          v59[2] = __61__MUPlaceInfoSectionController__loadPlaceInfoContentIfNeeded__block_invoke_81;
          v59[3] = &unk_1E821A358;
          objc_copyWeak(&v62, location);
          v60 = v28;
          v61 = v24;
          v56[2](v56, v29, v59);

          objc_destroyWeak(&v62);
          objc_destroyWeak(location);
          goto LABEL_34;
        }

        v29 = MUGetPlaceCardLog();
        if (os_log_type_enabled(&v29->super, OS_LOG_TYPE_FAULT))
        {
          indexInFactoidComponent = [v24 indexInFactoidComponent];
          LODWORD(location[0]) = 67109120;
          HIDWORD(location[0]) = indexInFactoidComponent;
          _os_log_impl(&dword_1C5620000, &v29->super, OS_LOG_TYPE_FAULT, "Could not get factoid at index %d", location, 8u);
        }

LABEL_34:
      }

      v21 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
    }

    while (v21);
  }

  objc_initWeak(location, self);
  _createAddressItem = [(MUPlaceInfoSectionController *)self _createAddressItem];
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __61__MUPlaceInfoSectionController__loadPlaceInfoContentIfNeeded__block_invoke_2_82;
  v57[3] = &unk_1E821BAA0;
  objc_copyWeak(&v58, location);
  v56[2](v56, _createAddressItem, v57);

  availability2 = [(MUPlaceInfoSectionControllerConfiguration *)self->_configuration availability];
  supportsShowingCoordinates = [availability2 supportsShowingCoordinates];

  if (supportsShowingCoordinates)
  {
    v42 = [MUCoordinateViewModel alloc];
    mapItem4 = [(MUPlaceSectionController *)self mapItem];
    v44 = [(MUCoordinateViewModel *)v42 initWithMapItem:mapItem4 isUserLocation:[(_MKPlaceItem *)self->_placeItem options]& 1];

    v45 = objc_alloc_init(MULabeledValueActionViewModel);
    titleString = [(MUCoordinateViewModel *)v44 titleString];
    [(MULabeledValueActionViewModel *)v45 setTitleString:titleString];

    valueString2 = [(MUCoordinateViewModel *)v44 valueString];
    [(MULabeledValueActionViewModel *)v45 setValueString:valueString2];

    v56[2](v56, v45, 0);
  }

  if ([v54 count])
  {
    if ([(MUPlaceInfoSectionControllerConfiguration *)self->_configuration isDeveloperPlaceCard])
    {
      +[MUPlaceVerticalCardConfiguration developerPlaceCardConfiguration];
    }

    else
    {
      +[MUInfoCardStyle preferredVerticalCardConfiguration];
    }
    v48 = ;
    v3 = [(MUPlaceVerticalCardContainerView *)[MUPlaceInfoSectionView alloc] initWithConfiguration:v48];
    [(MUPlaceInfoSectionView *)v3 setAccessibilityIdentifier:@"PlaceDetailsInfo"];
    v49 = [v54 copy];
    [(MUPlaceInfoSectionView *)v3 setViewModels:v49];

    if ([(MUPlaceInfoSectionControllerConfiguration *)self->_configuration isDeveloperPlaceCard])
    {
      [(MUStackView *)v3 setContentEdgeInsets:8.0, 0.0, 8.0, 0.0];
    }

    objc_storeStrong((&self->super.super.isa + v52), v3);
  }

  else
  {
    v3 = 0;
  }

  objc_destroyWeak(&v58);
  objc_destroyWeak(location);

LABEL_47:
  v50 = *MEMORY[0x1E69E9840];

  return v3;
}

void __61__MUPlaceInfoSectionController__loadPlaceInfoContentIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v6 = a2;
    v5 = [a3 copy];
    [v6 setActionBlock:v5];

    [*(a1 + 32) addObject:v6];
  }
}

void __61__MUPlaceInfoSectionController__loadPlaceInfoContentIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _tappedMessageType];
    WeakRetained = v2;
  }
}

void __61__MUPlaceInfoSectionController__loadPlaceInfoContentIfNeeded__block_invoke_81(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _handleFactoidTap:*(a1 + 32) withReference:*(a1 + 40)];
    WeakRetained = v3;
  }
}

void __61__MUPlaceInfoSectionController__loadPlaceInfoContentIfNeeded__block_invoke_2_82(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _tappedAddressItem];
    WeakRetained = v2;
  }
}

- (id)_loadHoursContentViewIfNeeded
{
  hoursContentView = self->_hoursContentView;
  if (hoursContentView)
  {
    v3 = hoursContentView;
    goto LABEL_11;
  }

  hoursConfiguration = [(MUPlaceInfoSectionControllerConfiguration *)self->_configuration hoursConfiguration];

  if (!hoursConfiguration)
  {
    availability = [(MUPlaceInfoSectionControllerConfiguration *)self->_configuration availability];
    if ([availability supportsInlineReportAnIssue])
    {
      availability2 = [(MUPlaceInfoSectionControllerConfiguration *)self->_configuration availability];
      if (![availability2 supportsHours])
      {
        inlineRapEnablement = [(MUPlaceInfoSectionController *)self inlineRapEnablement];
        if (inlineRapEnablement)
        {
          v15 = inlineRapEnablement;
          inlineRapEnablement2 = [(MUPlaceInfoSectionController *)self inlineRapEnablement];
          isHoursEditable = [inlineRapEnablement2 isHoursEditable];

          if (!isHoursEditable)
          {
            goto LABEL_9;
          }
        }

        else
        {
        }

        v18 = [[MUAddMissingDataLabeledValue alloc] initWithType:4];
        [(MUAddMissingDataLabeledValue *)v18 setActionVariant:1];
        objc_initWeak(&location, self);
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __61__MUPlaceInfoSectionController__loadHoursContentViewIfNeeded__block_invoke;
        v21[3] = &unk_1E821A308;
        objc_copyWeak(v22, &location);
        v22[1] = 4;
        [(MUAddMissingDataLabeledValue *)v18 setActionBlock:v21];
        v19 = [MUPlaceInfoSectionView alloc];
        v8 = [(MUPlaceInfoSectionView *)v19 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        v20 = [MEMORY[0x1E695DEC8] arrayWithObject:v18];
        [(UIView *)v8 setViewModels:v20];

        [(UIView *)v8 setAccessibilityIdentifier:@"PlaceDetailsAddHours"];
        objc_destroyWeak(v22);
        objc_destroyWeak(&location);

        goto LABEL_10;
      }
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v6 = [MUPlaceHoursSectionView alloc];
  hoursConfiguration2 = [(MUPlaceInfoSectionControllerConfiguration *)self->_configuration hoursConfiguration];
  v8 = [(MUPlaceHoursSectionView *)v6 initWithSectionViewConfiguration:hoursConfiguration2];

  [(UIView *)v8 setExpandDelegate:self];
  [(UIView *)v8 setAccessibilityIdentifier:@"PlaceDetailsHours"];
LABEL_10:
  v11 = self->_hoursContentView;
  self->_hoursContentView = v8;
  v12 = v8;

  v3 = self->_hoursContentView;
LABEL_11:

  return v3;
}

void __61__MUPlaceInfoSectionController__loadHoursContentViewIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained placeInfoDelegate];
    [v3 placeInfoSectionController:v4 didSelectAddMissingDataOfType:*(a1 + 40)];

    WeakRetained = v4;
  }
}

- (void)_buildSections
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  sectionViews = self->_sectionViews;
  self->_sectionViews = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  sectionStackViews = self->_sectionStackViews;
  self->_sectionStackViews = v5;

  contact = [(_MKPlaceItem *)self->_placeItem contact];
  if (contact && MapsFeature_IsEnabled_MapsWally() && [(_MKPlaceItem *)self->_placeItem representsPerson])
  {
    v8 = [[MUContactsViewModelGenerator alloc] initWithContact:contact];
    contactsViewModelGenerator = self->_contactsViewModelGenerator;
    self->_contactsViewModelGenerator = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    postalAddresses = [contact postalAddresses];
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(postalAddresses, "count")}];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __46__MUPlaceInfoSectionController__buildSections__block_invoke;
    v35[3] = &unk_1E821A2B8;
    v36 = v10;
    selfCopy = self;
    v13 = contact;
    v38 = v13;
    v39 = v12;
    v14 = v12;
    v15 = v10;
    [postalAddresses enumerateObjectsUsingBlock:v35];
    v16 = [(MUPlaceInfoSectionController *)self _loadViewWithContactMetadata:v13];
    [v15 _mapsui_addObjectIfNotNil:v16];

    v17 = _MULocalizedStringFromThisBundle(@"Details [Placecard]");
    [v14 addObject:v17];

    v18 = [(MUContactsViewModelGenerator *)self->_contactsViewModelGenerator sectionViewsFromContentViews:v15 headerLabels:v14];
    v19 = [v15 copy];
    v20 = self->_sectionStackViews;
    self->_sectionStackViews = v19;

    v21 = [v18 copy];
    v22 = self->_sectionViews;
    self->_sectionViews = v21;
  }

  else
  {
    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    _loadRAPStatusViewIfNeeded = [(MUPlaceInfoSectionController *)self _loadRAPStatusViewIfNeeded];
    [v23 _mapsui_addObjectIfNotNil:_loadRAPStatusViewIfNeeded];

    _loadHoursContentViewIfNeeded = [(MUPlaceInfoSectionController *)self _loadHoursContentViewIfNeeded];
    [v23 _mapsui_addObjectIfNotNil:_loadHoursContentViewIfNeeded];

    postalAddresses = [(MUPlaceInfoSectionController *)self _loadPlaceInfoContentIfNeeded];
    [(NSMutableArray *)self->_sectionStackViews _mapsui_addObjectIfNotNil:postalAddresses];
    [v23 _mapsui_addObjectIfNotNil:postalAddresses];
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __46__MUPlaceInfoSectionController__buildSections__block_invoke_2;
    v32 = &unk_1E821A2E0;
    selfCopy2 = self;
    v34 = v23;
    v15 = v23;
    v26 = MUMap(v15, &v29);
    v27 = [v26 copy];
    v28 = self->_sectionViews;
    self->_sectionViews = v27;
  }
}

void __46__MUPlaceInfoSectionController__buildSections__block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 identifier];
  v4 = [MEMORY[0x1E695CD58] _mapkit_sharedLocationContactIdentifer];
  v5 = [v3 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) _loadPlaceInfoAddress:v10 contact:*(a1 + 48)];
    [v6 _mapsui_addObjectIfNotNil:v7];

    v8 = *(a1 + 56);
    v9 = [*(*(a1 + 40) + 88) headerLabelFromAddress:v10];
    [v8 addObject:v9];
  }
}

MUPlaceSectionView *__46__MUPlaceInfoSectionController__buildSections__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  v6 = *(v5 + 112) == v3 || *(v5 + 128) == v3;
  v7 = [*(a1 + 40) lastObject];

  v8 = *(a1 + 32);
  if (v8[15] == v4)
  {
    v9 = [MUPlaceSectionView insetPlatterSectionViewForContentView:v4 sectionHeaderViewModel:0 sectionFooterViewModel:0];
  }

  else
  {
    if (v6)
    {
      if (v8[14] == v4)
      {
        [v8 hoursSectionHeaderViewModel];
      }

      else
      {
        [v8 sectionHeaderViewModel];
      }
      v10 = ;
    }

    else
    {
      v10 = 0;
    }

    v11 = [MUPlaceSectionView alloc];
    v12 = v11;
    if (v7 == v4)
    {
      v13 = [*(a1 + 32) sectionFooterViewModel];
      v9 = [(MUPlaceSectionView *)v12 initWithStyle:0 sectionHeaderViewModel:v10 sectionFooterViewModel:v13];
    }

    else
    {
      v9 = [(MUPlaceSectionView *)v11 initWithStyle:0 sectionHeaderViewModel:v10 sectionFooterViewModel:0];
    }

    [(MUPlaceSectionView *)v9 setApplyVerticalSpacingBetweenHeaderAndContent:0];
    [(MUPlaceSectionView *)v9 attachViewToContentView:v4];
  }

  v14 = [v4 accessibilityIdentifier];
  v15 = [v14 stringByAppendingString:@"Section"];

  [(MUPlaceSectionView *)v9 setAccessibilityIdentifier:v15];
  if (v6)
  {
    [(MUPlaceSectionView *)v9 setHeaderAXIdentifierWithBaseString:@"PlaceDetailsSection"];
  }

  return v9;
}

- (GEOInlineRapEnablement)inlineRapEnablement
{
  mapItem = [(MUPlaceSectionController *)self mapItem];
  _geoMapItem = [mapItem _geoMapItem];
  _inlineRapEnablement = [_geoMapItem _inlineRapEnablement];

  return _inlineRapEnablement;
}

- (void)refreshContents
{
  if (self->_needsUpdate)
  {
    self->_needsUpdate = 0;
    [(MUPlaceInfoSectionController *)self _buildSections];
    delegate = [(MUPlaceSectionController *)self delegate];
    [delegate placeSectionControllerDidUpdateContent:self];
  }
}

- (void)setPlaceNumberOfReportsInReview:(unint64_t)review
{
  if (self->_placeNumberOfReportsInReview != review)
  {
    self->_placeNumberOfReportsInReview = review;
    self->_needsUpdate = 1;
  }
}

- (MUPlaceInfoSectionController)initWithPlaceItem:(id)item configuration:(id)configuration
{
  itemCopy = item;
  configurationCopy = configuration;
  mapItem = [itemCopy mapItem];
  v15.receiver = self;
  v15.super_class = MUPlaceInfoSectionController;
  v10 = [(MUPlaceSectionController *)&v15 initWithMapItem:mapItem];

  if (v10)
  {
    v11 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v11))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUPlaceInfoSectionControllerInit", "", v14, 2u);
    }

    objc_storeStrong(&v10->_configuration, configuration);
    objc_storeStrong(&v10->_placeItem, item);
    [(MUPlaceInfoSectionController *)v10 _buildSections];
    v12 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v12))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUPlaceInfoSectionControllerInit", "", v14, 2u);
    }
  }

  return v10;
}

@end