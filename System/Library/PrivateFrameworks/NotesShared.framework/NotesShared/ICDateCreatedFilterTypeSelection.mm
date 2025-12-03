@interface ICDateCreatedFilterTypeSelection
- (id)copyWithZone:(_NSZone *)zone;
- (id)emptySummary;
- (id)emptySummaryTitle;
- (id)shortEmptySummary;
@end

@implementation ICDateCreatedFilterTypeSelection

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [(ICDateFilterTypeSelection *)+[ICDateCreatedFilterTypeSelection allocWithZone:](ICDateCreatedFilterTypeSelection initWithSelectionType:"initWithSelectionType:", [(ICDateFilterTypeSelection *)self selectionType]];
  primaryDate = [(ICDateFilterTypeSelection *)self primaryDate];
  [(ICDateFilterTypeSelection *)v5 setPrimaryDate:primaryDate];

  secondaryDate = [(ICDateFilterTypeSelection *)self secondaryDate];
  [(ICDateFilterTypeSelection *)v5 setSecondaryDate:secondaryDate];

  [(ICDateFilterTypeSelection *)v5 setRelativeRangeSelectionType:[(ICDateFilterTypeSelection *)self relativeRangeSelectionType]];
  relativeRangeAmount = [(ICDateFilterTypeSelection *)self relativeRangeAmount];
  v9 = [relativeRangeAmount copyWithZone:zone];
  [(ICDateFilterTypeSelection *)v5 setRelativeRangeAmount:v9];

  return v5;
}

- (id)emptySummaryTitle
{
  if ([(ICDateFilterTypeSelection *)self isEmpty]&& [(ICDateFilterTypeSelection *)self selectionType]== 7)
  {
    v3 = __ICLocalizedFrameworkString_impl(@"Date Created Filter Incomplete", @"Date Created Filter Incomplete", 0, 1);
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
    v3 = __ICLocalizedFrameworkString_impl(@"You must enter a relative range number for the Date Created filter.", @"You must enter a relative range number for the Date Created filter.", 0, 1);
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
    v3 = __ICLocalizedFrameworkString_impl(@"Number for the Date Created filter", @"Number for the Date Created filter", 0, 1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end