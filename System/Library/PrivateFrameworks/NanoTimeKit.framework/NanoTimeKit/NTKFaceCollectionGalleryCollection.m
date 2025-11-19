@interface NTKFaceCollectionGalleryCollection
- (NTKFaceCollectionGalleryCollection)initWithTitle:(id)a3 faceCollection:(id)a4;
- (void)faceCollection:(id)a3 didAddFace:(id)a4 atIndex:(unint64_t)a5;
- (void)faceCollection:(id)a3 didRemoveFace:(id)a4 atIndex:(unint64_t)a5;
- (void)faceCollectionDidLoad:(id)a3;
- (void)faceCollectionDidReorderFaces:(id)a3;
@end

@implementation NTKFaceCollectionGalleryCollection

- (NTKFaceCollectionGalleryCollection)initWithTitle:(id)a3 faceCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = NTKFaceCollectionGalleryCollection;
  v8 = [(NTKFaceCollectionGalleryCollection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(NTKGalleryCollection *)v8 setTitle:v6];
    objc_storeStrong(&v9->_faceCollection, a4);
  }

  return v9;
}

- (void)faceCollectionDidLoad:(id)a3
{
  v4 = MEMORY[0x277CBBAE8];
  v5 = [(NTKFaceCollection *)self->_faceCollection deviceUUID];
  v6 = [v4 deviceForPairingID:v5];

  v7 = [v6 pdrDevice];
  faceCollection = self->_faceCollection;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __60__NTKFaceCollectionGalleryCollection_faceCollectionDidLoad___block_invoke;
  v15 = &unk_2787840E8;
  v16 = v6;
  v17 = v7;
  v9 = v7;
  v10 = v6;
  [(NTKFaceCollection *)faceCollection enumerateFacesUsingBlock:&v12];
  v11 = [(NTKGalleryCollection *)self delegate:v12];
  [v11 galleryCollectionDidChange:self shouldUpdateSnaphots:1];
}

void __60__NTKFaceCollectionGalleryCollection_faceCollectionDidLoad___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 hasValidConfigurationForDevice:*(a1 + 32)] & 1) == 0)
  {
    v4 = [*(a1 + 40) valueForProperty:*MEMORY[0x277D37C00]];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = @"unknown";
    }

    v7 = v6;

    v8 = [*(a1 + 40) valueForProperty:*MEMORY[0x277D37BF8]];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = @"unknown";
    }

    v11 = v10;

    v12 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v13 = [v3 description];
      v14 = *(a1 + 32);
      v15 = 138413058;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      v19 = 2112;
      v20 = v7;
      v21 = 2112;
      v22 = v11;
      _os_log_fault_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_FAULT, "Edit Option Version Mismatch Exception: Attempted to add a face (%@) with an edit option that does not exist in device (%@)  %@ (%@).", &v15, 0x2Au);
    }
  }
}

- (void)faceCollection:(id)a3 didAddFace:(id)a4 atIndex:(unint64_t)a5
{
  v6 = [(NTKGalleryCollection *)self delegate:a3];
  [v6 galleryCollectionDidChange:self shouldUpdateSnaphots:1];
}

- (void)faceCollection:(id)a3 didRemoveFace:(id)a4 atIndex:(unint64_t)a5
{
  v6 = [(NTKGalleryCollection *)self delegate:a3];
  [v6 galleryCollectionDidChange:self shouldUpdateSnaphots:1];
}

- (void)faceCollectionDidReorderFaces:(id)a3
{
  v4 = [(NTKGalleryCollection *)self delegate];
  [v4 galleryCollectionDidChange:self shouldUpdateSnaphots:1];
}

@end