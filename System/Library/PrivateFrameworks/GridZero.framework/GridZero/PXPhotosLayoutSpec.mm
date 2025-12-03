@interface PXPhotosLayoutSpec
- (PXPhotosLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options gridStyle:(int64_t)style backgroundStyle:(int64_t)backgroundStyle wantsToggleSidebarButton:(BOOL)button shouldMakeSpaceForLeadingChrome:(BOOL)chrome hasPhysicalHomeButton:(BOOL)homeButton dynamicHeaderHeight:(double)self0 overrideDefaultNumberOfColumns:(int64_t)self1;
- (PXPhotosSectionHeaderLayoutSpec)sectionHeaderSpec;
- (id)assetsSectionLayoutSpec:(id)spec createSectionConfiguratorForType:(int64_t)type;
- (void)configureScrollSnapController:(id)controller;
@end

@implementation PXPhotosLayoutSpec

- (id)assetsSectionLayoutSpec:(id)spec createSectionConfiguratorForType:(int64_t)type
{
  specCopy = spec;
  if (type)
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
    extendedTraitCollection = [specCopy extendedTraitCollection];
    v7 = [(PXAssetsSectionConfigurator *)v8 initWithExtendedTraitCollection:extendedTraitCollection assetsSectionLayoutSpec:specCopy];
  }

  return v7;
}

- (void)configureScrollSnapController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setSnapBehavior:{-[PXPhotosLayoutSpec scrollSnapBehavior](self, "scrollSnapBehavior")}];
  [(PXPhotosLayoutSpec *)self scrollSnapMaximumDecelerationFactor];
  [controllerCopy setMaximumDecelerationFactor:?];
  [(PXPhotosLayoutSpec *)self scrollSnapMaximumAccelerationFactor];
  [controllerCopy setMaximumAccelerationFactor:?];
}

- (PXPhotosSectionHeaderLayoutSpec)sectionHeaderSpec
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosLayoutSpec.m" lineNumber:194 description:@"Section header spec accessed on invalid parent spec (not configured for section headers)"];

  abort();
}

- (PXPhotosLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options gridStyle:(int64_t)style backgroundStyle:(int64_t)backgroundStyle wantsToggleSidebarButton:(BOOL)button shouldMakeSpaceForLeadingChrome:(BOOL)chrome hasPhysicalHomeButton:(BOOL)homeButton dynamicHeaderHeight:(double)self0 overrideDefaultNumberOfColumns:(int64_t)self1
{
  chromeCopy = chrome;
  collectionCopy = collection;
  v97.receiver = self;
  v97.super_class = PXPhotosLayoutSpec;
  v18 = [(PXPhotosLayoutSpec *)&v97 initWithExtendedTraitCollection:collectionCopy options:options];
  if (!v18)
  {
    goto LABEL_77;
  }

  v95 = chromeCopy;
  backgroundStyleCopy = backgroundStyle;
  v19 = +[PXPhotosGridSettings sharedInstance];
  v18->_preferredUserInterfaceStyle = 0;
  columns = 0;
  if (([(PXPhotosLayoutSpec *)v18 options]& 2) == 0)
  {
    v21 = [PXZoomablePhotosLayoutSpec alloc];
    columns = [(PXZoomablePhotosLayoutSpec *)v21 initWithExtendedTraitCollection:collectionCopy options:options availableThumbnailSizes:0 gridStyle:style itemAspectRatio:0 userDefaults:0 forceSaliency:1.0 preferredUserInterfaceStyle:*MEMORY[0x277D3CF90] additionalAspectFitEdgeMargins:*(MEMORY[0x277D3CF90] + 8) overrideDefaultNumberOfColumns:*(MEMORY[0x277D3CF90] + 16), *(MEMORY[0x277D3CF90] + 24), v18->_preferredUserInterfaceStyle, columns];
  }

  buttonCopy = button;
  styleCopy = style;
  v22 = [PXAssetsSectionLayoutSpec alloc];
  [(PXZoomablePhotosLayoutSpec *)columns itemCornerRadius];
  v23 = [(PXAssetsSectionLayoutSpec *)v22 initWithExtendedTraitCollection:collectionCopy options:options variant:0 itemCornerRadius:columns zoomableSpec:?];
  assetsSpec = v18->_assetsSpec;
  v18->_assetsSpec = v23;

  [(PXAssetsSectionLayoutSpec *)v18->_assetsSpec setConfiguratorSource:v18];
  v25 = [collectionCopy userInterfaceIdiom] == 3;
  v18->_isTV = v25;
  v18->_allowsEmptyTitles = v25;
  headerCustomizationModel = [collectionCopy headerCustomizationModel];
  v27 = headerCustomizationModel;
  if (headerCustomizationModel && [headerCustomizationModel shouldUseTextStyles])
  {
    titleTextStyle = [v27 titleTextStyle];
    subtitleTextStyle = [v27 subtitleTextStyle];
  }

  else
  {
    if (v18->_isTV)
    {
      titleTextStyle = 5;
    }

    else
    {
      titleTextStyle = 3;
    }

    if (v18->_isTV)
    {
      subtitleTextStyle = 9;
    }

    else
    {
      subtitleTextStyle = 6;
    }
  }

  [collectionCopy layoutMargins];
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
  v34 = MEMORY[0x21CEDFEF0](titleTextStyle, 32770, 0);
  headerTitleFont = v18->_headerTitleFont;
  v18->_headerTitleFont = v34;

  v36 = MEMORY[0x21CEDFEF0](subtitleTextStyle, 32770, 0);
  headerSubtitleFont = v18->_headerSubtitleFont;
  v18->_headerSubtitleFont = v36;

  userInterfaceIdiom = [(PXPhotosLayoutSpec *)v18 userInterfaceIdiom];
  if (userInterfaceIdiom != 5)
  {
    v39 = MEMORY[0x21CEE04B0]();
    v40 = 44.0;
    if (v39)
    {
      v40 = 66.0;
    }

    v18->_topChromeHeight = v40;
    if ([collectionCopy layoutSizeClass] == 1)
    {
      [collectionCopy peripheryInsets];
      v42 = v41;
      [collectionCopy peripheryInsets];
      v44 = v43;
      [collectionCopy peripheryInsets];
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
  traitCollection = [collectionCopy traitCollection];
  v49 = traitCollection;
  if (v18->_isTV || !traitCollection)
  {
    if ([collectionCopy userInterfaceStyle] == 2)
    {
      [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      [MEMORY[0x277D75348] blackColor];
    }
    labelColor = ;
    headerTitleOverBackgroundColor = v18->_headerTitleOverBackgroundColor;
    v18->_headerTitleOverBackgroundColor = labelColor;
  }

  else
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
    v51 = [(UIColor *)labelColor resolvedColorWithTraitCollection:v49];
    headerTitleOverBackgroundColor = v18->_headerTitleOverBackgroundColor;
    v18->_headerTitleOverBackgroundColor = v51;
  }

  whiteColor = [MEMORY[0x277D75348] whiteColor];
  headerTitleOverContentColor = v18->_headerTitleOverContentColor;
  v18->_headerTitleOverContentColor = whiteColor;

  v18->_wantsToggleSidebarButton = buttonCopy;
  v55 = 60.0;
  v56 = 0.0;
  if (!v95)
  {
    v55 = 0.0;
  }

  v18->_topTrailingChromeWidth = v55;
  v57 = [v49 horizontalSizeClass] == 1 || homeButton;
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
  layoutSizeClass = [collectionCopy layoutSizeClass];
  v61 = 12.0;
  if (layoutSizeClass == 1)
  {
    v61 = 8.0;
  }

  v18->_interButtonSpacing = v61;
  v18->_interPageSpacing = 10.0;
  if ((MEMORY[0x21CEE04B0]() & 1) == 0 && userInterfaceIdiom != 5)
  {
    if ([(PXPhotosLayoutSpec *)v18 userInterfaceFeature]== 6)
    {
      goto LABEL_56;
    }

    [(PXPhotosLayoutSpec *)v18 curatedLibraryEdgeToEdgeContentDefaultPadding];
    v63 = v62;
    [collectionCopy layoutMargins];
    if (v63 - v64 >= 0.0)
    {
      v65 = v63 - v64;
    }

    else
    {
      v65 = 0.0;
    }

    [collectionCopy displayScale];
    v56 = v66 * v65;
  }

  v18->_endButtonSpacing = v56;
LABEL_56:
  v18->_prefersSpacingBetweenBarButtonItems = [(PXPhotosLayoutSpec *)v18 userInterfaceIdiom]== 1;
  v18->_backgroundGradientCornerRadius = 0.0;
  enableTitleLegibilityDimmingFilter = [v19 enableTitleLegibilityDimmingFilter];
  v68 = @"PXHeaderGradient";
  if (enableTitleLegibilityDimmingFilter)
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
  preferredBackgroundStyle = [collectionCopy preferredBackgroundStyle];
  if (preferredBackgroundStyle == 2)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  else if (preferredBackgroundStyle == 1)
  {
    blackColor = [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    if (preferredBackgroundStyle)
    {
      goto LABEL_65;
    }

    blackColor = [MEMORY[0x277D75348] clearColor];
  }

  contentBackgroundColor = v18->_contentBackgroundColor;
  v18->_contentBackgroundColor = blackColor;

LABEL_65:
  v84 = 0.0;
  if (!v18->_isTV)
  {
    if ([(PXPhotosLayoutSpec *)v18 userInterfaceStyle]== 2)
    {
      forceDarkDetailsView = 1;
    }

    else
    {
      v86 = +[PXPhotosGridSettings sharedInstance];
      forceDarkDetailsView = [v86 forceDarkDetailsView];
    }

    v87 = (backgroundStyleCopy - 1) < 2 ? 1 : forceDarkDetailsView;
    v84 = 1.0;
    if (v87)
    {
      v84 = 0.0;
    }
  }

  v18->_contentBackgroundOpacity = v84;
  if (styleCopy == 3)
  {
    v18->_contentUnavailablePlaceholderDisablesVerticalBounce = 1;
    v88 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    placeholderFont = v18->_placeholderFont;
    v18->_placeholderFont = v88;

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    placeholderFontColor = v18->_placeholderFontColor;
    v18->_placeholderFontColor = systemGrayColor;
  }

  v18->_globalHeaderBackgroundShouldRespectSafeAreaInsets = [collectionCopy userInterfaceIdiom] == 2;

LABEL_77:
  return v18;
}

@end