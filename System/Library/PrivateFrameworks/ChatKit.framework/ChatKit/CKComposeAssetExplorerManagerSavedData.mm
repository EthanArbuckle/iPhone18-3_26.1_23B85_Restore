@interface CKComposeAssetExplorerManagerSavedData
- (CKComposeAssetExplorerManagerSavedData)initWithFileURL:(id)l filename:(id)filename transcoderUserInfo:(id)info fullyRealizedPreview:(id)preview rawPreview:(id)rawPreview appendedVideoURL:(id)rL;
- (void)dealloc;
@end

@implementation CKComposeAssetExplorerManagerSavedData

- (CKComposeAssetExplorerManagerSavedData)initWithFileURL:(id)l filename:(id)filename transcoderUserInfo:(id)info fullyRealizedPreview:(id)preview rawPreview:(id)rawPreview appendedVideoURL:(id)rL
{
  lCopy = l;
  filenameCopy = filename;
  infoCopy = info;
  previewCopy = preview;
  rawPreviewCopy = rawPreview;
  rLCopy = rL;
  v24.receiver = self;
  v24.super_class = CKComposeAssetExplorerManagerSavedData;
  v18 = [(CKComposeAssetExplorerManagerSavedData *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_fileURL, l);
    objc_storeStrong(&v19->_filename, filename);
    objc_storeStrong(&v19->_transcoderUserInfo, info);
    objc_storeStrong(&v19->_fullyRealizedPreview, preview);
    objc_storeStrong(&v19->_rawPreview, rawPreview);
    objc_storeStrong(&v19->_appendedVideoURL, rL);
    v19->_fileIsSecurityScoped = [(NSURL *)v19->_fileURL startAccessingSecurityScopedResource];
  }

  return v19;
}

- (void)dealloc
{
  if (self->_fileIsSecurityScoped)
  {
    [(NSURL *)self->_fileURL stopAccessingSecurityScopedResource];
  }

  v3.receiver = self;
  v3.super_class = CKComposeAssetExplorerManagerSavedData;
  [(CKComposeAssetExplorerManagerSavedData *)&v3 dealloc];
}

@end