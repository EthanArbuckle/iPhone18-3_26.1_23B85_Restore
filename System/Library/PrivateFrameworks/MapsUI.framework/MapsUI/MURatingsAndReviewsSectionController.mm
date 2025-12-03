@interface MURatingsAndReviewsSectionController
- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel;
- (MURatingsAndReviewsSectionController)initWithMapItem:(id)item;
- (MURatingsAndReviewsSectionControllerDelegate)actionDelegate;
- (id)infoCardChildPossibleActions;
- (void)_addAppleRatingsCategoryTileIfNeeded:(id)needed;
- (void)_addHorizontalTileToContentStackView:(id)view items:(id)items;
- (void)_addPlaceCollectionPullQuotesIfNeeded:(id)needed;
- (void)_addRatingSnippets:(id)snippets withCellItems:(id)items;
- (void)_addUserReviewCategoryTilesIfNeeded:(id)needed;
- (void)_sectionHeaderAccessoryTapped;
- (void)_setupRatingRows;
- (void)pullQuoteViewDidTapMore:(id)more;
@end

@implementation MURatingsAndReviewsSectionController

- (MURatingsAndReviewsSectionControllerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (id)infoCardChildPossibleActions
{
  array = [MEMORY[0x1E695DF70] array];
  mapItem = [(MUPlaceSectionController *)self mapItem];
  _reviews = [mapItem _reviews];
  v6 = [_reviews count];

  if (v6)
  {
    v7 = 0;
    do
    {
      [array addObject:&unk_1F450D928];
      ++v7;
      mapItem2 = [(MUPlaceSectionController *)self mapItem];
      _reviews2 = [mapItem2 _reviews];
      v10 = [_reviews2 count];
    }

    while (v7 < v10);
  }

  [array addObject:&unk_1F450D940];
  v11 = [array copy];

  return v11;
}

- (void)pullQuoteViewDidTapMore:(id)more
{
  moreCopy = more;
  viewModel = [moreCopy viewModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    actionDelegate = [(MURatingsAndReviewsSectionController *)self actionDelegate];
    viewModel2 = [moreCopy viewModel];
    [actionDelegate ratingsAndReviewsSectionController:self didSelectPlaceCollection:viewModel2];
  }
}

- (void)_sectionHeaderAccessoryTapped
{
  mapItem = [(MUPlaceSectionController *)self mapItem];
  _reviewsAttribution = [mapItem _reviewsAttribution];
  providerID = [_reviewsAttribution providerID];
  [(MUPlaceSectionController *)self captureInfoCardAction:6020 eventValue:0 feedbackType:175 actionRichProviderId:providerID classification:0];

  actionDelegate = [(MURatingsAndReviewsSectionController *)self actionDelegate];
  [actionDelegate ratingsAndReviewsSectionControllerDidSelectViewAllReviews:self];
}

- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel
{
  sectionHeaderViewModel = self->_sectionHeaderViewModel;
  if (!sectionHeaderViewModel)
  {
    buildTitleString = [(MUPlaceRatingReviewTitleBuilder *)self->_titleBuilder buildTitleString];
    mapItem = [(MUPlaceSectionController *)self mapItem];
    _reviewsAttribution = [mapItem _reviewsAttribution];
    v7 = [MUPlaceSectionHeaderViewModel viewModelForTitle:buildTitleString attribution:_reviewsAttribution target:self action:sel__sectionHeaderAccessoryTapped];
    v8 = self->_sectionHeaderViewModel;
    self->_sectionHeaderViewModel = v7;

    sectionHeaderViewModel = self->_sectionHeaderViewModel;
  }

  return sectionHeaderViewModel;
}

- (void)_addHorizontalTileToContentStackView:(id)view items:(id)items
{
  itemsCopy = items;
  viewCopy = view;
  v8 = objc_alloc_init(_MURatingCellItem);
  [(_MURatingCellItem *)v8 setShouldApplyWidthConstraint:1];
  [(_MURatingCellItem *)v8 setPreferredWidth:307.0];
  v7 = [[MUPlatterView alloc] initWithContentView:viewCopy];

  [(_MURatingCellItem *)v8 setRatingView:v7];
  [itemsCopy addObject:v8];
}

- (void)_addPlaceCollectionPullQuotesIfNeeded:(id)needed
{
  v33 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  mapItem = [(MUPlaceSectionController *)self mapItem];
  _geoMapItem = [mapItem _geoMapItem];
  _hasPlaceCollectionPullQuotes = [_geoMapItem _hasPlaceCollectionPullQuotes];

  if (_hasPlaceCollectionPullQuotes)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    mapItem2 = [(MUPlaceSectionController *)self mapItem];
    _geoMapItem2 = [mapItem2 _geoMapItem];
    _placeCollections = [_geoMapItem2 _placeCollections];

    v10 = [_placeCollections countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v28;
      v14 = *MEMORY[0x1E695F058];
      v15 = *(MEMORY[0x1E695F058] + 8);
      v16 = *(MEMORY[0x1E695F058] + 16);
      v17 = *(MEMORY[0x1E695F058] + 24);
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v13)
          {
            objc_enumerationMutation(_placeCollections);
          }

          v19 = *(*(&v27 + 1) + 8 * i);
          publisherBlockQuote = [v19 publisherBlockQuote];
          plainTextDescription = [publisherBlockQuote plainTextDescription];
          v22 = [plainTextDescription length];

          if (v22)
          {
            v23 = [[MUPlaceCollectionPullQuotePlatterView alloc] initWithFrame:v14, v15, v16, v17];
            [(MUPlaceCollectionPullQuotePlatterView *)v23 setDelegate:self];
            [(MUPlaceCollectionPullQuotePlatterView *)v23 setViewModel:v19];
            [(MURatingsAndReviewsSectionController *)self _addHorizontalTileToContentStackView:v23 items:neededCopy];

            v12 = 1;
          }
        }

        v11 = [_placeCollections countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    [(MUPlaceRatingReviewTitleBuilder *)self->_titleBuilder setSupportsGuides:v12 & 1];
  }

  else
  {
    v24 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5620000, v24, OS_LOG_TYPE_INFO, "MURatingsAndReviewsSectionController: No place collection pull quotes present", buf, 2u);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_addRatingSnippets:(id)snippets withCellItems:(id)items
{
  v31 = *MEMORY[0x1E69E9840];
  snippetsCopy = snippets;
  itemsCopy = items;
  if ([snippetsCopy count])
  {
    [(MUPlaceRatingReviewTitleBuilder *)self->_titleBuilder setSupportsReviews:1];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = snippetsCopy;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = *v27;
    v10 = *MEMORY[0x1E695F058];
    v11 = *(MEMORY[0x1E695F058] + 8);
    v12 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      v14 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v26 + 1) + 8 * v14);
        v16 = [[MUPlaceReviewViewModel alloc] initWithRatingSnippet:v15 avatarGenerator:self->_avatarGenerator];
        v17 = [[MUPlaceReviewPlatterView alloc] initWithFrame:v10, v11, v12, v13];
        [(MUPlaceReviewPlatterView *)v17 setViewModel:v16];
        objc_initWeak(&location, self);
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __73__MURatingsAndReviewsSectionController__addRatingSnippets_withCellItems___block_invoke;
        v21[3] = &unk_1E8218520;
        objc_copyWeak(&v24, &location);
        v18 = v7;
        v22 = v18;
        v23 = v15;
        [(MUPlaceReviewPlatterView *)v17 setActionHandler:v21];
        [(MURatingsAndReviewsSectionController *)self _addHorizontalTileToContentStackView:v17 items:itemsCopy];

        objc_destroyWeak(&v24);
        objc_destroyWeak(&location);

        ++v14;
      }

      while (v8 != v14);
      v8 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __73__MURatingsAndReviewsSectionController__addRatingSnippets_withCellItems___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v3 = [*(a1 + 32) indexOfObject:*(a1 + 40)];
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v3];
    v5 = [v9 mapItem];
    v6 = [v5 _reviewsAttribution];
    v7 = [v6 providerID];
    [v9 captureInfoCardAction:6021 eventValue:v4 feedbackType:176 actionRichProviderId:v7 classification:0];

    v8 = [v9 actionDelegate];
    [v8 ratingsAndReviewsSectionController:v9 didSelectViewReview:*(a1 + 40)];

    WeakRetained = v9;
  }
}

- (void)_addUserReviewCategoryTilesIfNeeded:(id)needed
{
  neededCopy = needed;
  mapItem = [(MUPlaceSectionController *)self mapItem];
  if ([(MUOverallRatingPlatterView *)mapItem _hasUserRatingScore])
  {
    mapItem2 = [(MUPlaceSectionController *)self mapItem];
    _geoMapItem = [mapItem2 _geoMapItem];
    _hasAppleRatings = [_geoMapItem _hasAppleRatings];

    if (_hasAppleRatings)
    {
      goto LABEL_5;
    }

    v9 = [MUOverallRatingPlatterView alloc];
    mapItem = [(MUOverallRatingPlatterView *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    mapItem3 = [(MUPlaceSectionController *)self mapItem];
    [(MUOverallRatingPlatterView *)mapItem setViewModel:mapItem3];

    [(MUOverallRatingPlatterView *)mapItem addSelectionGestureWithTarget:self action:sel__sectionHeaderAccessoryTapped];
    v11 = [[MUPlatterView alloc] initWithContentView:mapItem];
    v12 = objc_alloc_init(_MURatingCellItem);
    [(_MURatingCellItem *)v12 setRatingView:v11];
    [(_MURatingCellItem *)v12 setShouldApplyWidthConstraint:0];
    [neededCopy addObject:v12];
    [(MUPlaceRatingReviewTitleBuilder *)self->_titleBuilder setSupportsRatings:1];
  }

LABEL_5:
  mapItem4 = [(MUPlaceSectionController *)self mapItem];
  _reviews = [mapItem4 _reviews];
  v15 = [_reviews count];

  mapItem5 = [(MUPlaceSectionController *)self mapItem];
  mapItem6 = mapItem5;
  if (v15)
  {
    _reviews2 = [mapItem5 _reviews];
LABEL_9:
    v21 = _reviews2;
    [(MURatingsAndReviewsSectionController *)self _addRatingSnippets:_reviews2 withCellItems:neededCopy];

    goto LABEL_10;
  }

  _tips = [mapItem5 _tips];
  v20 = [_tips count];

  if (v20)
  {
    mapItem6 = [(MUPlaceSectionController *)self mapItem];
    _reviews2 = [mapItem6 _tips];
    goto LABEL_9;
  }

  v22 = MUGetPlaceCardLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *v23 = 0;
    _os_log_impl(&dword_1C5620000, v22, OS_LOG_TYPE_DEBUG, "POI has neither reviews or tips", v23, 2u);
  }

LABEL_10:
}

- (void)_addAppleRatingsCategoryTileIfNeeded:(id)needed
{
  v26 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  mapItem = [(MUPlaceSectionController *)self mapItem];
  _geoMapItem = [mapItem _geoMapItem];
  _hasAppleRatings = [_geoMapItem _hasAppleRatings];

  if (_hasAppleRatings)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    mapItem2 = [(MUPlaceSectionController *)self mapItem];
    _geoMapItem2 = [mapItem2 _geoMapItem];
    _appleRatings = [_geoMapItem2 _appleRatings];

    v12 = [_appleRatings countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        v15 = 0;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(_appleRatings);
          }

          [v8 addObject:*(*(&v20 + 1) + 8 * v15++)];
        }

        while (v13 != v15);
        v13 = [_appleRatings countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v13);
    }

    if ([v8 count])
    {
      [(MUPlaceRatingReviewTitleBuilder *)self->_titleBuilder setSupportsRatings:1];
      v16 = [MUAppleRatingSectionView alloc];
      v17 = [(MUAppleRatingSectionView *)v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v18 = [v8 copy];
      [v17 setViewModels:v18];

      [(MURatingsAndReviewsSectionController *)self _addHorizontalTileToContentStackView:v17 items:neededCopy];
    }

    else
    {
      v17 = MUGetPlaceCardLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5620000, v17, OS_LOG_TYPE_INFO, "MURatingsAndReviewsSectionController: Apple ratings are present but only the overall one is present. Exit early", buf, 2u);
      }
    }
  }

  else
  {
    v8 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5620000, v8, OS_LOG_TYPE_INFO, "MURatingsAndReviewsSectionController: No Apple ratings present, exit early", buf, 2u);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_setupRatingRows
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = [MUScrollableStackView alloc];
  v4 = [(MUScrollableStackView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  contentStackView = self->_contentStackView;
  self->_contentStackView = v4;

  [(MUScrollableStackView *)self->_contentStackView setAxis:0];
  v6 = self->_contentStackView;
  MKPlaceHorizontalPlatterMargin();
  [(MUScrollableStackView *)v6 setContentEdgeInsets:0.0, v7, 0.0, v7];
  [(MUScrollableStackView *)self->_contentStackView setSpacing:10.0];
  [(MUScrollableStackView *)self->_contentStackView setAccessibilityIdentifier:@"RatingsAndReviews"];
  v8 = self->_contentStackView;
  v9 = objc_alloc_init(MUPlaceReviewAvatarGenerator);
  avatarGenerator = self->_avatarGenerator;
  self->_avatarGenerator = v9;

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = objc_alloc_init(MUPlaceRatingReviewTitleBuilder);
  titleBuilder = self->_titleBuilder;
  self->_titleBuilder = v12;

  [(MURatingsAndReviewsSectionController *)self _addAppleRatingsCategoryTileIfNeeded:v11];
  [(MURatingsAndReviewsSectionController *)self _addUserReviewCategoryTilesIfNeeded:v11];
  [(MURatingsAndReviewsSectionController *)self _addPlaceCollectionPullQuotesIfNeeded:v11];
  if ([v11 count])
  {
    v39 = v11;
    if ([v11 count] == 1)
    {
      firstObject = [v11 firstObject];
      ratingView = [firstObject ratingView];
      sectionHeaderViewModel = [(MURatingsAndReviewsSectionController *)self sectionHeaderViewModel];
      v17 = [MUPlaceSectionView insetPlatterSectionViewForContentView:ratingView sectionHeaderViewModel:sectionHeaderViewModel sectionFooterViewModel:0];
      sectionView = self->_sectionView;
      self->_sectionView = v17;

      v19 = self->_sectionView;
      firstObject2 = [v11 firstObject];
      ratingView2 = [firstObject2 ratingView];
      [(MUPlaceSectionView *)v19 attachViewToContentView:ratingView2];
    }

    else
    {
      v38 = v8;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v22 = v11;
      v23 = [v22 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v41;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v41 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v40 + 1) + 8 * i);
            if ([v27 shouldApplyWidthConstraint])
            {
              ratingView3 = [v27 ratingView];
              widthAnchor = [ratingView3 widthAnchor];
              [v27 preferredWidth];
              v30 = [widthAnchor constraintEqualToConstant:?];
              [v30 setActive:1];
            }

            v31 = self->_contentStackView;
            ratingView4 = [v27 ratingView];
            [(MUScrollableStackView *)v31 addArrangedSubview:ratingView4];
          }

          v24 = [v22 countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v24);
      }

      v33 = [MUPlaceSectionView alloc];
      sectionHeaderViewModel2 = [(MURatingsAndReviewsSectionController *)self sectionHeaderViewModel];
      v35 = [(MUPlaceSectionView *)v33 initWithStyle:0 sectionHeaderViewModel:sectionHeaderViewModel2];
      v36 = self->_sectionView;
      self->_sectionView = v35;

      v8 = v38;
      [(MUPlaceSectionView *)self->_sectionView attachViewToContentView:v38];
    }

    [(MUPlaceSectionView *)self->_sectionView configureWithSectionController:self, v38];
    v11 = v39;
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (MURatingsAndReviewsSectionController)initWithMapItem:(id)item
{
  v8.receiver = self;
  v8.super_class = MURatingsAndReviewsSectionController;
  v3 = [(MUPlaceSectionController *)&v8 initWithMapItem:item];
  if (v3)
  {
    v4 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v4))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MURatingsAndReviewsSectionControllerInit", "", v7, 2u);
    }

    [(MURatingsAndReviewsSectionController *)v3 _setupRatingRows];
    v5 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v5))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MURatingsAndReviewsSectionControllerInit", "", v7, 2u);
    }
  }

  return v3;
}

@end