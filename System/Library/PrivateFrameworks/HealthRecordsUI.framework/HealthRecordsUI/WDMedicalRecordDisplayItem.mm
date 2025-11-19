@interface WDMedicalRecordDisplayItem
+ (id)accountSourceItem;
+ (id)conceptCardItemWithCategoryType:(int64_t)a3;
+ (id)conceptHeaderItemWithCategoryType:(int64_t)a3 title:(id)a4;
+ (id)detailAttributedSubtitleItem;
+ (id)detailSpinnerItem;
+ (id)detailSubtitleItem;
+ (id)detailSubtitleItemWithTitle:(id)a3 subtitle:(id)a4;
+ (id)detailSubtitleItemWithTitle:(id)a3 subtitle:(id)a4 extraTopPadding:(BOOL)a5;
+ (id)detailTitleItem;
+ (id)recordCardItem;
+ (id)sectionHeaderItem;
+ (id)standaloneItem;
+ (id)timelineSummaryAppendixItem;
+ (id)timelineSummaryCategoryMinimizedItem;
+ (id)timelineSummaryCategoryMinimizedItemWithCategoryType:(int64_t)a3;
+ (id)timelineSummaryCategoryTitleItem;
+ (id)timelineSummaryCategoryTitleItemWithCategoryType:(int64_t)a3;
+ (id)timelineSummaryContentWithSubtitleItem;
+ (id)timelineSummaryDetailCategoryTitleItemWithMedicalRecord:(id)a3;
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
  v4 = [(WDMedicalRecordDisplayItem *)self displayItemType];
  v5 = [(WDMedicalRecordDisplayItem *)self title];
  v6 = [(WDMedicalRecordDisplayItem *)self subtitle];
  v7 = [(WDMedicalRecordDisplayItem *)self valueString];
  v8 = [(WDMedicalRecordDisplayItem *)self chartValueWithRange];
  v9 = [v3 stringWithFormat:@"Display Item Type: %li, Title: %@, Subtitle: %@, Value: %@, Chart Value: %@", v4, v5, v6, v7, v8];

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

+ (id)timelineSummaryCategoryTitleItemWithCategoryType:(int64_t)a3
{
  v4 = objc_alloc_init(WDMedicalRecordDisplayItem);
  [(WDMedicalRecordDisplayItem *)v4 setDisplayItemType:2];
  [(WDMedicalRecordDisplayItem *)v4 setPlacement:3];
  v5 = +[WDMedicalRecordDisplayItemProvider supportedRecordCategoriesByCategoryType];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [v7 displayName];
  [(WDMedicalRecordDisplayItem *)v4 setTitle:v8];

  v9 = [v7 displayImage];
  [(WDMedicalRecordDisplayItem *)v4 setImage:v9];

  v10 = [v7 categoryMetricColors];
  [(WDMedicalRecordDisplayItem *)v4 setMetricColors:v10];

  -[WDMedicalRecordDisplayItem setRecordCategoryType:](v4, "setRecordCategoryType:", [v7 categoryType]);

  return v4;
}

+ (id)timelineSummaryDetailCategoryTitleItemWithMedicalRecord:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(WDMedicalRecordDisplayItem);
  [(WDMedicalRecordDisplayItem *)v4 setDisplayItemType:2];
  [(WDMedicalRecordDisplayItem *)v4 setPlacement:3];
  v5 = [v3 title];
  [(WDMedicalRecordDisplayItem *)v4 setTitle:v5];

  v6 = +[WDMedicalRecordDisplayItemProvider supportedRecordCategoriesByCategoryType];
  v7 = MEMORY[0x1E696AD98];
  v8 = [v3 recordCategoryType];

  v9 = [v7 numberWithInteger:v8];
  v10 = [v6 objectForKeyedSubscript:v9];

  v11 = [v10 displayImage];
  [(WDMedicalRecordDisplayItem *)v4 setImage:v11];

  v12 = [v10 categoryMetricColors];
  [(WDMedicalRecordDisplayItem *)v4 setMetricColors:v12];

  -[WDMedicalRecordDisplayItem setRecordCategoryType:](v4, "setRecordCategoryType:", [v10 categoryType]);

  return v4;
}

+ (id)timelineSummaryCategoryMinimizedItem
{
  v2 = objc_alloc_init(WDMedicalRecordDisplayItem);
  [(WDMedicalRecordDisplayItem *)v2 setDisplayItemType:3];

  return v2;
}

+ (id)timelineSummaryCategoryMinimizedItemWithCategoryType:(int64_t)a3
{
  v4 = objc_alloc_init(WDMedicalRecordDisplayItem);
  [(WDMedicalRecordDisplayItem *)v4 setDisplayItemType:3];
  [(WDMedicalRecordDisplayItem *)v4 setPlacement:3];
  v5 = +[WDMedicalRecordDisplayItemProvider supportedRecordCategoriesByCategoryType];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [v7 categoryMetricColors];
  [(WDMedicalRecordDisplayItem *)v4 setMetricColors:v8];

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

+ (id)detailSubtitleItemWithTitle:(id)a3 subtitle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 detailSubtitleItem];
  [v8 setTitle:v7];

  [v8 setSubtitle:v6];
  [v8 setSeparatorStyle:0];
  [v8 setSeparatorHidden:0];

  return v8;
}

+ (id)detailSubtitleItemWithTitle:(id)a3 subtitle:(id)a4 extraTopPadding:(BOOL)a5
{
  v5 = a5;
  v6 = [a1 detailSubtitleItemWithTitle:a3 subtitle:a4];
  [v6 setExtraTopPadding:v5];

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

+ (id)conceptHeaderItemWithCategoryType:(int64_t)a3 title:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(WDMedicalRecordDisplayItem);
  v7 = +[WDMedicalRecordDisplayItemProvider supportedRecordCategoriesByCategoryType];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v9 = [v7 objectForKeyedSubscript:v8];

  v10 = [v9 displayImage];
  [(WDMedicalRecordDisplayItem *)v6 setImage:v10];

  v11 = [v9 categoryMetricColors];
  [(WDMedicalRecordDisplayItem *)v6 setMetricColors:v11];

  LODWORD(v11) = +[HRFeatures hideCategoryNameFromHeader];
  v12 = [v5 length];
  if (v11)
  {
    if (!v12)
    {
      v19 = [v9 displayName];
      [(WDMedicalRecordDisplayItem *)v6 setTitle:v19];

      goto LABEL_9;
    }

    v13 = v6;
    v14 = v5;
  }

  else
  {
    if (v12)
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = HRLocalizedString(@"DATATYPE_HEADER_FORMAT_2_%@_%@");
      v17 = [v9 displayName];
      v18 = [v15 stringWithFormat:v16, v17, v5];
      [(WDMedicalRecordDisplayItem *)v6 setTitle:v18];

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

+ (id)conceptCardItemWithCategoryType:(int64_t)a3
{
  v4 = objc_alloc_init(WDMedicalRecordDisplayItem);
  v5 = +[WDMedicalRecordDisplayItemProvider supportedRecordCategoriesByCategoryType];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = [v7 displayImage];
  [(WDMedicalRecordDisplayItem *)v4 setImage:v8];

  v9 = [v7 categoryMetricColors];
  [(WDMedicalRecordDisplayItem *)v4 setMetricColors:v9];

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