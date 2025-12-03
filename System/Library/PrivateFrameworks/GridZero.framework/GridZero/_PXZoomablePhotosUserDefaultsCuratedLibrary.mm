@interface _PXZoomablePhotosUserDefaultsCuratedLibrary
- (NSNumber)preferredIndividualItemsColumnsNumber;
- (void)setPreferredIndividualItemsColumnsNumber:(id)number;
@end

@implementation _PXZoomablePhotosUserDefaultsCuratedLibrary

- (NSNumber)preferredIndividualItemsColumnsNumber
{
  defaults = [(_PXZoomablePhotosUserDefaultsImp *)self defaults];
  allPhotosLibraryPreferredIndividualItemsColumns = [defaults allPhotosLibraryPreferredIndividualItemsColumns];

  return allPhotosLibraryPreferredIndividualItemsColumns;
}

- (void)setPreferredIndividualItemsColumnsNumber:(id)number
{
  numberCopy = number;
  defaults = [(_PXZoomablePhotosUserDefaultsImp *)self defaults];
  [defaults setAllPhotosLibraryPreferredIndividualItemsColumns:numberCopy];
}

@end