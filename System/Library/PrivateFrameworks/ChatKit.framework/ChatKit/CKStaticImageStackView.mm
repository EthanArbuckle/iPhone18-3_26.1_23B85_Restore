@interface CKStaticImageStackView
- (CKStaticImageStackView)initWithFrame:(CGRect)a3 mediaObjects:(id)a4;
- (Class)_PFMessageStackLayoutFrameSolverClass;
- (void)_mediaObjectPreviewDidChange:(id)a3;
- (void)_updatePreviews;
- (void)layoutSubviews;
- (void)setStackCornerRadius:(double)a3;
@end

@implementation CKStaticImageStackView

- (CKStaticImageStackView)initWithFrame:(CGRect)a3 mediaObjects:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v21.receiver = self;
  v21.super_class = CKStaticImageStackView;
  v10 = [(CKStaticImageStackView *)&v21 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(CKStaticImageStackView *)v10 setMediaObjects:v9];
    v11->_stackCornerRadius = 20.0;
    v12 = objc_alloc_init([(CKStaticImageStackView *)v11 _PFMessageStackLayoutFrameSolverClass]);
    [(CKStaticImageStackView *)v11 setFrameSolver:v12];
    v13 = objc_opt_new();
    if ([v9 count])
    {
      v14 = 0;
      v15 = *MEMORY[0x1E6979DF0];
      v16 = *MEMORY[0x1E69796E8];
      do
      {
        v17 = [MEMORY[0x1E6979398] layer];
        [v17 setContentsGravity:v15];
        [v17 setAnchorPoint:{0.5, 0.5}];
        [v17 setMasksToBounds:1];
        [v17 setCornerCurve:v16];
        v18 = [(CKStaticImageStackView *)v11 layer];
        [v18 addSublayer:v17];

        [v13 addObject:v17];
        ++v14;
      }

      while ([v9 count] > v14);
    }

    [(CKStaticImageStackView *)v11 setImageLayers:v13];
    [(CKStaticImageStackView *)v11 _updatePreviews];
    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    [v19 addObserver:v11 selector:sel__mediaObjectPreviewDidChange_ name:@"CKPreviewDidChangeNotification" object:0];
  }

  return v11;
}

- (void)layoutSubviews
{
  *buf = 136315138;
  *a2 = "CGSize _SizeWithAspectRatioFittingSize(double, CGSize)";
  _os_log_error_impl(&dword_19020E000, log, OS_LOG_TYPE_ERROR, "%s would have attempted divide by zero because size.height was 0.", buf, 0xCu);
}

- (void)setStackCornerRadius:(double)a3
{
  if (self->_stackCornerRadius != a3)
  {
    self->_stackCornerRadius = a3;
    [(CKStaticImageStackView *)self setNeedsLayout];
  }
}

- (void)_mediaObjectPreviewDidChange:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v7 = [v4 object];
  if (isKindOfClass)
  {
    v8 = [(CKStaticImageStackView *)self mediaObjects];
    v9 = [v8 containsObject:v7];

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
  v3 = [(CKStaticImageStackView *)self mediaObjects];
  v4 = [v3 count];

  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = [(CKStaticImageStackView *)self mediaObjects];
      v7 = [v6 objectAtIndexedSubscript:v5];

      v8 = [(CKStaticImageStackView *)self imageLayers];
      v9 = [v8 objectAtIndexedSubscript:v5];

      v10 = +[CKUIBehavior sharedBehaviors];
      [v10 previewMaxWidth];
      v11 = [v7 previewForWidth:0 orientation:?];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v9 setContents:{objc_msgSend(v11, "CGImage")}];
      }

      ++v5;
      v12 = [(CKStaticImageStackView *)self mediaObjects];
      v13 = [v12 count];
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