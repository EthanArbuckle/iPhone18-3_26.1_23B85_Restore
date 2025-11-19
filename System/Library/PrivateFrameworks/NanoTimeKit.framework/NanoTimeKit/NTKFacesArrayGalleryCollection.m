@interface NTKFacesArrayGalleryCollection
- (void)setFaces:(id)a3;
@end

@implementation NTKFacesArrayGalleryCollection

- (void)setFaces:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_faces != a3)
  {
    v4 = [a3 copy];
    faces = self->_faces;
    self->_faces = v4;

    v6 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(NTKGalleryCollection *)self delegate];
      v9 = 138412802;
      v10 = self;
      v11 = 2048;
      v12 = self;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "Faces updated for %@ (%p). Notifying delegate %@", &v9, 0x20u);
    }

    v8 = [(NTKGalleryCollection *)self delegate];
    [v8 galleryCollectionDidChange:self shouldUpdateSnaphots:1];
  }
}

@end