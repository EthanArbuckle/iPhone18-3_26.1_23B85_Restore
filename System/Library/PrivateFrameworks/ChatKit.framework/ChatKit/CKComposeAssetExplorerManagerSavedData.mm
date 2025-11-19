@interface CKComposeAssetExplorerManagerSavedData
- (CKComposeAssetExplorerManagerSavedData)initWithFileURL:(id)a3 filename:(id)a4 transcoderUserInfo:(id)a5 fullyRealizedPreview:(id)a6 rawPreview:(id)a7 appendedVideoURL:(id)a8;
- (void)dealloc;
@end

@implementation CKComposeAssetExplorerManagerSavedData

- (CKComposeAssetExplorerManagerSavedData)initWithFileURL:(id)a3 filename:(id)a4 transcoderUserInfo:(id)a5 fullyRealizedPreview:(id)a6 rawPreview:(id)a7 appendedVideoURL:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = CKComposeAssetExplorerManagerSavedData;
  v18 = [(CKComposeAssetExplorerManagerSavedData *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_fileURL, a3);
    objc_storeStrong(&v19->_filename, a4);
    objc_storeStrong(&v19->_transcoderUserInfo, a5);
    objc_storeStrong(&v19->_fullyRealizedPreview, a6);
    objc_storeStrong(&v19->_rawPreview, a7);
    objc_storeStrong(&v19->_appendedVideoURL, a8);
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