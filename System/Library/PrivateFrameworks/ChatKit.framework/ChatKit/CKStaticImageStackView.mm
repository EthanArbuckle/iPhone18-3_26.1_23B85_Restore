@interface CKStaticImageStackView
- (CKStaticImageStackView)initWithFrame:(CGRect)frame mediaObjects:(id)objects;
- (Class)_PFMessageStackLayoutFrameSolverClass;
- (void)_mediaObjectPreviewDidChange:(id)change;
- (void)_updatePreviews;
- (void)layoutSubviews;
- (void)setStackCornerRadius:(double)radius;
@end

@implementation CKStaticImageStackView

- (CKStaticImageStackView)initWithFrame:(CGRect)frame mediaObjects:(id)objects
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  objectsCopy = objects;
  v21.receiver = self;
  v21.super_class = CKStaticImageStackView;
  height = [(CKStaticImageStackView *)&v21 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(CKStaticImageStackView *)height setMediaObjects:objectsCopy];
    v11->_stackCornerRadius = 20.0;
    v12 = objc_alloc_init([(CKStaticImageStackView *)v11 _PFMessageStackLayoutFrameSolverClass]);
    [(CKStaticImageStackView *)v11 setFrameSolver:v12];
    v13 = objc_opt_new();
    if ([objectsCopy count])
    {
      v14 = 0;
      v15 = *MEMORY[0x1E6979DF0];
      v16 = *MEMORY[0x1E69796E8];
      do
      {
        layer = [MEMORY[0x1E6979398] layer];
        [layer setContentsGravity:v15];
        [layer setAnchorPoint:{0.5, 0.5}];
        [layer setMasksToBounds:1];
        [layer setCornerCurve:v16];
        layer2 = [(CKStaticImageStackView *)v11 layer];
        [layer2 addSublayer:layer];

        [v13 addObject:layer];
        ++v14;
      }

      while ([objectsCopy count] > v14);
    }

    [(CKStaticImageStackView *)v11 setImageLayers:v13];
    [(CKStaticImageStackView *)v11 _updatePreviews];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel__mediaObjectPreviewDidChange_ name:@"CKPreviewDidChangeNotification" object:0];
  }

  return v11;
}

- (void)layoutSubviews
{
  *buf = 136315138;
  *a2 = "CGSize _SizeWithAspectRatioFittingSize(double, CGSize)";
  _os_log_error_impl(&dword_19020E000, log, OS_LOG_TYPE_ERROR, "%s would have attempted divide by zero because size.height was 0.", buf, 0xCu);
}

- (void)setStackCornerRadius:(double)radius
{
  if (self->_stackCornerRadius != radius)
  {
    self->_stackCornerRadius = radius;
    [(CKStaticImageStackView *)self setNeedsLayout];
  }
}

- (void)_mediaObjectPreviewDidChange:(id)change
{
  v17 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  object = [changeCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  object2 = [changeCopy object];
  if (isKindOfClass)
  {
    mediaObjects = [(CKStaticImageStackView *)self mediaObjects];
    v9 = [mediaObjects containsObject:object2];

    if (v9)
    {
      [(CKStaticImageStackView *)self _updatePreviews];
      [(CKStaticImageStackView *)self setNeedsLayout];
    }
  }

  else
  {
    v10 = objc_opt_class();

    if (v10)
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = NSStringFromClass(v10);
      v13 = [v11 stringWithFormat:@"of type: %@", v12];
    }

    else
    {
      v13 = @"nil";
    }

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v16 = v13;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Notification object received was %@ instead of expected type CKMediaObject, _mediaObjectPreviewDidChange does nothing", buf, 0xCu);
      }
    }
  }
}

- (void)_updatePreviews
{
  mediaObjects = [(CKStaticImageStackView *)self mediaObjects];
  v4 = [mediaObjects count];

  if (v4)
  {
    v5 = 0;
    do
    {
      mediaObjects2 = [(CKStaticImageStackView *)self mediaObjects];
      v7 = [mediaObjects2 objectAtIndexedSubscript:v5];

      imageLayers = [(CKStaticImageStackView *)self imageLayers];
      v9 = [imageLayers objectAtIndexedSubscript:v5];

      v10 = +[CKUIBehavior sharedBehaviors];
      [v10 previewMaxWidth];
      v11 = [v7 previewForWidth:0 orientation:?];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v9 setContents:{objc_msgSend(v11, "CGImage")}];
      }

      ++v5;
      mediaObjects3 = [(CKStaticImageStackView *)self mediaObjects];
      v13 = [mediaObjects3 count];
    }

    while (v13 > v5);
  }
}

- (Class)_PFMessageStackLayoutFrameSolverClass
{
  if (_PFMessageStackLayoutFrameSolverClass_onceToken != -1)
  {
    [CKStaticImageStackView _PFMessageStackLayoutFrameSolverClass];
  }

  v3 = _PFMessageStackLayoutFrameSolverClass__PFMessageStackLayoutFrameSolverClass;

  return v3;
}

uint64_t __63__CKStaticImageStackView__PFMessageStackLayoutFrameSolverClass__block_invoke()
{
  result = MEMORY[0x193AF5EC0](@"PFMessagesStackLayoutFrameSolver", @"PhotosFormats");
  _PFMessageStackLayoutFrameSolverClass__PFMessageStackLayoutFrameSolverClass = result;
  return result;
}

@end