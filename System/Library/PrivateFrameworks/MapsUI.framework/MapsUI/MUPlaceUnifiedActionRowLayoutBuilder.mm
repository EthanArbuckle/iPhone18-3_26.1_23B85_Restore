@interface MUPlaceUnifiedActionRowLayoutBuilder
- (MUPlaceUnifiedActionRowLayoutBuilder)initWithConfiguration:(id)configuration delegate:(id)delegate;
- (MUPlaceUnifiedActionRowLayoutBuilderDelegate)delegate;
- (id)_actionItemViewModelWithPlaceActionItem:(id)item;
- (id)_buildSARLayout;
- (id)_buildServerControlledLayoutWithConfiguration:(id)configuration;
- (id)_buildStaticLayout;
- (id)_contactActionRowViewModel;
- (id)_directionsViewModel;
- (id)_moreActionsViewModelWithGroupedButton:(id)button excludedSystemActionsTypes:(id)types;
- (id)_moreActionsViewModelWithPartnerActions:(id)actions promotedSystemActionTypes:(id)types excludedSystemActionTypes:(id)actionTypes;
- (id)_partnerActionViewModelWithPartnerActionIndex:(unint64_t)index;
- (id)buildButtonLayout;
- (id)downloadOfflineViewModel;
@end

@implementation MUPlaceUnifiedActionRowLayoutBuilder

- (MUPlaceUnifiedActionRowLayoutBuilderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_moreActionsViewModelWithPartnerActions:(id)actions promotedSystemActionTypes:(id)types excludedSystemActionTypes:(id)actionTypes
{
  v54 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  typesCopy = types;
  v9 = [actionTypes arrayByAddingObjectsFromArray:&unk_1F450E338];
  configuration = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
  LOBYTE(types) = [configuration showMoreButtonIfAvailable];

  if (types)
  {
LABEL_16:
    delegate = [(MUPlaceUnifiedActionRowLayoutBuilder *)self delegate];
    v22 = objc_opt_respondsToSelector();

    v45 = typesCopy;
    v46 = v9;
    if (v22)
    {
      delegate2 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self delegate];
      analyticsHandler = [delegate2 analyticsHandler];
    }

    else
    {
      analyticsHandler = 0;
    }

    v24 = [MUPlaceMoreActionsViewModel alloc];
    configuration2 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    moreActionsProvider = [configuration2 moreActionsProvider];
    configuration3 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    amsResultProvider = [configuration3 amsResultProvider];
    configuration4 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    artworkCache = [configuration4 artworkCache];
    configuration5 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    moreActionAnalyticsModuleType = [configuration5 moreActionAnalyticsModuleType];
    configuration6 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    moreActionSingleVendorAnalyticsTarget = [configuration6 moreActionSingleVendorAnalyticsTarget];
    configuration7 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    moreActionMultipleVendorAnalyticsTarget = [configuration7 moreActionMultipleVendorAnalyticsTarget];
    configuration8 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    moreActionAppleMediaServicesSource = [configuration8 moreActionAppleMediaServicesSource];
    configuration9 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    externalActionHandler = [configuration9 externalActionHandler];
    v35 = __PAIR64__(moreActionMultipleVendorAnalyticsTarget, moreActionSingleVendorAnalyticsTarget);
    typesCopy = v45;
    v9 = v46;
    v47 = [(MUPlaceMoreActionsViewModel *)v24 initWithGroupedExternalActions:actionsCopy promotedSystemActionTypes:v45 excludedSystemActionTypes:v46 menuActionProvider:moreActionsProvider amsResultProvider:amsResultProvider iconCache:artworkCache analyticsModuleType:moreActionAnalyticsModuleType singleVendorAnalyticsTarget:v35 multipleVendorAnalyticsTarget:moreActionAppleMediaServicesSource appleMediaServicesSource:externalActionHandler externalActionHandler:analyticsHandler analyticsHandler:?];

    goto LABEL_20;
  }

  v11 = typesCopy;
  v12 = &__block_literal_global_14083;
  if (v11)
  {
    v13 = v9;
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v15 = v11;
    v16 = [v15 countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v50;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v50 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v49 + 1) + 8 * i);
          if ([v20 unsignedIntegerValue] == 16)
          {
            [v14 addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v17);
    }

    typesCopy = [v14 copy];
    v9 = v13;
  }

  else
  {
    typesCopy = MEMORY[0x1E695E0F0];
  }

  if ([typesCopy count])
  {

    actionsCopy = MEMORY[0x1E695E0F0];
    goto LABEL_16;
  }

  v47 = 0;
LABEL_20:

  v33 = *MEMORY[0x1E69E9840];

  return v47;
}

- (id)_moreActionsViewModelWithGroupedButton:(id)button excludedSystemActionsTypes:(id)types
{
  v45 = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v33 = buttonCopy;
  obj = [buttonCopy buttonItems];
  v7 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v41;
    selfCopy = self;
    selfCopy2 = self;
    do
    {
      v11 = 0;
      do
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v40 + 1) + 8 * v11);
        buttonType = [v12 buttonType];
        if (buttonType <= 0x10)
        {
          if (((1 << buttonType) & 0x1FF7E) != 0)
          {
            configuration = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
            actionManager = [configuration actionManager];
            v16 = [actionManager actionItemForButtonItem:v12];

            if ([v12 buttonType] == 13 || objc_msgSend(v12, "buttonType") == 14)
            {
              v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v16, "type")}];
              [v6 addObject:v17];
            }

            v18 = MEMORY[0x1E696AD98];
            resolvedActionItem = [v16 resolvedActionItem];
            mapItem2 = [v18 numberWithUnsignedInteger:{objc_msgSend(resolvedActionItem, "type")}];
            [v6 addObject:mapItem2];
LABEL_12:

            self = selfCopy;
            goto LABEL_13;
          }

          if (buttonType == 7)
          {
            v16 = v12;
            if ([v16 groupType] == 2)
            {
              actionDataIndex = [v16 actionDataIndex];
              delegate = [(MUPlaceUnifiedActionRowLayoutBuilder *)self delegate];
              mapItem = [delegate mapItem];
              _geoMapItem = [mapItem _geoMapItem];
              _externalActionLinks = [_geoMapItem _externalActionLinks];
              v36 = [_externalActionLinks count];

              if (actionDataIndex < v36)
              {
                resolvedActionItem = [(MUPlaceUnifiedActionRowLayoutBuilder *)selfCopy2 delegate];
                mapItem2 = [resolvedActionItem mapItem];
                _geoMapItem2 = [mapItem2 _geoMapItem];
                _externalActionLinks2 = [_geoMapItem2 _externalActionLinks];
                v26 = [_externalActionLinks2 objectAtIndexedSubscript:actionDataIndex];
                [v34 addObject:v26];

                goto LABEL_12;
              }

              self = selfCopy2;
            }

LABEL_13:
          }
        }

        ++v11;
      }

      while (v8 != v11);
      v27 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      v8 = v27;
    }

    while (v27);
  }

  v28 = [v34 copy];
  v29 = [v6 copy];
  v30 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self _moreActionsViewModelWithPartnerActions:v28 promotedSystemActionTypes:v29 excludedSystemActionTypes:MEMORY[0x1E695E0F0]];

  v31 = *MEMORY[0x1E69E9840];

  return v30;
}

- (id)_actionItemViewModelWithPlaceActionItem:(id)item
{
  if (item)
  {
    itemCopy = item;
    delegate = [(MUPlaceUnifiedActionRowLayoutBuilder *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self delegate];
      menuProvider = [delegate2 menuProvider];
    }

    else
    {
      menuProvider = 0;
    }

    v9 = [[MUPlaceActionRowItemViewModel alloc] initWithActionRowItem:itemCopy menuProvider:menuProvider style:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_partnerActionViewModelWithPartnerActionIndex:(unint64_t)index
{
  delegate = [(MUPlaceUnifiedActionRowLayoutBuilder *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self delegate];
    analyticsHandler = [delegate2 analyticsHandler];
  }

  else
  {
    analyticsHandler = 0;
  }

  delegate3 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self delegate];
  mapItem = [delegate3 mapItem];
  _geoMapItem = [mapItem _geoMapItem];
  _externalActionLinks = [_geoMapItem _externalActionLinks];

  if ([_externalActionLinks count] <= index)
  {
    v20 = 0;
  }

  else
  {
    v13 = [MUPlaceExternalActionViewModel alloc];
    v27 = [_externalActionLinks objectAtIndexedSubscript:index];
    configuration = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    amsResultProvider = [configuration amsResultProvider];
    configuration2 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    artworkCache = [configuration2 artworkCache];
    configuration3 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    externalActionAnalyticsModuleType = [configuration3 externalActionAnalyticsModuleType];
    configuration4 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    externalActionSingleVendorAnalyticsTarget = [configuration4 externalActionSingleVendorAnalyticsTarget];
    configuration5 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    externalActionMultipleVendorAnalyticsTarget = [configuration5 externalActionMultipleVendorAnalyticsTarget];
    configuration6 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    externalActionAppleMediaServicesSource = [configuration6 externalActionAppleMediaServicesSource];
    configuration7 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    externalActionHandler = [configuration7 externalActionHandler];
    v20 = [(MUPlaceExternalActionViewModel *)v13 initWithExternalAction:v27 amsResultProvider:amsResultProvider iconCache:artworkCache analyticsModuleType:externalActionAnalyticsModuleType singleVendorAnalyticsTarget:externalActionSingleVendorAnalyticsTarget multipleVendorAnalyticsTarget:externalActionMultipleVendorAnalyticsTarget appleMediaServicesSource:externalActionAppleMediaServicesSource actionHandler:externalActionHandler analyticsHandler:analyticsHandler];
  }

  return v20;
}

- (id)_contactActionRowViewModel
{
  if (MapsFeature_IsEnabled_MapsWally() && (-[MUPlaceUnifiedActionRowLayoutBuilder configuration](self, "configuration"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 shouldShowContactsAction], v3, v4))
  {
    v5 = objc_alloc_init(MUViewContactActionRowItemViewModel);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)downloadOfflineViewModel
{
  if (GEOSupportsOfflineMaps() && (-[MUPlaceUnifiedActionRowLayoutBuilder configuration](self, "configuration"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 canShowDownloadOffline], v3, v4))
  {
    delegate = [(MUPlaceUnifiedActionRowLayoutBuilder *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      delegate2 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self delegate];
      offlineMapProvider = [delegate2 offlineMapProvider];
    }

    else
    {
      offlineMapProvider = 0;
    }

    offlineViewModel = self->_offlineViewModel;
    if (!offlineViewModel || ([(MUDownloadOfflineActionRowItemViewModel *)offlineViewModel offlineMapProvider], v11 = objc_claimAutoreleasedReturnValue(), v11, offlineMapProvider != v11))
    {
      v12 = [[MUDownloadOfflineActionRowItemViewModel alloc] initWithOfflineMapProvider:offlineMapProvider];
      v13 = self->_offlineViewModel;
      self->_offlineViewModel = v12;
    }

    v9 = self->_offlineViewModel;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_directionsViewModel
{
  configuration = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
  primaryButtonType = [configuration primaryButtonType];

  if ((primaryButtonType - 1) >= 2)
  {
    if (primaryButtonType == 4)
    {
      configuration2 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
      isSearchAlongRoute = [configuration2 isSearchAlongRoute];

      v11 = [MUPlaceAddStopActionRowItemViewModel alloc];
      v12 = v11;
      if (isSearchAlongRoute)
      {
        configuration3 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
        etaProvider = [configuration3 etaProvider];
        delegate = [(MUPlaceUnifiedActionRowLayoutBuilder *)self delegate];
        mapItem = [delegate mapItem];
        _detourInfo = [mapItem _detourInfo];
        configuration4 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
        v8 = -[MUPlaceAddStopActionRowItemViewModel initWithSearchAlongRoute:ETAProvider:detourInfo:canShowDetourTime:](v12, "initWithSearchAlongRoute:ETAProvider:detourInfo:canShowDetourTime:", 1, etaProvider, _detourInfo, [configuration4 canShowDetourTime]);
      }

      else
      {
        v8 = [(MUPlaceAddStopActionRowItemViewModel *)v11 initWithSearchAlongRoute:0 ETAProvider:0 detourInfo:0 canShowDetourTime:0];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v5 = [MUDirectionsActionRowItemViewModel alloc];
    configuration5 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    etaProvider2 = [configuration5 etaProvider];
    v8 = [(MUDirectionsActionRowItemViewModel *)v5 initWithETAProvider:etaProvider2];
  }

  return v8;
}

- (id)_buildServerControlledLayoutWithConfiguration:(id)configuration
{
  v38 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:5];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v31 = configurationCopy;
  obj = [configurationCopy buttonItems];
  v6 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      v9 = 0;
      do
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v33 + 1) + 8 * v9);
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        buttonType = [v10 buttonType];
        if (buttonType > 8)
        {
          if ((buttonType - 11) < 6)
          {
            goto LABEL_12;
          }

          if (buttonType != 10)
          {
            if (buttonType != 9)
            {
              goto LABEL_16;
            }

LABEL_12:
            configuration = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
            actionManager = [configuration actionManager];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if ((isKindOfClass & 1) == 0)
            {
              goto LABEL_16;
            }

            configuration2 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
            actionManager2 = [configuration2 actionManager];
            v19 = [actionManager2 actionItemForButtonItem:v10];

            v20 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self _actionItemViewModelWithPlaceActionItem:v19];
            v21 = MEMORY[0x1E696AD98];
            resolvedActionItem = [v19 resolvedActionItem];
            v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(resolvedActionItem, "type")}];
            [v11 addObject:v23];

            goto LABEL_14;
          }

          downloadOfflineViewModel = [(MUPlaceUnifiedActionRowLayoutBuilder *)self downloadOfflineViewModel];
          goto LABEL_25;
        }

        if ((buttonType - 1) < 6)
        {
          goto LABEL_12;
        }

        if (buttonType != 7)
        {
          if (buttonType != 8)
          {
            goto LABEL_16;
          }

          downloadOfflineViewModel = [(MUPlaceUnifiedActionRowLayoutBuilder *)self _directionsViewModel];
LABEL_25:
          v20 = downloadOfflineViewModel;
          goto LABEL_14;
        }

        v24 = v10;
        groupType = [v24 groupType];
        if (groupType == 1)
        {
          v26 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self _moreActionsViewModelWithGroupedButton:v24 excludedSystemActionsTypes:v11];
        }

        else
        {
          if (groupType != 2)
          {
            v20 = 0;
            goto LABEL_29;
          }

          v26 = -[MUPlaceUnifiedActionRowLayoutBuilder _partnerActionViewModelWithPartnerActionIndex:](self, "_partnerActionViewModelWithPartnerActionIndex:", [v24 actionDataIndex]);
        }

        v20 = v26;
LABEL_29:

LABEL_14:
        if (v20)
        {
          [v5 addObject:v20];
        }

LABEL_16:

        ++v9;
      }

      while (v7 != v9);
      v27 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      v7 = v27;
    }

    while (v27);
  }

  v28 = [v5 copy];
  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)_buildSARLayout
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  _directionsViewModel = [(MUPlaceUnifiedActionRowLayoutBuilder *)self _directionsViewModel];
  [v3 _mapsui_addObjectIfNotNil:_directionsViewModel];

  configuration = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
  actionManager = [configuration actionManager];
  createSearchAlongRouteActions = [actionManager createSearchAlongRouteActions];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = createSearchAlongRouteActions;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self _actionItemViewModelWithPlaceActionItem:*(*(&v17 + 1) + 8 * i), v17];
        [v3 _mapsui_addObjectIfNotNil:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [v3 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)_buildStaticLayout
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:5];
  configuration = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
  shouldShowDirectionsAction = [configuration shouldShowDirectionsAction];

  if (shouldShowDirectionsAction)
  {
    _directionsViewModel = [(MUPlaceUnifiedActionRowLayoutBuilder *)self _directionsViewModel];
    [v3 _mapsui_addObjectIfNotNil:_directionsViewModel];
  }

  if (GEOSupportsOfflineMaps())
  {
    configuration2 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    if ([configuration2 canShowDownloadOffline])
    {
      delegate = [(MUPlaceUnifiedActionRowLayoutBuilder *)self delegate];
      mapItem = [delegate mapItem];
      _geoMapItem = [mapItem _geoMapItem];
      supportsOfflineMaps = [_geoMapItem supportsOfflineMaps];
    }

    else
    {
      supportsOfflineMaps = 0;
    }
  }

  else
  {
    supportsOfflineMaps = 0;
  }

  configuration3 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
  staticButtonModuleConfiguration = [configuration3 staticButtonModuleConfiguration];

  if (staticButtonModuleConfiguration)
  {
    configuration4 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    staticButtonModuleConfiguration2 = [configuration4 staticButtonModuleConfiguration];
    v16 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self _buildServerControlledLayoutWithConfiguration:staticButtonModuleConfiguration2];
    [v3 _mapsui_addObjectsFromArrayIfNotNil:v16];

LABEL_18:
    goto LABEL_19;
  }

  if (supportsOfflineMaps)
  {
    configuration5 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    shouldPromoteDownloadOffline = [configuration5 shouldPromoteDownloadOffline];

    if (shouldPromoteDownloadOffline)
    {
      downloadOfflineViewModel = [(MUPlaceUnifiedActionRowLayoutBuilder *)self downloadOfflineViewModel];
      [v3 _mapsui_addObjectIfNotNil:downloadOfflineViewModel];
    }
  }

  configuration6 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
  secondaryActionButtonController = [configuration6 secondaryActionButtonController];

  if (secondaryActionButtonController)
  {
    v22 = [MUPlaceActionControlledItemViewModel alloc];
    configuration7 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    secondaryActionButtonController2 = [configuration7 secondaryActionButtonController];
    v25 = [(MUPlaceActionControlledItemViewModel *)v22 initWithPlaceActionController:secondaryActionButtonController2];
    [v3 _mapsui_addObjectIfNotNil:v25];
  }

  configuration8 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
  shouldShowContactsAction = [configuration8 shouldShowContactsAction];

  if (shouldShowContactsAction)
  {
    configuration4 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self _contactActionRowViewModel];
    [v3 _mapsui_addObjectIfNotNil:configuration4];
    goto LABEL_18;
  }

LABEL_19:
  v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:&unk_1F450E308];
  if (supportsOfflineMaps)
  {
    configuration9 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    shouldPromoteDownloadOffline2 = [configuration9 shouldPromoteDownloadOffline];

    if ((shouldPromoteDownloadOffline2 & 1) == 0)
    {
      [v28 addObjectsFromArray:&unk_1F450E320];
    }
  }

  delegate2 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self delegate];
  mapItem2 = [delegate2 mapItem];
  _geoMapItem2 = [mapItem2 _geoMapItem];
  _externalActionLinks = [_geoMapItem2 _externalActionLinks];
  v35 = [v28 copy];
  v36 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self _moreActionsViewModelWithPartnerActions:_externalActionLinks promotedSystemActionTypes:v35 excludedSystemActionTypes:MEMORY[0x1E695E0F0]];
  [v3 _mapsui_addObjectIfNotNil:v36];

  v37 = [v3 copy];

  return v37;
}

- (id)buildButtonLayout
{
  v25 = *MEMORY[0x1E69E9840];
  configuration = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
  isSearchAlongRoute = [configuration isSearchAlongRoute];

  if (isSearchAlongRoute)
  {
    _buildSARLayout = [(MUPlaceUnifiedActionRowLayoutBuilder *)self _buildSARLayout];
  }

  else
  {
    configuration2 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    buttonModuleConfiguration = [configuration2 buttonModuleConfiguration];

    if (buttonModuleConfiguration)
    {
      configuration3 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
      buttonModuleConfiguration2 = [configuration3 buttonModuleConfiguration];
      v10 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self _buildServerControlledLayoutWithConfiguration:buttonModuleConfiguration2];

      goto LABEL_7;
    }

    _buildSARLayout = [(MUPlaceUnifiedActionRowLayoutBuilder *)self _buildStaticLayout];
  }

  v10 = _buildSARLayout;
LABEL_7:
  configuration4 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v20 + 1) + 8 * i) setForActionBar:{isKindOfClass & 1, v20}];
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x1E69E9840];

  return v13;
}

- (MUPlaceUnifiedActionRowLayoutBuilder)initWithConfiguration:(id)configuration delegate:(id)delegate
{
  configurationCopy = configuration;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = MUPlaceUnifiedActionRowLayoutBuilder;
  v9 = [(MUPlaceUnifiedActionRowLayoutBuilder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, configuration);
    objc_storeWeak(&v10->_delegate, delegateCopy);
  }

  return v10;
}

@end