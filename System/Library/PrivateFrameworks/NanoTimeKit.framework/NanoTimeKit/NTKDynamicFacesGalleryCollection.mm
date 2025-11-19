@interface NTKDynamicFacesGalleryCollection
- (BOOL)bundleWantsDynamicCollection;
- (NTKDynamicFacesGalleryCollection)initWithDevice:(id)a3 title:(id)a4 bundleIdentifier:(id)a5;
- (id)facesForDevice:(id)a3;
@end

@implementation NTKDynamicFacesGalleryCollection

- (NTKDynamicFacesGalleryCollection)initWithDevice:(id)a3 title:(id)a4 bundleIdentifier:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = NTKDynamicFacesGalleryCollection;
  v11 = [(NTKDeviceSpecificFacesArrayGalleryCollection *)&v14 initWithDevice:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_title, a4);
    objc_storeStrong(&v12->_bundleIdentifier, a5);
    [(NTKGalleryCollection *)v12 setCalloutName:&__block_literal_global_69];
  }

  return v12;
}

- (BOOL)bundleWantsDynamicCollection
{
  v3 = +[NTKFaceBundleManager sharedManager];
  bundleIdentifier = self->_bundleIdentifier;
  v5 = [(NTKDeviceSpecificFacesArrayGalleryCollection *)self device];
  v6 = [v3 faceBundleForBundleIdentifier:bundleIdentifier onDevice:v5];

  if (v6)
  {
    v7 = [(NTKDeviceSpecificFacesArrayGalleryCollection *)self device];
    v8 = [v6 useDynamicCollectionForDevice:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)facesForDevice:(id)a3
{
  v4 = a3;
  if ([(NTKDynamicFacesGalleryCollection *)self bundleWantsDynamicCollection])
  {
    v5 = +[NTKFaceBundleManager sharedManager];
    v6 = [v5 faceBundleForBundleIdentifier:self->_bundleIdentifier onDevice:v4];

    if (v6)
    {
      v7 = [v6 galleryFacesInDynamicCollectionForDevice:v4];
      v8 = [v7 copy];
    }

    else
    {
      v8 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

@end