@interface CKWorkoutBalloonView
- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation hasInvisibleInkEffect:(BOOL)effect;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setMetadata:(id)metadata;
- (void)tapGestureRecognized:(id)recognized;
@end

@implementation CKWorkoutBalloonView

- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation hasInvisibleInkEffect:(BOOL)effect
{
  orientationCopy = orientation;
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [objectCopy linkMetadataForWidth:orientationCopy orientation:width];
    [(CKWorkoutBalloonView *)self setMetadata:v9];
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
  v4.super_class = CKWorkoutBalloonView;
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
  v5.super_class = CKWorkoutBalloonView;
  [(CKLinkBalloonView *)&v5 prepareForDisplay];
}

- (void)tapGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  metadata = self->_metadata;
  if (metadata && ([(LPLinkMetadata *)metadata originalURL], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = MEMORY[0x1E695DEF0];
    originalURL = [(LPLinkMetadata *)self->_metadata originalURL];
    v13 = 0;
    v9 = [v7 dataWithContentsOfURL:originalURL options:0 error:&v13];
    v10 = v13;

    if (v9)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      delegate = [(CKBalloonView *)self delegate];
      [delegate didTapWorkoutBalloonView:self workoutData:v9];
    }

    else
    {
      delegate = IMLogHandleForCategory();
      if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
      {
        [(CKWorkoutBalloonView *)v10 tapGestureRecognized:delegate];
      }
    }
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CKWorkoutBalloonView tapGestureRecognized:v10];
    }
  }
}

- (void)tapGestureRecognized:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Unable to read contents of file with error: %@", &v2, 0xCu);
}

@end