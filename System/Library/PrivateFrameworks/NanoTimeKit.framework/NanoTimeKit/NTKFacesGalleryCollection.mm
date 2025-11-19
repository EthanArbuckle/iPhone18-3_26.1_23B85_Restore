@interface NTKFacesGalleryCollection
- (NTKFacesGalleryCollection)initWithDevice:(id)a3 title:(id)a4 faceDescriptors:(id)a5;
- (id)facesForDevice:(id)a3;
@end

@implementation NTKFacesGalleryCollection

- (NTKFacesGalleryCollection)initWithDevice:(id)a3 title:(id)a4 faceDescriptors:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = NTKFacesGalleryCollection;
  v11 = [(NTKDeviceSpecificFacesArrayGalleryCollection *)&v16 initWithDevice:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_title, a4);
    v13 = [v10 copy];
    faceDescriptors = v12->_faceDescriptors;
    v12->_faceDescriptors = v13;

    [(NTKGalleryCollection *)v12 setCalloutName:&__block_literal_global_72];
  }

  return v12;
}

- (id)facesForDevice:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
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

        v11 = [NTKFace defaultFaceFromFaceDescriptor:*(*(&v14 + 1) + 8 * i) forDevice:v4, v14];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

@end