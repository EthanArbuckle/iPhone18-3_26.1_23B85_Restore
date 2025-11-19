@interface MUPlaceRibbonSectionController
- (BOOL)_supportsAddRatingsCallToAction;
- (MUPlaceRibbonSectionController)initWithMapItem:(id)a3 configuration:(id)a4;
- (MUPlaceRibbonSectionControllerDelegate)ribbonDelegate;
- (void)_setupRibbonView;
- (void)_updateWithPreviousState:(BOOL)a3;
- (void)buildContent;
- (void)ribbonView:(id)a3 didTapItemWithViewModel:(id)a4 withPresentationOptions:(id)a5;
@end

@implementation MUPlaceRibbonSectionController

- (MUPlaceRibbonSectionControllerDelegate)ribbonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_ribbonDelegate);

  return WeakRetained;
}

- (void)ribbonView:(id)a3 didTapItemWithViewModel:(id)a4 withPresentationOptions:(id)a5
{
  v10 = a5;
  v7 = [a4 type];
  if (v7 == 2)
  {
    v8 = [(MUPlaceRibbonSectionController *)self ribbonDelegate];
    [v8 ribbonSectionControllerDidTapHours:self];
  }

  else
  {
    if (v7 != 1)
    {
      goto LABEL_6;
    }

    v8 = [(MUPlaceRibbonSectionController *)self ribbonDelegate];
    v9 = [(MUPlaceRibbonSectionController *)self submissionStatus];
    [v8 ribbonSectionControllerDidTapAddRatings:self initialRatingState:objc_msgSend(v9 withPresentationOptions:{"ratingState"), v10}];
  }

LABEL_6:
}

- (void)_updateWithPreviousState:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  if ([(MUPlaceRibbonSectionController *)self hasContent]!= a3)
  {
    v5 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8[0] = 67109376;
      v8[1] = v3;
      v9 = 1024;
      v10 = [(MUPlaceRibbonSectionController *)self hasContent];
      _os_log_impl(&dword_1C5620000, v5, OS_LOG_TYPE_INFO, "MUPlaceHeaderButtonsSectionController: hasContent changed from %d to %d, will tell parent to update.", v8, 0xEu);
    }

    v6 = [(MUPlaceSectionController *)self delegate];
    [v6 placeSectionControllerDidUpdateContent:self];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)_supportsAddRatingsCallToAction
{
  v3 = [(MUPlaceRibbonSectionControllerConfiguration *)self->_configuration availability];
  v4 = [v3 supportsPhotoOnlyDataCollection];

  if (v4)
  {
    return 0;
  }

  v6 = [(MUPlaceRibbonSectionControllerConfiguration *)self->_configuration availability];
  v7 = [v6 supportsCallToAction];

  return v7;
}

- (void)buildContent
{
  v86 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__MUPlaceRibbonSectionController_buildContent__block_invoke;
  aBlock[3] = &unk_1E8219398;
  v4 = v3;
  v79 = v4;
  v5 = _Block_copy(aBlock);
  v6 = [(MUPlaceSectionController *)self mapItem];
  v7 = [(MUPlaceRibbonSectionController *)self ribbonConfig];

  if (v7)
  {
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v8 = [(MUPlaceRibbonSectionController *)self ribbonConfig];
    v9 = [v8 ribbonItems];

    v10 = [v9 countByEnumeratingWithState:&v74 objects:v85 count:16];
    if (v10)
    {
      v11 = v10;
      v69 = v6;
      v67 = v4;
      v12 = *v75;
      v68 = self;
      while (1)
      {
        v13 = 0;
        do
        {
          if (*v75 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v74 + 1) + 8 * v13);
          v15 = [v14 isValid];
          v16 = MUGetPlaceCardLog();
          v17 = v16;
          if ((v15 & 1) == 0)
          {
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v26 = [v14 type] - 1;
              v27 = @"RIBBON_ITEM_TYPE_UNKNOWN";
              if (v26 <= 0xA)
              {
                v27 = off_1E82193B8[v26];
              }

              *buf = 138412546;
              v82 = v14;
              v83 = 2112;
              v84 = v27;
              _os_log_impl(&dword_1C5620000, v17, OS_LOG_TYPE_ERROR, "Ribbon item %@ of type %@ is invalid", buf, 0x16u);
            }

            goto LABEL_20;
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v18 = [v14 type];
            *buf = 67109120;
            LODWORD(v82) = v18;
            _os_log_impl(&dword_1C5620000, v17, OS_LOG_TYPE_INFO, "Creating a ribbon from ribbon type %d", buf, 8u);
          }

          v19 = [v14 type];
          if (v19 <= 4)
          {
            if (v19 > 1)
            {
              if (v19 != 2)
              {
                if (v19 == 3)
                {
                  v29 = [v14 amenityItem];
                  v32 = [MUPlaceRibbonItemViewModel amenityItemViewForMapItem:v69 amenityItemConfiguration:v29];
                  v5[2](v5, v32);

                  goto LABEL_44;
                }

                v28 = [MUPlaceRibbonItemViewModel costItemViewForMapItem:v69];
LABEL_43:
                v29 = v28;
                v5[2](v5, v28);
                goto LABEL_44;
              }

              v37 = [[MUPlaceRatingRibbonViewModel alloc] initWithMapItem:v69];
              v24 = 96;
              ratingViewModel = self->_ratingViewModel;
              self->_ratingViewModel = v37;

              goto LABEL_49;
            }

            if (v19)
            {
              if (v19 != 1)
              {
                goto LABEL_50;
              }

              v28 = [MUPlaceRibbonItemViewModel hoursItemViewModelForMapItem:v69];
              goto LABEL_43;
            }

            v31 = MUGetPlaceCardLog();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v82 = v14;
              _os_log_impl(&dword_1C5620000, v31, OS_LOG_TYPE_ERROR, "Encountered a ribbon item %@ with an unknown type", buf, 0xCu);
            }
          }

          else
          {
            if (v19 <= 8)
            {
              if (v19 == 5)
              {
                v28 = [MUPlaceRibbonItemViewModel guidesItemViewModelForMapItem:v69];
                goto LABEL_43;
              }

              if (v19 == 6)
              {
                v33 = [(MUPlaceSectionController *)self mapItem];
                v34 = [v33 _encyclopedicInfo];
                v35 = [v14 factoidItem];
                v17 = [v34 factoidAtIndex:{objc_msgSend(v35, "indexWithinFactoidComponent")}];

                if (v17)
                {
                  v36 = [MUPlaceRibbonItemViewModel factoidItemForFactoid:v17];
                  v5[2](v5, v36);
                }

                else
                {
                  v36 = MUGetPlaceCardLog();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                  {
                    v43 = [v14 factoidItem];
                    v44 = [v43 indexWithinFactoidComponent];
                    *buf = 67109120;
                    LODWORD(v82) = v44;
                    _os_log_impl(&dword_1C5620000, v36, OS_LOG_TYPE_ERROR, "Failed to find a factoid with index %d", buf, 8u);
                  }
                }

                self = v68;

LABEL_20:
                goto LABEL_50;
              }

              if (v19 != 8)
              {
                goto LABEL_50;
              }

              v20 = [MUPlaceDistanceRibbonViewModel alloc];
              v21 = [(MUPlaceSectionController *)self mapItem];
              v22 = [(MUPlaceRibbonSectionControllerConfiguration *)self->_configuration etaProvider];
              v23 = [(MUPlaceDistanceRibbonViewModel *)v20 initWithMapItem:v21 etaProvider:v22];
              v24 = 104;
              distanceViewModel = self->_distanceViewModel;
              self->_distanceViewModel = v23;

LABEL_48:
LABEL_49:
              v5[2](v5, *(&self->super.super.isa + v24));
              goto LABEL_50;
            }

            if (v19 == 9)
            {
              v29 = [(MUPlaceRibbonSectionControllerConfiguration *)self->_configuration availability];
              if (([v29 supportsEVCharging] & 1) == 0)
              {
                goto LABEL_44;
              }

              v39 = [(MUPlaceRibbonSectionControllerConfiguration *)self->_configuration evChargerAvailabilityProvider];

              if (v39)
              {
                v40 = [MUPlaceRibbonEVChargingViewModel alloc];
                v21 = [(MUPlaceRibbonSectionControllerConfiguration *)self->_configuration evChargerAvailabilityProvider];
                v41 = [(MUPlaceRibbonEVChargingViewModel *)v40 initWithAvailabilityProvider:v21];
                v24 = 112;
                evChargingViewModel = self->_evChargingViewModel;
                self->_evChargingViewModel = v41;

                goto LABEL_48;
              }
            }

            else
            {
              if (v19 == 10)
              {
                if (!MapsFeature_IsEnabled_ExpertPartners())
                {
                  goto LABEL_50;
                }

                v28 = [MUPlaceRibbonItemViewModel accoladesItemViewModelForMapItem:v69];
                goto LABEL_43;
              }

              if (v19 == 11 && MapsFeature_IsEnabled_ApplePayEnhancementsEnabled())
              {
                v29 = [v14 contactlessPaymentsItem];
                v30 = [MUPlaceRibbonItemViewModel acceptsPaymentsViewForMapItem:v69 contactlessPaymentsRibbonItem:v29];
                v5[2](v5, v30);

LABEL_44:
              }
            }
          }

LABEL_50:
          ++v13;
        }

        while (v11 != v13);
        v45 = [v9 countByEnumeratingWithState:&v74 objects:v85 count:16];
        v11 = v45;
        if (!v45)
        {
          v4 = v67;
          goto LABEL_65;
        }
      }
    }
  }

  else
  {
    v46 = [MUPlaceRibbonItemViewModel hoursItemViewModelForMapItem:v6];
    v5[2](v5, v46);

    v47 = [[MUPlaceRatingRibbonViewModel alloc] initWithMapItem:v6];
    v48 = self->_ratingViewModel;
    self->_ratingViewModel = v47;

    v5[2](v5, self->_ratingViewModel);
    v49 = [MUPlaceRibbonItemViewModel guidesItemViewModelForMapItem:v6];
    v5[2](v5, v49);

    v50 = [MUPlaceRibbonItemViewModel costItemViewForMapItem:v6];
    v5[2](v5, v50);

    v69 = v6;
    v51 = [MUPlaceRibbonItemViewModel amenityItemViewForMapItem:v6 amenityItemConfiguration:0];
    v5[2](v5, v51);

    v52 = [MUPlaceDistanceRibbonViewModel alloc];
    v53 = [(MUPlaceSectionController *)self mapItem];
    v54 = [(MUPlaceRibbonSectionControllerConfiguration *)self->_configuration etaProvider];
    v55 = [(MUPlaceDistanceRibbonViewModel *)v52 initWithMapItem:v53 etaProvider:v54];
    v56 = self->_distanceViewModel;
    self->_distanceViewModel = v55;

    v5[2](v5, self->_distanceViewModel);
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v57 = [(MUPlaceSectionController *)self mapItem];
    v58 = [v57 _geoMapItem];
    v59 = [v58 _encyclopedicInfo];
    v9 = [v59 factoids];

    v60 = [v9 countByEnumeratingWithState:&v70 objects:v80 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = v4;
      v63 = *v71;
      do
      {
        for (i = 0; i != v61; ++i)
        {
          if (*v71 != v63)
          {
            objc_enumerationMutation(v9);
          }

          v65 = [MUPlaceRibbonItemViewModel factoidItemForFactoid:*(*(&v70 + 1) + 8 * i)];
          v5[2](v5, v65);
        }

        v61 = [v9 countByEnumeratingWithState:&v70 objects:v80 count:16];
      }

      while (v61);
      v4 = v62;
    }

LABEL_65:
    v6 = v69;
  }

  [(MUPlaceRibbonView *)self->_ribbonView setViewModels:v4];
  v66 = *MEMORY[0x1E69E9840];
}

uint64_t __46__MUPlaceRibbonSectionController_buildContent__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

- (void)_setupRibbonView
{
  v3 = [MUPlaceRibbonView alloc];
  v4 = [(MUPlaceRibbonView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  ribbonView = self->_ribbonView;
  self->_ribbonView = v4;

  [(MUPlaceRibbonView *)self->_ribbonView setDelegate:self];
  [(MUPlaceRibbonView *)self->_ribbonView setAnalyticsDelegate:self];
  v6 = [[MUPlaceSectionView alloc] initWithStyle:0 alwaysHideSeparators:1];
  sectionView = self->_sectionView;
  self->_sectionView = v6;

  [(MUPlaceSectionView *)self->_sectionView configureWithSectionController:self];
  [(MUPlaceSectionView *)self->_sectionView attachViewToContentView:self->_ribbonView];

  [(MUPlaceRibbonSectionController *)self buildContent];
}

- (MUPlaceRibbonSectionController)initWithMapItem:(id)a3 configuration:(id)a4
{
  v7 = a4;
  v13.receiver = self;
  v13.super_class = MUPlaceRibbonSectionController;
  v8 = [(MUPlaceSectionController *)&v13 initWithMapItem:a3];
  if (v8)
  {
    v9 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v9))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUPlaceRibbonSectionControllerInit", "", v12, 2u);
    }

    objc_storeStrong(&v8->_configuration, a4);
    [(MUPlaceRibbonSectionController *)v8 _setupRibbonView];
    v10 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v10))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUPlaceRibbonSectionControllerInit", "", v12, 2u);
    }
  }

  return v8;
}

@end