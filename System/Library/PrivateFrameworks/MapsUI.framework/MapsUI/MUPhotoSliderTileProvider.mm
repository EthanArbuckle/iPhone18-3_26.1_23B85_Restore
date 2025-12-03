@interface MUPhotoSliderTileProvider
- (BOOL)shouldRouteToPhotoThumbnailGallery;
- (BOOL)showMorePhotoPunchoutAtEndOfSlider;
- (BOOL)showPhotoAttributionAtEndOfSlider;
- (MUPhotoSliderTileProvider)initWithMapItem:(id)item;
- (id)_albumOverlayForPhoto:(id)photo;
- (id)_flatListOverlayForPhoto:(id)photo;
- (id)_photoAlbumForPhoto:(id)photo;
- (id)albumIdForPhoto:(id)photo;
- (id)overlayForPhoto:(id)photo;
- (id)photoItemAtIndex:(unint64_t)index;
- (id)yourPhotosTileOverlay;
- (unint64_t)numberOfPhotos;
- (void)_setup;
- (void)_setupForFlatPhotoList;
- (void)_setupForPhotoAlbums;
@end

@implementation MUPhotoSliderTileProvider

- (BOOL)shouldRouteToPhotoThumbnailGallery
{
  _mapkit_supportsFullScreenExperience = [(MKMapItem *)self->_mapItem _mapkit_supportsFullScreenExperience];
  if (_mapkit_supportsFullScreenExperience)
  {
    numberOfPhotos = [(MUPhotoSliderTileProvider *)self numberOfPhotos];
    LOBYTE(_mapkit_supportsFullScreenExperience) = numberOfPhotos > GEOConfigGetUInteger();
  }

  return _mapkit_supportsFullScreenExperience;
}

- (BOOL)showPhotoAttributionAtEndOfSlider
{
  _mapkit_hasSinglePhotoVendor = [(MKMapItem *)self->_mapItem _mapkit_hasSinglePhotoVendor];
  if (_mapkit_hasSinglePhotoVendor)
  {
    LOBYTE(_mapkit_hasSinglePhotoVendor) = ([(MKMapItem *)self->_mapItem _mapkit_canAtLeastOneAttributionShowPhotosLocally]& 1) == 0 && [(MUPhotoSliderTileProvider *)self displayType]== 0;
  }

  return _mapkit_hasSinglePhotoVendor;
}

- (BOOL)showMorePhotoPunchoutAtEndOfSlider
{
  if ([(MUPhotoSliderTileProvider *)self displayType]== 1)
  {
    numberOfPhotos = [(MUPhotoSliderTileProvider *)self numberOfPhotos];
    return numberOfPhotos >= GEOConfigGetUInteger();
  }

  else
  {
    UInteger = GEOConfigGetUInteger();
    _mapkit_numberOfPhotosAvailableForFlatList = [(MKMapItem *)self->_mapItem _mapkit_numberOfPhotosAvailableForFlatList];
    if ([(MKMapItem *)self->_mapItem _mapkit_hasSinglePhotoVendor])
    {
      result = [(MKMapItem *)self->_mapItem _mapkit_canAtLeastOneAttributionShowPhotosLocally];
      if (_mapkit_numberOfPhotosAvailableForFlatList <= UInteger)
      {
        return 0;
      }
    }

    else
    {
      return _mapkit_numberOfPhotosAvailableForFlatList > UInteger;
    }
  }

  return result;
}

- (id)_photoAlbumForPhoto:(id)photo
{
  v4 = [(NSArray *)self->_photos indexOfObject:photo];
  _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
  _captionedPhotoAlbums = [_geoMapItem _captionedPhotoAlbums];
  v7 = [_captionedPhotoAlbums count];

  if (v4 >= v7)
  {
    v10 = 0;
  }

  else
  {
    _geoMapItem2 = [(MKMapItem *)self->_mapItem _geoMapItem];
    _captionedPhotoAlbums2 = [_geoMapItem2 _captionedPhotoAlbums];
    v10 = [_captionedPhotoAlbums2 objectAtIndexedSubscript:v4];
  }

  return v10;
}

- (id)_albumOverlayForPhoto:(id)photo
{
  photoCopy = photo;
  v5 = [(MUPhotoSliderTileProvider *)self _photoAlbumForPhoto:photoCopy];
  if (v5)
  {
    v6 = [(MUPhotoSliderTileProvider *)self _flatListOverlayForPhoto:photoCopy];
    if (!v6)
    {
      v6 = objc_alloc_init(MUPhotoTileOverlay);
    }

    categoryName = [v5 categoryName];
    [(MUPhotoTileOverlay *)v6 setTileTitle:categoryName];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_flatListOverlayForPhoto:(id)photo
{
  photoCopy = photo;
  attribution = [photoCopy attribution];
  if ([attribution shouldHandlePhotosLocally])
  {
    geoMapItemPhoto = [photoCopy geoMapItemPhoto];
    author = [geoMapItemPhoto author];

    attribution2 = [photoCopy attribution];
    isUserSubmitted = [attribution2 isUserSubmitted];

    v9 = 0;
    if (!GEOConfigGetBOOL() || !isUserSubmitted)
    {
      goto LABEL_9;
    }

    if (![author length])
    {
      v9 = 0;
      goto LABEL_9;
    }

    v10 = objc_alloc_init(MUPhotoTileOverlay);
    v9 = v10;
  }

  else
  {
    captionDisplayName = [attribution captionDisplayName];
    v9 = [captionDisplayName length];

    if (!v9)
    {
      goto LABEL_10;
    }

    v9 = objc_alloc_init(MUPhotoTileOverlay);
    author = [attribution captionDisplayName];
    v10 = v9;
  }

  [(MUPhotoTileOverlay *)v10 setAttributionTitle:author];
LABEL_9:

LABEL_10:

  return v9;
}

- (id)yourPhotosTileOverlay
{
  v2 = objc_alloc_init(MUPhotoTileOverlay);
  v3 = _MULocalizedStringFromThisBundle(@"Your Photos [Placecard's Your Photos Album]");
  [(MUPhotoTileOverlay *)v2 setTileTitle:v3];

  return v2;
}

- (id)overlayForPhoto:(id)photo
{
  photoCopy = photo;
  displayType = [(MUPhotoSliderTileProvider *)self displayType];
  if (displayType == 1)
  {
    v7 = [(MUPhotoSliderTileProvider *)self _albumOverlayForPhoto:photoCopy];
  }

  else
  {
    if (displayType)
    {
      goto LABEL_6;
    }

    v7 = [(MUPhotoSliderTileProvider *)self _flatListOverlayForPhoto:photoCopy];
  }

  v3 = v7;
LABEL_6:

  return v3;
}

- (id)albumIdForPhoto:(id)photo
{
  photoCopy = photo;
  if ([(MUPhotoSliderTileProvider *)self displayType]== 1)
  {
    v5 = [(MUPhotoSliderTileProvider *)self _photoAlbumForPhoto:photoCopy];
    categoryId = [v5 categoryId];
  }

  else
  {
    categoryId = 0;
  }

  return categoryId;
}

- (id)photoItemAtIndex:(unint64_t)index
{
  if ([(MUPhotoSliderTileProvider *)self numberOfPhotos]<= index)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v7 = 0;
      _os_log_fault_impl(&dword_1C5620000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: index < self.numberOfPhotos", v7, 2u);
    }

    v5 = 0;
  }

  else
  {
    v5 = [(NSArray *)self->_photos objectAtIndexedSubscript:index];
  }

  return v5;
}

- (unint64_t)numberOfPhotos
{
  result = [(MUPhotoSliderTileProvider *)self displayType];
  if (result == 1)
  {
    _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
    _captionedPhotoAlbums = [_geoMapItem _captionedPhotoAlbums];
    v7 = [_captionedPhotoAlbums count];

    return v7;
  }

  else if (!result)
  {
    photos = self->_photos;

    return [(NSArray *)photos count];
  }

  return result;
}

- (void)_setupForFlatPhotoList
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  _mapkit_resolvedFlatPhotoList = [(MKMapItem *)self->_mapItem _mapkit_resolvedFlatPhotoList];
  v5 = [v3 initWithCapacity:{objc_msgSend(_mapkit_resolvedFlatPhotoList, "count")}];

  _mapkit_resolvedFlatPhotoList2 = [(MKMapItem *)self->_mapItem _mapkit_resolvedFlatPhotoList];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [_mapkit_resolvedFlatPhotoList2 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(_mapkit_resolvedFlatPhotoList2);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = objc_alloc(MEMORY[0x1E696F288]);
        name = [(MKMapItem *)self->_mapItem name];
        v14 = [v12 initWithGeoMapItemPhoto:v11 fallbackTitle:name];
        [v5 addObject:v14];

        ++v10;
      }

      while (v8 != v10);
      v8 = [_mapkit_resolvedFlatPhotoList2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v15 = MUGetMUPhotoSliderTileProviderLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *v20 = 0;
    _os_log_impl(&dword_1C5620000, v15, OS_LOG_TYPE_INFO, "Flat list layout, checking if we should show full screen", v20, 2u);
  }

  v16 = [v5 indexOfObjectPassingTest:&__block_literal_global_24271];
  v17 = [v5 copy];
  photos = self->_photos;
  self->_photos = v17;

  self->_showFullScreen = v16 == 0x7FFFFFFFFFFFFFFFLL;
  v19 = *MEMORY[0x1E69E9840];
}

uint64_t __51__MUPhotoSliderTileProvider__setupForFlatPhotoList__block_invoke(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([v5 displayFullScreenPhotoGallery])
  {
    v6 = *a4;
  }

  else
  {
    v7 = MUGetMUPhotoSliderTileProviderLog();
    v6 = 1;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v5 attribution];
      v9 = [v8 providerName];
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_1C5620000, v7, OS_LOG_TYPE_INFO, "Vendor %@ does not allow use of gallery", &v12, 0xCu);
    }

    *a4 = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6 & 1;
}

- (void)_setupForPhotoAlbums
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  _geoMapItem = [(MKMapItem *)self->_mapItem _geoMapItem];
  _photos = [_geoMapItem _photos];
  v6 = [v3 initWithCapacity:{objc_msgSend(_photos, "count")}];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  _geoMapItem2 = [(MKMapItem *)self->_mapItem _geoMapItem];
  _captionedPhotoAlbums = [_geoMapItem2 _captionedPhotoAlbums];

  v9 = [_captionedPhotoAlbums countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(_captionedPhotoAlbums);
        }

        photoList = [*(*(&v23 + 1) + 8 * v12) photoList];
        firstObject = [photoList firstObject];

        v15 = objc_alloc(MEMORY[0x1E696F288]);
        name = [(MKMapItem *)self->_mapItem name];
        v17 = [v15 initWithGeoMapItemPhoto:firstObject fallbackTitle:name];

        [v6 addObject:v17];
        ++v12;
      }

      while (v10 != v12);
      v10 = [_captionedPhotoAlbums countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  v18 = [v6 copy];
  photos = self->_photos;
  self->_photos = v18;

  self->_showFullScreen = 1;
  v20 = MUGetMUPhotoSliderTileProviderLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *v22 = 0;
    _os_log_impl(&dword_1C5620000, v20, OS_LOG_TYPE_INFO, "Showing full screen since we have an album layout", v22, 2u);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_setup
{
  displayType = [(MUPhotoSliderTileProvider *)self displayType];
  if (displayType == 1)
  {

    [(MUPhotoSliderTileProvider *)self _setupForPhotoAlbums];
  }

  else if (!displayType)
  {

    [(MUPhotoSliderTileProvider *)self _setupForFlatPhotoList];
  }
}

- (MUPhotoSliderTileProvider)initWithMapItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = MUPhotoSliderTileProvider;
  v6 = [(MUPhotoSliderTileProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, item);
    [(MUPhotoSliderTileProvider *)v7 _setup];
  }

  return v7;
}

@end