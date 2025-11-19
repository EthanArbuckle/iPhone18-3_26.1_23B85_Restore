@interface MURatingsAndReviewsSectionController
- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel;
- (MURatingsAndReviewsSectionController)initWithMapItem:(id)a3;
- (MURatingsAndReviewsSectionControllerDelegate)actionDelegate;
- (id)infoCardChildPossibleActions;
- (void)_addAppleRatingsCategoryTileIfNeeded:(id)a3;
- (void)_addHorizontalTileToContentStackView:(id)a3 items:(id)a4;
- (void)_addPlaceCollectionPullQuotesIfNeeded:(id)a3;
- (void)_addRatingSnippets:(id)a3 withCellItems:(id)a4;
- (void)_addUserReviewCategoryTilesIfNeeded:(id)a3;
- (void)_sectionHeaderAccessoryTapped;
- (void)_setupRatingRows;
- (void)pullQuoteViewDidTapMore:(id)a3;
@end

@implementation MURatingsAndReviewsSectionController

- (MURatingsAndReviewsSectionControllerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (id)infoCardChildPossibleActions
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(MUPlaceSectionController *)self mapItem];
  v5 = [v4 _reviews];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    do
    {
      [v3 addObject:&unk_1F450D928];
      ++v7;
      v8 = [(MUPlaceSectionController *)self mapItem];
      v9 = [v8 _reviews];
      v10 = [v9 count];
    }

    while (v7 < v10);
  }

  [v3 addObject:&unk_1F450D940];
  v11 = [v3 copy];

  return v11;
}

- (void)pullQuoteViewDidTapMore:(id)a3
{
  v8 = a3;
  v4 = [v8 viewModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(MURatingsAndReviewsSectionController *)self actionDelegate];
    v7 = [v8 viewModel];
    [v6 ratingsAndReviewsSectionController:self didSelectPlaceCollection:v7];
  }
}

- (void)_sectionHeaderAccessoryTapped
{
  v3 = [(MUPlaceSectionController *)self mapItem];
  v4 = [v3 _reviewsAttribution];
  v5 = [v4 providerID];
  [(MUPlaceSectionController *)self captureInfoCardAction:6020 eventValue:0 feedbackType:175 actionRichProviderId:v5 classification:0];

  v6 = [(MURatingsAndReviewsSectionController *)self actionDelegate];
  [v6 ratingsAndReviewsSectionControllerDidSelectViewAllReviews:self];
}

- (MUPlaceSectionHeaderViewModel)sectionHeaderViewModel
{
  sectionHeaderViewModel = self->_sectionHeaderViewModel;
  if (!sectionHeaderViewModel)
  {
    v4 = [(MUPlaceRatingReviewTitleBuilder *)self->_titleBuilder buildTitleString];
    v5 = [(MUPlaceSectionController *)self mapItem];
    v6 = [v5 _reviewsAttribution];
    v7 = [MUPlaceSectionHeaderViewModel viewModelForTitle:v4 attribution:v6 target:self action:sel__sectionHeaderAccessoryTapped];
    v8 = self->_sectionHeaderViewModel;
    self->_sectionHeaderViewModel = v7;

    sectionHeaderViewModel = self->_sectionHeaderViewModel;
  }

  return sectionHeaderViewModel;
}

- (void)_addHorizontalTileToContentStackView:(id)a3 items:(id)a4
{
  v5 = a4;
  v6 = a3;
  v8 = objc_alloc_init(_MURatingCellItem);
  [(_MURatingCellItem *)v8 setShouldApplyWidthConstraint:1];
  [(_MURatingCellItem *)v8 setPreferredWidth:307.0];
  v7 = [[MUPlatterView alloc] initWithContentView:v6];

  [(_MURatingCellItem *)v8 setRatingView:v7];
  [v5 addObject:v8];
}

- (void)_addPlaceCollectionPullQuotesIfNeeded:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = a3;
  v4 = [(MUPlaceSectionController *)self mapItem];
  v5 = [v4 _geoMapItem];
  v6 = [v5 _hasPlaceCollectionPullQuotes];

  if (v6)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = [(MUPlaceSectionController *)self mapItem];
    v8 = [v7 _geoMapItem];
    v9 = [v8 _placeCollections];

    v10 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
            objc_enumerationMutation(v9);
          }

          v19 = *(*(&v27 + 1) + 8 * i);
          v20 = [v19 publisherBlockQuote];
          v21 = [v20 plainTextDescription];
          v22 = [v21 length];

          if (v22)
          {
            v23 = [[MUPlaceCollectionPullQuotePlatterView alloc] initWithFrame:v14, v15, v16, v17];
            [(MUPlaceCollectionPullQuotePlatterView *)v23 setDelegate:self];
            [(MUPlaceCollectionPullQuotePlatterView *)v23 setViewModel:v19];
            [(MURatingsAndReviewsSectionController *)self _addHorizontalTileToContentStackView:v23 items:v26];

            v12 = 1;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v27 objects:v32 count:16];
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

- (void)_addRatingSnippets:(id)a3 withCellItems:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v20 = a4;
  if ([v6 count])
  {
    [(MUPlaceRatingReviewTitleBuilder *)self->_titleBuilder setSupportsReviews:1];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v6;
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
        [(MURatingsAndReviewsSectionController *)self _addHorizontalTileToContentStackView:v17 items:v20];

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

- (void)_addUserReviewCategoryTilesIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(MUPlaceSectionController *)self mapItem];
  if ([(MUOverallRatingPlatterView *)v5 _hasUserRatingScore])
  {
    v6 = [(MUPlaceSectionController *)self mapItem];
    v7 = [v6 _geoMapItem];
    v8 = [v7 _hasAppleRatings];

    if (v8)
    {
      goto LABEL_5;
    }

    v9 = [MUOverallRatingPlatterView alloc];
    v5 = [(MUOverallRatingPlatterView *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v10 = [(MUPlaceSectionController *)self mapItem];
    [(MUOverallRatingPlatterView *)v5 setViewModel:v10];

    [(MUOverallRatingPlatterView *)v5 addSelectionGestureWithTarget:self action:sel__sectionHeaderAccessoryTapped];
    v11 = [[MUPlatterView alloc] initWithContentView:v5];
    v12 = objc_alloc_init(_MURatingCellItem);
    [(_MURatingCellItem *)v12 setRatingView:v11];
    [(_MURatingCellItem *)v12 setShouldApplyWidthConstraint:0];
    [v4 addObject:v12];
    [(MUPlaceRatingReviewTitleBuilder *)self->_titleBuilder setSupportsRatings:1];
  }

LABEL_5:
  v13 = [(MUPlaceSectionController *)self mapItem];
  v14 = [v13 _reviews];
  v15 = [v14 count];

  v16 = [(MUPlaceSectionController *)self mapItem];
  v17 = v16;
  if (v15)
  {
    v18 = [v16 _reviews];
LABEL_9:
    v21 = v18;
    [(MURatingsAndReviewsSectionController *)self _addRatingSnippets:v18 withCellItems:v4];

    goto LABEL_10;
  }

  v19 = [v16 _tips];
  v20 = [v19 count];

  if (v20)
  {
    v17 = [(MUPlaceSectionController *)self mapItem];
    v18 = [v17 _tips];
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

- (void)_addAppleRatingsCategoryTileIfNeeded:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MUPlaceSectionController *)self mapItem];
  v6 = [v5 _geoMapItem];
  v7 = [v6 _hasAppleRatings];

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = [(MUPlaceSectionController *)self mapItem];
    v10 = [v9 _geoMapItem];
    v11 = [v10 _appleRatings];

    v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
            objc_enumerationMutation(v11);
          }

          [v8 addObject:*(*(&v20 + 1) + 8 * v15++)];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
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

      [(MURatingsAndReviewsSectionController *)self _addHorizontalTileToContentStackView:v17 items:v4];
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
      v14 = [v11 firstObject];
      v15 = [v14 ratingView];
      v16 = [(MURatingsAndReviewsSectionController *)self sectionHeaderViewModel];
      v17 = [MUPlaceSectionView insetPlatterSectionViewForContentView:v15 sectionHeaderViewModel:v16 sectionFooterViewModel:0];
      sectionView = self->_sectionView;
      self->_sectionView = v17;

      v19 = self->_sectionView;
      v20 = [v11 firstObject];
      v21 = [v20 ratingView];
      [(MUPlaceSectionView *)v19 attachViewToContentView:v21];
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
              v28 = [v27 ratingView];
              v29 = [v28 widthAnchor];
              [v27 preferredWidth];
              v30 = [v29 constraintEqualToConstant:?];
              [v30 setActive:1];
            }

            v31 = self->_contentStackView;
            v32 = [v27 ratingView];
            [(MUScrollableStackView *)v31 addArrangedSubview:v32];
          }

          v24 = [v22 countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v24);
      }

      v33 = [MUPlaceSectionView alloc];
      v34 = [(MURatingsAndReviewsSectionController *)self sectionHeaderViewModel];
      v35 = [(MUPlaceSectionView *)v33 initWithStyle:0 sectionHeaderViewModel:v34];
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

- (MURatingsAndReviewsSectionController)initWithMapItem:(id)a3
{
  v8.receiver = self;
  v8.super_class = MURatingsAndReviewsSectionController;
  v3 = [(MUPlaceSectionController *)&v8 initWithMapItem:a3];
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