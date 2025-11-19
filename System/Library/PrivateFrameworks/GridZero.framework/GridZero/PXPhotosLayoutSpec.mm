@interface PXPhotosLayoutSpec
- (PXPhotosLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 gridStyle:(int64_t)a5 backgroundStyle:(int64_t)a6 wantsToggleSidebarButton:(BOOL)a7 shouldMakeSpaceForLeadingChrome:(BOOL)a8 hasPhysicalHomeButton:(BOOL)a9 dynamicHeaderHeight:(double)a10 overrideDefaultNumberOfColumns:(int64_t)a11;
- (PXPhotosSectionHeaderLayoutSpec)sectionHeaderSpec;
- (id)assetsSectionLayoutSpec:(id)a3 createSectionConfiguratorForType:(int64_t)a4;
- (void)configureScrollSnapController:(id)a3;
@end

@implementation PXPhotosLayoutSpec

- (id)assetsSectionLayoutSpec:(id)a3 createSectionConfiguratorForType:(int64_t)a4
{
  v5 = a3;
  if (a4)
  {
    v6 = PXAssertGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v11 = 0;
      _os_log_fault_impl(&dword_21ABF3000, v6, OS_LOG_TYPE_FAULT, "Non-grid configurators are not supported outside of curated library", v11, 2u);
    }

    v7 = 0;
  }

  else
  {
    v8 = [PXAssetsSectionGridConfigurator alloc];
    v9 = [v5 extendedTraitCollection];
    v7 = [(PXAssetsSectionConfigurator *)v8 initWithExtendedTraitCollection:v9 assetsSectionLayoutSpec:v5];
  }

  return v7;
}

- (void)configureScrollSnapController:(id)a3
{
  v4 = a3;
  [v4 setSnapBehavior:{-[PXPhotosLayoutSpec scrollSnapBehavior](self, "scrollSnapBehavior")}];
  [(PXPhotosLayoutSpec *)self scrollSnapMaximumDecelerationFactor];
  [v4 setMaximumDecelerationFactor:?];
  [(PXPhotosLayoutSpec *)self scrollSnapMaximumAccelerationFactor];
  [v4 setMaximumAccelerationFactor:?];
}

- (PXPhotosSectionHeaderLayoutSpec)sectionHeaderSpec
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPhotosLayoutSpec.m" lineNumber:194 description:@"Section header spec accessed on invalid parent spec (not configured for section headers)"];

  abort();
}

- (PXPhotosLayoutSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 gridStyle:(int64_t)a5 backgroundStyle:(int64_t)a6 wantsToggleSidebarButton:(BOOL)a7 shouldMakeSpaceForLeadingChrome:(BOOL)a8 hasPhysicalHomeButton:(BOOL)a9 dynamicHeaderHeight:(double)a10 overrideDefaultNumberOfColumns:(int64_t)a11
{
  v11 = a8;
  v17 = a3;
  v97.receiver = self;
  v97.super_class = PXPhotosLayoutSpec;
  v18 = [(PXPhotosLayoutSpec *)&v97 initWithExtendedTraitCollection:v17 options:a4];
  if (!v18)
  {
    goto LABEL_77;
  }

  v95 = v11;
  v93 = a6;
  v19 = +[PXPhotosGridSettings sharedInstance];
  v18->_preferredUserInterfaceStyle = 0;
  v20 = 0;
  if (([(PXPhotosLayoutSpec *)v18 options]& 2) == 0)
  {
    v21 = [PXZoomablePhotosLayoutSpec alloc];
    v20 = [(PXZoomablePhotosLayoutSpec *)v21 initWithExtendedTraitCollection:v17 options:a4 availableThumbnailSizes:0 gridStyle:a5 itemAspectRatio:0 userDefaults:0 forceSaliency:1.0 preferredUserInterfaceStyle:*MEMORY[0x277D3CF90] additionalAspectFitEdgeMargins:*(MEMORY[0x277D3CF90] + 8) overrideDefaultNumberOfColumns:*(MEMORY[0x277D3CF90] + 16), *(MEMORY[0x277D3CF90] + 24), v18->_preferredUserInterfaceStyle, a11];
  }

  v94 = a7;
  v96 = a5;
  v22 = [PXAssetsSectionLayoutSpec alloc];
  [(PXZoomablePhotosLayoutSpec *)v20 itemCornerRadius];
  v23 = [(PXAssetsSectionLayoutSpec *)v22 initWithExtendedTraitCollection:v17 options:a4 variant:0 itemCornerRadius:v20 zoomableSpec:?];
  assetsSpec = v18->_assetsSpec;
  v18->_assetsSpec = v23;

  [(PXAssetsSectionLayoutSpec *)v18->_assetsSpec setConfiguratorSource:v18];
  v25 = [v17 userInterfaceIdiom] == 3;
  v18->_isTV = v25;
  v18->_allowsEmptyTitles = v25;
  v26 = [v17 headerCustomizationModel];
  v27 = v26;
  if (v26 && [v26 shouldUseTextStyles])
  {
    v28 = [v27 titleTextStyle];
    v29 = [v27 subtitleTextStyle];
  }

  else
  {
    if (v18->_isTV)
    {
      v28 = 5;
    }

    else
    {
      v28 = 3;
    }

    if (v18->_isTV)
    {
      v29 = 9;
    }

    else
    {
      v29 = 6;
    }
  }

  [v17 layoutMargins];
  v18->_headerTitleLeadingSpacing = v30;
  v31 = 10.0;
  if (v18->_isTV)
  {
    v31 = 20.0;
  }

  v18->_headerTitleButtonAlignmentSpacing = v31;
  [v19 headerTitleTopSpacing];
  v18->_headerTitleTopSpacing = v32;
  [v19 headerTitleBottomSpacing];
  v18->_headerTitleBottomSpacing = v33;
  v34 = MEMORY[0x21CEDFEF0](v28, 32770, 0);
  headerTitleFont = v18->_headerTitleFont;
  v18->_headerTitleFont = v34;

  v36 = MEMORY[0x21CEDFEF0](v29, 32770, 0);
  headerSubtitleFont = v18->_headerSubtitleFont;
  v18->_headerSubtitleFont = v36;

  v38 = [(PXPhotosLayoutSpec *)v18 userInterfaceIdiom];
  if (v38 != 5)
  {
    v39 = MEMORY[0x21CEE04B0]();
    v40 = 44.0;
    if (v39)
    {
      v40 = 66.0;
    }

    v18->_topChromeHeight = v40;
    if ([v17 layoutSizeClass] == 1)
    {
      [v17 peripheryInsets];
      v42 = v41;
      [v17 peripheryInsets];
      v44 = v43;
      [v17 peripheryInsets];
      if (v44 >= v45)
      {
        v46 = v44;
      }

      else
      {
        v46 = v45;
      }

      if (v42 >= v46)
      {
        v46 = v42;
      }

      if (v46 <= 40.0)
      {
        goto LABEL_17;
      }

      v47 = 0x4016000000000000;
    }

    else
    {
      v47 = 0xC000000000000000;
    }

    *&v18->_topChromeTitleTopPadding = v47;
    goto LABEL_30;
  }

  v18->_topChromeHeight = 92.0;
LABEL_17:
  v18->_topChromeTitleTopPadding = 0.0;
LABEL_30:
  v48 = [v17 traitCollection];
  v49 = v48;
  if (v18->_isTV || !v48)
  {
    if ([v17 userInterfaceStyle] == 2)
    {
      [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      [MEMORY[0x277D75348] blackColor];
    }
    v50 = ;
    headerTitleOverBackgroundColor = v18->_headerTitleOverBackgroundColor;
    v18->_headerTitleOverBackgroundColor = v50;
  }

  else
  {
    v50 = [MEMORY[0x277D75348] labelColor];
    v51 = [(UIColor *)v50 resolvedColorWithTraitCollection:v49];
    headerTitleOverBackgroundColor = v18->_headerTitleOverBackgroundColor;
    v18->_headerTitleOverBackgroundColor = v51;
  }

  v53 = [MEMORY[0x277D75348] whiteColor];
  headerTitleOverContentColor = v18->_headerTitleOverContentColor;
  v18->_headerTitleOverContentColor = v53;

  v18->_wantsToggleSidebarButton = v94;
  v55 = 60.0;
  v56 = 0.0;
  if (!v95)
  {
    v55 = 0.0;
  }

  v18->_topTrailingChromeWidth = v55;
  v57 = [v49 horizontalSizeClass] == 1 || a9;
  v58 = 10.0;
  if (!v57)
  {
    v58 = 0.0;
  }

  v18->_aspectFitContentVerticalPadding = v58;
  v59 = 168.0;
  if (!v18->_isTV)
  {
    v59 = 0.0;
  }

  v18->_squareContentVerticalPadding = v59;
  v18->_interSectionSpacing = 10.0;
  v60 = [v17 layoutSizeClass];
  v61 = 12.0;
  if (v60 == 1)
  {
    v61 = 8.0;
  }

  v18->_interButtonSpacing = v61;
  v18->_interPageSpacing = 10.0;
  if ((MEMORY[0x21CEE04B0]() & 1) == 0 && v38 != 5)
  {
    if ([(PXPhotosLayoutSpec *)v18 userInterfaceFeature]== 6)
    {
      goto LABEL_56;
    }

    [(PXPhotosLayoutSpec *)v18 curatedLibraryEdgeToEdgeContentDefaultPadding];
    v63 = v62;
    [v17 layoutMargins];
    if (v63 - v64 >= 0.0)
    {
      v65 = v63 - v64;
    }

    else
    {
      v65 = 0.0;
    }

    [v17 displayScale];
    v56 = v66 * v65;
  }

  v18->_endButtonSpacing = v56;
LABEL_56:
  v18->_prefersSpacingBetweenBarButtonItems = [(PXPhotosLayoutSpec *)v18 userInterfaceIdiom]== 1;
  v18->_backgroundGradientCornerRadius = 0.0;
  v67 = [v19 enableTitleLegibilityDimmingFilter];
  v68 = @"PXHeaderGradient";
  if (v67)
  {
    v68 = @"PXHeaderGradient2";
  }

  v69 = MEMORY[0x277D3CD38];
  v70 = v68;
  v71 = [v69 alloc];
  v72 = PXPhotosUIFoundationBundle();
  v73 = [v71 initWithImageName:v70 inBundle:v72];

  backgroundGradientImageConfiguration = v18->_backgroundGradientImageConfiguration;
  v18->_backgroundGradientImageConfiguration = v73;

  v75 = objc_alloc(MEMORY[0x277D3CD38]);
  v76 = PXPhotosUIFoundationBundle();
  v77 = [v75 initWithImageName:@"PXHeaderGradientBehindContent" inBundle:v76];
  behindContentBackgroundGradientImageConfiguration = v18->_behindContentBackgroundGradientImageConfiguration;
  v18->_behindContentBackgroundGradientImageConfiguration = v77;

  v18->_scrollSnapBehavior = 0;
  [v19 scrollSnapMaximumDecelerationFactor];
  v18->_scrollSnapMaximumDecelerationFactor = v79;
  [v19 scrollSnapMaximumAccelerationFactor];
  v18->_scrollSnapMaximumAccelerationFactor = v80;
  v18->_wantsShowAllButtonsInSectionFooters = [v19 enableShowMoreButtonsInEditorialLens];
  v81 = [v17 preferredBackgroundStyle];
  if (v81 == 2)
  {
    v82 = [MEMORY[0x277D75348] blackColor];
  }

  else if (v81 == 1)
  {
    v82 = [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    if (v81)
    {
      goto LABEL_65;
    }

    v82 = [MEMORY[0x277D75348] clearColor];
  }

  contentBackgroundColor = v18->_contentBackgroundColor;
  v18->_contentBackgroundColor = v82;

LABEL_65:
  v84 = 0.0;
  if (!v18->_isTV)
  {
    if ([(PXPhotosLayoutSpec *)v18 userInterfaceStyle]== 2)
    {
      v85 = 1;
    }

    else
    {
      v86 = +[PXPhotosGridSettings sharedInstance];
      v85 = [v86 forceDarkDetailsView];
    }

    v87 = (v93 - 1) < 2 ? 1 : v85;
    v84 = 1.0;
    if (v87)
    {
      v84 = 0.0;
    }
  }

  v18->_contentBackgroundOpacity = v84;
  if (v96 == 3)
  {
    v18->_contentUnavailablePlaceholderDisablesVerticalBounce = 1;
    v88 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    placeholderFont = v18->_placeholderFont;
    v18->_placeholderFont = v88;

    v90 = [MEMORY[0x277D75348] systemGrayColor];
    placeholderFontColor = v18->_placeholderFontColor;
    v18->_placeholderFontColor = v90;
  }

  v18->_globalHeaderBackgroundShouldRespectSafeAreaInsets = [v17 userInterfaceIdiom] == 2;

LABEL_77:
  return v18;
}

@end