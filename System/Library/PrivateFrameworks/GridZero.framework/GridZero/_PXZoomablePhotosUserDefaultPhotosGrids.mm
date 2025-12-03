@interface _PXZoomablePhotosUserDefaultPhotosGrids
- (NSNumber)preferredIndividualItemsColumnsNumber;
- (void)setPreferredIndividualItemsColumnsNumber:(id)number;
@end

@implementation _PXZoomablePhotosUserDefaultPhotosGrids

- (void)setPreferredIndividualItemsColumnsNumber:(id)number
{
  numberCopy = number;
  defaults = [(_PXZoomablePhotosUserDefaultsImp *)self defaults];
  [defaults setPhotosGridPreferredIndividualItemsColumns:numberCopy];
}

- (NSNumber)preferredIndividualItemsColumnsNumber
{
  defaults = [(_PXZoomablePhotosUserDefaultsImp *)self defaults];
  photosGridPreferredIndividualItemsColumns = [defaults photosGridPreferredIndividualItemsColumns];

  return photosGridPreferredIndividualItemsColumns;
}

@end