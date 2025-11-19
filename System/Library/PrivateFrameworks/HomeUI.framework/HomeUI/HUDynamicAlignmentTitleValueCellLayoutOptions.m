@interface HUDynamicAlignmentTitleValueCellLayoutOptions
- (HUDynamicAlignmentTitleValueCellLayoutOptions)initWithCellSizeSubclass:(int64_t)a3 longestPossibleValueText:(id)a4 longestPossibleTitleText:(id)a5;
@end

@implementation HUDynamicAlignmentTitleValueCellLayoutOptions

- (HUDynamicAlignmentTitleValueCellLayoutOptions)initWithCellSizeSubclass:(int64_t)a3 longestPossibleValueText:(id)a4 longestPossibleTitleText:(id)a5
{
  v8 = a4;
  v9 = a5;
  v13.receiver = self;
  v13.super_class = HUDynamicAlignmentTitleValueCellLayoutOptions;
  v10 = [(HUGridCellLayoutOptions *)&v13 initWithCellSizeSubclass:a3];
  v11 = v10;
  if (v10)
  {
    [(HUDynamicAlignmentTitleValueCellLayoutOptions *)v10 setLongestPossibleValueText:v8];
    [(HUDynamicAlignmentTitleValueCellLayoutOptions *)v11 setLongestPossibleTitleText:v9];
  }

  return v11;
}

@end