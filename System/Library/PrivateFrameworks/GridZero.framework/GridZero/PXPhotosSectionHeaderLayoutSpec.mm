@interface PXPhotosSectionHeaderLayoutSpec
- (CGSize)chevronSize;
- (PXPhotosSectionHeaderLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options;
- (UIEdgeInsets)padding;
@end

@implementation PXPhotosSectionHeaderLayoutSpec

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)chevronSize
{
  width = self->_chevronSize.width;
  height = self->_chevronSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXPhotosSectionHeaderLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options
{
  collectionCopy = collection;
  v60.receiver = self;
  v60.super_class = PXPhotosSectionHeaderLayoutSpec;
  v7 = [(PXPhotosSectionHeaderLayoutSpec *)&v60 initWithExtendedTraitCollection:collectionCopy options:options];
  if (v7)
  {
    v8 = PXSystemFontOfSizeAndWeight();
    titleFont = v7->_titleFont;
    v7->_titleFont = v8;

    v10 = PXSystemFontOfSizeAndWeight();
    subtitleFont = v7->_subtitleFont;
    v7->_subtitleFont = v10;

    v12 = PXSystemFontOfSizeAndWeight();
    badgeFont = v7->_badgeFont;
    v7->_badgeFont = v12;

    v14 = PXSystemFontOfSizeAndWeight();
    buttonFont = v7->_buttonFont;
    v7->_buttonFont = v14;

    v16 = options & 4;
    v17 = 32.0;
    if ((options & 4) == 0)
    {
      v17 = 26.0;
    }

    v7->_minimumHeaderContentHeight = v17;
    v18 = 35.0;
    if ((options & 4) == 0)
    {
      v18 = 11.0;
    }

    v7->_titleHorizontalInset = v18;
    v7->_titleSubtitleHorizontalSpacing = 5.0;
    v19 = (options & 4) == 0;
    v7->_dividerBaselineToTextBaselineSpacing = 20.0;
    v7->_chevronSpacing = 5.0;
    v7->_chevronSize = xmmword_21AC7D590;
    v7->_buttonSpacing = 7.0;
    v20 = +[PXPhotosGridSettings sharedInstance];
    [v20 sectionHeaderGradientAlpha];
    v7->_gradientAlpha = v21;

    v22 = +[PXPhotosGridSettings sharedInstance];
    [v22 sectionHeaderGradientOverhang];
    v7->_gradientOverhang = v23;

    v7->_dividerLineVisible = v19;
    v7->_minimizeTitleBottomPadding = v16 >> 2;
    v7->_filterButtonLayoutForSearch = v16 >> 2;
    v7->_titleShouldFadeOnScroll = v19;
    traitCollection = [collectionCopy traitCollection];
    quaternaryLabelColor = [MEMORY[0x277D75348] quaternaryLabelColor];
    v26 = quaternaryLabelColor;
    if (traitCollection)
    {
      v27 = [(UIColor *)quaternaryLabelColor resolvedColorWithTraitCollection:traitCollection];
      dividerColor = v7->_dividerColor;
      v7->_dividerColor = v27;

      labelColor = [MEMORY[0x277D75348] labelColor];
      v30 = [labelColor resolvedColorWithTraitCollection:traitCollection];
      titleColor = v7->_titleColor;
      v7->_titleColor = v30;

      secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
      v33 = [secondaryLabelColor resolvedColorWithTraitCollection:traitCollection];
      subtitleColor = v7->_subtitleColor;
      v7->_subtitleColor = v33;
    }

    else
    {
      v35 = v7->_dividerColor;
      v7->_dividerColor = quaternaryLabelColor;

      labelColor2 = [MEMORY[0x277D75348] labelColor];
      v37 = v7->_titleColor;
      v7->_titleColor = labelColor2;

      secondaryLabelColor2 = [MEMORY[0x277D75348] secondaryLabelColor];
      secondaryLabelColor = v7->_subtitleColor;
      v7->_subtitleColor = secondaryLabelColor2;
    }

    v39 = [MEMORY[0x277D75348] colorWithRed:0.2 green:0.47 blue:0.96 alpha:1.0];
    badgeColor = v7->_badgeColor;
    v7->_badgeColor = v39;

    v41 = [MEMORY[0x277D75348] colorWithRed:0.2 green:0.47 blue:0.96 alpha:1.0];
    buttonColor = v7->_buttonColor;
    v7->_buttonColor = v41;

    if (v16)
    {
      [collectionCopy userInterfaceIdiom];
    }

    PXEdgeInsetsMake();
    v7->_padding.top = v43;
    v7->_padding.left = v44;
    v7->_padding.bottom = v45;
    v7->_padding.right = v46;
    userInterfaceStyle = [collectionCopy userInterfaceStyle];
    v48 = objc_alloc(MEMORY[0x277D3CD38]);
    v49 = PXPhotosUIFoundationBundle();
    if (userInterfaceStyle == 2)
    {
      v50 = @"PXLeadingChevronWhite";
    }

    else
    {
      v50 = @"PXLeadingChevron";
    }

    v51 = dbl_21AC7D5A0[userInterfaceStyle == 2];
    v52 = [v48 initWithImageName:v50 inBundle:v49];
    chevronImageConfiguration = v7->_chevronImageConfiguration;
    v7->_chevronImageConfiguration = v52;

    v7->_chevronAlpha = v51;
    v54 = objc_alloc(MEMORY[0x277D3CD38]);
    v55 = PXPhotosUIFoundationBundle();
    v56 = [v54 initWithImageName:@"PXHeaderGradient" inBundle:v55];
    legibilityGradientImageConfiguration = v7->_legibilityGradientImageConfiguration;
    v7->_legibilityGradientImageConfiguration = v56;

    [collectionCopy contentSizeCategory];
    if (PXPreferredContentSizeCategoryIsAccessibility())
    {
      v58 = 0x4041000000000000;
    }

    else
    {
      PXVisionScaledFloat();
    }

    *&v7->_buttonHeight = v58;
  }

  return v7;
}

@end