@interface ICDateEditedFilterTypeSelection
- (id)copyWithZone:(_NSZone *)a3;
- (id)emptySummary;
- (id)emptySummaryTitle;
- (id)shortEmptySummary;
@end

@implementation ICDateEditedFilterTypeSelection

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(ICDateFilterTypeSelection *)+[ICDateEditedFilterTypeSelection allocWithZone:](ICDateEditedFilterTypeSelection initWithSelectionType:"initWithSelectionType:", [(ICDateFilterTypeSelection *)self selectionType]];
  v6 = [(ICDateFilterTypeSelection *)self primaryDate];
  [(ICDateFilterTypeSelection *)v5 setPrimaryDate:v6];

  v7 = [(ICDateFilterTypeSelection *)self secondaryDate];
  [(ICDateFilterTypeSelection *)v5 setSecondaryDate:v7];

  [(ICDateFilterTypeSelection *)v5 setRelativeRangeSelectionType:[(ICDateFilterTypeSelection *)self relativeRangeSelectionType]];
  v8 = [(ICDateFilterTypeSelection *)self relativeRangeAmount];
  v9 = [v8 copyWithZone:a3];
  [(ICDateFilterTypeSelection *)v5 setRelativeRangeAmount:v9];

  return v5;
}

- (id)emptySummaryTitle
{
  if ([(ICDateFilterTypeSelection *)self isEmpty]&& [(ICDateFilterTypeSelection *)self selectionType]== 7)
  {
    v3 = __ICLocalizedFrameworkString_impl(@"Date Edited Filter Incomplete", @"Date Edited Filter Incomplete", 0, 1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)emptySummary
{
  if ([(ICDateFilterTypeSelection *)self isEmpty]&& [(ICDateFilterTypeSelection *)self selectionType]== 7)
  {
    v3 = __ICLocalizedFrameworkString_impl(@"You must enter a relative range number for the Date Edited filter.", @"You must enter a relative range number for the Date Edited filter.", 0, 1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)shortEmptySummary
{
  if ([(ICDateFilterTypeSelection *)self isEmpty]&& [(ICDateFilterTypeSelection *)self selectionType]== 7)
  {
    v3 = __ICLocalizedFrameworkString_impl(@"Number for the Date Edited filter", @"Number for the Date Edited filter", 0, 1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end