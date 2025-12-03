@interface PXUserDefaults(ZoomablePhotos)
- (_PXZoomablePhotosUserDefaultPhotosGrids)photosGridsUserDefaults;
- (_PXZoomablePhotosUserDefaultSearch)searchGridsUserDefaults;
- (_PXZoomablePhotosUserDefaultsCuratedLibrary)curatedLibraryUserDefaults;
@end

@implementation PXUserDefaults(ZoomablePhotos)

- (_PXZoomablePhotosUserDefaultsCuratedLibrary)curatedLibraryUserDefaults
{
  v1 = [(_PXZoomablePhotosUserDefaultsImp *)[_PXZoomablePhotosUserDefaultsCuratedLibrary alloc] initWithUserDefaults:self];

  return v1;
}

- (_PXZoomablePhotosUserDefaultSearch)searchGridsUserDefaults
{
  v1 = [(_PXZoomablePhotosUserDefaultsImp *)[_PXZoomablePhotosUserDefaultSearch alloc] initWithUserDefaults:self];

  return v1;
}

- (_PXZoomablePhotosUserDefaultPhotosGrids)photosGridsUserDefaults
{
  v1 = [(_PXZoomablePhotosUserDefaultsImp *)[_PXZoomablePhotosUserDefaultPhotosGrids alloc] initWithUserDefaults:self];

  return v1;
}

@end