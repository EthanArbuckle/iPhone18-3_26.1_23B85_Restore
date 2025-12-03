@interface HUDynamicAlignmentTitleValueCellLayoutOptions
- (HUDynamicAlignmentTitleValueCellLayoutOptions)initWithCellSizeSubclass:(int64_t)subclass longestPossibleValueText:(id)text longestPossibleTitleText:(id)titleText;
@end

@implementation HUDynamicAlignmentTitleValueCellLayoutOptions

- (HUDynamicAlignmentTitleValueCellLayoutOptions)initWithCellSizeSubclass:(int64_t)subclass longestPossibleValueText:(id)text longestPossibleTitleText:(id)titleText
{
  textCopy = text;
  titleTextCopy = titleText;
  v13.receiver = self;
  v13.super_class = HUDynamicAlignmentTitleValueCellLayoutOptions;
  v10 = [(HUGridCellLayoutOptions *)&v13 initWithCellSizeSubclass:subclass];
  v11 = v10;
  if (v10)
  {
    [(HUDynamicAlignmentTitleValueCellLayoutOptions *)v10 setLongestPossibleValueText:textCopy];
    [(HUDynamicAlignmentTitleValueCellLayoutOptions *)v11 setLongestPossibleTitleText:titleTextCopy];
  }

  return v11;
}

@end