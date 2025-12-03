@interface NTKFacesArrayGalleryCollection
- (void)setFaces:(id)faces;
@end

@implementation NTKFacesArrayGalleryCollection

- (void)setFaces:(id)faces
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_faces != faces)
  {
    v4 = [faces copy];
    faces = self->_faces;
    self->_faces = v4;

    v6 = _NTKLoggingObjectForDomain(10, "NTKLoggingDomainCollection");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      delegate = [(NTKGalleryCollection *)self delegate];
      v9 = 138412802;
      selfCopy = self;
      v11 = 2048;
      selfCopy2 = self;
      v13 = 2112;
      v14 = delegate;
      _os_log_impl(&dword_22D9C5000, v6, OS_LOG_TYPE_DEFAULT, "Faces updated for %@ (%p). Notifying delegate %@", &v9, 0x20u);
    }

    delegate2 = [(NTKGalleryCollection *)self delegate];
    [delegate2 galleryCollectionDidChange:self shouldUpdateSnaphots:1];
  }
}

@end