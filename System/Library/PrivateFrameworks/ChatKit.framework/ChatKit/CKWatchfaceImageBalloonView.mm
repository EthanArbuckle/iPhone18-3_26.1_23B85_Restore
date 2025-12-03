@interface CKWatchfaceImageBalloonView
- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation hasInvisibleInkEffect:(BOOL)effect;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setMetadata:(id)metadata;
- (void)tapGestureRecognized:(id)recognized;
@end

@implementation CKWatchfaceImageBalloonView

- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation hasInvisibleInkEffect:(BOOL)effect
{
  orientationCopy = orientation;
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [objectCopy linkMetadataForWidth:orientationCopy orientation:width];
    [(CKWatchfaceImageBalloonView *)self setMetadata:v9];
  }
}

- (void)setMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (self->_metadata != metadataCopy)
  {
    v6 = metadataCopy;
    objc_storeStrong(&self->_metadata, metadata);
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
    metadataCopy = v6;
  }
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKWatchfaceImageBalloonView;
  [(CKLinkBalloonView *)&v4 prepareForReuse];
  metadata = self->_metadata;
  self->_metadata = 0;
}

- (void)prepareForDisplay
{
  linkView = [(CKLinkBalloonView *)self linkView];

  if (linkView)
  {
    linkView2 = [(CKLinkBalloonView *)self linkView];
    [linkView2 setMetadata:self->_metadata];
  }

  else
  {
    linkView2 = [objc_alloc(MEMORY[0x1E696ECC8]) initWithMetadata:self->_metadata];
    [(CKLinkBalloonView *)self setLinkView:linkView2];
  }

  v5.receiver = self;
  v5.super_class = CKWatchfaceImageBalloonView;
  [(CKLinkBalloonView *)&v5 prepareForDisplay];
}

- (void)tapGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  metadata = self->_metadata;
  if (metadata)
  {
    originalURL = [(LPLinkMetadata *)metadata originalURL];

    if (originalURL)
    {
      originalURL2 = [(LPLinkMetadata *)self->_metadata originalURL];
      [CKWatchfaceUtilities addWatchFaceAtURL:originalURL2 completionHandler:&__block_literal_global_84];
    }
  }
}

void __52__CKWatchfaceImageBalloonView_tapGestureRecognized___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(47);
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v5 = v2;
        _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_DEBUG, "Failed to import URL: %@", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog();
    }
  }
}

@end