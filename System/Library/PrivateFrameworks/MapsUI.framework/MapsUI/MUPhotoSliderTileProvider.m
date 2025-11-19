@interface MUPhotoSliderTileProvider
- (BOOL)shouldRouteToPhotoThumbnailGallery;
- (BOOL)showMorePhotoPunchoutAtEndOfSlider;
- (BOOL)showPhotoAttributionAtEndOfSlider;
- (MUPhotoSliderTileProvider)initWithMapItem:(id)a3;
- (id)_albumOverlayForPhoto:(id)a3;
- (id)_flatListOverlayForPhoto:(id)a3;
- (id)_photoAlbumForPhoto:(id)a3;
- (id)albumIdForPhoto:(id)a3;
- (id)overlayForPhoto:(id)a3;
- (id)photoItemAtIndex:(unint64_t)a3;
- (id)yourPhotosTileOverlay;
- (unint64_t)numberOfPhotos;
- (void)_setup;
- (void)_setupForFlatPhotoList;
- (void)_setupForPhotoAlbums;
@end

@implementation MUPhotoSliderTileProvider

- (BOOL)shouldRouteToPhotoThumbnailGallery
{
  v3 = [(MKMapItem *)self->_mapItem _mapkit_supportsFullScreenExperience];
  if (v3)
  {
    v4 = [(MUPhotoSliderTileProvider *)self numberOfPhotos];
    LOBYTE(v3) = v4 > GEOConfigGetUInteger();
  }

  return v3;
}

- (BOOL)showPhotoAttributionAtEndOfSlider
{
  v3 = [(MKMapItem *)self->_mapItem _mapkit_hasSinglePhotoVendor];
  if (v3)
  {
    LOBYTE(v3) = ([(MKMapItem *)self->_mapItem _mapkit_canAtLeastOneAttributionShowPhotosLocally]& 1) == 0 && [(MUPhotoSliderTileProvider *)self displayType]== 0;
  }

  return v3;
}

- (BOOL)showMorePhotoPunchoutAtEndOfSlider
{
  if ([(MUPhotoSliderTileProvider *)self displayType]== 1)
  {
    v3 = [(MUPhotoSliderTileProvider *)self numberOfPhotos];
    return v3 >= GEOConfigGetUInteger();
  }

  else
  {
    UInteger = GEOConfigGetUInteger();
    v6 = [(MKMapItem *)self->_mapItem _mapkit_numberOfPhotosAvailableForFlatList];
    if ([(MKMapItem *)self->_mapItem _mapkit_hasSinglePhotoVendor])
    {
      result = [(MKMapItem *)self->_mapItem _mapkit_canAtLeastOneAttributionShowPhotosLocally];
      if (v6 <= UInteger)
      {
        return 0;
      }
    }

    else
    {
      return v6 > UInteger;
    }
  }

  return result;
}

- (id)_photoAlbumForPhoto:(id)a3
{
  v4 = [(NSArray *)self->_photos indexOfObject:a3];
  v5 = [(MKMapItem *)self->_mapItem _geoMapItem];
  v6 = [v5 _captionedPhotoAlbums];
  v7 = [v6 count];

  if (v4 >= v7)
  {
    v10 = 0;
  }

  else
  {
    v8 = [(MKMapItem *)self->_mapItem _geoMapItem];
    v9 = [v8 _captionedPhotoAlbums];
    v10 = [v9 objectAtIndexedSubscript:v4];
  }

  return v10;
}

- (id)_albumOverlayForPhoto:(id)a3
{
  v4 = a3;
  v5 = [(MUPhotoSliderTileProvider *)self _photoAlbumForPhoto:v4];
  if (v5)
  {
    v6 = [(MUPhotoSliderTileProvider *)self _flatListOverlayForPhoto:v4];
    if (!v6)
    {
      v6 = objc_alloc_init(MUPhotoTileOverlay);
    }

    v7 = [v5 categoryName];
    [(MUPhotoTileOverlay *)v6 setTileTitle:v7];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_flatListOverlayForPhoto:(id)a3
{
  v3 = a3;
  v4 = [v3 attribution];
  if ([v4 shouldHandlePhotosLocally])
  {
    v5 = [v3 geoMapItemPhoto];
    v6 = [v5 author];

    v7 = [v3 attribution];
    v8 = [v7 isUserSubmitted];

    v9 = 0;
    if (!GEOConfigGetBOOL() || !v8)
    {
      goto LABEL_9;
    }

    if (![v6 length])
    {
      v9 = 0;
      goto LABEL_9;
    }

    v10 = objc_alloc_init(MUPhotoTileOverlay);
    v9 = v10;
  }

  else
  {
    v11 = [v4 captionDisplayName];
    v9 = [v11 length];

    if (!v9)
    {
      goto LABEL_10;
    }

    v9 = objc_alloc_init(MUPhotoTileOverlay);
    v6 = [v4 captionDisplayName];
    v10 = v9;
  }

  [(MUPhotoTileOverlay *)v10 setAttributionTitle:v6];
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

- (id)overlayForPhoto:(id)a3
{
  v5 = a3;
  v6 = [(MUPhotoSliderTileProvider *)self displayType];
  if (v6 == 1)
  {
    v7 = [(MUPhotoSliderTileProvider *)self _albumOverlayForPhoto:v5];
  }

  else
  {
    if (v6)
    {
      goto LABEL_6;
    }

    v7 = [(MUPhotoSliderTileProvider *)self _flatListOverlayForPhoto:v5];
  }

  v3 = v7;
LABEL_6:

  return v3;
}

- (id)albumIdForPhoto:(id)a3
{
  v4 = a3;
  if ([(MUPhotoSliderTileProvider *)self displayType]== 1)
  {
    v5 = [(MUPhotoSliderTileProvider *)self _photoAlbumForPhoto:v4];
    v6 = [v5 categoryId];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)photoItemAtIndex:(unint64_t)a3
{
  if ([(MUPhotoSliderTileProvider *)self numberOfPhotos]<= a3)
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
    v5 = [(NSArray *)self->_photos objectAtIndexedSubscript:a3];
  }

  return v5;
}

- (unint64_t)numberOfPhotos
{
  result = [(MUPhotoSliderTileProvider *)self displayType];
  if (result == 1)
  {
    v5 = [(MKMapItem *)self->_mapItem _geoMapItem];
    v6 = [v5 _captionedPhotoAlbums];
    v7 = [v6 count];

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
  v4 = [(MKMapItem *)self->_mapItem _mapkit_resolvedFlatPhotoList];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v6 = [(MKMapItem *)self->_mapItem _mapkit_resolvedFlatPhotoList];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = objc_alloc(MEMORY[0x1E696F288]);
        v13 = [(MKMapItem *)self->_mapItem name];
        v14 = [v12 initWithGeoMapItemPhoto:v11 fallbackTitle:v13];
        [v5 addObject:v14];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
  v4 = [(MKMapItem *)self->_mapItem _geoMapItem];
  v5 = [v4 _photos];
  v6 = [v3 initWithCapacity:{objc_msgSend(v5, "count")}];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [(MKMapItem *)self->_mapItem _geoMapItem];
  v8 = [v7 _captionedPhotoAlbums];

  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v23 + 1) + 8 * v12) photoList];
        v14 = [v13 firstObject];

        v15 = objc_alloc(MEMORY[0x1E696F288]);
        v16 = [(MKMapItem *)self->_mapItem name];
        v17 = [v15 initWithGeoMapItemPhoto:v14 fallbackTitle:v16];

        [v6 addObject:v17];
        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
  v3 = [(MUPhotoSliderTileProvider *)self displayType];
  if (v3 == 1)
  {

    [(MUPhotoSliderTileProvider *)self _setupForPhotoAlbums];
  }

  else if (!v3)
  {

    [(MUPhotoSliderTileProvider *)self _setupForFlatPhotoList];
  }
}

- (MUPhotoSliderTileProvider)initWithMapItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MUPhotoSliderTileProvider;
  v6 = [(MUPhotoSliderTileProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, a3);
    [(MUPhotoSliderTileProvider *)v7 _setup];
  }

  return v7;
}

@end