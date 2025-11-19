@interface _PXZoomablePhotosUserDefaultSearch
- (NSNumber)preferredIndividualItemsColumnsNumber;
- (void)setPreferredIndividualItemsColumnsNumber:(id)a3;
@end

@implementation _PXZoomablePhotosUserDefaultSearch

- (void)setPreferredIndividualItemsColumnsNumber:(id)a3
{
  v4 = a3;
  v5 = [(_PXZoomablePhotosUserDefaultsImp *)self defaults];
  [v5 setSearchPreferredIndividualItemsColumns:v4];
}

- (NSNumber)preferredIndividualItemsColumnsNumber
{
  v2 = [(_PXZoomablePhotosUserDefaultsImp *)self defaults];
  v3 = [v2 searchPreferredIndividualItemsColumns];

  return v3;
}

@end