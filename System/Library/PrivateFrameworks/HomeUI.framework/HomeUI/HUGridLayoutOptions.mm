@interface HUGridLayoutOptions
+ (id)defaultOptionsForViewSize:(CGSize)size columnStyle:(unint64_t)style overrideSizeSubclass:(id)subclass;
+ (id)defaultOptionsForViewSize:(CGSize)size overrideSizeSubclass:(int64_t)subclass;
+ (unint64_t)_numberOfAccessibilityColumnsForFlexibleWidthStyleWithSizeSubclass:(int64_t)subclass;
+ (unint64_t)_numberOfColumnsForFlexibleWidthStyleWithSizeSubclass:(int64_t)subclass contentSizeCategory:(id)category;
+ (unint64_t)_numberOfNormalColumnsForFlexibleWidthStyleWithSizeSubclass:(int64_t)subclass;
- (CGSize)viewSize;
- (HUGridLayoutOptions)initWithViewSize:(CGSize)size columnStyle:(unint64_t)style overrideSizeSubclass:(id)subclass;
- (NSString)description;
- (UIEdgeInsets)sectionTitleMargin;
- (double)_pointWidthForFixedColumnStyleWithFractionalNumberOfColumns:(double)columns;
- (double)_pointWidthForFlexibleColumnStyleWithFractionalNumberOfColumns:(double)columns totalNumberOfColumns:(int64_t)ofColumns totalWidth:(double)width useDefaultSectionMargin:(BOOL)margin;
- (double)_pointWidthForFractionalNumberOfColumns:(double)columns;
- (double)_preferredSectionHeightForNumberOfRows:(unint64_t)rows withCellHeight:(double)height;
- (double)cameraCellHeight;
- (double)cameraCellWidth;
- (double)fixedWidthForCell;
- (double)headlineCellHeight;
- (double)pointWidthForCurrentViewSizeSubclass;
- (double)pointWidthForFullWidthCell;
- (double)pointWidthForWelcomeUIBanner;
- (double)preferredSectionHeightForNumberOfSceneRows:(unint64_t)rows;
- (double)preferredSectionHeightForNumberOfServiceRows:(unint64_t)rows spanningColumns:(unint64_t)columns;
- (double)sectionHeaderCellHeight;
- (double)statusListCellHeight;
- (double)statusListCellTopMargin;
- (id)_childDisplayOptions;
- (id)_columnStyleToString:(unint64_t)string;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)cellSizeSubclass;
- (int64_t)numberOfColumns;
- (int64_t)viewSizeSubclass;
- (void)setContentColorStyle:(unint64_t)style;
- (void)setContentSizeCategory:(id)category;
- (void)setEditing:(BOOL)editing;
@end

@implementation HUGridLayoutOptions

+ (id)defaultOptionsForViewSize:(CGSize)size overrideSizeSubclass:(int64_t)subclass
{
  height = size.height;
  width = size.width;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:subclass];
  v8 = [self defaultOptionsForViewSize:0 columnStyle:v7 overrideSizeSubclass:{width, height}];

  return v8;
}

+ (id)defaultOptionsForViewSize:(CGSize)size columnStyle:(unint64_t)style overrideSizeSubclass:(id)subclass
{
  height = size.height;
  width = size.width;
  v62[6] = *MEMORY[0x277D85DE8];
  subclassCopy = subclass;
  v10 = [[self alloc] initWithViewSize:style columnStyle:subclassCopy overrideSizeSubclass:{width, height}];

  viewSizeSubclass = [v10 viewSizeSubclass];
  cellSizeSubclass = [v10 cellSizeSubclass];
  v13 = [HUGridCameraCellLayoutOptions defaultOptionsForCellSizeSubclass:cellSizeSubclass];
  [v10 setCameraCellOptions:v13];

  v14 = [HUGridStatusCellLayoutOptions defaultOptionsForCellSizeSubclass:cellSizeSubclass];
  [v10 setStatusCellOptions:v14];

  v15 = [HUGridSceneCellLayoutOptions defaultOptionsForCellSizeSubclass:cellSizeSubclass];
  [v10 setSceneCellOptions:v15];

  v16 = [HUGridScenePlaceholderLayoutOptions defaultOptionsForCellSizeSubclass:cellSizeSubclass];
  [v10 setPlaceholderSceneCellOptions:v16];

  v17 = [HUGridServiceCellLayoutOptions defaultOptionsForCellSizeSubclass:cellSizeSubclass];
  [v10 setServiceCellOptions:v17];

  v18 = [HUGridPlaceholderServiceCellLayoutOptions defaultOptionsForCellSizeSubclass:cellSizeSubclass];
  [v10 setPlaceholderServiceCellOptions:v18];

  v19 = [HUGridBannerCellLayoutOptions defaultOptionsForCellSizeSubclass:cellSizeSubclass];
  [v10 setBannerCellOptions:v19];

  v20 = [HUGridWelcomeUIBannerCellLayoutOptions defaultOptionsForCellSizeSubclass:cellSizeSubclass];
  [v10 setWelcomeUIBannerCellOptions:v20];

  v21 = [HUFilterCategoryCellLayoutOptions defaultOptionsForCellSizeSubclass:cellSizeSubclass];
  [v10 setFilterCategoryCellOptions:v21];

  v22 = [HUGridMediaPlatterCellLayoutOptions defaultOptionsForCellSizeSubclass:cellSizeSubclass];
  [v10 setMediaPlatterCellOptions:v22];

  [v10 setScrollDirection:0];
  v23 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D769A8] traits:32770];
  [v10 setHeadlineFont:v23];

  prominentInsetGroupedHeaderConfiguration = [MEMORY[0x277D756E0] prominentInsetGroupedHeaderConfiguration];
  textProperties = [prominentInsetGroupedHeaderConfiguration textProperties];
  font = [textProperties font];
  v27 = [font copy];
  [v10 setSectionHeaderFont:v27];

  v61[0] = &unk_282492288;
  v61[1] = &unk_282492270;
  v62[0] = &unk_2824935C0;
  v62[1] = &unk_2824935D0;
  v61[2] = &unk_2824922A0;
  v61[3] = &unk_2824922B8;
  v62[2] = &unk_2824935E0;
  v62[3] = &unk_2824935F0;
  v61[4] = &unk_2824922D0;
  v61[5] = &unk_2824922E8;
  v62[4] = &unk_282493600;
  v62[5] = &unk_282493610;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:6];
  [v10 setHeadlineBaselineToSceneHeaderBaselineDistance:{HUConstantFloatForViewSizeSubclass(viewSizeSubclass, v28)}];

  sectionHeaderFont = [v10 sectionHeaderFont];
  v30 = sectionHeaderFont;
  v31 = 10.0;
  if (viewSizeSubclass == 6)
  {
    v31 = 8.0;
  }

  [sectionHeaderFont _scaledValueForValue:v31];
  [v10 setSectionTopMargin:?];

  [v10 sectionTopMargin];
  [v10 setSectionBottomMargin:?];
  v59[0] = &unk_282492288;
  v59[1] = &unk_282492270;
  v60[0] = &unk_282493620;
  v60[1] = &unk_282493630;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
  [v10 setSectionLeadingMargin:{HUConstantFloatForViewSizeSubclass(viewSizeSubclass, v32)}];

  [v10 sectionLeadingMargin];
  [v10 setSectionTrailingMargin:?];
  [v10 sectionLeadingMargin];
  v34 = v33;
  [v10 sectionTrailingMargin];
  v36 = [HUGridHeadlineCellLayoutOptions defaultOptionsForCellSizeSubclass:cellSizeSubclass viewSizeSubclass:viewSizeSubclass viewWidth:width containerLeadingMargin:v34 containerTrailingMargin:v35];
  [v10 setHeadlineCellOptions:v36];

  v57[0] = &unk_282492270;
  v57[1] = &unk_2824922B8;
  v58[0] = &unk_282492300;
  v58[1] = &unk_282492300;
  v57[2] = &unk_2824922E8;
  v58[2] = &unk_282492318;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:3];
  v38 = HUConstantFloatForViewSizeSubclass(viewSizeSubclass, v37);

  sectionHeaderFont2 = [v10 sectionHeaderFont];
  [sectionHeaderFont2 _scaledValueForValue:v38];
  [v10 setSectionBottomToNextSectionTitleBaselineDistance:?];

  [v10 sectionLeadingMargin];
  v41 = v40;
  [v10 sectionTrailingMargin];
  [v10 setSectionTitleMargin:{0.0, v41, 0.0, v42}];
  v55[0] = &unk_282492288;
  v55[1] = &unk_282492270;
  v56[0] = &unk_282493640;
  v56[1] = &unk_282493650;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
  v44 = HUConstantFloatForViewSizeSubclass(viewSizeSubclass, v43);

  [v10 setRowSpacing:v44];
  [v10 setColumnSpacing:v44];
  if ([MEMORY[0x277D14CE8] shouldUseControlCenterMaterials])
  {
    if (_os_feature_enabled_impl())
    {
      [v10 setSectionTopMargin:0.0];
      [v10 setSectionBottomMargin:0.0];
      [v10 setSectionLeadingMargin:0.0];
      [v10 setSectionTrailingMargin:0.0];
      CCUILayoutGutter();
      [v10 setRowSpacing:?];
      CCUILayoutGutter();
      [v10 setColumnSpacing:?];
    }

    else
    {
      [v10 setSectionTopMargin:v44];
      v45 = v44 + v44;
      [v10 setSectionBottomMargin:v45];
      [v10 setSectionLeadingMargin:v45];
      [v10 setSectionTrailingMargin:v45];
    }

    [v10 sectionTopMargin];
    v47 = v46;
    [v10 sectionLeadingMargin];
    v49 = v48;
    [v10 sectionBottomMargin];
    v51 = v50;
    [v10 sectionTrailingMargin];
    [v10 setSectionTitleMargin:{v47, v49, v51, v52}];
    [v10 sectionBottomToNextSectionTitleBaselineDistance];
    [v10 setSectionBottomToNextSectionTitleBaselineDistance:v53 * 1.5];
  }

  [v10 setOverrideNumberOfColumns:0];
  [v10 setContentColorStyle:0];
  [v10 setContentSizeCategory:*MEMORY[0x277D76860]];
  [v10 setMinimumMarginBelowHeadline:20.0];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  [(HUGridLayoutOptions *)self viewSize];
  v6 = v5;
  v8 = v7;
  columnStyle = [(HUGridLayoutOptions *)self columnStyle];
  overrideViewSizeSubclass = [(HUGridLayoutOptions *)self overrideViewSizeSubclass];
  v11 = [v4 initWithViewSize:columnStyle columnStyle:overrideViewSizeSubclass overrideSizeSubclass:{v6, v8}];

  [v11 setScrollDirection:{-[HUGridLayoutOptions scrollDirection](self, "scrollDirection")}];
  [v11 setStatusHidden:{-[HUGridLayoutOptions statusHidden](self, "statusHidden")}];
  [v11 setHeadlineHidden:{-[HUGridLayoutOptions headlineHidden](self, "headlineHidden")}];
  [v11 setEditing:{-[HUGridLayoutOptions isEditing](self, "isEditing")}];
  headlineFont = [(HUGridLayoutOptions *)self headlineFont];
  [v11 setHeadlineFont:headlineFont];

  sectionHeaderFont = [(HUGridLayoutOptions *)self sectionHeaderFont];
  [v11 setSectionHeaderFont:sectionHeaderFont];

  [(HUGridLayoutOptions *)self headlineBaselineToSceneHeaderBaselineDistance];
  [v11 setHeadlineBaselineToSceneHeaderBaselineDistance:?];
  [(HUGridLayoutOptions *)self sectionTopMargin];
  [v11 setSectionTopMargin:?];
  [(HUGridLayoutOptions *)self sectionBottomMargin];
  [v11 setSectionBottomMargin:?];
  [(HUGridLayoutOptions *)self sectionLeadingMargin];
  [v11 setSectionLeadingMargin:?];
  [(HUGridLayoutOptions *)self sectionTrailingMargin];
  [v11 setSectionTrailingMargin:?];
  [(HUGridLayoutOptions *)self sectionBottomToNextSectionTitleBaselineDistance];
  [v11 setSectionBottomToNextSectionTitleBaselineDistance:?];
  [(HUGridLayoutOptions *)self sectionTitleMargin];
  [v11 setSectionTitleMargin:?];
  [(HUGridLayoutOptions *)self headlineBaselineToSceneHeaderBaselineDistance];
  [v11 setHeadlineBaselineToSceneHeaderBaselineDistance:?];
  [(HUGridLayoutOptions *)self minimumMarginBelowHeadline];
  [v11 setMinimumMarginBelowHeadline:?];
  [(HUGridLayoutOptions *)self rowSpacing];
  [v11 setRowSpacing:?];
  [(HUGridLayoutOptions *)self columnSpacing];
  [v11 setColumnSpacing:?];
  overrideNumberOfColumns = [(HUGridLayoutOptions *)self overrideNumberOfColumns];
  [v11 setOverrideNumberOfColumns:overrideNumberOfColumns];

  cameraCellOptions = [(HUGridLayoutOptions *)self cameraCellOptions];
  [v11 setCameraCellOptions:cameraCellOptions];

  headlineCellOptions = [(HUGridLayoutOptions *)self headlineCellOptions];
  [v11 setHeadlineCellOptions:headlineCellOptions];

  statusCellOptions = [(HUGridLayoutOptions *)self statusCellOptions];
  [v11 setStatusCellOptions:statusCellOptions];

  sceneCellOptions = [(HUGridLayoutOptions *)self sceneCellOptions];
  [v11 setSceneCellOptions:sceneCellOptions];

  placeholderSceneCellOptions = [(HUGridLayoutOptions *)self placeholderSceneCellOptions];
  [v11 setPlaceholderSceneCellOptions:placeholderSceneCellOptions];

  serviceCellOptions = [(HUGridLayoutOptions *)self serviceCellOptions];
  [v11 setServiceCellOptions:serviceCellOptions];

  placeholderServiceCellOptions = [(HUGridLayoutOptions *)self placeholderServiceCellOptions];
  [v11 setPlaceholderServiceCellOptions:placeholderServiceCellOptions];

  bannerCellOptions = [(HUGridLayoutOptions *)self bannerCellOptions];
  [v11 setBannerCellOptions:bannerCellOptions];

  welcomeUIBannerCellOptions = [(HUGridLayoutOptions *)self welcomeUIBannerCellOptions];
  [v11 setWelcomeUIBannerCellOptions:welcomeUIBannerCellOptions];

  [v11 setContentColorStyle:{-[HUGridLayoutOptions contentColorStyle](self, "contentColorStyle")}];
  contentSizeCategory = [(HUGridLayoutOptions *)self contentSizeCategory];
  [v11 setContentSizeCategory:contentSizeCategory];

  return v11;
}

- (HUGridLayoutOptions)initWithViewSize:(CGSize)size columnStyle:(unint64_t)style overrideSizeSubclass:(id)subclass
{
  height = size.height;
  width = size.width;
  subclassCopy = subclass;
  v14.receiver = self;
  v14.super_class = HUGridLayoutOptions;
  v11 = [(HUGridLayoutOptions *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_viewSize.width = width;
    v11->_viewSize.height = height;
    objc_storeStrong(&v11->_overrideViewSizeSubclass, subclass);
    v12->_columnStyle = style;
  }

  return v12;
}

- (void)setContentColorStyle:(unint64_t)style
{
  v14 = *MEMORY[0x277D85DE8];
  self->_contentColorStyle = style;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  _childDisplayOptions = [(HUGridLayoutOptions *)self _childDisplayOptions];
  v5 = [_childDisplayOptions countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(_childDisplayOptions);
        }

        [*(*(&v9 + 1) + 8 * v8++) setContentColorStyle:style];
      }

      while (v6 != v8);
      v6 = [_childDisplayOptions countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setContentSizeCategory:(id)category
{
  v15 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  self->_contentSizeCategory = categoryCopy;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  _childDisplayOptions = [(HUGridLayoutOptions *)self _childDisplayOptions];
  v6 = [_childDisplayOptions countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(_childDisplayOptions);
        }

        [*(*(&v10 + 1) + 8 * v9++) setContentSizeCategory:categoryCopy];
      }

      while (v7 != v9);
      v7 = [_childDisplayOptions countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setEditing:(BOOL)editing
{
  editingCopy = editing;
  self->_editing = editing;
  headlineCellOptions = [(HUGridLayoutOptions *)self headlineCellOptions];
  [headlineCellOptions setEditing:editingCopy];
}

- (int64_t)viewSizeSubclass
{
  overrideViewSizeSubclass = [(HUGridLayoutOptions *)self overrideViewSizeSubclass];

  if (overrideViewSizeSubclass)
  {
    overrideViewSizeSubclass2 = [(HUGridLayoutOptions *)self overrideViewSizeSubclass];
    integerValue = [overrideViewSizeSubclass2 integerValue];

    return integerValue;
  }

  else if ([(HUGridLayoutOptions *)self columnStyle])
  {
    return 7;
  }

  else
  {
    [(HUGridLayoutOptions *)self viewSize];

    return HUViewSizeSubclassForViewSize(v7, v8);
  }
}

- (int64_t)cellSizeSubclass
{
  viewSizeSubclass = [(HUGridLayoutOptions *)self viewSizeSubclass];

  return HUCellSizeSubclassForViewSizeSubclass(viewSizeSubclass);
}

- (int64_t)numberOfColumns
{
  overrideNumberOfColumns = [(HUGridLayoutOptions *)self overrideNumberOfColumns];

  if (overrideNumberOfColumns)
  {
    overrideNumberOfColumns2 = [(HUGridLayoutOptions *)self overrideNumberOfColumns];
    integerValue = [overrideNumberOfColumns2 integerValue];
LABEL_3:
    v6 = integerValue;

    return v6;
  }

  result = [(HUGridLayoutOptions *)self columnStyle];
  if (!result)
  {
    v15 = objc_opt_class();
    viewSizeSubclass = [(HUGridLayoutOptions *)self viewSizeSubclass];
    overrideNumberOfColumns2 = [(HUGridLayoutOptions *)self contentSizeCategory];
    integerValue = [v15 _numberOfColumnsForFlexibleWidthStyleWithSizeSubclass:viewSizeSubclass contentSizeCategory:overrideNumberOfColumns2];
    goto LABEL_3;
  }

  if (result == 1)
  {
    [(HUGridLayoutOptions *)self pointWidthForFullWidthCell];
    v9 = v8;
    [(HUGridLayoutOptions *)self pointWidthForNumberOfColumns:1];
    v11 = v10;
    [(HUGridLayoutOptions *)self columnSpacing];
    v13 = v11 + v12;
    [(HUGridLayoutOptions *)self columnSpacing];
    return vcvtmd_s64_f64((v9 + v14) / v13);
  }

  return result;
}

+ (unint64_t)_numberOfColumnsForFlexibleWidthStyleWithSizeSubclass:(int64_t)subclass contentSizeCategory:(id)category
{
  v5 = UIContentSizeCategoryCompareToCategory(*MEMORY[0x277D76808], category);
  if (subclass)
  {
    v6 = 0;
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v9 = v8;
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 nativeScale];
    v6 = v9 < v11;
  }

  v12 = objc_opt_class();
  if (v5 == NSOrderedDescending && !v6)
  {

    return [v12 _numberOfNormalColumnsForFlexibleWidthStyleWithSizeSubclass:subclass];
  }

  else
  {

    return [v12 _numberOfAccessibilityColumnsForFlexibleWidthStyleWithSizeSubclass:subclass];
  }
}

+ (unint64_t)_numberOfAccessibilityColumnsForFlexibleWidthStyleWithSizeSubclass:(int64_t)subclass
{
  result = 4;
  if (subclass > 5)
  {
    if (subclass > 8)
    {
      if (subclass == 9)
      {
        return result;
      }

      if (subclass != 10)
      {
        goto LABEL_15;
      }
    }

    else if ((subclass - 7) >= 2)
    {
      if (subclass == 6)
      {
        return 8;
      }

      goto LABEL_15;
    }

    return 6;
  }

  if (subclass < 4)
  {
    if ([MEMORY[0x277D14670] isHomeUIService])
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  if ((subclass - 4) < 2)
  {
    return result;
  }

LABEL_15:

  return [self _numberOfNormalColumnsForFlexibleWidthStyleWithSizeSubclass:?];
}

+ (unint64_t)_numberOfNormalColumnsForFlexibleWidthStyleWithSizeSubclass:(int64_t)subclass
{
  result = 8;
  if (subclass > 5)
  {
    v6 = 18;
    v7 = 12;
    if (subclass != 10)
    {
      v7 = 8;
    }

    if (subclass != 6)
    {
      v6 = v7;
    }

    if ((subclass - 7) >= 2)
    {
      return v6;
    }

    else
    {
      return 10;
    }
  }

  else if (subclass < 4)
  {
    if ([MEMORY[0x277D14670] isHomeUIService])
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }

  return result;
}

- (double)pointWidthForCurrentViewSizeSubclass
{
  if (![(HUGridLayoutOptions *)self viewSizeSubclass]|| [(HUGridLayoutOptions *)self viewSizeSubclass]== 1 || [(HUGridLayoutOptions *)self viewSizeSubclass]== 2 || [(HUGridLayoutOptions *)self viewSizeSubclass]== 6)
  {

    [(HUGridLayoutOptions *)self pointWidthForFullWidthCell];
  }

  else
  {
    [(HUGridLayoutOptions *)self columnSpacing];
    v5 = v4;
    [(HUGridLayoutOptions *)self pointWidthForNumberOfColumns:2];
    return v5 + v6 * 2.0;
  }

  return result;
}

- (double)fixedWidthForCell
{
  v3 = HUDefaultViewWidthForSizeSubclass([(HUGridLayoutOptions *)self viewSizeSubclass]);
  v4 = objc_opt_class();
  viewSizeSubclass = [(HUGridLayoutOptions *)self viewSizeSubclass];
  contentSizeCategory = [(HUGridLayoutOptions *)self contentSizeCategory];
  v7 = [v4 _numberOfColumnsForFlexibleWidthStyleWithSizeSubclass:viewSizeSubclass contentSizeCategory:contentSizeCategory];

  [(HUGridLayoutOptions *)self _pointWidthForFlexibleColumnStyleWithFractionalNumberOfColumns:v7 totalNumberOfColumns:1 totalWidth:1.0 useDefaultSectionMargin:v3];
  return result;
}

- (double)pointWidthForFullWidthCell
{
  [(HUGridLayoutOptions *)self viewSize];
  v4 = v3;
  [(HUGridLayoutOptions *)self sectionLeadingMargin];
  v6 = v4 - v5;
  [(HUGridLayoutOptions *)self sectionTrailingMargin];
  return v6 - v7;
}

- (double)_pointWidthForFractionalNumberOfColumns:(double)columns
{
  columnStyle = [(HUGridLayoutOptions *)self columnStyle];
  if (columnStyle)
  {
    if (columnStyle == 1)
    {

      [(HUGridLayoutOptions *)self _pointWidthForFixedColumnStyleWithFractionalNumberOfColumns:columns];
    }
  }

  else
  {
    numberOfColumns = [(HUGridLayoutOptions *)self numberOfColumns];
    [(HUGridLayoutOptions *)self viewSize];

    [(HUGridLayoutOptions *)self _pointWidthForFlexibleColumnStyleWithFractionalNumberOfColumns:numberOfColumns totalNumberOfColumns:0 totalWidth:columns useDefaultSectionMargin:v8];
  }

  return result;
}

- (double)_pointWidthForFixedColumnStyleWithFractionalNumberOfColumns:(double)columns
{
  v5 = HUDefaultViewWidthForSizeSubclass([(HUGridLayoutOptions *)self viewSizeSubclass]);
  v6 = objc_opt_class();
  viewSizeSubclass = [(HUGridLayoutOptions *)self viewSizeSubclass];
  contentSizeCategory = [(HUGridLayoutOptions *)self contentSizeCategory];
  v9 = [v6 _numberOfColumnsForFlexibleWidthStyleWithSizeSubclass:viewSizeSubclass contentSizeCategory:contentSizeCategory];

  [(HUGridLayoutOptions *)self _pointWidthForFlexibleColumnStyleWithFractionalNumberOfColumns:v9 totalNumberOfColumns:0 totalWidth:columns useDefaultSectionMargin:v5];
  return result;
}

- (double)_pointWidthForFlexibleColumnStyleWithFractionalNumberOfColumns:(double)columns totalNumberOfColumns:(int64_t)ofColumns totalWidth:(double)width useDefaultSectionMargin:(BOOL)margin
{
  if (margin)
  {
    v10 = 40.0;
  }

  else
  {
    [(HUGridLayoutOptions *)self sectionLeadingMargin];
    v12 = v11;
    [(HUGridLayoutOptions *)self sectionTrailingMargin];
    v10 = v12 + v13;
  }

  v25 = v10;
  v14 = width - v10;
  v15 = ofColumns + -1.0;
  [(HUGridLayoutOptions *)self columnSpacing];
  v17 = (v14 - v15 * v16) / ofColumns * columns;
  [(HUGridLayoutOptions *)self columnSpacing];
  v19 = HUFloorToScreenScale(v17 + (columns + -1.0) * v18);
  if (v19 >= 0.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0.0;
  }

  [(HUGridLayoutOptions *)self columnSpacing];
  v22 = (floor(v20 * 1000.0 + 1.0) / 1000.0 - (columns + -1.0) * v21) / columns * ofColumns;
  [(HUGridLayoutOptions *)self columnSpacing];
  if (v25 + v22 + v15 * v23 > width && v20 != 0.0)
  {
    return floor(v20 * 1000.0) / 1000.0;
  }

  return v20;
}

- (double)cameraCellWidth
{
  viewSizeSubclass = [(HUGridLayoutOptions *)self viewSizeSubclass];
  numberOfColumns = [(HUGridLayoutOptions *)self numberOfColumns];
  v5 = numberOfColumns;
  v6 = vcvts_n_f32_s64(numberOfColumns, 1uLL);
  if (viewSizeSubclass > 2)
  {
    v5 = v6;
  }

  v7 = v5;

  [(HUGridLayoutOptions *)self _pointWidthForFractionalNumberOfColumns:v7];
  return result;
}

- (double)cameraCellHeight
{
  cameraCellOptions = [(HUGridLayoutOptions *)self cameraCellOptions];
  [cameraCellOptions headerViewHeight];
  v5 = v4;
  [(HUGridLayoutOptions *)self cameraCellWidth];
  v7 = v6;
  cameraCellOptions2 = [(HUGridLayoutOptions *)self cameraCellOptions];
  [cameraCellOptions2 cameraViewAspectRatio];
  v10 = HURoundToScreenScale(v5 + v7 / v9);

  return v10;
}

- (double)headlineCellHeight
{
  headlineCellOptions = [(HUGridLayoutOptions *)self headlineCellOptions];
  [headlineCellOptions headlineBaselineOffset];
  v5 = v4;

  statusHidden = [(HUGridLayoutOptions *)self statusHidden];
  v7 = 0.0;
  if (statusHidden)
  {
    [(HUGridLayoutOptions *)self headlineBaselineToSceneHeaderBaselineDistance];
  }

  v8 = v5 + v7;
  isEditing = [(HUGridLayoutOptions *)self isEditing];
  result = v8 + 26.0;
  if (!isEditing)
  {
    return v8;
  }

  return result;
}

- (double)statusListCellHeight
{
  statusCellOptions = [(HUGridLayoutOptions *)self statusCellOptions];
  [statusCellOptions cellHeight];
  UICeilToViewScale();
  v4 = v3;

  return v4;
}

- (double)sectionHeaderCellHeight
{
  [(HUGridLayoutOptions *)self sectionBottomToNextSectionTitleBaselineDistance];
  v4 = v3;
  [(HUGridLayoutOptions *)self sectionBottomMargin];
  return v4 - v5;
}

- (double)statusListCellTopMargin
{
  isAMac = [MEMORY[0x277D14CE8] isAMac];
  [(HUGridLayoutOptions *)self gutter];
  if (isAMac)
  {
    return result + result;
  }

  return result;
}

- (double)preferredSectionHeightForNumberOfSceneRows:(unint64_t)rows
{
  sceneCellOptions = [(HUGridLayoutOptions *)self sceneCellOptions];
  [sceneCellOptions cellHeight];
  [(HUGridLayoutOptions *)self _preferredSectionHeightForNumberOfRows:rows withCellHeight:?];
  v7 = v6;

  return v7;
}

- (double)preferredSectionHeightForNumberOfServiceRows:(unint64_t)rows spanningColumns:(unint64_t)columns
{
  [(HUGridLayoutOptions *)self pointWidthForNumberOfColumns:columns];

  [(HUGridLayoutOptions *)self _preferredSectionHeightForNumberOfRows:rows withCellHeight:?];
  return result;
}

- (double)_preferredSectionHeightForNumberOfRows:(unint64_t)rows withCellHeight:(double)height
{
  [(HUGridLayoutOptions *)self sectionTopMargin];
  v8 = v7;
  [(HUGridLayoutOptions *)self sectionBottomMargin];
  v10 = v8 + v9 + rows * height;
  [(HUGridLayoutOptions *)self rowSpacing];
  return v10 + (rows - 1) * v11;
}

- (double)pointWidthForWelcomeUIBanner
{
  if (![(HUGridLayoutOptions *)self viewSizeSubclass]|| [(HUGridLayoutOptions *)self viewSizeSubclass]== 1 || [(HUGridLayoutOptions *)self viewSizeSubclass]== 2)
  {

    [(HUGridLayoutOptions *)self pointWidthForFullWidthCell];
  }

  else
  {
    [(HUGridLayoutOptions *)self columnSpacing];
    v5 = v4;
    [(HUGridLayoutOptions *)self pointWidthForNumberOfColumns:2];
    return v5 + v6 * 1.5;
  }

  return result;
}

- (id)_childDisplayOptions
{
  v12[7] = *MEMORY[0x277D85DE8];
  cameraCellOptions = [(HUGridLayoutOptions *)self cameraCellOptions];
  headlineCellOptions = [(HUGridLayoutOptions *)self headlineCellOptions];
  v12[1] = headlineCellOptions;
  statusCellOptions = [(HUGridLayoutOptions *)self statusCellOptions];
  v12[2] = statusCellOptions;
  sceneCellOptions = [(HUGridLayoutOptions *)self sceneCellOptions];
  v12[3] = sceneCellOptions;
  placeholderSceneCellOptions = [(HUGridLayoutOptions *)self placeholderSceneCellOptions];
  v12[4] = placeholderSceneCellOptions;
  serviceCellOptions = [(HUGridLayoutOptions *)self serviceCellOptions];
  v12[5] = serviceCellOptions;
  placeholderServiceCellOptions = [(HUGridLayoutOptions *)self placeholderServiceCellOptions];
  v12[6] = placeholderServiceCellOptions;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:7];

  return v10;
}

- (id)_columnStyleToString:(unint64_t)string
{
  v3 = &stru_2823E0EE8;
  if (!string)
  {
    v3 = @"HUGridLayoutColumnStyleFlexibleWidth";
  }

  if (string == 1)
  {
    return @"HUGridLayoutColumnStyleFixedWidth";
  }

  else
  {
    return v3;
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  v4 = MEMORY[0x277CCACA8];
  [(HUGridLayoutOptions *)self viewSize];
  v6 = v5;
  [(HUGridLayoutOptions *)self viewSize];
  v8 = [v4 stringWithFormat:@"(%f, %f)", v6, v7];
  [v3 appendString:v8 withName:@"viewSize"];
  v9 = [(HUGridLayoutOptions *)self _columnStyleToString:[(HUGridLayoutOptions *)self columnStyle]];
  [v3 appendString:v9 withName:@"columnStyle"];

  v10 = [v3 appendBool:-[HUGridLayoutOptions isEditing](self withName:{"isEditing"), @"editing"}];
  build = [v3 build];

  return build;
}

- (CGSize)viewSize
{
  width = self->_viewSize.width;
  height = self->_viewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)sectionTitleMargin
{
  top = self->_sectionTitleMargin.top;
  left = self->_sectionTitleMargin.left;
  bottom = self->_sectionTitleMargin.bottom;
  right = self->_sectionTitleMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end