@interface ICImageAndMovieThumbnailView
- (BOOL)usesSeparateLayerForHairlineEdge:(unint64_t)a3;
- (BOOL)usesSeparateLayersForHairlines;
- (CGRect)frameByApplyingHorizontalReductionTo:(CGRect)a3 edge:(unint64_t)a4;
- (CGRect)frameByApplyingVerticalReductionTo:(CGRect)a3 edge:(unint64_t)a4;
- (ICImageAndMovieThumbnailView)initWithCoder:(id)a3;
- (ICImageAndMovieThumbnailView)initWithFrame:(CGRect)a3 showMovieDuration:(BOOL)a4;
- (UIImage)image;
- (double)backingScale;
- (double)cornerRadius;
- (double)hairlineWidthInPoint;
- (double)imageInset;
- (id)hairlineLayerForEdge:(unint64_t)a3;
- (void)commonInit;
- (void)setBorderColor:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setCornerRadius:(double)a3;
- (void)setEdgesToRemoveEndPoint:(unint64_t)a3;
- (void)setEdgesToRemoveStartPoint:(unint64_t)a3;
- (void)setHairlineColor:(id)a3 forEdges:(unint64_t)a4;
- (void)setHairlineEdges:(unint64_t)a3;
- (void)setHairlineWidthUnitIsInPoint:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setImageInset:(double)a3;
- (void)setImageScaling:(unint64_t)a3;
- (void)setMovieDuration:(id *)a3;
- (void)setShowAsMovie:(BOOL)a3;
- (void)setupMovieFooter;
- (void)updateDurationLabel;
- (void)updateHairline;
- (void)updateHairlineFrames;
@end

@implementation ICImageAndMovieThumbnailView

- (ICImageAndMovieThumbnailView)initWithFrame:(CGRect)a3 showMovieDuration:(BOOL)a4
{
  v8.receiver = self;
  v8.super_class = ICImageAndMovieThumbnailView;
  v5 = [(ICImageAndMovieThumbnailView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_showMovieDuration = a4;
    [(ICImageAndMovieThumbnailView *)v5 commonInit];
  }

  return v6;
}

- (ICImageAndMovieThumbnailView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICImageAndMovieThumbnailView;
  v3 = [(ICImageAndMovieThumbnailView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    v3->_showMovieDuration = 0;
    [(ICImageAndMovieThumbnailView *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v30[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(ICImageAndMovieThumbnailView *)self setHairlineLayers:v3];

  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(ICImageAndMovieThumbnailView *)self setHairlineColors:v4];

  [(ICImageAndMovieThumbnailView *)self setMininumScaleFactor:1.0];
  [(ICImageAndMovieThumbnailView *)self setForceSquareImageAspectRatio:0];
  v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
  [(ICImageAndMovieThumbnailView *)self frame];
  v7 = v6;
  [(ICImageAndMovieThumbnailView *)self frame];
  v8 = [v5 initWithFrame:{0.0, 0.0, v7}];
  [(ICImageAndMovieThumbnailView *)self setImageView:v8];

  v9 = [(ICImageAndMovieThumbnailView *)self imageView];
  [v9 setClipsToBounds:1];

  v10 = [(ICImageAndMovieThumbnailView *)self imageView];
  [v10 setContentMode:2];

  v11 = [(ICImageAndMovieThumbnailView *)self imageView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(ICImageAndMovieThumbnailView *)self imageView];
  [(ICImageAndMovieThumbnailView *)self addSubview:v12];

  v13 = MEMORY[0x1E696ACD8];
  v14 = [(ICImageAndMovieThumbnailView *)self imageView];
  v15 = [v13 constraintWithItem:v14 attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:0.0];
  [(ICImageAndMovieThumbnailView *)self setImageViewLeftLayoutConstraint:v15];

  v16 = MEMORY[0x1E696ACD8];
  v17 = [(ICImageAndMovieThumbnailView *)self imageView];
  v18 = [v16 constraintWithItem:self attribute:6 relatedBy:0 toItem:v17 attribute:6 multiplier:1.0 constant:0.0];
  [(ICImageAndMovieThumbnailView *)self setImageViewRightLayoutConstraint:v18];

  v19 = MEMORY[0x1E696ACD8];
  v20 = [(ICImageAndMovieThumbnailView *)self imageView];
  v21 = [v19 constraintWithItem:v20 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:0.0];
  [(ICImageAndMovieThumbnailView *)self setImageViewTopLayoutConstraint:v21];

  v22 = MEMORY[0x1E696ACD8];
  v23 = [(ICImageAndMovieThumbnailView *)self imageView];
  v24 = [v22 constraintWithItem:self attribute:4 relatedBy:0 toItem:v23 attribute:4 multiplier:1.0 constant:0.0];
  [(ICImageAndMovieThumbnailView *)self setImageViewBottomLayoutConstraint:v24];

  v25 = [(ICImageAndMovieThumbnailView *)self imageViewLeftLayoutConstraint];
  v30[0] = v25;
  v26 = [(ICImageAndMovieThumbnailView *)self imageViewRightLayoutConstraint];
  v30[1] = v26;
  v27 = [(ICImageAndMovieThumbnailView *)self imageViewTopLayoutConstraint];
  v30[2] = v27;
  v28 = [(ICImageAndMovieThumbnailView *)self imageViewBottomLayoutConstraint];
  v30[3] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v29];
  if ([(ICImageAndMovieThumbnailView *)self showAsMovie])
  {
    [(ICImageAndMovieThumbnailView *)self setupMovieFooter];
  }
}

- (void)setBounds:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = ICImageAndMovieThumbnailView;
  [(ICImageAndMovieThumbnailView *)&v4 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if ([(ICImageAndMovieThumbnailView *)self usesSeparateLayersForHairlines])
  {
    [(ICImageAndMovieThumbnailView *)self updateHairlineFrames];
  }
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(ICImageAndMovieThumbnailView *)self imageView];
  [v5 setImage:v4];
}

- (UIImage)image
{
  v2 = [(ICImageAndMovieThumbnailView *)self imageView];
  v3 = [v2 image];

  return v3;
}

- (void)setImageScaling:(unint64_t)a3
{
  if (self->_imageScaling != a3)
  {
    self->_imageScaling = a3;
    if (a3 <= 2)
    {
      v4 = qword_1D4434608[a3];
      v5 = [(ICImageAndMovieThumbnailView *)self imageView];
      [v5 setContentMode:v4];
    }
  }
}

- (double)imageInset
{
  v2 = [(ICImageAndMovieThumbnailView *)self imageViewLeftLayoutConstraint];
  [v2 constant];
  v4 = v3;

  return v4;
}

- (void)setImageInset:(double)a3
{
  v5 = [(ICImageAndMovieThumbnailView *)self imageViewLeftLayoutConstraint];
  [v5 setConstant:a3];

  v6 = [(ICImageAndMovieThumbnailView *)self imageViewRightLayoutConstraint];
  [v6 setConstant:a3];

  v7 = [(ICImageAndMovieThumbnailView *)self imageViewTopLayoutConstraint];
  [v7 setConstant:a3];

  v8 = [(ICImageAndMovieThumbnailView *)self imageViewBottomLayoutConstraint];
  [v8 setConstant:a3];
}

- (void)setupMovieFooter
{
  v74[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x1E695F058], v5, v6, v7}];
  [(ICImageAndMovieThumbnailView *)self setMovieFooter:v8];

  LODWORD(v8) = [(ICImageAndMovieThumbnailView *)self showAsMovie];
  v9 = [(ICImageAndMovieThumbnailView *)self movieFooter];
  [v9 setHidden:v8 ^ 1];

  if ([(ICImageAndMovieThumbnailView *)self showMovieDuration])
  {
    v10 = [[ICLabel alloc] initWithFrame:v4, v5, v6, v7];
    [(ICImageAndMovieThumbnailView *)self setMovieDurationLabel:v10];

    v11 = [(ICImageAndMovieThumbnailView *)self movieDurationLabel];
    [v11 setString:@"0"];

    v12 = [(ICImageAndMovieThumbnailView *)self movieDurationLabel];
    [v12 setNumberOfLines:1];

    v13 = [MEMORY[0x1E69DC888] whiteColor];
    v14 = [(ICImageAndMovieThumbnailView *)self movieDurationLabel];
    [v14 setTextColor:v13];

    if ([(UIView *)self ic_isRTL])
    {
      v15 = 0;
    }

    else
    {
      v15 = 2;
    }

    v16 = [(ICImageAndMovieThumbnailView *)self movieDurationLabel];
    [v16 setTextAlignment:v15];

    v17 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
    v18 = [v17 ic_fontWithSingleLineA];
    v19 = [(ICImageAndMovieThumbnailView *)self movieDurationLabel];
    [v19 setFont:v18];
  }

  v20 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v4, v5, v6, v7}];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = [MEMORY[0x1E69DCAB8] imageNamed:@"attachment_thumb_video_gradient"];
  [v20 setImage:v21];

  v22 = [(ICImageAndMovieThumbnailView *)self movieFooter];
  [v22 addSubview:v20];

  v23 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v4, v5, v6, v7}];
  v24 = [(ICImageAndMovieThumbnailView *)self movieFooter];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

  if ([(ICImageAndMovieThumbnailView *)self showMovieDuration])
  {
    v25 = [(ICImageAndMovieThumbnailView *)self movieDurationLabel];
    [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v26) = 1144750080;
  [v23 setContentHuggingPriority:0 forAxis:v26];
  v27 = [(ICImageAndMovieThumbnailView *)self movieFooter];
  [v27 addSubview:v23];

  if ([(ICImageAndMovieThumbnailView *)self showMovieDuration])
  {
    v28 = [(ICImageAndMovieThumbnailView *)self movieFooter];
    v29 = [(ICImageAndMovieThumbnailView *)self movieDurationLabel];
    [v28 addSubview:v29];
  }

  v30 = [(ICImageAndMovieThumbnailView *)self movieFooter];
  [(ICImageAndMovieThumbnailView *)self addSubview:v30];

  v31 = [MEMORY[0x1E69DCAB8] imageNamed:@"attachment_thumb_video_camera_icon"];
  [v23 setImage:v31];

  v32 = objc_opt_new();
  v33 = MEMORY[0x1E696ACD8];
  v73 = @"movieFooter";
  v34 = [(ICImageAndMovieThumbnailView *)self movieFooter];
  v74[0] = v34;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:&v73 count:1];
  v36 = [v33 constraintsWithVisualFormat:@"|[movieFooter]|" options:0 metrics:0 views:v35];
  [v32 addObjectsFromArray:v36];

  v37 = MEMORY[0x1E696ACD8];
  v71 = @"movieFooter";
  v38 = [(ICImageAndMovieThumbnailView *)self movieFooter];
  v72 = v38;
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
  v40 = [v37 constraintsWithVisualFormat:@"V:[movieFooter(18)]|" options:0 metrics:0 views:v39];
  [v32 addObjectsFromArray:v40];

  v41 = MEMORY[0x1E696ACD8];
  v69 = @"movieFooterBackground";
  v70 = v20;
  v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
  v43 = [v41 constraintsWithVisualFormat:@"|[movieFooterBackground]|" options:0 metrics:0 views:v42];
  [v32 addObjectsFromArray:v43];

  v44 = MEMORY[0x1E696ACD8];
  v67 = @"movieFooterBackground";
  v68 = v20;
  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
  v46 = [v44 constraintsWithVisualFormat:@"V:|[movieFooterBackground]|" options:0 metrics:0 views:v45];
  [v32 addObjectsFromArray:v46];

  v47 = [(ICImageAndMovieThumbnailView *)self showMovieDuration];
  v48 = MEMORY[0x1E696ACD8];
  if (v47)
  {
    v65[0] = @"cameraIcon";
    v65[1] = @"movieDurationLabel";
    v66[0] = v23;
    v49 = [(ICImageAndMovieThumbnailView *)self movieDurationLabel];
    v66[1] = v49;
    v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
    v51 = [v48 constraintsWithVisualFormat:@"|-6-[cameraIcon]-1-[movieDurationLabel]-6-|" options:0 metrics:0 views:v50];
    [v32 addObjectsFromArray:v51];

    v52 = MEMORY[0x1E696ACD8];
    v63 = @"movieDurationLabel";
    v53 = [(ICImageAndMovieThumbnailView *)self movieDurationLabel];
    v64 = v53;
    v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    v55 = [v52 constraintsWithVisualFormat:@"V:|[movieDurationLabel]-1-|" options:0 metrics:0 views:v54];
    [v32 addObjectsFromArray:v55];
  }

  else
  {
    v61 = @"cameraIcon";
    v62 = v23;
    v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v54 = [v48 constraintsWithVisualFormat:@"|-6-[cameraIcon]" options:0 metrics:0 views:v53];
    [v32 addObjectsFromArray:v54];
  }

  v56 = MEMORY[0x1E696ACD8];
  v59 = @"cameraIcon";
  v60 = v23;
  v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
  v58 = [v56 constraintsWithVisualFormat:@"V:[cameraIcon]|" options:0 metrics:0 views:v57];
  [v32 addObjectsFromArray:v58];

  [MEMORY[0x1E696ACD8] activateConstraints:v32];
}

- (void)setShowAsMovie:(BOOL)a3
{
  if (self->_showAsMovie != a3)
  {
    self->_showAsMovie = a3;
    if (a3)
    {

      [(ICImageAndMovieThumbnailView *)self setupMovieFooter];
    }

    else
    {
      v4 = [(ICImageAndMovieThumbnailView *)self movieFooter];
      [v4 removeFromSuperview];

      [(ICImageAndMovieThumbnailView *)self setMovieFooter:0];
    }
  }
}

- (void)setMovieDuration:(id *)a3
{
  if ([(ICImageAndMovieThumbnailView *)self showMovieDuration])
  {
    time1 = self->_movieDuration;
    v7 = *a3;
    if (CMTimeCompare(&time1, &v7))
    {
      v5 = *&a3->var0;
      self->_movieDuration.epoch = a3->var3;
      *&self->_movieDuration.value = v5;
      [(ICImageAndMovieThumbnailView *)self updateDurationLabel];
    }
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ICImageAndMovieThumbnailView setMovieDuration:v6];
    }
  }
}

- (void)setCornerRadius:(double)a3
{
  v5 = [(ICImageAndMovieThumbnailView *)self imageView];
  v4 = [v5 layer];
  [v4 setCornerRadius:a3];
}

- (double)cornerRadius
{
  v2 = [(ICImageAndMovieThumbnailView *)self imageView];
  v3 = [v2 layer];
  [v3 cornerRadius];
  v5 = v4;

  return v5;
}

- (void)setBorderColor:(id)a3
{
  v5 = a3;
  if (self->_borderColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_borderColor, a3);
    [(ICImageAndMovieThumbnailView *)self updateHairline];
    v5 = v6;
  }
}

- (void)setHairlineColor:(id)a3 forEdges:(unint64_t)a4
{
  v21 = a3;
  v6 = [(ICImageAndMovieThumbnailView *)self hairlineColors];

  if (!v6)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"self.hairlineColors" functionName:"-[ICImageAndMovieThumbnailView setHairlineColor:forEdges:]" simulateCrash:1 showAlert:0 format:@"hairlineColors not initialized"];
  }

  v7 = [(ICImageAndMovieThumbnailView *)self hairlineColors];

  if (!v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(ICImageAndMovieThumbnailView *)self setHairlineColors:v8];
  }

  v9 = 0;
  for (i = 0; i != 4; ++i)
  {
    while (1)
    {
      v11 = ICRectEdgeAtIndex();
      if ((v11 & a4) == 0)
      {
        break;
      }

      v12 = v11;
      v13 = [(ICImageAndMovieThumbnailView *)self hairlineColors];
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
      v15 = [v13 objectForKeyedSubscript:v14];
      v16 = [v15 isEqual:v21];

      if (v16)
      {
        break;
      }

      v17 = [v21 copy];
      v18 = [(ICImageAndMovieThumbnailView *)self hairlineColors];
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
      [v18 setObject:v17 forKeyedSubscript:v19];

      v9 = 1;
      if (i++ == 3)
      {
        goto LABEL_14;
      }
    }
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_14:
  [(ICImageAndMovieThumbnailView *)self updateHairline];
LABEL_15:
}

- (void)setHairlineEdges:(unint64_t)a3
{
  if (self->_hairlineEdges != a3)
  {
    self->_hairlineEdges = a3;
    [(ICImageAndMovieThumbnailView *)self updateHairline];
  }
}

- (void)setEdgesToRemoveStartPoint:(unint64_t)a3
{
  if (self->_edgesToRemoveStartPoint != a3)
  {
    self->_edgesToRemoveStartPoint = a3;
    [(ICImageAndMovieThumbnailView *)self updateHairline];
  }
}

- (void)setEdgesToRemoveEndPoint:(unint64_t)a3
{
  if (self->_edgesToRemoveEndPoint != a3)
  {
    self->_edgesToRemoveEndPoint = a3;
    [(ICImageAndMovieThumbnailView *)self updateHairline];
  }
}

- (void)updateDurationLabel
{
  v3 = +[ICMediaTimeFormatter timecodeFormatter];
  v4 = [ICMediaTime alloc];
  [(ICImageAndMovieThumbnailView *)self movieDuration];
  v5 = [(ICMediaTime *)v4 initWithCMTime:v8];
  v6 = [v3 stringForObjectValue:v5];
  v7 = [(ICImageAndMovieThumbnailView *)self movieDurationLabel];
  [v7 setString:v6];
}

- (BOOL)usesSeparateLayersForHairlines
{
  if (![(ICImageAndMovieThumbnailView *)self hairlineEdges])
  {
    return 0;
  }

  if ([(ICImageAndMovieThumbnailView *)self hairlineEdges]!= 15)
  {
    return 1;
  }

  v3 = [(ICImageAndMovieThumbnailView *)self hairlineColors];
  v4 = [v3 count] > 1;

  return v4;
}

- (BOOL)usesSeparateLayerForHairlineEdge:(unint64_t)a3
{
  v5 = [(ICImageAndMovieThumbnailView *)self usesSeparateLayersForHairlines];
  if (v5)
  {
    LOBYTE(v5) = ([(ICImageAndMovieThumbnailView *)self hairlineEdges]& a3) != 0;
  }

  return v5;
}

- (id)hairlineLayerForEdge:(unint64_t)a3
{
  if ([(ICImageAndMovieThumbnailView *)self usesSeparateLayerForHairlineEdge:?])
  {
    v5 = [(ICImageAndMovieThumbnailView *)self hairlineLayers];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (!v7)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"layer" functionName:"-[ICImageAndMovieThumbnailView hairlineLayerForEdge:]" simulateCrash:1 showAlert:0 format:{@"No layer found for edge %lu", a3}];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateHairline
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = [(ICImageAndMovieThumbnailView *)self borderColor];

  if (!v3)
  {
    if (-[ICImageAndMovieThumbnailView hairlineEdges](self, "hairlineEdges") && (-[ICImageAndMovieThumbnailView hairlineColors](self, "hairlineColors"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v9, v10))
    {
      if (![(ICImageAndMovieThumbnailView *)self usesSeparateLayersForHairlines])
      {
        v4 = [(ICImageAndMovieThumbnailView *)self hairlineColors];
        v47 = [v4 allValues];
        v48 = [v47 firstObject];
        v49 = [v48 CGColor];
        v50 = [(ICImageAndMovieThumbnailView *)self layer];
        [v50 setBorderColor:v49];

        goto LABEL_3;
      }

      v11 = [(ICImageAndMovieThumbnailView *)self hairlineLayers];

      if (!v11)
      {
        [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"self.hairlineLayers" functionName:"-[ICImageAndMovieThumbnailView updateHairline]" simulateCrash:1 showAlert:0 format:@"hairlineLayers not initialized"];
      }

      v12 = [(ICImageAndMovieThumbnailView *)self hairlineLayers];

      if (!v12)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [(ICImageAndMovieThumbnailView *)self setHairlineLayers:v13];
      }

      v14 = [(ICImageAndMovieThumbnailView *)self hairlineLayers];
      v15 = [v14 count];

      if (v15 <= 3)
      {
        do
        {
          v16 = [(ICImageAndMovieThumbnailView *)self hairlineLayers];
          [v16 count];

          v17 = ICRectEdgeAtIndex();
          v18 = objc_alloc_init(MEMORY[0x1E6979398]);
          [v18 setZPosition:1.0];
          v19 = [(ICImageAndMovieThumbnailView *)self hairlineLayers];
          v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
          [v19 setObject:v18 forKeyedSubscript:v20];

          v21 = [(ICImageAndMovieThumbnailView *)self layer];
          [v21 addSublayer:v18];

          v22 = [(ICImageAndMovieThumbnailView *)self hairlineLayers];
          v23 = [v22 count];
        }

        while (v23 < 4);
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v24 = [(ICImageAndMovieThumbnailView *)self hairlineLayers];
      v25 = [v24 countByEnumeratingWithState:&v56 objects:v61 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v57;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v57 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v56 + 1) + 8 * i);
            objc_opt_class();
            v30 = [(ICImageAndMovieThumbnailView *)self hairlineLayers];
            v31 = [v30 objectForKeyedSubscript:v29];
            v32 = ICCheckedDynamicCast();

            v33 = [(ICImageAndMovieThumbnailView *)self hairlineColors];
            v34 = [v33 objectForKeyedSubscript:v29];
            [v32 setBackgroundColor:{objc_msgSend(v34, "CGColor")}];

            [v32 setHidden:{-[ICImageAndMovieThumbnailView usesSeparateLayerForHairlineEdge:](self, "usesSeparateLayerForHairlineEdge:", objc_msgSend(v29, "unsignedIntegerValue")) ^ 1}];
          }

          v26 = [v24 countByEnumeratingWithState:&v56 objects:v61 count:16];
        }

        while (v26);
      }

      [(ICImageAndMovieThumbnailView *)self updateHairlineFrames];
    }

    else
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v35 = [(ICImageAndMovieThumbnailView *)self hairlineLayers];
      v36 = [v35 countByEnumeratingWithState:&v52 objects:v60 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v53;
        do
        {
          for (j = 0; j != v37; ++j)
          {
            if (*v53 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v52 + 1) + 8 * j);
            objc_opt_class();
            v41 = [(ICImageAndMovieThumbnailView *)self hairlineLayers];
            v42 = [v41 objectForKeyedSubscript:v40];
            v43 = ICCheckedDynamicCast();

            [v43 removeFromSuperlayer];
          }

          v37 = [v35 countByEnumeratingWithState:&v52 objects:v60 count:16];
        }

        while (v37);
      }

      v44 = [(ICImageAndMovieThumbnailView *)self hairlineLayers];
      [v44 removeAllObjects];
    }

    v45 = [(ICImageAndMovieThumbnailView *)self layer];
    [v45 setBorderColor:0];

    v46 = [(ICImageAndMovieThumbnailView *)self layer];
    [v46 setBorderWidth:0.0];

    return;
  }

  v4 = [(ICImageAndMovieThumbnailView *)self borderColor];
  v5 = [v4 CGColor];
  v6 = [(ICImageAndMovieThumbnailView *)self layer];
  [v6 setBorderColor:v5];

LABEL_3:
  [(ICImageAndMovieThumbnailView *)self hairlineWidthInPoint];
  v8 = v7;
  v51 = [(ICImageAndMovieThumbnailView *)self layer];
  [v51 setBorderWidth:v8];
}

- (double)backingScale
{
  [(UIView *)self ic_backingScaleFactor];
  v3 = v2;
  if (v2 <= 0.0)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"scale > 0.0" functionName:"-[ICImageAndMovieThumbnailView backingScale]" simulateCrash:1 showAlert:0 format:{@"Invalid scale %f", *&v2}];
  }

  result = 1.0;
  if (v3 > 0.0)
  {
    return v3;
  }

  return result;
}

- (double)hairlineWidthInPoint
{
  if ([(ICImageAndMovieThumbnailView *)self hairlineWidthUnitIsInPoint])
  {
    return 1.0;
  }

  [(ICImageAndMovieThumbnailView *)self pixelWidth];
  return result;
}

- (void)setHairlineWidthUnitIsInPoint:(BOOL)a3
{
  if (self->_hairlineWidthUnitIsInPoint != a3)
  {
    self->_hairlineWidthUnitIsInPoint = a3;
    [(ICImageAndMovieThumbnailView *)self updateHairlineFrames];
  }
}

- (CGRect)frameByApplyingVerticalReductionTo:(CGRect)a3 edge:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (([(ICImageAndMovieThumbnailView *)self edgesToRemoveStartPoint]& a4) != 0)
  {
    height = height + -1.0;
  }

  v10 = [(ICImageAndMovieThumbnailView *)self edgesToRemoveEndPoint];
  v11 = y + 1.0;
  v12 = height + -1.0;
  if ((v10 & a4) == 0)
  {
    v12 = height;
    v11 = y;
  }

  v13 = fmax(v12, 1.0);
  v14 = x;
  v15 = width;
  result.size.height = v13;
  result.size.width = v15;
  result.origin.y = v11;
  result.origin.x = v14;
  return result;
}

- (CGRect)frameByApplyingHorizontalReductionTo:(CGRect)a3 edge:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(ICImageAndMovieThumbnailView *)self edgesToRemoveStartPoint];
  if ((v10 & a4) != 0)
  {
    v11 = width + -1.0;
  }

  else
  {
    v11 = width;
  }

  if ((v10 & a4) != 0)
  {
    v12 = x + 1.0;
  }

  else
  {
    v12 = x;
  }

  v13 = [(ICImageAndMovieThumbnailView *)self edgesToRemoveEndPoint];
  v14 = v11 + -1.0;
  if ((v13 & a4) == 0)
  {
    v14 = v11;
  }

  v15 = fmax(v14, 1.0);
  v16 = v12;
  v17 = y;
  v18 = height;
  result.size.height = v18;
  result.size.width = v15;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)updateHairlineFrames
{
  v3 = [(ICImageAndMovieThumbnailView *)self layer];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v27 = [(ICImageAndMovieThumbnailView *)self hairlineLayerForEdge:2];
  if (v27)
  {
    [(ICImageAndMovieThumbnailView *)self hairlineWidthInPoint];
    [(ICImageAndMovieThumbnailView *)self frameByApplyingVerticalReductionTo:2 edge:v5, v7, v12, v11];
    [v27 setFrame:?];
  }

  v13 = [(ICImageAndMovieThumbnailView *)self hairlineLayerForEdge:8];
  if (v13)
  {
    [(ICImageAndMovieThumbnailView *)self hairlineWidthInPoint];
    v15 = v14;
    v29.origin.x = v5;
    v29.origin.y = v7;
    v29.size.width = v9;
    v29.size.height = v11;
    MaxX = CGRectGetMaxX(v29);
    [(ICImageAndMovieThumbnailView *)self hairlineWidthInPoint];
    [(ICImageAndMovieThumbnailView *)self frameByApplyingVerticalReductionTo:8 edge:MaxX - v17, v7, v15, v11];
    [v13 setFrame:?];
  }

  v18 = [(ICImageAndMovieThumbnailView *)self hairlineLayerForEdge:1];
  if (v18)
  {
    [(ICImageAndMovieThumbnailView *)self hairlineWidthInPoint];
    v20 = v19;
    v30.origin.x = v5;
    v30.origin.y = v7;
    v30.size.width = v9;
    v30.size.height = v11;
    MaxY = CGRectGetMaxY(v30);
    [(ICImageAndMovieThumbnailView *)self hairlineWidthInPoint];
    v23 = MaxY - v22;
    [v18 setFrame:{v5, v23, v9, v20}];
    [(ICImageAndMovieThumbnailView *)self frameByApplyingHorizontalReductionTo:1 edge:v5, v23, v9, v20];
    [v18 setFrame:?];
  }

  v24 = [(ICImageAndMovieThumbnailView *)self hairlineLayerForEdge:4];
  if (v24)
  {
    [(ICImageAndMovieThumbnailView *)self hairlineWidthInPoint];
    v26 = v25;
    [v24 setFrame:{v5, v7, v9, v25}];
    [(ICImageAndMovieThumbnailView *)self frameByApplyingHorizontalReductionTo:4 edge:v5, v7, v9, v26];
    [v24 setFrame:?];
  }
}

@end