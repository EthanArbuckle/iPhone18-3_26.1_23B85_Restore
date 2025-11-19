@interface CKConversationListCollectionViewLayout
- (BOOL)_sectionNeedsRecoverableDisclosureHeader:(int64_t)a3 environment:(id)a4;
- (CKConversationListCollectionViewController)conversationListController;
- (CKConversationListCollectionViewLayout)init;
- (double)_edgeToAvatarWidthForPinnedConversationLayoutStyle:(int64_t)a3;
- (double)_leadingSeparatorInsetForEnvironment:(id)a3;
- (double)_minimumEdgeToCellSpacingForLayoutStyle:(int64_t)a3;
- (double)_totalVerticalRowSpacingForLayoutStyle:(int64_t)a3;
- (double)conversationCellHeight;
- (double)pinnedConversationCellHeightForLayoutStyle:(int64_t)a3 cellWidth:(double)a4;
- (double)widthForPinnedConversationCellInCollectionViewOfSize:(CGSize)a3 numberOfItems:(int64_t)a4;
- (id)_emptyLayoutSection;
- (id)conversationListLayout;
- (id)focusFilterLayoutSectionForEnvironment:(id)a3;
- (id)pinGridLayoutGroupForCollectionViewSize:(CGSize)a3 numberOfItems:(int64_t)a4;
- (id)pinGridLayoutSectionForEnvironment:(id)a3 withNumberOfItems:(int64_t)a4 isShowingFocusFilterBanner:(BOOL)a5;
- (id)pinningOnboardingTitleLayoutSectionForEnvironment:(id)a3;
- (id)rowLayoutSectionForEnvironment:(id)a3 withRowHeight:(double)a4 needsPinnedSectionSeparator:(BOOL)a5 forSection:(int64_t)a6;
- (id)tipKitLayoutSectionForEnvironment:(id)a3;
- (int64_t)_numberOfItemsInSection:(unint64_t)a3;
- (int64_t)_pinnedConversationViewLayoutStyleForCollectionViewSize:(CGSize)a3;
- (int64_t)numberOfPinnedConversationColumnsForLayoutStyle:(int64_t)a3;
- (void)conversationCellHeight;
- (void)updatePinnedConversationViewLayoutStyle;
@end

@implementation CKConversationListCollectionViewLayout

- (CKConversationListCollectionViewLayout)init
{
  v3.receiver = self;
  v3.super_class = CKConversationListCollectionViewLayout;
  return [(CKConversationListCollectionViewLayout *)&v3 init];
}

- (id)conversationListLayout
{
  objc_initWeak(&location, self);
  v2 = [CKConversationListCollectionViewCompositionalLayout alloc];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__CKConversationListCollectionViewLayout_conversationListLayout__block_invoke;
  v5[3] = &unk_1E72ECC10;
  objc_copyWeak(&v6, &location);
  v3 = [(CKConversationListCollectionViewCompositionalLayout *)v2 initWithSectionProvider:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

- (void)updatePinnedConversationViewLayoutStyle
{
  v3 = [(CKConversationListCollectionViewLayout *)self conversationListController];
  v4 = [v3 collectionView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  v9 = [(CKConversationListCollectionViewLayout *)self _pinnedConversationViewLayoutStyleForCollectionViewSize:v6, v8];
  v10 = [(CKConversationListCollectionViewLayout *)self conversationListController];
  [v10 setPinnedConversationViewLayoutStyle:v9];
}

- (CKConversationListCollectionViewController)conversationListController
{
  WeakRetained = objc_loadWeakRetained(&self->_conversationListController);

  return WeakRetained;
}

id __64__CKConversationListCollectionViewLayout_conversationListLayout__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [v5 container];
  [v6 effectiveContentSize];
  v8 = v7;

  if (CKIsRunningInMacCatalyst())
  {
    v9 = +[CKUIBehavior sharedBehaviors];
    [v9 minConversationListWidth];
    v11 = v8 <= v10;
  }

  else
  {
    v11 = 0;
  }

  if (a2 != 2 || v11)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 32));
        v17 = [WeakRetained pinningOnboardingTitleLayoutSectionForEnvironment:v5];
      }

      else
      {
        if (a2 != 3)
        {
          v20 = [v5 _dataSourceSnapshot];
          v21 = [v20 numberOfItemsInSection:2];

          v22 = a2 == 2 && v11;
          v23 = v21 > 0 && v22;
          WeakRetained = objc_loadWeakRetained((a1 + 32));
          [WeakRetained conversationCellHeight];
          v18 = [WeakRetained rowLayoutSectionForEnvironment:v5 withRowHeight:v23 needsPinnedSectionSeparator:a2 forSection:?];

          goto LABEL_8;
        }

        WeakRetained = objc_loadWeakRetained((a1 + 32));
        v17 = [WeakRetained tipKitLayoutSectionForEnvironment:v5];
      }
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v17 = [WeakRetained focusFilterLayoutSectionForEnvironment:v5];
    }
  }

  else
  {
    v12 = [v5 _dataSourceSnapshot];
    v13 = [v12 numberOfItemsInSection:2];

    v14 = [v5 _dataSourceSnapshot];
    v15 = [v14 numberOfItemsInSection:0] > 0;

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v17 = [WeakRetained pinGridLayoutSectionForEnvironment:v5 withNumberOfItems:v13 isShowingFocusFilterBanner:v15];
  }

  v18 = v17;
LABEL_8:

  return v18;
}

- (id)_emptyLayoutSection
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6995558] absoluteDimension:0.0];
  v3 = [MEMORY[0x1E6995558] absoluteDimension:0.0];
  v4 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v2 heightDimension:v3];
  v5 = [MEMORY[0x1E6995578] itemWithLayoutSize:v4];
  v6 = [MEMORY[0x1E6995558] absoluteDimension:0.0];
  v7 = [MEMORY[0x1E6995558] absoluteDimension:0.0];
  v8 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v6 heightDimension:v7];
  v9 = MEMORY[0x1E6995568];
  v14[0] = v5;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v11 = [v9 horizontalGroupWithLayoutSize:v8 subitems:v10];

  v12 = [MEMORY[0x1E6995580] sectionWithGroup:v11];

  return v12;
}

- (id)pinGridLayoutGroupForCollectionViewSize:(CGSize)a3 numberOfItems:(int64_t)a4
{
  width = a3.width;
  v66 = *MEMORY[0x1E69E9840];
  v7 = [(CKConversationListCollectionViewLayout *)self _pinnedConversationViewLayoutStyleForCollectionViewSize:a3.width, a3.height];
  v8 = [(CKConversationListCollectionViewLayout *)self conversationListController];
  v9 = [v8 pinnedConversationViewLayoutStyle];

  if (v9 != v7)
  {
    v10 = [(CKConversationListCollectionViewLayout *)self conversationListController];
    [v10 _setPinnedConversationViewLayoutStyle:v7 shouldInvalidateLayout:0];
  }

  v11 = [(CKConversationListCollectionViewLayout *)self numberOfPinnedConversationColumnsForLayoutStyle:v7];
  [(CKConversationListCollectionViewLayout *)self _edgeToAvatarWidthForPinnedConversationLayoutStyle:v7];
  v13 = v12;
  if (CKMainScreenScale_once_9 != -1)
  {
    [CKConversationListCollectionViewLayout pinGridLayoutGroupForCollectionViewSize:numberOfItems:];
  }

  v14 = (v11 - 1);
  v15 = *&CKMainScreenScale_sMainScreenScale_9;
  if (*&CKMainScreenScale_sMainScreenScale_9 == 0.0)
  {
    v15 = 1.0;
  }

  v16 = floor((width + v13 * -2.0 + v14 * -0.0) / v11 * v15) / v15;
  [CKPinnedConversationView avatarViewSizeFittingSize:v7 layoutStyle:v16, v16];
  v18 = v17;
  [(CKConversationListCollectionViewLayout *)self _minimumEdgeToCellSpacingForLayoutStyle:v7];
  v19 = [(CKConversationListCollectionViewLayout *)self conversationListController];
  v20 = [v19 view];
  v21 = (width - v11 * v18 + v13 * -2.0) / v14;
  UIFloorToViewScale();
  v23 = v22;

  v24 = [(CKConversationListCollectionViewLayout *)self conversationListController];
  v25 = [v24 view];
  UIFloorToViewScale();
  v27 = v26;

  if (v23 >= v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = v23;
  }

  v29 = v18 + v28 * 2.0;
  if (v29 <= 0.0)
  {
    v30 = 0.0;
    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v65 = v29;
        _os_log_impl(&dword_19020E000, v31, OS_LOG_TYPE_INFO, "itemWidth is %.1f. This should always be >0.0 since it is being used to create an absolute NSCollectionLayoutDimension. Setting to 0.0 to avoid a crash in UIKit.", buf, 0xCu);
      }
    }
  }

  else
  {
    v30 = v18 + v28 * 2.0;
  }

  v32 = v21 + v28 * -2.0;
  if (a4 < 1)
  {
    v36 = 0.0;
  }

  else
  {
    v33 = [(CKConversationListCollectionViewLayout *)self conversationListController];
    v34 = [v33 view];
    UICeilToViewScale();
    v36 = v35;

    v37 = v36;
    if (v36 > 0.0)
    {
      goto LABEL_24;
    }
  }

  v37 = 0.0;
  if (IMOSLoggingEnabled())
  {
    v38 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v65 = v36;
      _os_log_impl(&dword_19020E000, v38, OS_LOG_TYPE_INFO, "groupWidth is %.1f. This should always be >0.0 since it is being used to create an absolute NSCollectionLayoutDimension. Setting to 0.0 to avoid a crash in UIKit.", buf, 0xCu);
    }
  }

LABEL_24:
  [(CKConversationListCollectionViewLayout *)self pinnedConversationCellHeightForLayoutStyle:v7 cellWidth:v30];
  v40 = v39;
  v62 = [MEMORY[0x1E6995558] absoluteDimension:v30];
  v61 = [MEMORY[0x1E6995558] absoluteDimension:v40];
  v60 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v62 heightDimension:v61];
  v41 = [MEMORY[0x1E6995578] itemWithLayoutSize:v60];
  v42 = [MEMORY[0x1E6995558] absoluteDimension:v37];
  v43 = [MEMORY[0x1E6995558] absoluteDimension:v40];
  v44 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v42 heightDimension:v43];
  v45 = MEMORY[0x1E6995568];
  v63 = v41;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
  v47 = [v45 horizontalGroupWithLayoutSize:v44 subitems:v46];

  v48 = [MEMORY[0x1E6995590] fixedSpacing:v32];
  [v47 setInterItemSpacing:v48];

  v49 = v13 - v28;
  v50 = [MEMORY[0x1E6995590] flexibleSpacing:v49];
  v51 = [MEMORY[0x1E6995590] flexibleSpacing:v49];
  [(CKConversationListCollectionViewLayout *)self _totalVerticalRowSpacingForLayoutStyle:v7];
  v53 = v52;
  +[CKPinnedConversationView avatarViewPadding];
  v55 = v54;
  +[CKPinnedConversationView titleLabelVerticalPadding];
  v57 = [MEMORY[0x1E6995590] fixedSpacing:(v53 - v55 - v56) * 0.5];
  v58 = [MEMORY[0x1E6995560] spacingForLeading:v50 top:v57 trailing:v51 bottom:v57];
  [v47 setEdgeSpacing:v58];

  return v47;
}

- (double)widthForPinnedConversationCellInCollectionViewOfSize:(CGSize)a3 numberOfItems:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  if (CKIsRunningInMacCatalyst() && (+[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v8 = objc_claimAutoreleasedReturnValue(), [v8 minConversationListWidth], v10 = v9, v8, width <= v10))
  {
    v19 = +[CKUIBehavior sharedBehaviors];
    [v19 conversationListCellRightMargin];
    v21 = v20;
    v22 = +[CKUIBehavior sharedBehaviors];
    [v22 conversationListContactImageTrailingSpace];
    v24 = v21 + v23;

    return width + v24 * -2.0;
  }

  else
  {
    v11 = [(CKConversationListCollectionViewLayout *)self pinGridLayoutGroupForCollectionViewSize:a4 numberOfItems:width, height];
    v12 = [v11 subitems];
    v13 = [v12 firstObject];

    v14 = [v13 layoutSize];
    v15 = [v14 widthDimension];
    [v15 dimension];
    v17 = v16;

    return v17;
  }
}

- (int64_t)numberOfPinnedConversationColumnsForLayoutStyle:(int64_t)a3
{
  if (a3 > 6)
  {
    return 0;
  }

  if (a3 == 4)
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    v4 = [v3 maximumNumberOfPinnedConversations];
  }

  else
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    v4 = [v3 conversationListLayoutPinnedSectionNumberOfColumns];
  }

  v5 = v4;

  return v5;
}

- (double)_minimumEdgeToCellSpacingForLayoutStyle:(int64_t)a3
{
  result = 3.0;
  if (a3 == 5)
  {
    return 10.0;
  }

  return result;
}

- (double)_totalVerticalRowSpacingForLayoutStyle:(int64_t)a3
{
  result = 0.0;
  if (a3 <= 6)
  {
    return dbl_190DCEBD0[a3];
  }

  return result;
}

- (id)pinGridLayoutSectionForEnvironment:(id)a3 withNumberOfItems:(int64_t)a4 isShowingFocusFilterBanner:(BOOL)a5
{
  if (a4 < 1)
  {
    v14 = [(CKConversationListCollectionViewLayout *)self _emptyLayoutSection];
  }

  else
  {
    v6 = a5;
    v8 = [a3 container];
    [v8 effectiveContentSize];
    v10 = v9;
    v12 = v11;

    v13 = [(CKConversationListCollectionViewLayout *)self pinGridLayoutGroupForCollectionViewSize:a4 numberOfItems:v10, v12];
    v14 = [MEMORY[0x1E6995580] sectionWithGroup:v13];
    v15 = +[CKUIBehavior sharedBehaviors];
    [v15 totalTopSpacingFromSearchBarToPinnedItems:v6];
    v17 = v16;
    +[CKPinnedConversationView avatarViewPadding];
    v19 = v17 - v18;
    v20 = [v13 edgeSpacing];
    v21 = [v20 top];
    [v21 spacing];
    v23 = v19 - v22;

    v24 = +[CKUIBehavior sharedBehaviors];
    [v24 conversationListTotalLastPinNameToFirstCellSpacing];
    v26 = v25;
    +[CKPinnedConversationView titleLabelVerticalPadding];
    v28 = v26 - v27;
    v29 = [v13 edgeSpacing];
    v30 = [v29 bottom];
    [v30 spacing];
    v32 = v28 - v31;

    [v14 setContentInsets:{v23, 0.0, v32, 0.0}];
  }

  return v14;
}

- (id)tipKitLayoutSectionForEnvironment:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6995558] fractionalWidthDimension:{a3, 1.0}];
  v4 = [MEMORY[0x1E6995558] estimatedDimension:10.0];
  v5 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v3 heightDimension:v4];
  v6 = [MEMORY[0x1E6995578] itemWithLayoutSize:v5];
  v7 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v8 = [MEMORY[0x1E6995558] estimatedDimension:10.0];
  v9 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v7 heightDimension:v8];
  v10 = MEMORY[0x1E6995568];
  v24[0] = v6;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v12 = [v10 verticalGroupWithLayoutSize:v9 subitems:v11];

  v13 = [MEMORY[0x1E6995580] sectionWithGroup:v12];
  [v13 contentInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = +[CKUIBehavior sharedBehaviors];
  [v20 conversationListBottomTipSectionPadding];
  v22 = v21;

  [v13 setContentInsets:{v15, v17, v22, v19}];

  return v13;
}

- (id)focusFilterLayoutSectionForEnvironment:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6995558] fractionalWidthDimension:{a3, 1.0}];
  v4 = [MEMORY[0x1E6995558] estimatedDimension:44.0];
  v5 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v3 heightDimension:v4];
  v6 = [MEMORY[0x1E6995578] itemWithLayoutSize:v5];
  v7 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v8 = [MEMORY[0x1E6995558] estimatedDimension:44.0];
  v9 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v7 heightDimension:v8];
  v10 = MEMORY[0x1E6995568];
  v15[0] = v6;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v12 = [v10 verticalGroupWithLayoutSize:v9 subitems:v11];

  v13 = [MEMORY[0x1E6995580] sectionWithGroup:v12];

  return v13;
}

- (id)pinningOnboardingTitleLayoutSectionForEnvironment:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6995558] fractionalWidthDimension:{a3, 1.0}];
  v4 = [MEMORY[0x1E6995558] estimatedDimension:138.0];
  v5 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v3 heightDimension:v4];
  v6 = [MEMORY[0x1E6995578] itemWithLayoutSize:v5];
  v7 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v8 = [MEMORY[0x1E6995558] estimatedDimension:138.0];
  v9 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v7 heightDimension:v8];
  v10 = MEMORY[0x1E6995568];
  v15[0] = v6;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v12 = [v10 verticalGroupWithLayoutSize:v9 subitems:v11];

  v13 = [MEMORY[0x1E6995580] sectionWithGroup:v12];

  return v13;
}

- (id)rowLayoutSectionForEnvironment:(id)a3 withRowHeight:(double)a4 needsPinnedSectionSeparator:(BOOL)a5 forSection:(int64_t)a6
{
  v6 = a5;
  v65 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = [(CKConversationListCollectionViewLayout *)self conversationListController];
  v11 = [v10 delegate];
  if ([v11 isCollapsed])
  {
    v12 = 0;
  }

  else
  {
    v12 = 4;
  }

  v13 = [objc_alloc(MEMORY[0x1E69DD3F8]) initWithAppearanceStyle:v12 layoutEnvironment:v9];
  if (CKIsRunningInMacCatalyst() && ([v9 container], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "contentSize"), v16 = v15, +[CKUIBehavior sharedBehaviors](CKUIBehavior, "sharedBehaviors"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "minConversationListWidth"), v19 = v18, v17, v14, v16 <= v19))
  {
    [v13 setSeparatorStyle:0];
    v21 = 1;
  }

  else
  {
    v20 = +[CKUIBehavior sharedBehaviors];
    [v13 setSeparatorStyle:{objc_msgSend(v20, "conversationListSeparatorStyle")}];

    v21 = 0;
  }

  v22 = [objc_alloc(MEMORY[0x1E69DD5D0]) initWithListAppearance:0];
  [v22 setTopSeparatorVisibility:2];
  [v13 _setSeparatorConfiguration:v22];
  v23 = CKIsRunningInMacCatalyst();
  if (!v21 || !v23)
  {
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __126__CKConversationListCollectionViewLayout_rowLayoutSectionForEnvironment_withRowHeight_needsPinnedSectionSeparator_forSection___block_invoke;
    v60[3] = &unk_1E72ECC38;
    v60[4] = self;
    [v13 setLeadingSwipeActionsConfigurationProvider:v60];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __126__CKConversationListCollectionViewLayout_rowLayoutSectionForEnvironment_withRowHeight_needsPinnedSectionSeparator_forSection___block_invoke_2;
    v59[3] = &unk_1E72ECC38;
    v59[4] = self;
    [v13 setTrailingSwipeActionsConfigurationProvider:v59];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __126__CKConversationListCollectionViewLayout_rowLayoutSectionForEnvironment_withRowHeight_needsPinnedSectionSeparator_forSection___block_invoke_3;
    v58[3] = &unk_1E72EBA18;
    v58[4] = self;
    [v13 setWillBeginSwipingHandler:v58];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __126__CKConversationListCollectionViewLayout_rowLayoutSectionForEnvironment_withRowHeight_needsPinnedSectionSeparator_forSection___block_invoke_4;
    v57[3] = &unk_1E72EBA18;
    v57[4] = self;
    [v13 setDidEndSwipingHandler:v57];
  }

  [v13 setEstimatedRowHeight:a4];
  [v13 setRowHeight:*MEMORY[0x1E69DE880]];
  [(CKConversationListCollectionViewLayout *)self _leadingSeparatorInsetForEnvironment:v9];
  v25 = v24;
  v26 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v27 = [v26 isConversationListRefreshEnabled];

  v28 = 0.0;
  if (v27)
  {
    v29 = +[CKUIBehavior sharedBehaviors];
    [v29 conversationCellTrailingSeparatorInset];
    v28 = v30;
  }

  [v13 setSeparatorInset:{0.0, v25, 0.0, v28}];
  v31 = [objc_alloc(MEMORY[0x1E69DD3F0]) initWithConfiguration:v13 layoutEnvironment:v9];
  if (v6)
  {
    v32 = [v9 container];
    [v32 effectiveContentSize];
    v34 = v33;
    v36 = v35;

    +[CKPinnedSectionSeparatorView heightWithPadding];
    v37 = [MEMORY[0x1E6995558] absoluteDimension:?];
    [(CKConversationListCollectionViewLayout *)self _edgeToAvatarWidthForPinnedConversationLayoutStyle:[(CKConversationListCollectionViewLayout *)self _pinnedConversationViewLayoutStyleForCollectionViewSize:v34, v36]];
    v39 = v34 + v38 * -2.0;
    if (v39 <= 0.0)
    {
      v40 = 0.0;
      if (IMOSLoggingEnabled())
      {
        v41 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v64 = v39;
          _os_log_impl(&dword_19020E000, v41, OS_LOG_TYPE_INFO, "separatorWidth is %.1f. This should always be >0.0 since it is being used to create an absolute NSCollectionLayoutDimension. Setting to 0.0 to avoid a crash in UIKit.", buf, 0xCu);
        }
      }
    }

    else
    {
      v40 = v34 + v38 * -2.0;
    }

    v42 = [MEMORY[0x1E6995558] absoluteDimension:v40];
    v43 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v42 heightDimension:v37];
    v44 = MEMORY[0x1E6995548];
    v45 = +[CKPinnedSectionSeparatorView reuseIdentifier];
    v46 = [v44 boundarySupplementaryItemWithLayoutSize:v43 elementKind:v45 alignment:5];

    v62 = v46;
    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
    [v31 setBoundarySupplementaryItems:v47];
  }

  if ([(CKConversationListCollectionViewLayout *)self _sectionNeedsRecoverableDisclosureHeader:a6 environment:v9])
  {
    v48 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
    v49 = [MEMORY[0x1E6995558] estimatedDimension:50.0];
    v50 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v48 heightDimension:v49];
    v51 = MEMORY[0x1E6995548];
    v52 = +[CKRecoverableSectionDisclosureView reuseIdentifier];
    v53 = [v51 boundarySupplementaryItemWithLayoutSize:v50 elementKind:v52 alignment:1];

    v61 = v53;
    v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1];
    [v31 setBoundarySupplementaryItems:v54];
  }

  return v31;
}

id __126__CKConversationListCollectionViewLayout_rowLayoutSectionForEnvironment_withRowHeight_needsPinnedSectionSeparator_forSection___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 conversationListController];
  v5 = [v4 leadingSwipeActionsConfigurationForIndexPath:v3];

  return v5;
}

id __126__CKConversationListCollectionViewLayout_rowLayoutSectionForEnvironment_withRowHeight_needsPinnedSectionSeparator_forSection___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 conversationListController];
  v5 = [v4 trailingSwipeActionsConfigurationForIndexPath:v3];

  return v5;
}

void __126__CKConversationListCollectionViewLayout_rowLayoutSectionForEnvironment_withRowHeight_needsPinnedSectionSeparator_forSection___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) conversationListController];
  [v1 setIsShowingSwipeDeleteConfirmation:1];
}

void __126__CKConversationListCollectionViewLayout_rowLayoutSectionForEnvironment_withRowHeight_needsPinnedSectionSeparator_forSection___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) conversationListController];
  [v1 setIsShowingSwipeDeleteConfirmation:0];
}

- (double)_leadingSeparatorInsetForEnvironment:(id)a3
{
  v4 = a3;
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 conversationListCellUsesLargeTextLayout];

  if (!v6)
  {
    v9 = [(CKConversationListCollectionViewLayout *)self conversationListController];
    if ([v9 filterMode] != 9)
    {
      v10 = [(CKConversationListCollectionViewLayout *)self conversationListController];
      if ([v10 filterMode] != 3)
      {
        v13 = [(CKConversationListCollectionViewLayout *)self conversationListController];
        v14 = [v13 filterMode];

        if (v14 != 6)
        {
          v7 = +[CKUIBehavior sharedBehaviors];
          [v7 conversationCellLeadingSeparatorInsetForEnvironment:v4];
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }

LABEL_7:
    v7 = +[CKUIBehavior sharedBehaviors];
    [v7 conversationListCellLeftMargin];
    goto LABEL_8;
  }

  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 conversationListCellLargeTextLeftMargin];
LABEL_8:
  v11 = v8;

  return v11;
}

- (BOOL)_sectionNeedsRecoverableDisclosureHeader:(int64_t)a3 environment:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v8 = [v7 isModernFilteringEnabled];

  if (!v8)
  {
    if (CKIsRunningInMacCatalyst())
    {
      goto LABEL_5;
    }

    if (a3 == 6)
    {
      v20 = [(CKConversationListCollectionViewLayout *)self conversationListController];
      v21 = [v20 isRecentlyDeletedModal];

      if ((v21 & 1) == 0)
      {
        v17 = [(CKConversationListCollectionViewLayout *)self conversationListController];
        if ([v17 filterMode] == 7)
        {
          goto LABEL_11;
        }

        goto LABEL_15;
      }
    }

    else
    {
      if (a3 != 5)
      {
        goto LABEL_5;
      }

      v15 = [(CKConversationListCollectionViewLayout *)self conversationListController];
      v16 = [v15 isOscarModal];

      if ((v16 & 1) == 0)
      {
        v17 = [(CKConversationListCollectionViewLayout *)self conversationListController];
        if ([v17 filterMode] == 9)
        {
LABEL_11:
          v18 = [(CKConversationListCollectionViewLayout *)self conversationListController];
          v19 = [v18 delegate];
          v13 = [v19 isCollapsed];

LABEL_16:
          goto LABEL_6;
        }

LABEL_15:
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = 1;
    goto LABEL_6;
  }

  v9 = [v6 _dataSourceSnapshot];
  v10 = [v9 numberOfItemsInSection:a3];

  if (v10 < 1)
  {
LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v11 = [(CKConversationListCollectionViewLayout *)self conversationListController];
  v12 = [v11 activePrimaryFilterMode];

  v13 = [CKConversationListFilterModeUtilities filterModeShowsDisclosureText:v12];
LABEL_6:

  return v13;
}

- (double)conversationCellHeight
{
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 isAccessibilityPreferredContentSizeCategory];

  if (v5)
  {
    return 0.0;
  }

  v7 = [(CKConversationListCollectionViewLayout *)self conversationListController];
  v8 = [v7 cellLayout];

  if (!v8)
  {
    [(CKConversationListCollectionViewLayout *)self conversationCellHeight];
  }

  v9 = [(CKConversationListCollectionViewLayout *)self conversationListController];
  v10 = [v9 traitCollection];
  [v10 displayScale];
  [v8 cellHeightForDisplayScale:?];
  v12 = v11;

  return v12;
}

- (double)pinnedConversationCellHeightForLayoutStyle:(int64_t)a3 cellWidth:(double)a4
{
  v7 = [(CKConversationListCollectionViewLayout *)self conversationListController];
  v8 = [v7 prototypePinnedConversationCollectionViewCell];

  if (!v8)
  {
    v9 = [CKPinnedConversationCollectionViewCell alloc];
    v8 = [(CKPinnedConversationCollectionViewCell *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v10 = [(CKPinnedConversationCollectionViewCell *)v8 pinnedConversationView];
    [v10 configureAsPrototypeCell];

    v11 = [(CKConversationListCollectionViewLayout *)self conversationListController];
    [v11 setPrototypePinnedConversationCollectionViewCell:v8];
  }

  v12 = [(CKPinnedConversationCollectionViewCell *)v8 pinnedConversationView];
  [v12 setLayoutStyle:a3];

  [(CKPinnedConversationCollectionViewCell *)v8 sizeThatFits:a4, 1.79769313e308];
  v14 = v13;

  return v14;
}

- (int64_t)_numberOfItemsInSection:(unint64_t)a3
{
  v4 = [(CKConversationListCollectionViewLayout *)self conversationListController];
  v5 = [v4 collectionView];
  v6 = [v5 numberOfItemsInSection:a3];

  return v6;
}

- (int64_t)_pinnedConversationViewLayoutStyleForCollectionViewSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (CKIsRunningInMacCatalyst())
  {
    return 5;
  }

  if (width > height)
  {
    return 4;
  }

  if (width < 315.0)
  {
    return 3;
  }

  if (width >= 350.0)
  {
    return width >= 400.0;
  }

  return 2;
}

- (double)_edgeToAvatarWidthForPinnedConversationLayoutStyle:(int64_t)a3
{
  if (a3 > 6)
  {
    return 0.0;
  }

  if (((1 << a3) & 0x3C) != 0)
  {
    return 20.0;
  }

  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 conversationListCellUsesLargeTextLayout];

  v6 = +[CKUIBehavior sharedBehaviors];
  v7 = v6;
  if (v5)
  {
    [v6 conversationListCellLargeTextLeftMargin];
  }

  else
  {
    [v6 conversationListCellLeftMargin];
  }

  v9 = v8;

  return v9;
}

- (void)conversationCellHeight
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 handleFailureInMethod:a2 object:a1 file:@"CKConversationListCollectionViewLayout.m" lineNumber:544 description:{@"%@ needs a cell layout.", v5}];
}

@end