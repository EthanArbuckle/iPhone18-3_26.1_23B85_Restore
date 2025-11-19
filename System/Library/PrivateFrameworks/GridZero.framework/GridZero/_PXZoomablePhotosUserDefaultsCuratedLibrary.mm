@interface _PXZoomablePhotosUserDefaultsCuratedLibrary
- (NSNumber)preferredIndividualItemsColumnsNumber;
- (void)setPreferredIndividualItemsColumnsNumber:(id)a3;
@end

@implementation _PXZoomablePhotosUserDefaultsCuratedLibrary

- (NSNumber)preferredIndividualItemsColumnsNumber
{
  v2 = [(_PXZoomablePhotosUserDefaultsImp *)self defaults];
  v3 = [v2 allPhotosLibraryPreferredIndividualItemsColumns];

  return v3;
}

- (void)setPreferredIndividualItemsColumnsNumber:(id)a3
{
  v4 = a3;
  v5 = [(_PXZoomablePhotosUserDefaultsImp *)self defaults];
  [v5 setAllPhotosLibraryPreferredIndividualItemsColumns:v4];
}

@end