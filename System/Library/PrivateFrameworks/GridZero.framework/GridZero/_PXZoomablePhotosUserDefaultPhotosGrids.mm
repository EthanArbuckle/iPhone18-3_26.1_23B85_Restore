@interface _PXZoomablePhotosUserDefaultPhotosGrids
- (NSNumber)preferredIndividualItemsColumnsNumber;
- (void)setPreferredIndividualItemsColumnsNumber:(id)a3;
@end

@implementation _PXZoomablePhotosUserDefaultPhotosGrids

- (void)setPreferredIndividualItemsColumnsNumber:(id)a3
{
  v4 = a3;
  v5 = [(_PXZoomablePhotosUserDefaultsImp *)self defaults];
  [v5 setPhotosGridPreferredIndividualItemsColumns:v4];
}

- (NSNumber)preferredIndividualItemsColumnsNumber
{
  v2 = [(_PXZoomablePhotosUserDefaultsImp *)self defaults];
  v3 = [v2 photosGridPreferredIndividualItemsColumns];

  return v3;
}

@end