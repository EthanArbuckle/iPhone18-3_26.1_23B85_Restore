@interface NTKFacesGalleryCollection
- (NTKFacesGalleryCollection)initWithDevice:(id)device title:(id)title faceDescriptors:(id)descriptors;
- (id)facesForDevice:(id)device;
@end

@implementation NTKFacesGalleryCollection

- (NTKFacesGalleryCollection)initWithDevice:(id)device title:(id)title faceDescriptors:(id)descriptors
{
  titleCopy = title;
  descriptorsCopy = descriptors;
  v16.receiver = self;
  v16.super_class = NTKFacesGalleryCollection;
  v11 = [(NTKDeviceSpecificFacesArrayGalleryCollection *)&v16 initWithDevice:device];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_title, title);
    v13 = [descriptorsCopy copy];
    faceDescriptors = v12->_faceDescriptors;
    v12->_faceDescriptors = v13;

    [(NTKGalleryCollection *)v12 setCalloutName:&__block_literal_global_72];
  }

  return v12;
}

- (id)facesForDevice:(id)device
{
  v19 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_faceDescriptors;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [NTKFace defaultFaceFromFaceDescriptor:*(*(&v14 + 1) + 8 * i) forDevice:deviceCopy, v14];
        if (v11)
        {
          [array addObject:v11];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [array copy];

  return v12;
}

@end