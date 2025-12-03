@interface WDMedicalRecordDisplayItem
+ (id)accountSourceItem;
+ (id)conceptCardItemWithCategoryType:(int64_t)type;
+ (id)conceptHeaderItemWithCategoryType:(int64_t)type title:(id)title;
+ (id)detailAttributedSubtitleItem;
+ (id)detailSpinnerItem;
+ (id)detailSubtitleItem;
+ (id)detailSubtitleItemWithTitle:(id)title subtitle:(id)subtitle;
+ (id)detailSubtitleItemWithTitle:(id)title subtitle:(id)subtitle extraTopPadding:(BOOL)padding;
+ (id)detailTitleItem;
+ (id)recordCardItem;
+ (id)sectionHeaderItem;
+ (id)standaloneItem;
+ (id)timelineSummaryAppendixItem;
+ (id)timelineSummaryCategoryMinimizedItem;
+ (id)timelineSummaryCategoryMinimizedItemWithCategoryType:(int64_t)type;
+ (id)timelineSummaryCategoryTitleItem;
+ (id)timelineSummaryCategoryTitleItemWithCategoryType:(int64_t)type;
+ (id)timelineSummaryContentWithSubtitleItem;
+ (id)timelineSummaryDetailCategoryTitleItemWithMedicalRecord:(id)record;
+ (id)timelineSummaryPanelTitleItem;
+ (id)timelineSummaryReferenceRangeItem;
+ (id)timelineSummarySourceTitleItem;
+ (id)timelineSummaryValueItem;
- (UIEdgeInsets)separatorInsets;
- (WDMedicalRecordCategorySummary)categorySummary;
- (WDMedicalRecordDisplayItem)init;
- (id)description;
@end

@implementation WDMedicalRecordDisplayItem

- (WDMedicalRecordDisplayItem)init
{
  v8.receiver = self;
  v8.super_class = WDMedicalRecordDisplayItem;
  v2 = [(WDMedicalRecordDisplayItem *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_separatorStyle = 1;
    v2->_separatorHidden = 1;
    +[WDMedicalRecordGroupableCell defaultGap];
    v5 = v4;
    +[WDMedicalRecordGroupableCell defaultGap];
    v3->_separatorInsets.top = 0.0;
    v3->_separatorInsets.left = v5;
    v3->_separatorInsets.bottom = 0.0;
    v3->_separatorInsets.right = v6;
    v3->_actionEnabled = 1;
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  displayItemType = [(WDMedicalRecordDisplayItem *)self displayItemType];
  title = [(WDMedicalRecordDisplayItem *)self title];
  subtitle = [(WDMedicalRecordDisplayItem *)self subtitle];
  valueString = [(WDMedicalRecordDisplayItem *)self valueString];
  chartValueWithRange = [(WDMedicalRecordDisplayItem *)self chartValueWithRange];
  v9 = [v3 stringWithFormat:@"Display Item Type: %li, Title: %@, Subtitle: %@, Value: %@, Chart Value: %@", displayItemType, title, subtitle, valueString, chartValueWithRange];

  return v9;
}

+ (id)recordCardItem
{
  v2 = objc_alloc_init(WDMedicalRecordDisplayItem);
  [(WDMedicalRecordDisplayItem *)v2 setDisplayItemType:0];

  return v2;
}

+ (id)timelineSummaryCategoryTitleItem
{
  v2 = objc_alloc_init(WDMedicalRecordDisplayItem);
  [(WDMedicalRecordDisplayItem *)v2 setDisplayItemType:2];

  return v2;
}

+ (id)timelineSummaryCategoryTitleItemWithCategoryType:(int64_t)type
{
  v4 = objc_alloc_init(WDMedicalRecordDisplayItem);
  [(WDMedicalRecordDisplayItem *)v4 setDisplayItemType:2];
  [(WDMedicalRecordDisplayItem *)v4 setPlacement:3];
  v5 = +[WDMedicalRecordDisplayItemProvider supportedRecordCategoriesByCategoryType];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v7 = [v5 objectForKeyedSubscript:v6];

  displayName = [v7 displayName];
  [(WDMedicalRecordDisplayItem *)v4 setTitle:displayName];

  displayImage = [v7 displayImage];
  [(WDMedicalRecordDisplayItem *)v4 setImage:displayImage];

  categoryMetricColors = [v7 categoryMetricColors];
  [(WDMedicalRecordDisplayItem *)v4 setMetricColors:categoryMetricColors];

  -[WDMedicalRecordDisplayItem setRecordCategoryType:](v4, "setRecordCategoryType:", [v7 categoryType]);

  return v4;
}

+ (id)timelineSummaryDetailCategoryTitleItemWithMedicalRecord:(id)record
{
  recordCopy = record;
  v4 = objc_alloc_init(WDMedicalRecordDisplayItem);
  [(WDMedicalRecordDisplayItem *)v4 setDisplayItemType:2];
  [(WDMedicalRecordDisplayItem *)v4 setPlacement:3];
  title = [recordCopy title];
  [(WDMedicalRecordDisplayItem *)v4 setTitle:title];

  v6 = +[WDMedicalRecordDisplayItemProvider supportedRecordCategoriesByCategoryType];
  v7 = MEMORY[0x1E696AD98];
  recordCategoryType = [recordCopy recordCategoryType];

  v9 = [v7 numberWithInteger:recordCategoryType];
  v10 = [v6 objectForKeyedSubscript:v9];

  displayImage = [v10 displayImage];
  [(WDMedicalRecordDisplayItem *)v4 setImage:displayImage];

  categoryMetricColors = [v10 categoryMetricColors];
  [(WDMedicalRecordDisplayItem *)v4 setMetricColors:categoryMetricColors];

  -[WDMedicalRecordDisplayItem setRecordCategoryType:](v4, "setRecordCategoryType:", [v10 categoryType]);

  return v4;
}

+ (id)timelineSummaryCategoryMinimizedItem
{
  v2 = objc_alloc_init(WDMedicalRecordDisplayItem);
  [(WDMedicalRecordDisplayItem *)v2 setDisplayItemType:3];

  return v2;
}

+ (id)timelineSummaryCategoryMinimizedItemWithCategoryType:(int64_t)type
{
  v4 = objc_alloc_init(WDMedicalRecordDisplayItem);
  [(WDMedicalRecordDisplayItem *)v4 setDisplayItemType:3];
  [(WDMedicalRecordDisplayItem *)v4 setPlacement:3];
  v5 = +[WDMedicalRecordDisplayItemProvider supportedRecordCategoriesByCategoryType];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v7 = [v5 objectForKeyedSubscript:v6];

  categoryMetricColors = [v7 categoryMetricColors];
  [(WDMedicalRecordDisplayItem *)v4 setMetricColors:categoryMetricColors];

  -[WDMedicalRecordDisplayItem setRecordCategoryType:](v4, "setRecordCategoryType:", [v7 categoryType]);

  return v4;
}

+ (id)timelineSummarySourceTitleItem
{
  v2 = objc_alloc_init(WDMedicalRecordDisplayItem);
  [(WDMedicalRecordDisplayItem *)v2 setDisplayItemType:1];

  return v2;
}

+ (id)timelineSummaryContentWithSubtitleItem
{
  v2 = objc_alloc_init(WDMedicalRecordDisplayItem);
  [(WDMedicalRecordDisplayItem *)v2 setDisplayItemType:4];
  [(WDMedicalRecordDisplayItem *)v2 setShowDisclosureIndicator:0];

  return v2;
}

+ (id)timelineSummaryValueItem
{
  v2 = objc_alloc_init(WDMedicalRecordDisplayItem);
  [(WDMedicalRecordDisplayItem *)v2 setDisplayItemType:5];

  return v2;
}

+ (id)timelineSummaryReferenceRangeItem
{
  v2 = objc_alloc_init(WDMedicalRecordDisplayItem);
  [(WDMedicalRecordDisplayItem *)v2 setDisplayItemType:6];

  return v2;
}

+ (id)timelineSummaryAppendixItem
{
  v2 = objc_alloc_init(WDMedicalRecordDisplayItem);
  [(WDMedicalRecordDisplayItem *)v2 setDisplayItemType:7];
  [(WDMedicalRecordDisplayItem *)v2 setSeparatorHidden:1];

  return v2;
}

+ (id)timelineSummaryPanelTitleItem
{
  v2 = objc_alloc_init(WDMedicalRecordDisplayItem);
  [(WDMedicalRecordDisplayItem *)v2 setDisplayItemType:8];
  [(WDMedicalRecordDisplayItem *)v2 setPlacement:1];

  return v2;
}

+ (id)detailTitleItem
{
  v2 = objc_alloc_init(WDMedicalRecordDisplayItem);
  [(WDMedicalRecordDisplayItem *)v2 setDisplayItemType:14];

  return v2;
}

+ (id)detailSubtitleItem
{
  v2 = objc_alloc_init(WDMedicalRecordDisplayItem);
  [(WDMedicalRecordDisplayItem *)v2 setDisplayItemType:15];

  return v2;
}

+ (id)detailSubtitleItemWithTitle:(id)title subtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  titleCopy = title;
  detailSubtitleItem = [self detailSubtitleItem];
  [detailSubtitleItem setTitle:titleCopy];

  [detailSubtitleItem setSubtitle:subtitleCopy];
  [detailSubtitleItem setSeparatorStyle:0];
  [detailSubtitleItem setSeparatorHidden:0];

  return detailSubtitleItem;
}

+ (id)detailSubtitleItemWithTitle:(id)title subtitle:(id)subtitle extraTopPadding:(BOOL)padding
{
  paddingCopy = padding;
  v6 = [self detailSubtitleItemWithTitle:title subtitle:subtitle];
  [v6 setExtraTopPadding:paddingCopy];

  return v6;
}

+ (id)detailAttributedSubtitleItem
{
  v2 = objc_alloc_init(WDMedicalRecordDisplayItem);
  [(WDMedicalRecordDisplayItem *)v2 setDisplayItemType:16];

  return v2;
}

+ (id)detailSpinnerItem
{
  v2 = objc_alloc_init(WDMedicalRecordDisplayItem);
  [(WDMedicalRecordDisplayItem *)v2 setDisplayItemType:17];

  return v2;
}

+ (id)sectionHeaderItem
{
  v2 = objc_alloc_init(WDMedicalRecordDisplayItem);
  [(WDMedicalRecordDisplayItem *)v2 setDisplayItemType:9];
  [(WDMedicalRecordDisplayItem *)v2 setSeparatorStyle:0];
  [(WDMedicalRecordDisplayItem *)v2 setSeparatorHidden:0];
  [(WDMedicalRecordDisplayItem *)v2 setSeparatorInsets:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];

  return v2;
}

+ (id)accountSourceItem
{
  v2 = objc_alloc_init(WDMedicalRecordDisplayItem);
  [(WDMedicalRecordDisplayItem *)v2 setDisplayItemType:10];

  return v2;
}

+ (id)standaloneItem
{
  v2 = objc_alloc_init(WDMedicalRecordDisplayItem);
  [(WDMedicalRecordDisplayItem *)v2 setDisplayItemType:11];

  return v2;
}

+ (id)conceptHeaderItemWithCategoryType:(int64_t)type title:(id)title
{
  titleCopy = title;
  v6 = objc_alloc_init(WDMedicalRecordDisplayItem);
  v7 = +[WDMedicalRecordDisplayItemProvider supportedRecordCategoriesByCategoryType];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v9 = [v7 objectForKeyedSubscript:v8];

  displayImage = [v9 displayImage];
  [(WDMedicalRecordDisplayItem *)v6 setImage:displayImage];

  categoryMetricColors = [v9 categoryMetricColors];
  [(WDMedicalRecordDisplayItem *)v6 setMetricColors:categoryMetricColors];

  LODWORD(categoryMetricColors) = +[HRFeatures hideCategoryNameFromHeader];
  v12 = [titleCopy length];
  if (categoryMetricColors)
  {
    if (!v12)
    {
      displayName = [v9 displayName];
      [(WDMedicalRecordDisplayItem *)v6 setTitle:displayName];

      goto LABEL_9;
    }

    v13 = v6;
    v14 = titleCopy;
  }

  else
  {
    if (v12)
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = HRLocalizedString(@"DATATYPE_HEADER_FORMAT_2_%@_%@");
      displayName2 = [v9 displayName];
      titleCopy = [v15 stringWithFormat:v16, displayName2, titleCopy];
      [(WDMedicalRecordDisplayItem *)v6 setTitle:titleCopy];

      goto LABEL_9;
    }

    v13 = v6;
    v14 = 0;
  }

  [(WDMedicalRecordDisplayItem *)v13 setTitle:v14];
LABEL_9:
  [(WDMedicalRecordDisplayItem *)v6 setDisplayItemType:18];
  [(WDMedicalRecordDisplayItem *)v6 setPlacement:3];

  return v6;
}

+ (id)conceptCardItemWithCategoryType:(int64_t)type
{
  v4 = objc_alloc_init(WDMedicalRecordDisplayItem);
  v5 = +[WDMedicalRecordDisplayItemProvider supportedRecordCategoriesByCategoryType];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v7 = [v5 objectForKeyedSubscript:v6];

  displayImage = [v7 displayImage];
  [(WDMedicalRecordDisplayItem *)v4 setImage:displayImage];

  categoryMetricColors = [v7 categoryMetricColors];
  [(WDMedicalRecordDisplayItem *)v4 setMetricColors:categoryMetricColors];

  [(WDMedicalRecordDisplayItem *)v4 setDisplayItemType:19];
  [(WDMedicalRecordDisplayItem *)v4 setPlacement:2];

  return v4;
}

- (UIEdgeInsets)separatorInsets
{
  top = self->_separatorInsets.top;
  left = self->_separatorInsets.left;
  bottom = self->_separatorInsets.bottom;
  right = self->_separatorInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (WDMedicalRecordCategorySummary)categorySummary
{
  WeakRetained = objc_loadWeakRetained(&self->_categorySummary);

  return WeakRetained;
}

@end