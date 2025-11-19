@interface CKWorkoutBalloonView
- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5 hasInvisibleInkEffect:(BOOL)a6;
- (void)prepareForDisplay;
- (void)prepareForReuse;
- (void)setMetadata:(id)a3;
- (void)tapGestureRecognized:(id)a3;
@end

@implementation CKWorkoutBalloonView

- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5 hasInvisibleInkEffect:(BOOL)a6
{
  v6 = a5;
  v10 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v10 linkMetadataForWidth:v6 orientation:a4];
    [(CKWorkoutBalloonView *)self setMetadata:v9];
  }
}

- (void)setMetadata:(id)a3
{
  v5 = a3;
  if (self->_metadata != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_metadata, a3);
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
    v5 = v6;
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
  v3 = [(CKLinkBalloonView *)self linkView];

  if (v3)
  {
    v4 = [(CKLinkBalloonView *)self linkView];
    [v4 setMetadata:self->_metadata];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E696ECC8]) initWithMetadata:self->_metadata];
    [(CKLinkBalloonView *)self setLinkView:v4];
  }

  v5.receiver = self;
  v5.super_class = CKWorkoutBalloonView;
  [(CKLinkBalloonView *)&v5 prepareForDisplay];
}

- (void)tapGestureRecognized:(id)a3
{
  v4 = a3;
  metadata = self->_metadata;
  if (metadata && ([(LPLinkMetadata *)metadata originalURL], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = MEMORY[0x1E695DEF0];
    v8 = [(LPLinkMetadata *)self->_metadata originalURL];
    v13 = 0;
    v9 = [v7 dataWithContentsOfURL:v8 options:0 error:&v13];
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
      v12 = [(CKBalloonView *)self delegate];
      [v12 didTapWorkoutBalloonView:self workoutData:v9];
    }

    else
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(CKWorkoutBalloonView *)v10 tapGestureRecognized:v12];
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