@interface HUGridLayoutOptions
+ (id)defaultOptionsForViewSize:(CGSize)a3 columnStyle:(unint64_t)a4 overrideSizeSubclass:(id)a5;
+ (id)defaultOptionsForViewSize:(CGSize)a3 overrideSizeSubclass:(int64_t)a4;
+ (unint64_t)_numberOfAccessibilityColumnsForFlexibleWidthStyleWithSizeSubclass:(int64_t)a3;
+ (unint64_t)_numberOfColumnsForFlexibleWidthStyleWithSizeSubclass:(int64_t)a3 contentSizeCategory:(id)a4;
+ (unint64_t)_numberOfNormalColumnsForFlexibleWidthStyleWithSizeSubclass:(int64_t)a3;
- (CGSize)viewSize;
- (HUGridLayoutOptions)initWithViewSize:(CGSize)a3 columnStyle:(unint64_t)a4 overrideSizeSubclass:(id)a5;
- (NSString)description;
- (UIEdgeInsets)sectionTitleMargin;
- (double)_pointWidthForFixedColumnStyleWithFractionalNumberOfColumns:(double)a3;
- (double)_pointWidthForFlexibleColumnStyleWithFractionalNumberOfColumns:(double)a3 totalNumberOfColumns:(int64_t)a4 totalWidth:(double)a5 useDefaultSectionMargin:(BOOL)a6;
- (double)_pointWidthForFractionalNumberOfColumns:(double)a3;
- (double)_preferredSectionHeightForNumberOfRows:(unint64_t)a3 withCellHeight:(double)a4;
- (double)cameraCellHeight;
- (double)cameraCellWidth;
- (double)fixedWidthForCell;
- (double)headlineCellHeight;
- (double)pointWidthForCurrentViewSizeSubclass;
- (double)pointWidthForFullWidthCell;
- (double)pointWidthForWelcomeUIBanner;
- (double)preferredSectionHeightForNumberOfSceneRows:(unint64_t)a3;
- (double)preferredSectionHeightForNumberOfServiceRows:(unint64_t)a3 spanningColumns:(unint64_t)a4;
- (double)sectionHeaderCellHeight;
- (double)statusListCellHeight;
- (double)statusListCellTopMargin;
- (id)_childDisplayOptions;
- (id)_columnStyleToString:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)cellSizeSubclass;
- (int64_t)numberOfColumns;
- (int64_t)viewSizeSubclass;
- (void)setContentColorStyle:(unint64_t)a3;
- (void)setContentSizeCategory:(id)a3;
- (void)setEditing:(BOOL)a3;
@end

@implementation HUGridLayoutOptions

+ (id)defaultOptionsForViewSize:(CGSize)a3 overrideSizeSubclass:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v8 = [a1 defaultOptionsForViewSize:0 columnStyle:v7 overrideSizeSubclass:{width, height}];

  return v8;
}

+ (id)defaultOptionsForViewSize:(CGSize)a3 columnStyle:(unint64_t)a4 overrideSizeSubclass:(id)a5
{
  height = a3.height;
  width = a3.width;
  v62[6] = *MEMORY[0x277D85DE8];
  v9 = a5;
  v10 = [[a1 alloc] initWithViewSize:a4 columnStyle:v9 overrideSizeSubclass:{width, height}];

  v11 = [v10 viewSizeSubclass];
  v12 = [v10 cellSizeSubclass];
  v13 = [HUGridCameraCellLayoutOptions defaultOptionsForCellSizeSubclass:v12];
  [v10 setCameraCellOptions:v13];

  v14 = [HUGridStatusCellLayoutOptions defaultOptionsForCellSizeSubclass:v12];
  [v10 setStatusCellOptions:v14];

  v15 = [HUGridSceneCellLayoutOptions defaultOptionsForCellSizeSubclass:v12];
  [v10 setSceneCellOptions:v15];

  v16 = [HUGridScenePlaceholderLayoutOptions defaultOptionsForCellSizeSubclass:v12];
  [v10 setPlaceholderSceneCellOptions:v16];

  v17 = [HUGridServiceCellLayoutOptions defaultOptionsForCellSizeSubclass:v12];
  [v10 setServiceCellOptions:v17];

  v18 = [HUGridPlaceholderServiceCellLayoutOptions defaultOptionsForCellSizeSubclass:v12];
  [v10 setPlaceholderServiceCellOptions:v18];

  v19 = [HUGridBannerCellLayoutOptions defaultOptionsForCellSizeSubclass:v12];
  [v10 setBannerCellOptions:v19];

  v20 = [HUGridWelcomeUIBannerCellLayoutOptions defaultOptionsForCellSizeSubclass:v12];
  [v10 setWelcomeUIBannerCellOptions:v20];

  v21 = [HUFilterCategoryCellLayoutOptions defaultOptionsForCellSizeSubclass:v12];
  [v10 setFilterCategoryCellOptions:v21];

  v22 = [HUGridMediaPlatterCellLayoutOptions defaultOptionsForCellSizeSubclass:v12];
  [v10 setMediaPlatterCellOptions:v22];

  [v10 setScrollDirection:0];
  v23 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D769A8] traits:32770];
  [v10 setHeadlineFont:v23];

  v24 = [MEMORY[0x277D756E0] prominentInsetGroupedHeaderConfiguration];
  v25 = [v24 textProperties];
  v26 = [v25 font];
  v27 = [v26 copy];
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
  [v10 setHeadlineBaselineToSceneHeaderBaselineDistance:{HUConstantFloatForViewSizeSubclass(v11, v28)}];

  v29 = [v10 sectionHeaderFont];
  v30 = v29;
  v31 = 10.0;
  if (v11 == 6)
  {
    v31 = 8.0;
  }

  [v29 _scaledValueForValue:v31];
  [v10 setSectionTopMargin:?];

  [v10 sectionTopMargin];
  [v10 setSectionBottomMargin:?];
  v59[0] = &unk_282492288;
  v59[1] = &unk_282492270;
  v60[0] = &unk_282493620;
  v60[1] = &unk_282493630;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
  [v10 setSectionLeadingMargin:{HUConstantFloatForViewSizeSubclass(v11, v32)}];

  [v10 sectionLeadingMargin];
  [v10 setSectionTrailingMargin:?];
  [v10 sectionLeadingMargin];
  v34 = v33;
  [v10 sectionTrailingMargin];
  v36 = [HUGridHeadlineCellLayoutOptions defaultOptionsForCellSizeSubclass:v12 viewSizeSubclass:v11 viewWidth:width containerLeadingMargin:v34 containerTrailingMargin:v35];
  [v10 setHeadlineCellOptions:v36];

  v57[0] = &unk_282492270;
  v57[1] = &unk_2824922B8;
  v58[0] = &unk_282492300;
  v58[1] = &unk_282492300;
  v57[2] = &unk_2824922E8;
  v58[2] = &unk_282492318;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:3];
  v38 = HUConstantFloatForViewSizeSubclass(v11, v37);

  v39 = [v10 sectionHeaderFont];
  [v39 _scaledValueForValue:v38];
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
  v44 = HUConstantFloatForViewSizeSubclass(v11, v43);

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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  [(HUGridLayoutOptions *)self viewSize];
  v6 = v5;
  v8 = v7;
  v9 = [(HUGridLayoutOptions *)self columnStyle];
  v10 = [(HUGridLayoutOptions *)self overrideViewSizeSubclass];
  v11 = [v4 initWithViewSize:v9 columnStyle:v10 overrideSizeSubclass:{v6, v8}];

  [v11 setScrollDirection:{-[HUGridLayoutOptions scrollDirection](self, "scrollDirection")}];
  [v11 setStatusHidden:{-[HUGridLayoutOptions statusHidden](self, "statusHidden")}];
  [v11 setHeadlineHidden:{-[HUGridLayoutOptions headlineHidden](self, "headlineHidden")}];
  [v11 setEditing:{-[HUGridLayoutOptions isEditing](self, "isEditing")}];
  v12 = [(HUGridLayoutOptions *)self headlineFont];
  [v11 setHeadlineFont:v12];

  v13 = [(HUGridLayoutOptions *)self sectionHeaderFont];
  [v11 setSectionHeaderFont:v13];

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
  v14 = [(HUGridLayoutOptions *)self overrideNumberOfColumns];
  [v11 setOverrideNumberOfColumns:v14];

  v15 = [(HUGridLayoutOptions *)self cameraCellOptions];
  [v11 setCameraCellOptions:v15];

  v16 = [(HUGridLayoutOptions *)self headlineCellOptions];
  [v11 setHeadlineCellOptions:v16];

  v17 = [(HUGridLayoutOptions *)self statusCellOptions];
  [v11 setStatusCellOptions:v17];

  v18 = [(HUGridLayoutOptions *)self sceneCellOptions];
  [v11 setSceneCellOptions:v18];

  v19 = [(HUGridLayoutOptions *)self placeholderSceneCellOptions];
  [v11 setPlaceholderSceneCellOptions:v19];

  v20 = [(HUGridLayoutOptions *)self serviceCellOptions];
  [v11 setServiceCellOptions:v20];

  v21 = [(HUGridLayoutOptions *)self placeholderServiceCellOptions];
  [v11 setPlaceholderServiceCellOptions:v21];

  v22 = [(HUGridLayoutOptions *)self bannerCellOptions];
  [v11 setBannerCellOptions:v22];

  v23 = [(HUGridLayoutOptions *)self welcomeUIBannerCellOptions];
  [v11 setWelcomeUIBannerCellOptions:v23];

  [v11 setContentColorStyle:{-[HUGridLayoutOptions contentColorStyle](self, "contentColorStyle")}];
  v24 = [(HUGridLayoutOptions *)self contentSizeCategory];
  [v11 setContentSizeCategory:v24];

  return v11;
}

- (HUGridLayoutOptions)initWithViewSize:(CGSize)a3 columnStyle:(unint64_t)a4 overrideSizeSubclass:(id)a5
{
  height = a3.height;
  width = a3.width;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HUGridLayoutOptions;
  v11 = [(HUGridLayoutOptions *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_viewSize.width = width;
    v11->_viewSize.height = height;
    objc_storeStrong(&v11->_overrideViewSizeSubclass, a5);
    v12->_columnStyle = a4;
  }

  return v12;
}

- (void)setContentColorStyle:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  self->_contentColorStyle = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(HUGridLayoutOptions *)self _childDisplayOptions];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) setContentColorStyle:a3];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setContentSizeCategory:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  self->_contentSizeCategory = v4;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(HUGridLayoutOptions *)self _childDisplayOptions];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setContentSizeCategory:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setEditing:(BOOL)a3
{
  v3 = a3;
  self->_editing = a3;
  v4 = [(HUGridLayoutOptions *)self headlineCellOptions];
  [v4 setEditing:v3];
}

- (int64_t)viewSizeSubclass
{
  v3 = [(HUGridLayoutOptions *)self overrideViewSizeSubclass];

  if (v3)
  {
    v4 = [(HUGridLayoutOptions *)self overrideViewSizeSubclass];
    v5 = [v4 integerValue];

    return v5;
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
  v2 = [(HUGridLayoutOptions *)self viewSizeSubclass];

  return HUCellSizeSubclassForViewSizeSubclass(v2);
}

- (int64_t)numberOfColumns
{
  v3 = [(HUGridLayoutOptions *)self overrideNumberOfColumns];

  if (v3)
  {
    v4 = [(HUGridLayoutOptions *)self overrideNumberOfColumns];
    v5 = [v4 integerValue];
LABEL_3:
    v6 = v5;

    return v6;
  }

  result = [(HUGridLayoutOptions *)self columnStyle];
  if (!result)
  {
    v15 = objc_opt_class();
    v16 = [(HUGridLayoutOptions *)self viewSizeSubclass];
    v4 = [(HUGridLayoutOptions *)self contentSizeCategory];
    v5 = [v15 _numberOfColumnsForFlexibleWidthStyleWithSizeSubclass:v16 contentSizeCategory:v4];
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

+ (unint64_t)_numberOfColumnsForFlexibleWidthStyleWithSizeSubclass:(int64_t)a3 contentSizeCategory:(id)a4
{
  v5 = UIContentSizeCategoryCompareToCategory(*MEMORY[0x277D76808], a4);
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v7 = [MEMORY[0x277D759A0] mainScreen];
    [v7 scale];
    v9 = v8;
    v10 = [MEMORY[0x277D759A0] mainScreen];
    [v10 nativeScale];
    v6 = v9 < v11;
  }

  v12 = objc_opt_class();
  if (v5 == NSOrderedDescending && !v6)
  {

    return [v12 _numberOfNormalColumnsForFlexibleWidthStyleWithSizeSubclass:a3];
  }

  else
  {

    return [v12 _numberOfAccessibilityColumnsForFlexibleWidthStyleWithSizeSubclass:a3];
  }
}

+ (unint64_t)_numberOfAccessibilityColumnsForFlexibleWidthStyleWithSizeSubclass:(int64_t)a3
{
  result = 4;
  if (a3 > 5)
  {
    if (a3 > 8)
    {
      if (a3 == 9)
      {
        return result;
      }

      if (a3 != 10)
      {
        goto LABEL_15;
      }
    }

    else if ((a3 - 7) >= 2)
    {
      if (a3 == 6)
      {
        return 8;
      }

      goto LABEL_15;
    }

    return 6;
  }

  if (a3 < 4)
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

  if ((a3 - 4) < 2)
  {
    return result;
  }

LABEL_15:

  return [a1 _numberOfNormalColumnsForFlexibleWidthStyleWithSizeSubclass:?];
}

+ (unint64_t)_numberOfNormalColumnsForFlexibleWidthStyleWithSizeSubclass:(int64_t)a3
{
  result = 8;
  if (a3 > 5)
  {
    v6 = 18;
    v7 = 12;
    if (a3 != 10)
    {
      v7 = 8;
    }

    if (a3 != 6)
    {
      v6 = v7;
    }

    if ((a3 - 7) >= 2)
    {
      return v6;
    }

    else
    {
      return 10;
    }
  }

  else if (a3 < 4)
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
  v5 = [(HUGridLayoutOptions *)self viewSizeSubclass];
  v6 = [(HUGridLayoutOptions *)self contentSizeCategory];
  v7 = [v4 _numberOfColumnsForFlexibleWidthStyleWithSizeSubclass:v5 contentSizeCategory:v6];

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

- (double)_pointWidthForFractionalNumberOfColumns:(double)a3
{
  v5 = [(HUGridLayoutOptions *)self columnStyle];
  if (v5)
  {
    if (v5 == 1)
    {

      [(HUGridLayoutOptions *)self _pointWidthForFixedColumnStyleWithFractionalNumberOfColumns:a3];
    }
  }

  else
  {
    v7 = [(HUGridLayoutOptions *)self numberOfColumns];
    [(HUGridLayoutOptions *)self viewSize];

    [(HUGridLayoutOptions *)self _pointWidthForFlexibleColumnStyleWithFractionalNumberOfColumns:v7 totalNumberOfColumns:0 totalWidth:a3 useDefaultSectionMargin:v8];
  }

  return result;
}

- (double)_pointWidthForFixedColumnStyleWithFractionalNumberOfColumns:(double)a3
{
  v5 = HUDefaultViewWidthForSizeSubclass([(HUGridLayoutOptions *)self viewSizeSubclass]);
  v6 = objc_opt_class();
  v7 = [(HUGridLayoutOptions *)self viewSizeSubclass];
  v8 = [(HUGridLayoutOptions *)self contentSizeCategory];
  v9 = [v6 _numberOfColumnsForFlexibleWidthStyleWithSizeSubclass:v7 contentSizeCategory:v8];

  [(HUGridLayoutOptions *)self _pointWidthForFlexibleColumnStyleWithFractionalNumberOfColumns:v9 totalNumberOfColumns:0 totalWidth:a3 useDefaultSectionMargin:v5];
  return result;
}

- (double)_pointWidthForFlexibleColumnStyleWithFractionalNumberOfColumns:(double)a3 totalNumberOfColumns:(int64_t)a4 totalWidth:(double)a5 useDefaultSectionMargin:(BOOL)a6
{
  if (a6)
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
  v14 = a5 - v10;
  v15 = a4 + -1.0;
  [(HUGridLayoutOptions *)self columnSpacing];
  v17 = (v14 - v15 * v16) / a4 * a3;
  [(HUGridLayoutOptions *)self columnSpacing];
  v19 = HUFloorToScreenScale(v17 + (a3 + -1.0) * v18);
  if (v19 >= 0.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0.0;
  }

  [(HUGridLayoutOptions *)self columnSpacing];
  v22 = (floor(v20 * 1000.0 + 1.0) / 1000.0 - (a3 + -1.0) * v21) / a3 * a4;
  [(HUGridLayoutOptions *)self columnSpacing];
  if (v25 + v22 + v15 * v23 > a5 && v20 != 0.0)
  {
    return floor(v20 * 1000.0) / 1000.0;
  }

  return v20;
}

- (double)cameraCellWidth
{
  v3 = [(HUGridLayoutOptions *)self viewSizeSubclass];
  v4 = [(HUGridLayoutOptions *)self numberOfColumns];
  v5 = v4;
  v6 = vcvts_n_f32_s64(v4, 1uLL);
  if (v3 > 2)
  {
    v5 = v6;
  }

  v7 = v5;

  [(HUGridLayoutOptions *)self _pointWidthForFractionalNumberOfColumns:v7];
  return result;
}

- (double)cameraCellHeight
{
  v3 = [(HUGridLayoutOptions *)self cameraCellOptions];
  [v3 headerViewHeight];
  v5 = v4;
  [(HUGridLayoutOptions *)self cameraCellWidth];
  v7 = v6;
  v8 = [(HUGridLayoutOptions *)self cameraCellOptions];
  [v8 cameraViewAspectRatio];
  v10 = HURoundToScreenScale(v5 + v7 / v9);

  return v10;
}

- (double)headlineCellHeight
{
  v3 = [(HUGridLayoutOptions *)self headlineCellOptions];
  [v3 headlineBaselineOffset];
  v5 = v4;

  v6 = [(HUGridLayoutOptions *)self statusHidden];
  v7 = 0.0;
  if (v6)
  {
    [(HUGridLayoutOptions *)self headlineBaselineToSceneHeaderBaselineDistance];
  }

  v8 = v5 + v7;
  v9 = [(HUGridLayoutOptions *)self isEditing];
  result = v8 + 26.0;
  if (!v9)
  {
    return v8;
  }

  return result;
}

- (double)statusListCellHeight
{
  v2 = [(HUGridLayoutOptions *)self statusCellOptions];
  [v2 cellHeight];
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
  v3 = [MEMORY[0x277D14CE8] isAMac];
  [(HUGridLayoutOptions *)self gutter];
  if (v3)
  {
    return result + result;
  }

  return result;
}

- (double)preferredSectionHeightForNumberOfSceneRows:(unint64_t)a3
{
  v5 = [(HUGridLayoutOptions *)self sceneCellOptions];
  [v5 cellHeight];
  [(HUGridLayoutOptions *)self _preferredSectionHeightForNumberOfRows:a3 withCellHeight:?];
  v7 = v6;

  return v7;
}

- (double)preferredSectionHeightForNumberOfServiceRows:(unint64_t)a3 spanningColumns:(unint64_t)a4
{
  [(HUGridLayoutOptions *)self pointWidthForNumberOfColumns:a4];

  [(HUGridLayoutOptions *)self _preferredSectionHeightForNumberOfRows:a3 withCellHeight:?];
  return result;
}

- (double)_preferredSectionHeightForNumberOfRows:(unint64_t)a3 withCellHeight:(double)a4
{
  [(HUGridLayoutOptions *)self sectionTopMargin];
  v8 = v7;
  [(HUGridLayoutOptions *)self sectionBottomMargin];
  v10 = v8 + v9 + a3 * a4;
  [(HUGridLayoutOptions *)self rowSpacing];
  return v10 + (a3 - 1) * v11;
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
  v3 = [(HUGridLayoutOptions *)self cameraCellOptions];
  v4 = [(HUGridLayoutOptions *)self headlineCellOptions];
  v12[1] = v4;
  v5 = [(HUGridLayoutOptions *)self statusCellOptions];
  v12[2] = v5;
  v6 = [(HUGridLayoutOptions *)self sceneCellOptions];
  v12[3] = v6;
  v7 = [(HUGridLayoutOptions *)self placeholderSceneCellOptions];
  v12[4] = v7;
  v8 = [(HUGridLayoutOptions *)self serviceCellOptions];
  v12[5] = v8;
  v9 = [(HUGridLayoutOptions *)self placeholderServiceCellOptions];
  v12[6] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:7];

  return v10;
}

- (id)_columnStyleToString:(unint64_t)a3
{
  v3 = &stru_2823E0EE8;
  if (!a3)
  {
    v3 = @"HUGridLayoutColumnStyleFlexibleWidth";
  }

  if (a3 == 1)
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
  v11 = [v3 build];

  return v11;
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