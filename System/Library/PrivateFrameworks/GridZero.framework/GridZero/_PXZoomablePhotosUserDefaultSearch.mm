@interface _PXZoomablePhotosUserDefaultSearch
- (NSNumber)preferredIndividualItemsColumnsNumber;
- (void)setPreferredIndividualItemsColumnsNumber:(id)number;
@end

@implementation _PXZoomablePhotosUserDefaultSearch

- (void)setPreferredIndividualItemsColumnsNumber:(id)number
{
  numberCopy = number;
  defaults = [(_PXZoomablePhotosUserDefaultsImp *)self defaults];
  [defaults setSearchPreferredIndividualItemsColumns:numberCopy];
}

- (NSNumber)preferredIndividualItemsColumnsNumber
{
  defaults = [(_PXZoomablePhotosUserDefaultsImp *)self defaults];
  searchPreferredIndividualItemsColumns = [defaults searchPreferredIndividualItemsColumns];

  return searchPreferredIndividualItemsColumns;
}

@end