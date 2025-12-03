@interface NTKDynamicFacesGalleryCollection
- (BOOL)bundleWantsDynamicCollection;
- (NTKDynamicFacesGalleryCollection)initWithDevice:(id)device title:(id)title bundleIdentifier:(id)identifier;
- (id)facesForDevice:(id)device;
@end

@implementation NTKDynamicFacesGalleryCollection

- (NTKDynamicFacesGalleryCollection)initWithDevice:(id)device title:(id)title bundleIdentifier:(id)identifier
{
  titleCopy = title;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = NTKDynamicFacesGalleryCollection;
  v11 = [(NTKDeviceSpecificFacesArrayGalleryCollection *)&v14 initWithDevice:device];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_title, title);
    objc_storeStrong(&v12->_bundleIdentifier, identifier);
    [(NTKGalleryCollection *)v12 setCalloutName:&__block_literal_global_69];
  }

  return v12;
}

- (BOOL)bundleWantsDynamicCollection
{
  v3 = +[NTKFaceBundleManager sharedManager];
  bundleIdentifier = self->_bundleIdentifier;
  device = [(NTKDeviceSpecificFacesArrayGalleryCollection *)self device];
  v6 = [v3 faceBundleForBundleIdentifier:bundleIdentifier onDevice:device];

  if (v6)
  {
    device2 = [(NTKDeviceSpecificFacesArrayGalleryCollection *)self device];
    v8 = [v6 useDynamicCollectionForDevice:device2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)facesForDevice:(id)device
{
  deviceCopy = device;
  if ([(NTKDynamicFacesGalleryCollection *)self bundleWantsDynamicCollection])
  {
    v5 = +[NTKFaceBundleManager sharedManager];
    v6 = [v5 faceBundleForBundleIdentifier:self->_bundleIdentifier onDevice:deviceCopy];

    if (v6)
    {
      v7 = [v6 galleryFacesInDynamicCollectionForDevice:deviceCopy];
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