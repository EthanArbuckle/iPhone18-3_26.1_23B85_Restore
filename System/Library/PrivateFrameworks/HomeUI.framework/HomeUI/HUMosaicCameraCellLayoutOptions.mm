@interface HUMosaicCameraCellLayoutOptions
+ (id)defaultOptionsForCellSizeSubclass:(int64_t)subclass viewSizeSubclass:(int64_t)sizeSubclass;
- (double)cameraCellWidth;
- (double)cornerRadiusForCellSize:(CGSize)size;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)numColumnsForContainerWidth:(double)width minimumCameraCellWidth:(double)cellWidth padding:(double)padding;
@end

@implementation HUMosaicCameraCellLayoutOptions

+ (id)defaultOptionsForCellSizeSubclass:(int64_t)subclass viewSizeSubclass:(int64_t)sizeSubclass
{
  v20[5] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = &OBJC_METACLASS___HUMosaicCameraCellLayoutOptions;
  v6 = objc_msgSendSuper2(&v18, sel_defaultOptionsForCellSizeSubclass_);
  [v6 setViewSizeSubclass:sizeSubclass];
  v7 = *MEMORY[0x277D769D0];
  v8 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D769D0] variant:1024];
  [v6 setFont:v8];

  v9 = MEMORY[0x277D74300];
  [MEMORY[0x277D74300] systemFontSize];
  v10 = [v9 monospacedDigitSystemFontOfSize:? weight:?];
  v11 = [MEMORY[0x277D75520] metricsForTextStyle:v7];
  v12 = [v11 scaledFontForFont:v10];
  [v6 setTimingLabelFont:v12];

  v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:v7];
  [v6 setSecondaryLabelFont:v13];

  [v6 setDescriptionInset:10.0];
  v19[0] = &unk_282492288;
  v19[1] = &unk_282492270;
  v20[0] = &unk_2824937D0;
  v20[1] = &unk_2824937E0;
  v19[2] = &unk_2824922A0;
  v19[3] = &unk_282492330;
  v20[2] = &unk_2824937F0;
  v20[3] = &unk_282493650;
  v19[4] = &unk_2824922B8;
  v20[4] = &unk_2824937E0;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];
  [v6 setInterItemSpacing:{HUConstantForCellSizeSubclass(subclass, v14)}];

  [v6 setExpandedFormatAspectRatio:0.98];
  if (subclass == 3)
  {
    [v6 setMaxWidth:359.0];
  }

  else
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    [v6 setMaxWidth:v16];
  }

  [v6 setMosaicInterItemSpacing:2.0];

  return v6;
}

- (unint64_t)numColumnsForContainerWidth:(double)width minimumCameraCellWidth:(double)cellWidth padding:(double)padding
{
  if ([(HUGridCellLayoutOptions *)self cellSizeSubclass]== 3 && cellWidth + cellWidth + padding - width < 0.00000011920929)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (double)cameraCellWidth
{
  v3 = HUDefaultViewWidthForSizeSubclass([(HUMosaicCameraCellLayoutOptions *)self viewSizeSubclass]);
  [(HUMosaicCameraCellLayoutOptions *)self maxWidth];
  if (v3 < v4)
  {
    v4 = v3;
  }

  return v4 + -40.0;
}

- (double)cornerRadiusForCellSize:(CGSize)size
{
  if (![(HUMosaicCameraCellLayoutOptions *)self isSingleCell:size.width])
  {
    return 0.0;
  }

  [(HUGridCellLayoutOptions *)self cellCornerRadius];
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = HUMosaicCameraCellLayoutOptions;
  v4 = [(HUGridCellLayoutOptions *)&v6 copyWithZone:zone];
  [(HUMosaicCameraCellLayoutOptions *)self descriptionInset];
  [v4 setDescriptionInset:?];
  return v4;
}

@end