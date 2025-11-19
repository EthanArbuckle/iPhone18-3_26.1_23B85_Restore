@interface MUPlaceUnifiedActionRowLayoutBuilder
- (MUPlaceUnifiedActionRowLayoutBuilder)initWithConfiguration:(id)a3 delegate:(id)a4;
- (MUPlaceUnifiedActionRowLayoutBuilderDelegate)delegate;
- (id)_actionItemViewModelWithPlaceActionItem:(id)a3;
- (id)_buildSARLayout;
- (id)_buildServerControlledLayoutWithConfiguration:(id)a3;
- (id)_buildStaticLayout;
- (id)_contactActionRowViewModel;
- (id)_directionsViewModel;
- (id)_moreActionsViewModelWithGroupedButton:(id)a3 excludedSystemActionsTypes:(id)a4;
- (id)_moreActionsViewModelWithPartnerActions:(id)a3 promotedSystemActionTypes:(id)a4 excludedSystemActionTypes:(id)a5;
- (id)_partnerActionViewModelWithPartnerActionIndex:(unint64_t)a3;
- (id)buildButtonLayout;
- (id)downloadOfflineViewModel;
@end

@implementation MUPlaceUnifiedActionRowLayoutBuilder

- (MUPlaceUnifiedActionRowLayoutBuilderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_moreActionsViewModelWithPartnerActions:(id)a3 promotedSystemActionTypes:(id)a4 excludedSystemActionTypes:(id)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v48 = a3;
  v8 = a4;
  v9 = [a5 arrayByAddingObjectsFromArray:&unk_1F450E338];
  v10 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
  LOBYTE(a4) = [v10 showMoreButtonIfAvailable];

  if (a4)
  {
LABEL_16:
    v21 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self delegate];
    v22 = objc_opt_respondsToSelector();

    v45 = v8;
    v46 = v9;
    if (v22)
    {
      v23 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self delegate];
      v44 = [v23 analyticsHandler];
    }

    else
    {
      v44 = 0;
    }

    v24 = [MUPlaceMoreActionsViewModel alloc];
    v43 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    v39 = [v43 moreActionsProvider];
    v42 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    v38 = [v42 amsResultProvider];
    v41 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    v36 = [v41 artworkCache];
    v40 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    v25 = [v40 moreActionAnalyticsModuleType];
    v37 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    v26 = [v37 moreActionSingleVendorAnalyticsTarget];
    v27 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    v28 = [v27 moreActionMultipleVendorAnalyticsTarget];
    v29 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    v30 = [v29 moreActionAppleMediaServicesSource];
    v31 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    v32 = [v31 externalActionHandler];
    v35 = __PAIR64__(v28, v26);
    v8 = v45;
    v9 = v46;
    v47 = [(MUPlaceMoreActionsViewModel *)v24 initWithGroupedExternalActions:v48 promotedSystemActionTypes:v45 excludedSystemActionTypes:v46 menuActionProvider:v39 amsResultProvider:v38 iconCache:v36 analyticsModuleType:v25 singleVendorAnalyticsTarget:v35 multipleVendorAnalyticsTarget:v30 appleMediaServicesSource:v32 externalActionHandler:v44 analyticsHandler:?];

    goto LABEL_20;
  }

  v11 = v8;
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

    v8 = [v14 copy];
    v9 = v13;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  if ([v8 count])
  {

    v48 = MEMORY[0x1E695E0F0];
    goto LABEL_16;
  }

  v47 = 0;
LABEL_20:

  v33 = *MEMORY[0x1E69E9840];

  return v47;
}

- (id)_moreActionsViewModelWithGroupedButton:(id)a3 excludedSystemActionsTypes:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v33 = v5;
  obj = [v5 buttonItems];
  v7 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v41;
    v10 = self;
    v35 = self;
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
        v13 = [v12 buttonType];
        if (v13 <= 0x10)
        {
          if (((1 << v13) & 0x1FF7E) != 0)
          {
            v14 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
            v15 = [v14 actionManager];
            v16 = [v15 actionItemForButtonItem:v12];

            if ([v12 buttonType] == 13 || objc_msgSend(v12, "buttonType") == 14)
            {
              v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v16, "type")}];
              [v6 addObject:v17];
            }

            v18 = MEMORY[0x1E696AD98];
            v19 = [v16 resolvedActionItem];
            v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(v19, "type")}];
            [v6 addObject:v20];
LABEL_12:

            self = v10;
            goto LABEL_13;
          }

          if (v13 == 7)
          {
            v16 = v12;
            if ([v16 groupType] == 2)
            {
              v38 = [v16 actionDataIndex];
              v21 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self delegate];
              v22 = [v21 mapItem];
              v23 = [v22 _geoMapItem];
              v24 = [v23 _externalActionLinks];
              v36 = [v24 count];

              if (v38 < v36)
              {
                v19 = [(MUPlaceUnifiedActionRowLayoutBuilder *)v35 delegate];
                v20 = [v19 mapItem];
                v37 = [v20 _geoMapItem];
                v25 = [v37 _externalActionLinks];
                v26 = [v25 objectAtIndexedSubscript:v38];
                [v34 addObject:v26];

                goto LABEL_12;
              }

              self = v35;
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

- (id)_actionItemViewModelWithPlaceActionItem:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self delegate];
      v8 = [v7 menuProvider];
    }

    else
    {
      v8 = 0;
    }

    v9 = [[MUPlaceActionRowItemViewModel alloc] initWithActionRowItem:v4 menuProvider:v8 style:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_partnerActionViewModelWithPartnerActionIndex:(unint64_t)a3
{
  v5 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self delegate];
    v8 = [v7 analyticsHandler];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self delegate];
  v10 = [v9 mapItem];
  v11 = [v10 _geoMapItem];
  v12 = [v11 _externalActionLinks];

  if ([v12 count] <= a3)
  {
    v20 = 0;
  }

  else
  {
    v13 = [MUPlaceExternalActionViewModel alloc];
    v27 = [v12 objectAtIndexedSubscript:a3];
    v30 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    v26 = [v30 amsResultProvider];
    v29 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    v24 = [v29 artworkCache];
    v28 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    v23 = [v28 externalActionAnalyticsModuleType];
    v25 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    v22 = [v25 externalActionSingleVendorAnalyticsTarget];
    v14 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    v15 = [v14 externalActionMultipleVendorAnalyticsTarget];
    v16 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    v17 = [v16 externalActionAppleMediaServicesSource];
    v18 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    v19 = [v18 externalActionHandler];
    v20 = [(MUPlaceExternalActionViewModel *)v13 initWithExternalAction:v27 amsResultProvider:v26 iconCache:v24 analyticsModuleType:v23 singleVendorAnalyticsTarget:v22 multipleVendorAnalyticsTarget:v15 appleMediaServicesSource:v17 actionHandler:v19 analyticsHandler:v8];
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
    v5 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self delegate];
      v8 = [v7 offlineMapProvider];
    }

    else
    {
      v8 = 0;
    }

    offlineViewModel = self->_offlineViewModel;
    if (!offlineViewModel || ([(MUDownloadOfflineActionRowItemViewModel *)offlineViewModel offlineMapProvider], v11 = objc_claimAutoreleasedReturnValue(), v11, v8 != v11))
    {
      v12 = [[MUDownloadOfflineActionRowItemViewModel alloc] initWithOfflineMapProvider:v8];
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
  v3 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
  v4 = [v3 primaryButtonType];

  if ((v4 - 1) >= 2)
  {
    if (v4 == 4)
    {
      v9 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
      v10 = [v9 isSearchAlongRoute];

      v11 = [MUPlaceAddStopActionRowItemViewModel alloc];
      v12 = v11;
      if (v10)
      {
        v13 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
        v14 = [v13 etaProvider];
        v15 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self delegate];
        v16 = [v15 mapItem];
        v17 = [v16 _detourInfo];
        v18 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
        v8 = -[MUPlaceAddStopActionRowItemViewModel initWithSearchAlongRoute:ETAProvider:detourInfo:canShowDetourTime:](v12, "initWithSearchAlongRoute:ETAProvider:detourInfo:canShowDetourTime:", 1, v14, v17, [v18 canShowDetourTime]);
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
    v6 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    v7 = [v6 etaProvider];
    v8 = [(MUDirectionsActionRowItemViewModel *)v5 initWithETAProvider:v7];
  }

  return v8;
}

- (id)_buildServerControlledLayoutWithConfiguration:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:5];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v31 = v4;
  obj = [v4 buttonItems];
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
        v12 = [v10 buttonType];
        if (v12 > 8)
        {
          if ((v12 - 11) < 6)
          {
            goto LABEL_12;
          }

          if (v12 != 10)
          {
            if (v12 != 9)
            {
              goto LABEL_16;
            }

LABEL_12:
            v14 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
            v15 = [v14 actionManager];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if ((isKindOfClass & 1) == 0)
            {
              goto LABEL_16;
            }

            v17 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
            v18 = [v17 actionManager];
            v19 = [v18 actionItemForButtonItem:v10];

            v20 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self _actionItemViewModelWithPlaceActionItem:v19];
            v21 = MEMORY[0x1E696AD98];
            v22 = [v19 resolvedActionItem];
            v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(v22, "type")}];
            [v11 addObject:v23];

            goto LABEL_14;
          }

          v13 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self downloadOfflineViewModel];
          goto LABEL_25;
        }

        if ((v12 - 1) < 6)
        {
          goto LABEL_12;
        }

        if (v12 != 7)
        {
          if (v12 != 8)
          {
            goto LABEL_16;
          }

          v13 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self _directionsViewModel];
LABEL_25:
          v20 = v13;
          goto LABEL_14;
        }

        v24 = v10;
        v25 = [v24 groupType];
        if (v25 == 1)
        {
          v26 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self _moreActionsViewModelWithGroupedButton:v24 excludedSystemActionsTypes:v11];
        }

        else
        {
          if (v25 != 2)
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
  v4 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self _directionsViewModel];
  [v3 _mapsui_addObjectIfNotNil:v4];

  v5 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
  v6 = [v5 actionManager];
  v7 = [v6 createSearchAlongRouteActions];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
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
  v4 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
  v5 = [v4 shouldShowDirectionsAction];

  if (v5)
  {
    v6 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self _directionsViewModel];
    [v3 _mapsui_addObjectIfNotNil:v6];
  }

  if (GEOSupportsOfflineMaps())
  {
    v7 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    if ([v7 canShowDownloadOffline])
    {
      v8 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self delegate];
      v9 = [v8 mapItem];
      v10 = [v9 _geoMapItem];
      v11 = [v10 supportsOfflineMaps];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
  v13 = [v12 staticButtonModuleConfiguration];

  if (v13)
  {
    v14 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    v15 = [v14 staticButtonModuleConfiguration];
    v16 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self _buildServerControlledLayoutWithConfiguration:v15];
    [v3 _mapsui_addObjectsFromArrayIfNotNil:v16];

LABEL_18:
    goto LABEL_19;
  }

  if (v11)
  {
    v17 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    v18 = [v17 shouldPromoteDownloadOffline];

    if (v18)
    {
      v19 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self downloadOfflineViewModel];
      [v3 _mapsui_addObjectIfNotNil:v19];
    }
  }

  v20 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
  v21 = [v20 secondaryActionButtonController];

  if (v21)
  {
    v22 = [MUPlaceActionControlledItemViewModel alloc];
    v23 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    v24 = [v23 secondaryActionButtonController];
    v25 = [(MUPlaceActionControlledItemViewModel *)v22 initWithPlaceActionController:v24];
    [v3 _mapsui_addObjectIfNotNil:v25];
  }

  v26 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
  v27 = [v26 shouldShowContactsAction];

  if (v27)
  {
    v14 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self _contactActionRowViewModel];
    [v3 _mapsui_addObjectIfNotNil:v14];
    goto LABEL_18;
  }

LABEL_19:
  v28 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:&unk_1F450E308];
  if (v11)
  {
    v29 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    v30 = [v29 shouldPromoteDownloadOffline];

    if ((v30 & 1) == 0)
    {
      [v28 addObjectsFromArray:&unk_1F450E320];
    }
  }

  v31 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self delegate];
  v32 = [v31 mapItem];
  v33 = [v32 _geoMapItem];
  v34 = [v33 _externalActionLinks];
  v35 = [v28 copy];
  v36 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self _moreActionsViewModelWithPartnerActions:v34 promotedSystemActionTypes:v35 excludedSystemActionTypes:MEMORY[0x1E695E0F0]];
  [v3 _mapsui_addObjectIfNotNil:v36];

  v37 = [v3 copy];

  return v37;
}

- (id)buildButtonLayout
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
  v4 = [v3 isSearchAlongRoute];

  if (v4)
  {
    v5 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self _buildSARLayout];
  }

  else
  {
    v6 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
    v7 = [v6 buttonModuleConfiguration];

    if (v7)
    {
      v8 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
      v9 = [v8 buttonModuleConfiguration];
      v10 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self _buildServerControlledLayoutWithConfiguration:v9];

      goto LABEL_7;
    }

    v5 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self _buildStaticLayout];
  }

  v10 = v5;
LABEL_7:
  v11 = [(MUPlaceUnifiedActionRowLayoutBuilder *)self configuration];
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

- (MUPlaceUnifiedActionRowLayoutBuilder)initWithConfiguration:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MUPlaceUnifiedActionRowLayoutBuilder;
  v9 = [(MUPlaceUnifiedActionRowLayoutBuilder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_configuration, a3);
    objc_storeWeak(&v10->_delegate, v8);
  }

  return v10;
}

@end