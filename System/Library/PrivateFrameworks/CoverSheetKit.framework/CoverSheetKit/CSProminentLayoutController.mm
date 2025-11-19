@interface CSProminentLayoutController
+ (CGRect)_mainDisplayBoundsForInterfaceOrientation:(int64_t)a3;
+ (CGRect)adaptiveTimeFrameForContext:(id)a3 timeHeight:(double)a4;
+ (CGRect)boundsForElements:(unint64_t)a3;
+ (CGRect)boundsForElements:(unint64_t)a3 variant:(unint64_t)a4;
+ (CGRect)editingBoundsForElements:(unint64_t)a3;
+ (CGRect)editingFrameForElements:(unint64_t)a3;
+ (CGRect)frameForElements:(unint64_t)a3;
+ (CGRect)frameForElements:(unint64_t)a3 variant:(unint64_t)a4;
+ (CGRect)frameForElements:(unint64_t)a3 variant:(unint64_t)a4 forcePortraitBounds:(BOOL)a5;
+ (CGRect)frameForElements:(unint64_t)a3 variant:(unint64_t)a4 interfaceOrientation:(int64_t)a5;
+ (CGRect)tightBoundsForElements:(unint64_t)a3;
+ (CGRect)tightFrameForElements:(unint64_t)a3;
+ (double)_landscapeReductionFactor;
+ (double)_maximumTimeElementFontSize;
+ (double)_minimumTimeElementFontSize;
+ (double)_safeAreaTopInset:(unint64_t)a3;
+ (double)_subtitleElementBoundingTopY;
+ (double)_subtitleElementFontSize;
+ (double)_timeAscenderTopYAdjustment;
+ (double)_timeElementBoundingTopY;
+ (double)_timeElementFontSize;
+ (double)_timeElementPadFromSubtitleForOrientation:(int64_t)a3;
+ (double)_timeElementTightBoundingTopYForOrientation:(int64_t)a3;
+ (double)_timeTightBoundingHeight;
+ (double)adaptiveTimeWidthInsetForOrientation:(int64_t)a3 deviceCategory:(unint64_t)a4 hasSidebarContents:(BOOL)a5 boundingWidth:(double)a6;
+ (double)complicationElementBoundingTopY;
+ (double)complicationElementEditingReticleInset;
+ (double)fontSizeForElementType:(unint64_t)a3 isLandscapeVariant:(BOOL)a4;
+ (double)fontWeightForElementType:(unint64_t)a3;
+ (double)fontWeightForElementType:(unint64_t)a3 familyName:(id)a4;
+ (double)landscapePadSubtitleElementBoundingTopY;
+ (double)leadingLandscapeLayoutInset;
+ (double)leadingPortraitLayoutInset;
+ (double)maximumAdaptiveFontSizeForElementType:(unint64_t)a3 isLandscapeVariant:(BOOL)a4;
+ (double)minimumAdaptiveFontSizeForElementType:(unint64_t)a3 isLandscapeVariant:(BOOL)a4;
+ (double)reticlePortraitLayoutInset;
+ (double)reticleSpacing;
+ (double)timeElementBoundingHeight;
+ (double)timeElementReticleInset;
+ (id)_timeMeasurementFontProvider;
+ (id)_timeMeasurementFontProviderPrimedForContext:(id)a3 measurementBoundingRect:(CGRect *)a4;
+ (void)minimumAndMaximumAdaptiveTimeHeightForContext:(id)a3 result:(id)a4;
- (BOOL)shouldCenterElementsInBoundingRect:(CGRect)a3;
- (CGRect)_frameForElement:(unint64_t)a3 withBoundingRect:(CGRect)a4;
- (CGRect)_frameForElement:(unint64_t)a3 withBoundingRect:(CGRect)a4 variant:(unint64_t)a5;
- (CGRect)_quickActionLeadingElementEditingReticleFrameWithBoundingRect:(CGRect)a3;
- (CGRect)_quickActionTrailingElementEditingReticleFrameWithBoundingRect:(CGRect)a3;
- (CGRect)_quickActionsFrameWithMinX:(double)a3 boundingRect:(CGRect)a4;
- (CGRect)_quickActionsLeadingFrameWithBoundingRect:(CGRect)a3;
- (CGRect)_quickActionsTrailingFrameWithBoundingRect:(CGRect)a3;
- (CGRect)boundsForElements:(unint64_t)a3 variant:(unint64_t)a4 withBoundingRect:(CGRect)a5;
- (CGRect)boundsForElements:(unint64_t)a3 withBoundingRect:(CGRect)a4;
- (CGRect)complicationBottomRowElementEditingReticleFrameWithBoundingRect:(CGRect)a3;
- (CGRect)complicationRowElementEditingReticleFrameWithBoundingRect:(CGRect)a3;
- (CGRect)complicationSidebarElementEditingReticleFrameWithBoundingRect:(CGRect)a3;
- (CGRect)editingBoundsForElements:(unint64_t)a3 withBoundingRect:(CGRect)a4;
- (CGRect)editingFrameForElements:(unint64_t)a3 withBoundingRect:(CGRect)a4;
- (CGRect)editingNormalizedBoundsForElements:(unint64_t)a3 inBoundingRect:(CGRect)a4;
- (CGRect)editingNormalizedFrameForElements:(unint64_t)a3 inBoundingRect:(CGRect)a4;
- (CGRect)editingReticleFrameForElement:(unint64_t)a3 withBoundingRect:(CGRect)result;
- (CGRect)elementHorizontalFrameInBoundingRect:(CGRect)a3 forElementType:(unint64_t)a4;
- (CGRect)frameForElements:(unint64_t)a3 variant:(unint64_t)a4 withBoundingRect:(CGRect)a5;
- (CGRect)frameForElements:(unint64_t)a3 withBoundingRect:(CGRect)a4;
- (CGRect)normalizedBoundsForElements:(unint64_t)a3 inBoundingRect:(CGRect)a4;
- (CGRect)normalizedBoundsForElements:(unint64_t)a3 variant:(unint64_t)a4 inBoundingRect:(CGRect)a5;
- (CGRect)normalizedFrameForElements:(unint64_t)a3 inBoundingRect:(CGRect)a4;
- (CGRect)normalizedFrameForElements:(unint64_t)a3 variant:(unint64_t)a4 inBoundingRect:(CGRect)a5;
- (CGRect)subtitleElementEditingReticleFrameWithBoundingRect:(CGRect)a3;
- (CGRect)tightBoundsForElements:(unint64_t)a3 withBoundingRect:(CGRect)a4;
- (CGRect)tightFrameForElements:(unint64_t)a3 withBoundingRect:(CGRect)a4;
- (CGRect)tightNormalizedBoundsForElements:(unint64_t)a3 inBoundingRect:(CGRect)a4;
- (CGRect)tightNormalizedFrameForElements:(unint64_t)a3 inBoundingRect:(CGRect)a4;
- (CGRect)timeElementEditingReticleFrameWithBoundingRect:(CGRect)a3;
- (CSProminentLayoutController)initWithTraitEnvironment:(id)a3;
- (UITraitEnvironment)traitEnvironment;
- (double)_complicationRowHorizontalReticleInsetWithBoundingRect:(CGRect)a3;
- (double)_complicationRowVerticalReticleInsetWithBoundingRect:(CGRect)a3;
- (double)_padElementWidth;
- (double)complicationElementEditingOffsetWithBoundingRect:(CGRect)a3;
- (double)leadingLandscapeLayoutInset;
- (double)leadingPortraitLayoutInset;
- (double)padTimeElementBoundingWidth;
- (double)subtitleElementEditingOffsetWithBoundingRect:(CGRect)a3;
- (double)subtitleElementTightBoundingHeight;
@end

@implementation CSProminentLayoutController

- (UITraitEnvironment)traitEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_traitEnvironment);

  return WeakRetained;
}

- (double)leadingPortraitLayoutInset
{
  v2 = objc_opt_class();

  [v2 leadingPortraitLayoutInset];
  return result;
}

+ (double)leadingPortraitLayoutInset
{
  v2 = +[CSDeviceDetermination effectiveCategory];
  result = 0.0;
  if (v2 <= 0x16)
  {
    return dbl_1A2DA4180[v2];
  }

  return result;
}

- (double)leadingLandscapeLayoutInset
{
  v2 = objc_opt_class();

  [v2 leadingLandscapeLayoutInset];
  return result;
}

+ (double)leadingLandscapeLayoutInset
{
  v2 = +[CSDeviceDetermination effectiveCategory];
  result = 0.0;
  if (v2 <= 0x16)
  {
    return dbl_1A2DA40C8[v2];
  }

  return result;
}

+ (double)timeElementBoundingHeight
{
  v2 = +[CSDeviceDetermination effectiveCategory];
  if (v2 - 2 > 0x1F)
  {
    return 100.0;
  }

  else
  {
    return dbl_1A2DA3D28[v2 - 2];
  }
}

+ (double)_timeElementBoundingTopY
{
  v3 = +[CSDeviceDetermination effectiveCategory];
  result = 63.0;
  switch(v3)
  {
    case 0uLL:
    case 1uLL:
    case 0xCuLL:
    case 0xEuLL:
      return result;
    case 2uLL:
      v8 = 62.0;
      goto LABEL_21;
    case 3uLL:
      return 81.0;
    case 4uLL:
    case 8uLL:
    case 9uLL:
    case 0x11uLL:
      [a1 _safeAreaTopInset:{v3, 63.0}];
      *&v6 = 46.0;
      goto LABEL_14;
    case 5uLL:
    case 7uLL:
      [a1 _safeAreaTopInset:{v3, 63.0}];
      v7 = 59.0;
      goto LABEL_15;
    case 6uLL:
      v8 = 92.0;
      goto LABEL_21;
    case 0xAuLL:
      [a1 _safeAreaTopInset:{10, 63.0}];
      v7 = 49.0;
      goto LABEL_15;
    case 0xBuLL:
      [a1 _safeAreaTopInset:{11, 63.0}];
      *&v6 = 56.0;
      goto LABEL_14;
    case 0xDuLL:
      [a1 _safeAreaTopInset:{13, 63.0}];
      v7 = 39.666666;
      goto LABEL_15;
    case 0xFuLL:
      [a1 _safeAreaTopInset:{15, 63.0}];
      v7 = 43.0;
      goto LABEL_15;
    case 0x10uLL:
      [a1 _safeAreaTopInset:{16, 63.0}];
      *&v6 = 40.0;
LABEL_14:
      v7 = *&v6;
      goto LABEL_15;
    case 0x12uLL:
      [a1 _safeAreaTopInset:{18, 63.0}];
      v7 = 61.0;
      goto LABEL_15;
    case 0x13uLL:
    case 0x15uLL:
      v8 = 68.0;
      goto LABEL_21;
    case 0x14uLL:
      [a1 _safeAreaTopInset:{20, 63.0}];
      v7 = 31.33333;
      goto LABEL_15;
    case 0x16uLL:
      [a1 _safeAreaTopInset:{22, 63.0}];
      v7 = 38.33333;
LABEL_15:
      result = v5 + v7;
      break;
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x21uLL:
      result = 122.0;
      break;
    case 0x1AuLL:
    case 0x1FuLL:
    case 0x20uLL:
      result = 134.0;
      break;
    default:
      v8 = 84.0;
LABEL_21:
      result = v8;
      break;
  }

  return result;
}

+ (double)_timeTightBoundingHeight
{
  [a1 _timeElementFontSize];
  v4 = v3;
  [a1 fontWeightForElementType:1];
  v6 = [MEMORY[0x1E69DB878] systemFontOfSize:v4 weight:v5];
  [v6 capHeight];
  v8 = v7;

  return v8;
}

+ (double)_timeElementFontSize
{
  v3 = +[CSDeviceDetermination effectiveCategory];

  [a1 _timeElementFontSizeForCategory:v3];
  return result;
}

- (CSProminentLayoutController)initWithTraitEnvironment:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CSProminentLayoutController;
  v5 = [(CSProminentLayoutController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_traitEnvironment, v4);
  }

  return v6;
}

+ (CGRect)frameForElements:(unint64_t)a3
{
  [a1 frameForElements:a3 variant:0];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (CGRect)boundsForElements:(unint64_t)a3
{
  [a1 boundsForElements:a3 variant:0];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (CGRect)frameForElements:(unint64_t)a3 variant:(unint64_t)a4
{
  [a1 frameForElements:a3 variant:a4 forcePortraitBounds:0];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (CGRect)frameForElements:(unint64_t)a3 variant:(unint64_t)a4 interfaceOrientation:(int64_t)a5
{
  if (!a5)
  {
    [CSProminentLayoutController frameForElements:a2 variant:a1 interfaceOrientation:?];
  }

  if (frameForElements_variant_interfaceOrientation__onceToken != -1)
  {
    +[CSProminentLayoutController frameForElements:variant:interfaceOrientation:];
  }

  [a1 _mainDisplayBoundsForInterfaceOrientation:a5];
  v9 = frameForElements_variant_interfaceOrientation__mainScreenLayoutController;

  [v9 frameForElements:a3 variant:a4 withBoundingRect:?];
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

void __77__CSProminentLayoutController_frameForElements_variant_interfaceOrientation___block_invoke()
{
  v0 = _CSEmbeddedFBSDisplayConfiguration();
  [v0 pointScale];
  v2 = v1;

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__CSProminentLayoutController_frameForElements_variant_interfaceOrientation___block_invoke_2;
  v8[3] = &__block_descriptor_40_e27_v16__0___UIMutableTraits__8l;
  v8[4] = v2;
  v3 = [MEMORY[0x1E69DD1B8] traitCollectionWithTraits:v8];
  v4 = [CSProminentLayoutController alloc];
  v5 = [[_CSFakeTraitEnvironment alloc] initWithTraitCollection:v3];
  v6 = [(CSProminentLayoutController *)v4 initWithTraitEnvironment:v5];
  v7 = frameForElements_variant_interfaceOrientation__mainScreenLayoutController;
  frameForElements_variant_interfaceOrientation__mainScreenLayoutController = v6;
}

void __77__CSProminentLayoutController_frameForElements_variant_interfaceOrientation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69DDA98];
  v4 = a2;
  [v4 setLayoutDirection:{objc_msgSend(v3, "userInterfaceLayoutDirection") != 0}];
  [v4 setDisplayScale:*(a1 + 32)];
}

+ (CGRect)frameForElements:(unint64_t)a3 variant:(unint64_t)a4 forcePortraitBounds:(BOOL)a5
{
  v5 = a5;
  v8 = [MEMORY[0x1E69DCEB0] mainScreen];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__CSProminentLayoutController_frameForElements_variant_forcePortraitBounds___block_invoke;
  block[3] = &unk_1E76B9E48;
  v9 = v8;
  v32 = v9;
  if (frameForElements_variant_forcePortraitBounds__onceToken != -1)
  {
    dispatch_once(&frameForElements_variant_forcePortraitBounds__onceToken, block);
  }

  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v10;
  if (v5 && v16 > v10)
  {
    v10 = v16;
    v18 = v12;
  }

  else
  {
    v17 = v16;
    v18 = v14;
    v14 = v12;
  }

  [frameForElements_variant_forcePortraitBounds__mainScreenLayoutController frameForElements:a3 variant:a4 withBoundingRect:{v14, v18, v17, v10}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = v20;
  v28 = v22;
  v29 = v24;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

uint64_t __76__CSProminentLayoutController_frameForElements_variant_forcePortraitBounds___block_invoke(uint64_t a1)
{
  frameForElements_variant_forcePortraitBounds__mainScreenLayoutController = [[CSProminentLayoutController alloc] initWithTraitEnvironment:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

+ (CGRect)boundsForElements:(unint64_t)a3 variant:(unint64_t)a4
{
  [a1 frameForElements:a3 variant:a4];
  v6 = 0.0;
  v7 = 0.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)frameForElements:(unint64_t)a3 withBoundingRect:(CGRect)a4
{
  [(CSProminentLayoutController *)self frameForElements:a3 variant:0 withBoundingRect:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)boundsForElements:(unint64_t)a3 withBoundingRect:(CGRect)a4
{
  [(CSProminentLayoutController *)self boundsForElements:a3 variant:0 withBoundingRect:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)frameForElements:(unint64_t)a3 variant:(unint64_t)a4 withBoundingRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a3;
  v13 = *MEMORY[0x1E695F050];
  v12 = *(MEMORY[0x1E695F050] + 8);
  v15 = *(MEMORY[0x1E695F050] + 16);
  v14 = *(MEMORY[0x1E695F050] + 24);
  if (a3)
  {
    [(CSProminentLayoutController *)self _frameForElement:1 withBoundingRect:a4 variant:a5.origin.x, a5.origin.y, a5.size.width, a5.size.height];
    v70.origin.x = v24;
    v70.origin.y = v25;
    v70.size.width = v26;
    v70.size.height = v27;
    v54.origin.x = v13;
    v54.origin.y = v12;
    v54.size.width = v15;
    v54.size.height = v14;
    v55 = CGRectUnion(v54, v70);
    v13 = v55.origin.x;
    v12 = v55.origin.y;
    v15 = v55.size.width;
    v14 = v55.size.height;
    if ((v10 & 2) == 0)
    {
LABEL_3:
      if ((v10 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_3;
  }

  [(CSProminentLayoutController *)self _frameForElement:2 withBoundingRect:a4 variant:x, y, width, height];
  v71.origin.x = v28;
  v71.origin.y = v29;
  v71.size.width = v30;
  v71.size.height = v31;
  v56.origin.x = v13;
  v56.origin.y = v12;
  v56.size.width = v15;
  v56.size.height = v14;
  v57 = CGRectUnion(v56, v71);
  v13 = v57.origin.x;
  v12 = v57.origin.y;
  v15 = v57.size.width;
  v14 = v57.size.height;
  if ((v10 & 4) == 0)
  {
LABEL_4:
    if ((v10 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [(CSProminentLayoutController *)self _frameForElement:4 withBoundingRect:a4 variant:x, y, width, height];
  v72.origin.x = v32;
  v72.origin.y = v33;
  v72.size.width = v34;
  v72.size.height = v35;
  v58.origin.x = v13;
  v58.origin.y = v12;
  v58.size.width = v15;
  v58.size.height = v14;
  v59 = CGRectUnion(v58, v72);
  v13 = v59.origin.x;
  v12 = v59.origin.y;
  v15 = v59.size.width;
  v14 = v59.size.height;
  if ((v10 & 8) == 0)
  {
LABEL_5:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  [(CSProminentLayoutController *)self _frameForElement:8 withBoundingRect:a4 variant:x, y, width, height];
  v73.origin.x = v36;
  v73.origin.y = v37;
  v73.size.width = v38;
  v73.size.height = v39;
  v60.origin.x = v13;
  v60.origin.y = v12;
  v60.size.width = v15;
  v60.size.height = v14;
  v61 = CGRectUnion(v60, v73);
  v13 = v61.origin.x;
  v12 = v61.origin.y;
  v15 = v61.size.width;
  v14 = v61.size.height;
  if ((v10 & 0x10) == 0)
  {
LABEL_6:
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  [(CSProminentLayoutController *)self _frameForElement:16 withBoundingRect:a4 variant:x, y, width, height];
  v74.origin.x = v40;
  v74.origin.y = v41;
  v74.size.width = v42;
  v74.size.height = v43;
  v62.origin.x = v13;
  v62.origin.y = v12;
  v62.size.width = v15;
  v62.size.height = v14;
  v63 = CGRectUnion(v62, v74);
  v13 = v63.origin.x;
  v12 = v63.origin.y;
  v15 = v63.size.width;
  v14 = v63.size.height;
  if ((v10 & 0x20) == 0)
  {
LABEL_7:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    [(CSProminentLayoutController *)self _frameForElement:128 withBoundingRect:a4 variant:x, y, width, height];
    v76.origin.x = v48;
    v76.origin.y = v49;
    v76.size.width = v50;
    v76.size.height = v51;
    v66.origin.x = v13;
    v66.origin.y = v12;
    v66.size.width = v15;
    v66.size.height = v14;
    v67 = CGRectUnion(v66, v76);
    v13 = v67.origin.x;
    v12 = v67.origin.y;
    v15 = v67.size.width;
    v14 = v67.size.height;
    if ((v10 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_16:
  [(CSProminentLayoutController *)self _frameForElement:32 withBoundingRect:a4 variant:x, y, width, height];
  v75.origin.x = v44;
  v75.origin.y = v45;
  v75.size.width = v46;
  v75.size.height = v47;
  v64.origin.x = v13;
  v64.origin.y = v12;
  v64.size.width = v15;
  v64.size.height = v14;
  v65 = CGRectUnion(v64, v75);
  v13 = v65.origin.x;
  v12 = v65.origin.y;
  v15 = v65.size.width;
  v14 = v65.size.height;
  if ((v10 & 0x80) != 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  if ((v10 & 0x100) != 0)
  {
LABEL_9:
    [(CSProminentLayoutController *)self _frameForElement:256 withBoundingRect:a4 variant:x, y, width, height];
    v69.origin.x = v16;
    v69.origin.y = v17;
    v69.size.width = v18;
    v69.size.height = v19;
    v52.origin.x = v13;
    v52.origin.y = v12;
    v52.size.width = v15;
    v52.size.height = v14;
    v53 = CGRectUnion(v52, v69);
    v13 = v53.origin.x;
    v12 = v53.origin.y;
    v15 = v53.size.width;
    v14 = v53.size.height;
  }

LABEL_10:
  v20 = v13;
  v21 = v12;
  v22 = v15;
  v23 = v14;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)boundsForElements:(unint64_t)a3 variant:(unint64_t)a4 withBoundingRect:(CGRect)a5
{
  [(CSProminentLayoutController *)self frameForElements:a3 variant:a4 withBoundingRect:a5.origin.x, a5.origin.y, a5.size.width, a5.size.height];
  v7 = 0.0;
  v8 = 0.0;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)normalizedFrameForElements:(unint64_t)a3 inBoundingRect:(CGRect)a4
{
  [(CSProminentLayoutController *)self normalizedFrameForElements:a3 variant:0 inBoundingRect:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)normalizedBoundsForElements:(unint64_t)a3 inBoundingRect:(CGRect)a4
{
  [(CSProminentLayoutController *)self normalizedBoundsForElements:a3 variant:0 inBoundingRect:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)normalizedFrameForElements:(unint64_t)a3 variant:(unint64_t)a4 inBoundingRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  [(CSProminentLayoutController *)self frameForElements:a3 variant:a4 withBoundingRect:a5.origin.x, a5.origin.y];
  v8 = v7 / width;
  v10 = v9 / height;
  v12 = v11 / width;
  v14 = v13 / height;
  result.size.height = v14;
  result.size.width = v12;
  result.origin.y = v10;
  result.origin.x = v8;
  return result;
}

- (CGRect)normalizedBoundsForElements:(unint64_t)a3 variant:(unint64_t)a4 inBoundingRect:(CGRect)a5
{
  [(CSProminentLayoutController *)self normalizedFrameForElements:a3 variant:a4 inBoundingRect:a5.origin.x, a5.origin.y, a5.size.width, a5.size.height];
  v7 = 0.0;
  v8 = 0.0;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

+ (CGRect)tightFrameForElements:(unint64_t)a3
{
  [a1 frameForElements:a3 variant:1];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (CGRect)tightBoundsForElements:(unint64_t)a3
{
  [a1 boundsForElements:a3 variant:1];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)tightFrameForElements:(unint64_t)a3 withBoundingRect:(CGRect)a4
{
  [(CSProminentLayoutController *)self frameForElements:a3 variant:1 withBoundingRect:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)tightBoundsForElements:(unint64_t)a3 withBoundingRect:(CGRect)a4
{
  [(CSProminentLayoutController *)self boundsForElements:a3 variant:1 withBoundingRect:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)tightNormalizedFrameForElements:(unint64_t)a3 inBoundingRect:(CGRect)a4
{
  [(CSProminentLayoutController *)self normalizedFrameForElements:a3 variant:1 inBoundingRect:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)tightNormalizedBoundsForElements:(unint64_t)a3 inBoundingRect:(CGRect)a4
{
  [(CSProminentLayoutController *)self normalizedBoundsForElements:a3 variant:1 inBoundingRect:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (CGRect)editingFrameForElements:(unint64_t)a3
{
  [a1 frameForElements:a3 variant:2];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

+ (CGRect)editingBoundsForElements:(unint64_t)a3
{
  [a1 boundsForElements:a3 variant:2];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)editingFrameForElements:(unint64_t)a3 withBoundingRect:(CGRect)a4
{
  [(CSProminentLayoutController *)self frameForElements:a3 variant:2 withBoundingRect:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)editingBoundsForElements:(unint64_t)a3 withBoundingRect:(CGRect)a4
{
  [(CSProminentLayoutController *)self boundsForElements:a3 variant:2 withBoundingRect:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)editingNormalizedFrameForElements:(unint64_t)a3 inBoundingRect:(CGRect)a4
{
  [(CSProminentLayoutController *)self normalizedFrameForElements:a3 variant:2 inBoundingRect:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)editingNormalizedBoundsForElements:(unint64_t)a3 inBoundingRect:(CGRect)a4
{
  [(CSProminentLayoutController *)self normalizedBoundsForElements:a3 variant:2 inBoundingRect:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)_frameForElement:(unint64_t)a3 withBoundingRect:(CGRect)a4
{
  [(CSProminentLayoutController *)self _frameForElement:a3 withBoundingRect:0 variant:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)_frameForElement:(unint64_t)a3 withBoundingRect:(CGRect)a4 variant:(unint64_t)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (a5 == 3)
  {
    [(CSProminentLayoutController *)self editingReticleFrameForElement:a3 withBoundingRect:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
    MinX = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    goto LABEL_53;
  }

  [(CSProminentLayoutController *)self elementHorizontalFrameInBoundingRect:a3 forElementType:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];
  v21 = v20;
  v93 = v22;
  v95 = v23;
  v25 = v24;
  v26 = [MEMORY[0x1E698E730] sharedInstance];
  v27 = [v26 deviceClass];

  v28 = [(CSProminentLayoutController *)self _isPortraitForBoundingRect:x, y, width, height];
  if (a3 > 15)
  {
    if (a3 > 94)
    {
      if (a3 == 95)
      {
        goto LABEL_29;
      }

      if (a3 == 128)
      {
        [(CSProminentLayoutController *)self _quickActionsLeadingFrameWithBoundingRect:x, y, width, height];
        v72 = v71;
        v14 = v73;
        v16 = v74;
        v18 = v75;
        [(CSProminentLayoutController *)self _quickActionsTrailingFrameWithBoundingRect:x, y, width, height];
        MinX = v76;
        v78 = v77;
        v80 = v79;
        v82 = v81;
        if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
        {
          v18 = v82;
          v16 = v80;
          v14 = v78;
        }

        else
        {
          MinX = v72;
        }

        goto LABEL_53;
      }

      v18 = 0.0;
      v14 = 0.0;
      if (a3 == 256)
      {
        [(CSProminentLayoutController *)self _quickActionsLeadingFrameWithBoundingRect:x, y, width, height];
        v40 = v39;
        v14 = v41;
        v16 = v42;
        v18 = v43;
        [(CSProminentLayoutController *)self _quickActionsTrailingFrameWithBoundingRect:x, y, width, height];
        MinX = v44;
        v46 = v45;
        v48 = v47;
        v50 = v49;
        if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
        {
          MinX = v40;
        }

        else
        {
          v18 = v50;
          v16 = v48;
          v14 = v46;
        }

        goto LABEL_53;
      }
    }

    else
    {
      if (a3 == 16)
      {
        [objc_opt_class() landscapePadSubtitleElementBoundingTopY];
        v14 = v53;
        +[CSGraphicComplicationLayoutProvider complicationEdgeInset];
        v55 = v54 + v54;
        +[CSGraphicComplicationLayoutProvider gridUnitSize];
        v57 = v55 + v56 * 2.0;
        +[CSGraphicComplicationLayoutProvider interComplicationSpacing];
        v16 = v57 + v58;
        v59 = _CSEmbeddedFBSDisplayConfiguration();
        [v59 bounds];
        v61 = v60;
        v63 = v62;
        v94 = v65;
        v96 = v64;

        CGAffineTransformMakeRotation(&v97, 1.57079633);
        v98.origin.x = v61;
        v98.origin.y = v63;
        v98.size.height = v94;
        v98.size.width = v96;
        v99 = CGRectApplyAffineTransform(v98, &v97);
        v18 = v99.size.height - v14 * 2.0;
        if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
        {
          v100.origin.x = x;
          v100.origin.y = y;
          v100.size.width = width;
          v100.size.height = height;
          MinX = CGRectGetMaxX(v100) - (v16 + 44.0);
        }

        else
        {
          MinX = 44.0;
        }

        goto LABEL_53;
      }

      if (a3 == 32)
      {
        [objc_opt_class() complicationElementBoundingHeight];
        v18 = v66;
        [(CSProminentLayoutController *)self _quickActionsLeadingFrameWithBoundingRect:x, y, width, height];
        v68 = v67 - v18;
        [objc_opt_class() bottomComplicationElementYSpacer];
        v14 = v68 - v69;
        if (a5 == 2)
        {
          [objc_opt_class() bottomComplicationElementEditingOffset];
          v14 = v14 - v70;
        }

        goto LABEL_50;
      }

      v18 = 0.0;
      v14 = 0.0;
      if (a3 == 64)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_50;
  }

  v29 = v28;
  if (a3 <= 1)
  {
    if (a3 + 1 >= 2)
    {
      if (a3 == 1)
      {
        v30 = objc_opt_class();
        if (v29)
        {
          v31 = 1;
        }

        else
        {
          v31 = 4;
        }

        [v30 _timeElementTightBoundingTopYForOrientation:v31];
        [objc_opt_class() _timeTightBoundingHeight];
        if (a5 != 1)
        {
          [objc_opt_class() _timeAscenderTopYAdjustment];
        }

        v32 = [(CSProminentLayoutController *)self traitEnvironment];
        v33 = [v32 traitCollection];
        [v33 displayScale];

        UIRoundToScale();
        v14 = v34;
        UIRoundToScale();
        v18 = v35 - v14;
        goto LABEL_50;
      }

      goto LABEL_49;
    }

LABEL_29:
    MinX = *MEMORY[0x1E695F050];
    v14 = *(MEMORY[0x1E695F050] + 8);
    v16 = *(MEMORY[0x1E695F050] + 16);
    v18 = *(MEMORY[0x1E695F050] + 24);
    goto LABEL_53;
  }

  if (a3 != 2 && a3 != 4)
  {
    if (a3 != 8)
    {
LABEL_49:
      v18 = 0.0;
      v14 = 0.0;
      goto LABEL_50;
    }

    [objc_opt_class() complicationElementBoundingHeight];
    v18 = v36;
    [objc_opt_class() complicationElementBoundingTopY];
    v14 = v37;
    if (a5 == 2)
    {
      [(CSProminentLayoutController *)self complicationElementEditingOffsetWithBoundingRect:x, y, width, height];
LABEL_47:
      v14 = v14 + v38;
      goto LABEL_50;
    }

    goto LABEL_50;
  }

  [objc_opt_class() subtitleElementBoundingHeight];
  v18 = v51;
  if (v29)
  {
    [objc_opt_class() _subtitleElementBoundingTopY];
LABEL_36:
    v14 = v52;
    goto LABEL_44;
  }

  if (v27 == 2)
  {
    [objc_opt_class() landscapePadSubtitleElementBoundingTopY];
    goto LABEL_36;
  }

  [(CSProminentLayoutController *)self leadingLandscapeLayoutInset];
  v14 = floor(v83 * 0.75);
LABEL_44:
  if (a5 == 1)
  {
    [(CSProminentLayoutController *)self subtitleElementTightBoundingHeight];
    goto LABEL_50;
  }

  if (a5 == 2)
  {
    [(CSProminentLayoutController *)self subtitleElementEditingOffsetWithBoundingRect:x, y, width, height];
    goto LABEL_47;
  }

LABEL_50:
  v101.origin.x = v21;
  v101.origin.y = v93;
  v101.size.width = v95;
  v101.size.height = v25;
  MinX = CGRectGetMinX(v101);
  v84 = v21;
  v102.origin.x = v21;
  v102.origin.y = v93;
  v102.size.width = v95;
  v102.size.height = v25;
  v16 = CGRectGetWidth(v102);
  if (a5 == 1 && (BSFloatIsZero() & 1) == 0)
  {
    v85 = [(CSProminentLayoutController *)self traitEnvironment];
    v86 = [v85 traitCollection];
    [v86 displayScale];

    UIRoundToScale();
    v14 = v87;
    UIRoundToScale();
    v18 = v88;
    v103.origin.x = v84;
    v103.origin.y = v93;
    v103.size.width = v95;
    v103.size.height = v25;
    MinX = CGRectGetMinX(v103);
    v104.origin.x = v84;
    v104.origin.y = v93;
    v104.size.width = v95;
    v104.size.height = v25;
    v16 = CGRectGetWidth(v104);
  }

LABEL_53:
  v89 = MinX;
  v90 = v14;
  v91 = v16;
  v92 = v18;
  result.size.height = v92;
  result.size.width = v91;
  result.origin.y = v90;
  result.origin.x = v89;
  return result;
}

- (CGRect)_quickActionsFrameWithMinX:(double)a3 boundingRect:(CGRect)a4
{
  width = a4.size.width;
  height = a4.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  +[CSProminentButtonsView _buttonOutsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  +[CSProminentButtonsView _buttonDiameter];
  v15 = v14;
  +[CSProminentButtonsView _buttonInsetY];
  v17 = v16;
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v18 = CGRectGetHeight(v25) - v17 - (v7 + v15);
  v19 = v13 + v9 + v15;
  v20 = v11 + v7 + v15;
  v21 = a3;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v21;
  return result;
}

- (CGRect)_quickActionsLeadingFrameWithBoundingRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  +[CSProminentButtonsView _buttonInsetX];
  v9 = v8;
  +[CSProminentButtonsView _leadingOutset];
  v11 = v9 - v10;

  [(CSProminentLayoutController *)self _quickActionsFrameWithMinX:v11 boundingRect:x, y, width, height];
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)_quickActionsTrailingFrameWithBoundingRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = CGRectGetWidth(a3);
  +[CSProminentButtonsView _buttonInsetX];
  v10 = v8 - v9;
  +[CSProminentButtonsView _buttonDiameter];
  v12 = v11;
  +[CSProminentButtonsView _leadingOutset];
  v14 = v10 - (v12 + v13);

  [(CSProminentLayoutController *)self _quickActionsFrameWithMinX:v14 boundingRect:x, y, width, height];
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

+ (double)_landscapeReductionFactor
{
  v2 = +[CSDeviceDetermination isCategoryPad:](CSDeviceDetermination, "isCategoryPad:", +[CSDeviceDetermination effectiveCategory]);
  result = 0.7;
  if (v2)
  {
    return 1.0;
  }

  return result;
}

+ (double)fontSizeForElementType:(unint64_t)a3 isLandscapeVariant:(BOOL)a4
{
  if (a3 == 4 || a3 == 2)
  {

    [a1 _subtitleElementFontSize];
  }

  else if (a3 == 1)
  {
    v5 = a4;
    v6 = +[CSDeviceDetermination effectiveCategory];

    [CSAdaptiveFontProvider minimumFontSizeWithPortrait:!v5 deviceCategory:v6];
  }

  else
  {
    return 0.0;
  }

  return result;
}

+ (double)minimumAdaptiveFontSizeForElementType:(unint64_t)a3 isLandscapeVariant:(BOOL)a4
{
  v4 = a4;
  if (a3 == 1)
  {
    v5 = +[CSDeviceDetermination effectiveCategory];

    [CSAdaptiveFontProvider minimumFontSizeWithPortrait:!v4 deviceCategory:v5];
  }

  else
  {

    [a1 fontSizeForElementType:? isLandscapeVariant:?];
  }

  return result;
}

+ (double)maximumAdaptiveFontSizeForElementType:(unint64_t)a3 isLandscapeVariant:(BOOL)a4
{
  v4 = a4;
  if (a3 == 1)
  {
    v5 = +[CSDeviceDetermination effectiveCategory];

    [CSAdaptiveFontProvider maximumFontSizeWithPortrait:!v4 deviceCategory:v5];
  }

  else
  {

    [a1 fontSizeForElementType:? isLandscapeVariant:?];
  }

  return result;
}

+ (double)fontWeightForElementType:(unint64_t)a3
{
  if (a3 > 94)
  {
    if (a3 == 95 || a3 == 128 || a3 == 256)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = a3 - 1;
    if (a3 - 1 <= 0x3F)
    {
      if (((1 << v3) & 0x8000000080008080) != 0)
      {
LABEL_12:
        v4 = MEMORY[0x1E69DB978];
        return *v4;
      }

      if (((1 << v3) & 0xA) != 0 || a3 == 1)
      {
        v4 = MEMORY[0x1E69DB980];
        return *v4;
      }
    }

    if (a3 + 1 < 2)
    {
      goto LABEL_12;
    }
  }

  return result;
}

+ (double)fontWeightForElementType:(unint64_t)a3 familyName:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (a3 > 94)
  {
    if (a3 == 95 || a3 == 128 || a3 == 256)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - 1;
    if (a3 - 1 <= 0x3F)
    {
      if (((1 << v8) & 0x8000000080008080) != 0)
      {
LABEL_14:
        v9 = MEMORY[0x1E69DB978];
        goto LABEL_15;
      }

      if (((1 << v8) & 0xA) != 0)
      {
        goto LABEL_5;
      }

      if (a3 == 1)
      {
        if ([v6 containsString:@"Rail"])
        {
          v9 = MEMORY[0x1E69DB958];
          goto LABEL_15;
        }

LABEL_5:
        v9 = MEMORY[0x1E69DB980];
LABEL_15:
        v4 = *v9;
        goto LABEL_16;
      }
    }

    if (a3 + 1 < 2)
    {
      goto LABEL_14;
    }
  }

LABEL_16:

  return v4;
}

+ (void)minimumAndMaximumAdaptiveTimeHeightForContext:(id)a3 result:(id)a4
{
  v6 = a4;
  v10 = [a1 _timeMeasurementFontProviderPrimedForContext:a3 measurementBoundingRect:0];
  [v10 minimumHeight];
  v8 = v7;
  [v10 maximumHeight];
  v6[2](v6, v8, v9);
}

+ (CGRect)adaptiveTimeFrameForContext:(id)a3 timeHeight:(double)a4
{
  v38[1] = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v36 = 0u;
  v6 = a3;
  v7 = [a1 _timeMeasurementFontProviderPrimedForContext:v6 measurementBoundingRect:&v35];
  [v7 maximumHeight];
  v9 = v8;
  [v7 minimumHeight];
  if (v10 < a4)
  {
    v10 = a4;
  }

  if (v9 <= v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v7 fontForHeight:@"00:00" string:v11];
  [v7 baselineAdjustmentForHeight:v11];
  [v7 caplineAdjustmentForHeight:v11];
  v37 = *MEMORY[0x1E69DB648];
  v38[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
  [@"00:00" boundingRectWithSize:0 options:v13 attributes:0 context:v36];
  v33 = v15;
  v34 = v14;
  v17 = v16;
  v19 = v18;

  v20 = [v6 orientation];
  [a1 frameForElements:1 variant:1 interfaceOrientation:v20];
  CGRectGetMinY(v39);
  v40.origin.y = v33;
  v40.origin.x = v34;
  v40.size.width = v17;
  v40.size.height = v19;
  CGRectGetWidth(v40);
  [v12 ascender];
  [v12 capHeight];
  UIRectCenteredXInRect();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = v22;
  v30 = v24;
  v31 = v26;
  v32 = v28;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

+ (double)adaptiveTimeWidthInsetForOrientation:(int64_t)a3 deviceCategory:(unint64_t)a4 hasSidebarContents:(BOOL)a5 boundingWidth:(double)a6
{
  v7 = a5;
  if ([CSDeviceDetermination isCategoryPhone:a4])
  {
    [CSProminentLayoutController frameForElements:1 variant:3 interfaceOrientation:1];
    return CGRectGetMinX(v17) + 3.0;
  }

  else if ((a3 - 1) >= 2)
  {
    [CSProminentLayoutController frameForElements:16 variant:3 interfaceOrientation:4];
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
    MinX = CGRectGetMinX(v18);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v15 = a6 - CGRectGetMaxX(v19);
    if (MinX >= v15)
    {
      MinX = v15;
    }

    v9 = MinX + 3.0;
    if (v7)
    {
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      return v9 + MinX + CGRectGetWidth(v20);
    }
  }

  else
  {
    return 60.0;
  }

  return v9;
}

+ (double)_minimumTimeElementFontSize
{
  v2 = +[CSDeviceDetermination effectiveCategory];

  [CSAdaptiveFontProvider minimumFontSizeWithPortrait:1 deviceCategory:v2];
  return result;
}

+ (double)_maximumTimeElementFontSize
{
  v2 = +[CSDeviceDetermination effectiveCategory];

  [CSAdaptiveFontProvider maximumFontSizeWithPortrait:1 deviceCategory:v2];
  return result;
}

+ (double)_subtitleElementFontSize
{
  v2 = +[CSDeviceDetermination isCategoryPhone:](CSDeviceDetermination, "isCategoryPhone:", +[CSDeviceDetermination effectiveCategory]);
  result = 23.0;
  if (v2)
  {
    return 22.0;
  }

  return result;
}

+ (double)_timeAscenderTopYAdjustment
{
  [a1 _timeElementFontSize];
  v4 = v3;
  [a1 fontWeightForElementType:1];
  v6 = [MEMORY[0x1E69DB878] systemFontOfSize:v4 weight:v5];
  [v6 capHeight];
  v8 = v7;
  [v6 ascender];
  v10 = v8 - v9;

  return v10;
}

+ (double)_timeElementPadFromSubtitleForOrientation:(int64_t)a3
{
  v3 = [MEMORY[0x1E698E730] sharedInstance];
  v4 = [v3 deviceClass];

  result = 16.0;
  if (v4 == 2)
  {
    return 20.0;
  }

  return result;
}

+ (double)_timeElementTightBoundingTopYForOrientation:(int64_t)a3
{
  [a1 _timeElementPadFromSubtitleForOrientation:?];
  v6 = v5;
  [a1 frameForElements:2 variant:1 interfaceOrientation:a3];
  return v6 + CGRectGetMaxY(v8);
}

- (double)padTimeElementBoundingWidth
{
  v3 = +[CSDeviceDetermination effectiveCategory];
  result = 594.0;
  if (v3 <= 0x21)
  {
    if (((1 << v3) & 0x27B800000) != 0)
    {
      numberingSystem = self->_numberingSystem;
      if (numberingSystem <= 2)
      {
        if (numberingSystem == 2)
        {
          v7 = !self->_fourDigitTime;
          result = 388.0;
          v8 = 438.0;
          goto LABEL_18;
        }

        goto LABEL_12;
      }

      if (numberingSystem != 4)
      {
LABEL_12:
        v7 = !self->_fourDigitTime;
        result = 388.0;
        v8 = 428.0;
        goto LABEL_18;
      }

      v7 = !self->_fourDigitTime;
      result = 428.0;
      v8 = 538.0;
LABEL_18:
      if (!v7)
      {
        return v8;
      }

      return result;
    }

    if (((1 << v3) & 0x184000000) == 0)
    {
      return result;
    }

    v6 = self->_numberingSystem;
    if (v6 <= 2)
    {
      if (v6 == 2)
      {
        v7 = !self->_fourDigitTime;
        result = 390.0;
        v8 = 498.0;
        goto LABEL_18;
      }
    }

    else if (v6 == 4)
    {
      v7 = !self->_fourDigitTime;
      result = 464.0;
      v8 = 594.0;
      goto LABEL_18;
    }

    v7 = !self->_fourDigitTime;
    result = 390.0;
    v8 = 454.0;
    goto LABEL_18;
  }

  return result;
}

- (double)subtitleElementTightBoundingHeight
{
  [objc_opt_class() _subtitleElementFontSize];
  v3 = v2;
  [objc_opt_class() fontWeightForElementType:2];
  v5 = [MEMORY[0x1E69DB878] systemFontOfSize:v3 weight:v4];
  [v5 capHeight];
  v7 = v6;

  return v7;
}

- (double)subtitleElementEditingOffsetWithBoundingRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CSProminentLayoutController *)self _frameForElement:2 withBoundingRect:0 variant:?];
  rect = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(CSProminentLayoutController *)self _frameForElement:1 withBoundingRect:3 variant:x, y, width, height];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [MEMORY[0x1E698E730] sharedInstance];
  if ([v23 deviceClass] == 2)
  {
    v24 = 40.0;
  }

  else
  {
    v24 = 32.0;
  }

  [objc_opt_class() subtitleElementBoundingHeight];
  v26 = (v24 - v25) * 0.5;
  v32.origin.x = rect;
  v32.origin.y = v10;
  v32.size.width = v12;
  v32.size.height = v14;
  v27 = CGRectGetMaxY(v32) + v26;
  v33.origin.x = v16;
  v33.origin.y = v18;
  v33.size.width = v20;
  v33.size.height = v22;
  v28 = CGRectGetMinY(v33) - v27;
  [objc_opt_class() reticleSpacing];
  return v28 - v29;
}

+ (double)_subtitleElementBoundingTopY
{
  v3 = +[CSDeviceDetermination effectiveCategory];
  result = 48.0;
  switch(v3)
  {
    case 0uLL:
    case 1uLL:
    case 0xCuLL:
    case 0xEuLL:
      return result;
    case 2uLL:
      return 51.0;
    case 3uLL:
      return 69.0;
    case 4uLL:
    case 6uLL:
    case 8uLL:
    case 9uLL:
    case 0x11uLL:
      [a1 _safeAreaTopInset:{v3, 48.0}];
      v6 = 35.0;
      goto LABEL_18;
    case 5uLL:
    case 7uLL:
      [a1 _safeAreaTopInset:{v3, 48.0}];
      *&v8 = 50.0;
      goto LABEL_17;
    case 0xAuLL:
      [a1 _safeAreaTopInset:{10, 48.0}];
      *&v8 = 38.0;
      goto LABEL_17;
    case 0xBuLL:
      [a1 _safeAreaTopInset:{11, 48.0}];
      v6 = 45.0;
      goto LABEL_18;
    case 0xDuLL:
      [a1 _safeAreaTopInset:{13, 48.0}];
      v6 = 27.0;
      goto LABEL_18;
    case 0xFuLL:
      [a1 _safeAreaTopInset:{15, 48.0}];
      v6 = 30.0;
      goto LABEL_18;
    case 0x10uLL:
      [a1 _safeAreaTopInset:{16, 48.0}];
      v6 = 33.0;
      goto LABEL_18;
    case 0x12uLL:
      [a1 _safeAreaTopInset:{18, 48.0}];
      *&v8 = 52.0;
LABEL_17:
      v6 = *&v8;
      goto LABEL_18;
    case 0x13uLL:
    case 0x15uLL:
      v7 = 62.0;
      goto LABEL_7;
    case 0x14uLL:
      [a1 _safeAreaTopInset:{20, 48.0}];
      v6 = 24.666666;
      goto LABEL_18;
    case 0x16uLL:
      [a1 _safeAreaTopInset:{22, 48.0}];
      v6 = 29.0;
LABEL_18:
      result = v5 + v6;
      break;
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x21uLL:
      result = 85.0;
      break;
    case 0x1AuLL:
    case 0x1FuLL:
    case 0x20uLL:
      v7 = 96.0;
LABEL_7:
      result = v7;
      break;
    default:
      result = 79.0;
      break;
  }

  return result;
}

+ (double)landscapePadSubtitleElementBoundingTopY
{
  v3 = +[CSDeviceDetermination effectiveCategory]- 23;
  if (v3 < 0xB)
  {
    return dbl_1A2DA3E28[v3];
  }

  [a1 _subtitleElementBoundingTopY];
  return result;
}

- (CGRect)editingReticleFrameForElement:(unint64_t)a3 withBoundingRect:(CGRect)result
{
  if (a3 > 15)
  {
    if (a3 > 94)
    {
      if (a3 != 95)
      {
        if (a3 == 128)
        {
          [(CSProminentLayoutController *)self _quickActionLeadingElementEditingReticleFrameWithBoundingRect:result.origin.x, result.origin.y, result.size.width, result.size.height];
          goto LABEL_24;
        }

        if (a3 == 256)
        {
          [(CSProminentLayoutController *)self _quickActionTrailingElementEditingReticleFrameWithBoundingRect:result.origin.x, result.origin.y, result.size.width, result.size.height];
          goto LABEL_24;
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (a3 == 16)
      {
        [(CSProminentLayoutController *)self complicationSidebarElementEditingReticleFrameWithBoundingRect:result.origin.x, result.origin.y, result.size.width, result.size.height];
        goto LABEL_24;
      }

      if (a3 == 32)
      {
        [(CSProminentLayoutController *)self complicationBottomRowElementEditingReticleFrameWithBoundingRect:result.origin.x, result.origin.y, result.size.width, result.size.height];
        goto LABEL_24;
      }

      if (a3 != 64)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_19;
  }

  if (a3 <= 1)
  {
    if (a3 + 1 >= 2)
    {
      if (a3 == 1)
      {
        [(CSProminentLayoutController *)self timeElementEditingReticleFrameWithBoundingRect:result.origin.x, result.origin.y, result.size.width, result.size.height];
LABEL_24:
        v4 = v6;
        v5 = v7;
        goto LABEL_25;
      }

      goto LABEL_25;
    }

LABEL_19:
    result.origin.x = *MEMORY[0x1E695F050];
    result.origin.y = *(MEMORY[0x1E695F050] + 8);
    v4 = *(MEMORY[0x1E695F050] + 16);
    v5 = *(MEMORY[0x1E695F050] + 24);
    goto LABEL_25;
  }

  if (a3 == 2 || a3 == 4)
  {
    [(CSProminentLayoutController *)self subtitleElementEditingReticleFrameWithBoundingRect:result.origin.x, result.origin.y, result.size.width, result.size.height];
    goto LABEL_24;
  }

  if (a3 == 8)
  {
    [(CSProminentLayoutController *)self complicationRowElementEditingReticleFrameWithBoundingRect:result.origin.x, result.origin.y, result.size.width, result.size.height];
    goto LABEL_24;
  }

LABEL_25:
  v8 = v4;
  v9 = v5;
  result.size.height = v9;
  result.size.width = v8;
  return result;
}

- (CGRect)timeElementEditingReticleFrameWithBoundingRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CSProminentLayoutController *)self frameForElements:1 variant:2 withBoundingRect:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [MEMORY[0x1E698E730] sharedInstance];
  v17 = [v16 deviceClass];

  if (v17 == 2)
  {
    [(CSProminentLayoutController *)self frameForElements:1 variant:1 withBoundingRect:x, y, width, height];
    v18 = v35.origin.x;
    v19 = v35.origin.y;
    v20 = v35.size.width;
    v21 = v35.size.height;
    v22 = CGRectGetWidth(v35);
    [(CSProminentLayoutController *)self padTimeElementBoundingWidth];
    v24 = (v22 - v23) * 0.5;
    [objc_opt_class() timeElementReticleInset];
    v26 = v25;
    v27 = v18;
    v28 = v19;
    v29 = v20;
    v30 = v21;
    v31 = v24;
  }

  else
  {
    [objc_opt_class() reticlePortraitLayoutInset];
    v33 = v32 - v9;
    [objc_opt_class() timeElementReticleInset];
    v26 = v34;
    v27 = v9;
    v28 = v11;
    v29 = v13;
    v30 = v15;
    v31 = v33;
  }

  return CGRectInset(*&v27, v31, v26);
}

- (CGRect)subtitleElementEditingReticleFrameWithBoundingRect:(CGRect)a3
{
  [(CSProminentLayoutController *)self frameForElements:2 variant:2 withBoundingRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [MEMORY[0x1E698E730] sharedInstance];
  if ([v12 deviceClass] == 2)
  {
    v13 = 40.0;
  }

  else
  {
    v13 = 32.0;
  }

  [objc_opt_class() subtitleElementBoundingHeight];
  v15 = v13 - v14;
  v16 = v11 + v15;
  v17 = v7 + v15 * -0.5;
  v18 = [MEMORY[0x1E698E730] sharedInstance];
  v19 = [v18 deviceClass];

  if (v19 == 2)
  {
    v24.origin.x = v5;
    v24.origin.y = v17;
    v24.size.width = v9;
    v24.size.height = v16;
    Width = CGRectGetWidth(v24);
    [(CSProminentLayoutController *)self _padElementWidth];
    v22 = (Width - v21) * 0.5;
  }

  else
  {
    [objc_opt_class() reticlePortraitLayoutInset];
    v22 = v23 - v5;
  }

  v25.origin.x = v5;
  v25.origin.y = v17;
  v25.size.width = v9;
  v25.size.height = v16;
  return CGRectInset(v25, v22, 0.0);
}

- (CGRect)complicationRowElementEditingReticleFrameWithBoundingRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CSProminentLayoutController *)self frameForElements:8 variant:2 withBoundingRect:?];
  rect = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(CSProminentLayoutController *)self _complicationRowHorizontalReticleInsetWithBoundingRect:x, y, width, height];
  v16 = v15;
  [(CSProminentLayoutController *)self _complicationRowVerticalReticleInsetWithBoundingRect:x, y, width, height];
  v18 = v17;
  v19 = rect;
  v20 = v10;
  v21 = v12;
  v22 = v14;

  return CGRectInset(*&v19, v16, v18);
}

- (double)_complicationRowHorizontalReticleInsetWithBoundingRect:(CGRect)a3
{
  [(CSProminentLayoutController *)self frameForElements:8 variant:2 withBoundingRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [MEMORY[0x1E698E730] sharedInstance];
  v13 = [v12 deviceClass];

  if (v13 == 2)
  {
    v18.origin.x = v5;
    v18.origin.y = v7;
    v18.size.width = v9;
    v18.size.height = v11;
    Width = CGRectGetWidth(v18);
    [(CSProminentLayoutController *)self _padElementWidth];
    return (Width - v15) * 0.5;
  }

  else
  {
    [objc_opt_class() reticlePortraitLayoutInset];
    return v17 - v5;
  }
}

- (double)_complicationRowVerticalReticleInsetWithBoundingRect:(CGRect)a3
{
  [(CSProminentLayoutController *)self frameForElements:8 variant:0 withBoundingRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [MEMORY[0x1E698E730] sharedInstance];
  v12 = [v11 deviceClass];

  if (v12 == 2)
  {
    v19.origin.x = v4;
    v19.origin.y = v6;
    v19.size.width = v8;
    v19.size.height = v10;
    Height = CGRectGetHeight(v19);
    [objc_opt_class() complicationElementBoundingHeight];
    v15 = (Height - v14) * 0.5;
    [objc_opt_class() complicationElementEditingReticleInset];
    return v15 - v16;
  }

  else
  {
    [objc_opt_class() reticlePortraitLayoutInset];
    return v18 - v4;
  }
}

- (CGRect)complicationSidebarElementEditingReticleFrameWithBoundingRect:(CGRect)a3
{
  [(CSProminentLayoutController *)self frameForElements:16 variant:2 withBoundingRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  return CGRectInset(*&v3, -8.0, -8.0);
}

- (CGRect)complicationBottomRowElementEditingReticleFrameWithBoundingRect:(CGRect)a3
{
  [(CSProminentLayoutController *)self frameForElements:32 variant:2 withBoundingRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [MEMORY[0x1E698E730] sharedInstance];
  v13 = [v12 deviceClass];

  if (v13 == 2)
  {
    v28.origin.x = v5;
    v28.origin.y = v7;
    v28.size.width = v9;
    v28.size.height = v11;
    Width = CGRectGetWidth(v28);
    [(CSProminentLayoutController *)self _padElementWidth];
    v16 = (Width - v15) * 0.5;
    v29.origin.x = v5;
    v29.origin.y = v7;
    v29.size.width = v9;
    v29.size.height = v11;
    Height = CGRectGetHeight(v29);
    [objc_opt_class() complicationElementBoundingHeight];
    v19 = (Height - v18) * 0.5;
    [objc_opt_class() complicationElementEditingReticleInset];
    v21 = v19 - v20;
    v22 = v5;
    v23 = v7;
    v24 = v9;
    v25 = v11;
    v26 = v16;
  }

  else
  {
    [objc_opt_class() reticlePortraitLayoutInset];
    v26 = v27 - v5;
    v22 = v5;
    v23 = v7;
    v24 = v9;
    v25 = v11;
    v21 = v26;
  }

  return CGRectInset(*&v22, v26, v21);
}

- (CGRect)_quickActionLeadingElementEditingReticleFrameWithBoundingRect:(CGRect)a3
{
  [(CSProminentLayoutController *)self frameForElements:128 variant:2 withBoundingRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  +[CSProminentButtonsView _reticleOutset];
  v12 = v11;
  v13 = v4;
  v14 = v6;
  v15 = v8;
  v16 = v10;

  return CGRectInset(*&v13, v12, v12);
}

- (CGRect)_quickActionTrailingElementEditingReticleFrameWithBoundingRect:(CGRect)a3
{
  [(CSProminentLayoutController *)self frameForElements:256 variant:2 withBoundingRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  +[CSProminentButtonsView _reticleOutset];
  v12 = v11;
  v13 = v4;
  v14 = v6;
  v15 = v8;
  v16 = v10;

  return CGRectInset(*&v13, v12, v12);
}

+ (double)timeElementReticleInset
{
  v2 = +[CSDeviceDetermination effectiveCategory];
  result = 11.0;
  if (v2 - 2 <= 0x1F)
  {
    return dbl_1A2DA3E80[v2 - 2];
  }

  return result;
}

+ (double)complicationElementEditingReticleInset
{
  v2 = [MEMORY[0x1E698E730] sharedInstance];
  v3 = [v2 deviceClass];

  result = 0.0;
  if (v3 == 2)
  {
    return 14.0;
  }

  return result;
}

+ (double)reticleSpacing
{
  v2 = +[CSDeviceDetermination effectiveCategory];
  result = 5.0;
  if (v2 - 2 <= 0x14)
  {
    return dbl_1A2DA3F80[v2 - 2];
  }

  return result;
}

+ (double)_safeAreaTopInset:(unint64_t)a3
{
  result = 0.0;
  if (a3 - 3 <= 0x13)
  {
    return dbl_1A2DA4028[a3 - 3];
  }

  return result;
}

+ (double)reticlePortraitLayoutInset
{
  +[CSDeviceDetermination effectiveCategory];
  [a1 leadingPortraitLayoutInset];
  result = v3 + -9.0;
  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

- (double)_padElementWidth
{
  +[CSGraphicComplicationLayoutProvider gridUnitSize];
  v3 = v2;
  +[CSGraphicComplicationLayoutProvider complicationEdgeInset];
  v5 = v4;
  +[CSGraphicComplicationLayoutProvider interComplicationSpacingExcludingInnerInset];
  v7 = v6;
  +[CSGraphicComplicationLayoutProvider complicationEdgeInset];
  v9 = v8;
  v10 = +[CSDeviceDetermination effectiveCategory];
  v11 = v10 == 31 || v10 == 26;
  result = 388.0;
  if (v11)
  {
    result = 390.0;
  }

  if ((v3 + v5 * 2.0) * 4 + v7 * 3 + v9 + v9 >= result)
  {
    return (v3 + v5 * 2.0) * 4 + v7 * 3 + v9 + v9;
  }

  return result;
}

- (BOOL)shouldCenterElementsInBoundingRect:(CGRect)a3
{
  v3 = [(CSProminentLayoutController *)self _isPortraitForBoundingRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [MEMORY[0x1E698E730] sharedInstance];
  v5 = [v4 deviceClass];

  return v5 == 2 || v3;
}

- (CGRect)elementHorizontalFrameInBoundingRect:(CGRect)a3 forElementType:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(CSProminentLayoutController *)self traitEnvironment];
  v11 = [v10 traitCollection];

  [(CSProminentLayoutController *)self leadingPortraitLayoutInset];
  v13 = v12;
  [(CSProminentLayoutController *)self leadingLandscapeLayoutInset];
  v15 = v14;
  if ([(CSProminentLayoutController *)self shouldCenterElementsInBoundingRect:x, y, width, height])
  {
    v16 = [MEMORY[0x1E698E730] sharedInstance];
    v17 = [v16 deviceClass];

    if (v17 == 2)
    {
      if (a4 == 1)
      {
        [(CSProminentLayoutController *)self padTimeElementBoundingWidth];
        v19 = width - v18;
      }

      else
      {
        [(CSProminentLayoutController *)self _padElementWidth];
        v19 = width - (v32 + -16.0);
        if (v19 < 0.0)
        {
          v19 = 0.0;
        }
      }

      v31 = v19 * 0.5;
      v27 = x;
      v28 = y;
      v29 = width;
      v30 = height;
    }

    else
    {
      v27 = x;
      v28 = y;
      v29 = width;
      v30 = height;
      v31 = v13;
    }

    v38 = CGRectInset(*&v27, v31, 0.0);
    v24 = v38.origin.x;
    v25 = v38.origin.y;
    v20 = v38.size.width;
    v26 = v38.size.height;
  }

  else
  {
    [v11 layoutDirection];
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    v20 = CGRectGetWidth(v37) / 3.0 - v15;
    v21 = [(CSProminentLayoutController *)self traitEnvironment];
    v22 = [v21 traitCollection];
    [v22 displayScale];

    UIRoundToScale();
    v24 = v23;
    v25 = 0.0;
    v26 = 0.0;
  }

  v33 = v24;
  v34 = v25;
  v35 = v20;
  v36 = v26;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (double)complicationElementEditingOffsetWithBoundingRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CSProminentLayoutController *)self _frameForElement:1 withBoundingRect:3 variant:?];
  MaxY = CGRectGetMaxY(v15);
  [objc_opt_class() complicationElementBoundingTopY];
  v10 = v9;
  [(CSProminentLayoutController *)self _complicationRowVerticalReticleInsetWithBoundingRect:x, y, width, height];
  v12 = v10 + v11 - MaxY;
  [objc_opt_class() reticleSpacing];
  return v13 - v12;
}

+ (double)complicationElementBoundingTopY
{
  v3 = +[CSDeviceDetermination effectiveCategory];
  result = 173.0;
  switch(v3)
  {
    case 0uLL:
    case 0xCuLL:
      return result;
    case 1uLL:
      return 170.0;
    case 2uLL:
      return 188.0;
    case 3uLL:
      return 190.0;
    case 4uLL:
    case 9uLL:
    case 0x11uLL:
      [a1 _safeAreaTopInset:{v3, 173.0}];
      v9 = 172.0;
      goto LABEL_21;
    case 5uLL:
    case 7uLL:
      [a1 _safeAreaTopInset:{v3, 173.0}];
      v9 = 192.0;
      goto LABEL_21;
    case 6uLL:
      return 214.0;
    case 8uLL:
      return 219.0;
    case 0xAuLL:
      [a1 _safeAreaTopInset:{10, 173.0}];
      v9 = 175.0;
      goto LABEL_21;
    case 0xBuLL:
      [a1 _safeAreaTopInset:{11, 173.0}];
      v9 = 182.0;
      goto LABEL_21;
    case 0xDuLL:
      [a1 _safeAreaTopInset:{13, 173.0}];
      v9 = 164.0;
      goto LABEL_21;
    case 0xEuLL:
      return 175.0;
    case 0xFuLL:
      [a1 _safeAreaTopInset:{15, 173.0}];
      v9 = 167.0;
      goto LABEL_21;
    case 0x10uLL:
      v10 = a1;
      v11 = 16;
      goto LABEL_20;
    case 0x12uLL:
      [a1 _safeAreaTopInset:{18, 173.0}];
      v9 = 194.0;
      goto LABEL_21;
    case 0x13uLL:
      return 194.0;
    case 0x14uLL:
      [a1 _safeAreaTopInset:{20, 173.0}];
      v9 = 162.0;
      goto LABEL_21;
    case 0x15uLL:
      v12 = 200.0;
      goto LABEL_25;
    case 0x16uLL:
      v10 = a1;
      v11 = 22;
LABEL_20:
      [v10 _safeAreaTopInset:{v11, 173.0}];
      v9 = 170.0;
LABEL_21:
      result = v8 + v9;
      break;
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
      [a1 _timeElementBoundingTopY];
      v6 = v5 + 13.0;
      [a1 timeElementBoundingHeight];
      result = v6 + v7;
      break;
    default:
      v12 = 84.0;
LABEL_25:
      result = v12;
      break;
  }

  return result;
}

+ (id)_timeMeasurementFontProvider
{
  if (_timeMeasurementFontProvider_onceToken != -1)
  {
    +[CSProminentLayoutController _timeMeasurementFontProvider];
  }

  v3 = _timeMeasurementFontProvider_fontProvider;

  return v3;
}

void __59__CSProminentLayoutController__timeMeasurementFontProvider__block_invoke()
{
  v2 = CTFontCreateWithNameAndOptions(@".SFSoftNumeric-Semibold", 12.0, 0, 0x400uLL);
  v0 = [CSAdaptiveFontProvider providerForBaseFont:v2];
  v1 = _timeMeasurementFontProvider_fontProvider;
  _timeMeasurementFontProvider_fontProvider = v0;
}

+ (id)_timeMeasurementFontProviderPrimedForContext:(id)a3 measurementBoundingRect:(CGRect *)a4
{
  v6 = a3;
  v7 = [a1 _timeMeasurementFontProvider];
  v8 = [v6 orientation];
  v9 = [v6 hasSidebarContents];

  v10 = +[CSDeviceDetermination effectiveCategory];
  [a1 _mainDisplayBoundsForInterfaceOrientation:1];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [a1 _mainDisplayBoundsForInterfaceOrientation:4];
  v49 = v20;
  v50 = v19;
  v47 = v22;
  v48 = v21;
  v53.origin.x = v12;
  v53.origin.y = v14;
  v53.size.width = v16;
  v53.size.height = v18;
  [a1 adaptiveTimeWidthInsetForOrientation:1 deviceCategory:v10 hasSidebarContents:v9 boundingWidth:CGRectGetWidth(v53)];
  v24 = v23;
  v54.origin.x = v12;
  v54.origin.y = v14;
  v54.size.width = v16;
  v54.size.height = v18;
  [a1 adaptiveTimeWidthInsetForOrientation:4 deviceCategory:v10 hasSidebarContents:v9 boundingWidth:CGRectGetHeight(v54)];
  v26 = v25;
  v51 = v12;
  v55.origin.x = v12;
  v55.origin.y = v14;
  v55.size.width = v16;
  v55.size.height = v18;
  dx = v26;
  v46 = v24;
  v56 = CGRectInset(v55, v24, v26);
  x = v56.origin.x;
  y = v56.origin.y;
  width = v56.size.width;
  height = v56.size.height;
  v31 = CGRectGetWidth(v56);
  v57.origin.x = x;
  v57.origin.y = y;
  v57.size.width = width;
  v57.size.height = height;
  v32 = CGRectGetHeight(v57);
  v33 = v8 - 1;
  v34 = +[CSDeviceDetermination effectiveCategory];
  v35 = [MEMORY[0x1E696AD98] numberWithDouble:v31];
  v36 = [MEMORY[0x1E696AD98] numberWithDouble:v32];
  v37 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"00:00"];
  v38 = [CSAdaptiveFontLayoutContext layoutContextWithPortrait:(v8 - 1) < 2 deviceCategory:v34 maximumWidthPortrait:v35 maximumWidthLandscape:v36 text:v37];

  [v7 updateLayoutContext:v38];
  if (a4)
  {
    if (v33 > 1)
    {
      v40 = v49;
      v39 = v50;
      v42 = v47;
      v41 = v48;
      v43 = dx;
    }

    else
    {
      v39 = v51;
      v40 = v14;
      v41 = v16;
      v42 = v18;
      v43 = v46;
    }

    *a4 = CGRectInset(*&v39, v43, 0.0);
  }

  return v7;
}

+ (CGRect)_mainDisplayBoundsForInterfaceOrientation:(int64_t)a3
{
  if (_mainDisplayBoundsForInterfaceOrientation__onceToken != -1)
  {
    +[CSProminentLayoutController _mainDisplayBoundsForInterfaceOrientation:];
  }

  x = *&_mainDisplayBoundsForInterfaceOrientation__mainDisplayBoundsPortrait_0;
  y = *&_mainDisplayBoundsForInterfaceOrientation__mainDisplayBoundsPortrait_1;
  width = *&_mainDisplayBoundsForInterfaceOrientation__mainDisplayBoundsPortrait_2;
  height = *&_mainDisplayBoundsForInterfaceOrientation__mainDisplayBoundsPortrait_3;
  if (a3 <= 2)
  {
    if (a3 == 2)
    {
      v10 = 3.14159265;
      goto LABEL_10;
    }

    if (!a3)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unhandled UIInterfaceOrientationUnknown"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [(CSProminentLayoutController *)a2 _mainDisplayBoundsForInterfaceOrientation:a1, v15];
      }

      [v15 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1A2D78974);
    }
  }

  else
  {
    if (a3 == 3)
    {
      v10 = 1.57079633;
      goto LABEL_10;
    }

    if (a3 == 4)
    {
      v10 = -1.57079633;
LABEL_10:
      CGAffineTransformMakeRotation(&v16, v10);
      v17.origin.x = x;
      v17.origin.y = y;
      v17.size.width = width;
      v17.size.height = height;
      v18 = CGRectApplyAffineTransform(v17, &v16);
      x = v18.origin.x;
      y = v18.origin.y;
      width = v18.size.width;
      height = v18.size.height;
    }
  }

  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

void __73__CSProminentLayoutController__mainDisplayBoundsForInterfaceOrientation___block_invoke()
{
  v4 = _CSEmbeddedFBSDisplayConfiguration();
  [v4 bounds];
  _mainDisplayBoundsForInterfaceOrientation__mainDisplayBoundsPortrait_0 = v0;
  _mainDisplayBoundsForInterfaceOrientation__mainDisplayBoundsPortrait_1 = v1;
  _mainDisplayBoundsForInterfaceOrientation__mainDisplayBoundsPortrait_2 = v2;
  _mainDisplayBoundsForInterfaceOrientation__mainDisplayBoundsPortrait_3 = v3;
}

+ (void)frameForElements:(const char *)a1 variant:(uint64_t)a2 interfaceOrientation:.cold.2(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"interfaceOrientation != UIInterfaceOrientationUnknown"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"CSProminentLayoutController.m";
    v16 = 1024;
    v17 = 84;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2D63000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)_mainDisplayBoundsForInterfaceOrientation:(uint64_t)a3 .cold.2(const char *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a1);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138544642;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  v12 = 2048;
  v13 = a2;
  v14 = 2114;
  v15 = @"CSProminentLayoutController.m";
  v16 = 1024;
  v17 = 1647;
  v18 = 2114;
  v19 = a3;
  _os_log_error_impl(&dword_1A2D63000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
}

@end