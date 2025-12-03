@interface ICImageAndMovieThumbnailView
- (BOOL)usesSeparateLayerForHairlineEdge:(unint64_t)edge;
- (BOOL)usesSeparateLayersForHairlines;
- (CGRect)frameByApplyingHorizontalReductionTo:(CGRect)to edge:(unint64_t)edge;
- (CGRect)frameByApplyingVerticalReductionTo:(CGRect)to edge:(unint64_t)edge;
- (ICImageAndMovieThumbnailView)initWithCoder:(id)coder;
- (ICImageAndMovieThumbnailView)initWithFrame:(CGRect)frame showMovieDuration:(BOOL)duration;
- (UIImage)image;
- (double)backingScale;
- (double)cornerRadius;
- (double)hairlineWidthInPoint;
- (double)imageInset;
- (id)hairlineLayerForEdge:(unint64_t)edge;
- (void)commonInit;
- (void)setBorderColor:(id)color;
- (void)setBounds:(CGRect)bounds;
- (void)setCornerRadius:(double)radius;
- (void)setEdgesToRemoveEndPoint:(unint64_t)point;
- (void)setEdgesToRemoveStartPoint:(unint64_t)point;
- (void)setHairlineColor:(id)color forEdges:(unint64_t)edges;
- (void)setHairlineEdges:(unint64_t)edges;
- (void)setHairlineWidthUnitIsInPoint:(BOOL)point;
- (void)setImage:(id)image;
- (void)setImageInset:(double)inset;
- (void)setImageScaling:(unint64_t)scaling;
- (void)setMovieDuration:(id *)duration;
- (void)setShowAsMovie:(BOOL)movie;
- (void)setupMovieFooter;
- (void)updateDurationLabel;
- (void)updateHairline;
- (void)updateHairlineFrames;
@end

@implementation ICImageAndMovieThumbnailView

- (ICImageAndMovieThumbnailView)initWithFrame:(CGRect)frame showMovieDuration:(BOOL)duration
{
  v8.receiver = self;
  v8.super_class = ICImageAndMovieThumbnailView;
  v5 = [(ICImageAndMovieThumbnailView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_showMovieDuration = duration;
    [(ICImageAndMovieThumbnailView *)v5 commonInit];
  }

  return v6;
}

- (ICImageAndMovieThumbnailView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ICImageAndMovieThumbnailView;
  v3 = [(ICImageAndMovieThumbnailView *)&v6 initWithCoder:coder];
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

  imageView = [(ICImageAndMovieThumbnailView *)self imageView];
  [imageView setClipsToBounds:1];

  imageView2 = [(ICImageAndMovieThumbnailView *)self imageView];
  [imageView2 setContentMode:2];

  imageView3 = [(ICImageAndMovieThumbnailView *)self imageView];
  [imageView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  imageView4 = [(ICImageAndMovieThumbnailView *)self imageView];
  [(ICImageAndMovieThumbnailView *)self addSubview:imageView4];

  v13 = MEMORY[0x1E696ACD8];
  imageView5 = [(ICImageAndMovieThumbnailView *)self imageView];
  v15 = [v13 constraintWithItem:imageView5 attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:0.0];
  [(ICImageAndMovieThumbnailView *)self setImageViewLeftLayoutConstraint:v15];

  v16 = MEMORY[0x1E696ACD8];
  imageView6 = [(ICImageAndMovieThumbnailView *)self imageView];
  v18 = [v16 constraintWithItem:self attribute:6 relatedBy:0 toItem:imageView6 attribute:6 multiplier:1.0 constant:0.0];
  [(ICImageAndMovieThumbnailView *)self setImageViewRightLayoutConstraint:v18];

  v19 = MEMORY[0x1E696ACD8];
  imageView7 = [(ICImageAndMovieThumbnailView *)self imageView];
  v21 = [v19 constraintWithItem:imageView7 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:0.0];
  [(ICImageAndMovieThumbnailView *)self setImageViewTopLayoutConstraint:v21];

  v22 = MEMORY[0x1E696ACD8];
  imageView8 = [(ICImageAndMovieThumbnailView *)self imageView];
  v24 = [v22 constraintWithItem:self attribute:4 relatedBy:0 toItem:imageView8 attribute:4 multiplier:1.0 constant:0.0];
  [(ICImageAndMovieThumbnailView *)self setImageViewBottomLayoutConstraint:v24];

  imageViewLeftLayoutConstraint = [(ICImageAndMovieThumbnailView *)self imageViewLeftLayoutConstraint];
  v30[0] = imageViewLeftLayoutConstraint;
  imageViewRightLayoutConstraint = [(ICImageAndMovieThumbnailView *)self imageViewRightLayoutConstraint];
  v30[1] = imageViewRightLayoutConstraint;
  imageViewTopLayoutConstraint = [(ICImageAndMovieThumbnailView *)self imageViewTopLayoutConstraint];
  v30[2] = imageViewTopLayoutConstraint;
  imageViewBottomLayoutConstraint = [(ICImageAndMovieThumbnailView *)self imageViewBottomLayoutConstraint];
  v30[3] = imageViewBottomLayoutConstraint;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v29];
  if ([(ICImageAndMovieThumbnailView *)self showAsMovie])
  {
    [(ICImageAndMovieThumbnailView *)self setupMovieFooter];
  }
}

- (void)setBounds:(CGRect)bounds
{
  v4.receiver = self;
  v4.super_class = ICImageAndMovieThumbnailView;
  [(ICImageAndMovieThumbnailView *)&v4 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  if ([(ICImageAndMovieThumbnailView *)self usesSeparateLayersForHairlines])
  {
    [(ICImageAndMovieThumbnailView *)self updateHairlineFrames];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  imageView = [(ICImageAndMovieThumbnailView *)self imageView];
  [imageView setImage:imageCopy];
}

- (UIImage)image
{
  imageView = [(ICImageAndMovieThumbnailView *)self imageView];
  image = [imageView image];

  return image;
}

- (void)setImageScaling:(unint64_t)scaling
{
  if (self->_imageScaling != scaling)
  {
    self->_imageScaling = scaling;
    if (scaling <= 2)
    {
      v4 = qword_1D4434608[scaling];
      imageView = [(ICImageAndMovieThumbnailView *)self imageView];
      [imageView setContentMode:v4];
    }
  }
}

- (double)imageInset
{
  imageViewLeftLayoutConstraint = [(ICImageAndMovieThumbnailView *)self imageViewLeftLayoutConstraint];
  [imageViewLeftLayoutConstraint constant];
  v4 = v3;

  return v4;
}

- (void)setImageInset:(double)inset
{
  imageViewLeftLayoutConstraint = [(ICImageAndMovieThumbnailView *)self imageViewLeftLayoutConstraint];
  [imageViewLeftLayoutConstraint setConstant:inset];

  imageViewRightLayoutConstraint = [(ICImageAndMovieThumbnailView *)self imageViewRightLayoutConstraint];
  [imageViewRightLayoutConstraint setConstant:inset];

  imageViewTopLayoutConstraint = [(ICImageAndMovieThumbnailView *)self imageViewTopLayoutConstraint];
  [imageViewTopLayoutConstraint setConstant:inset];

  imageViewBottomLayoutConstraint = [(ICImageAndMovieThumbnailView *)self imageViewBottomLayoutConstraint];
  [imageViewBottomLayoutConstraint setConstant:inset];
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
  movieFooter = [(ICImageAndMovieThumbnailView *)self movieFooter];
  [movieFooter setHidden:v8 ^ 1];

  if ([(ICImageAndMovieThumbnailView *)self showMovieDuration])
  {
    v10 = [[ICLabel alloc] initWithFrame:v4, v5, v6, v7];
    [(ICImageAndMovieThumbnailView *)self setMovieDurationLabel:v10];

    movieDurationLabel = [(ICImageAndMovieThumbnailView *)self movieDurationLabel];
    [movieDurationLabel setString:@"0"];

    movieDurationLabel2 = [(ICImageAndMovieThumbnailView *)self movieDurationLabel];
    [movieDurationLabel2 setNumberOfLines:1];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    movieDurationLabel3 = [(ICImageAndMovieThumbnailView *)self movieDurationLabel];
    [movieDurationLabel3 setTextColor:whiteColor];

    if ([(UIView *)self ic_isRTL])
    {
      v15 = 0;
    }

    else
    {
      v15 = 2;
    }

    movieDurationLabel4 = [(ICImageAndMovieThumbnailView *)self movieDurationLabel];
    [movieDurationLabel4 setTextAlignment:v15];

    v17 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
    ic_fontWithSingleLineA = [v17 ic_fontWithSingleLineA];
    movieDurationLabel5 = [(ICImageAndMovieThumbnailView *)self movieDurationLabel];
    [movieDurationLabel5 setFont:ic_fontWithSingleLineA];
  }

  v20 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v4, v5, v6, v7}];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = [MEMORY[0x1E69DCAB8] imageNamed:@"attachment_thumb_video_gradient"];
  [v20 setImage:v21];

  movieFooter2 = [(ICImageAndMovieThumbnailView *)self movieFooter];
  [movieFooter2 addSubview:v20];

  v23 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v4, v5, v6, v7}];
  movieFooter3 = [(ICImageAndMovieThumbnailView *)self movieFooter];
  [movieFooter3 setTranslatesAutoresizingMaskIntoConstraints:0];

  if ([(ICImageAndMovieThumbnailView *)self showMovieDuration])
  {
    movieDurationLabel6 = [(ICImageAndMovieThumbnailView *)self movieDurationLabel];
    [movieDurationLabel6 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v26) = 1144750080;
  [v23 setContentHuggingPriority:0 forAxis:v26];
  movieFooter4 = [(ICImageAndMovieThumbnailView *)self movieFooter];
  [movieFooter4 addSubview:v23];

  if ([(ICImageAndMovieThumbnailView *)self showMovieDuration])
  {
    movieFooter5 = [(ICImageAndMovieThumbnailView *)self movieFooter];
    movieDurationLabel7 = [(ICImageAndMovieThumbnailView *)self movieDurationLabel];
    [movieFooter5 addSubview:movieDurationLabel7];
  }

  movieFooter6 = [(ICImageAndMovieThumbnailView *)self movieFooter];
  [(ICImageAndMovieThumbnailView *)self addSubview:movieFooter6];

  v31 = [MEMORY[0x1E69DCAB8] imageNamed:@"attachment_thumb_video_camera_icon"];
  [v23 setImage:v31];

  v32 = objc_opt_new();
  v33 = MEMORY[0x1E696ACD8];
  v73 = @"movieFooter";
  movieFooter7 = [(ICImageAndMovieThumbnailView *)self movieFooter];
  v74[0] = movieFooter7;
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:&v73 count:1];
  v36 = [v33 constraintsWithVisualFormat:@"|[movieFooter]|" options:0 metrics:0 views:v35];
  [v32 addObjectsFromArray:v36];

  v37 = MEMORY[0x1E696ACD8];
  v71 = @"movieFooter";
  movieFooter8 = [(ICImageAndMovieThumbnailView *)self movieFooter];
  v72 = movieFooter8;
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

  showMovieDuration = [(ICImageAndMovieThumbnailView *)self showMovieDuration];
  v48 = MEMORY[0x1E696ACD8];
  if (showMovieDuration)
  {
    v65[0] = @"cameraIcon";
    v65[1] = @"movieDurationLabel";
    v66[0] = v23;
    movieDurationLabel8 = [(ICImageAndMovieThumbnailView *)self movieDurationLabel];
    v66[1] = movieDurationLabel8;
    v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
    v51 = [v48 constraintsWithVisualFormat:@"|-6-[cameraIcon]-1-[movieDurationLabel]-6-|" options:0 metrics:0 views:v50];
    [v32 addObjectsFromArray:v51];

    v52 = MEMORY[0x1E696ACD8];
    v63 = @"movieDurationLabel";
    movieDurationLabel9 = [(ICImageAndMovieThumbnailView *)self movieDurationLabel];
    v64 = movieDurationLabel9;
    v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    v55 = [v52 constraintsWithVisualFormat:@"V:|[movieDurationLabel]-1-|" options:0 metrics:0 views:v54];
    [v32 addObjectsFromArray:v55];
  }

  else
  {
    v61 = @"cameraIcon";
    v62 = v23;
    movieDurationLabel9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v54 = [v48 constraintsWithVisualFormat:@"|-6-[cameraIcon]" options:0 metrics:0 views:movieDurationLabel9];
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

- (void)setShowAsMovie:(BOOL)movie
{
  if (self->_showAsMovie != movie)
  {
    self->_showAsMovie = movie;
    if (movie)
    {

      [(ICImageAndMovieThumbnailView *)self setupMovieFooter];
    }

    else
    {
      movieFooter = [(ICImageAndMovieThumbnailView *)self movieFooter];
      [movieFooter removeFromSuperview];

      [(ICImageAndMovieThumbnailView *)self setMovieFooter:0];
    }
  }
}

- (void)setMovieDuration:(id *)duration
{
  if ([(ICImageAndMovieThumbnailView *)self showMovieDuration])
  {
    time1 = self->_movieDuration;
    v7 = *duration;
    if (CMTimeCompare(&time1, &v7))
    {
      v5 = *&duration->var0;
      self->_movieDuration.epoch = duration->var3;
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

- (void)setCornerRadius:(double)radius
{
  imageView = [(ICImageAndMovieThumbnailView *)self imageView];
  layer = [imageView layer];
  [layer setCornerRadius:radius];
}

- (double)cornerRadius
{
  imageView = [(ICImageAndMovieThumbnailView *)self imageView];
  layer = [imageView layer];
  [layer cornerRadius];
  v5 = v4;

  return v5;
}

- (void)setBorderColor:(id)color
{
  colorCopy = color;
  if (self->_borderColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_borderColor, color);
    [(ICImageAndMovieThumbnailView *)self updateHairline];
    colorCopy = v6;
  }
}

- (void)setHairlineColor:(id)color forEdges:(unint64_t)edges
{
  colorCopy = color;
  hairlineColors = [(ICImageAndMovieThumbnailView *)self hairlineColors];

  if (!hairlineColors)
  {
    [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"self.hairlineColors" functionName:"-[ICImageAndMovieThumbnailView setHairlineColor:forEdges:]" simulateCrash:1 showAlert:0 format:@"hairlineColors not initialized"];
  }

  hairlineColors2 = [(ICImageAndMovieThumbnailView *)self hairlineColors];

  if (!hairlineColors2)
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
      if ((v11 & edges) == 0)
      {
        break;
      }

      v12 = v11;
      hairlineColors3 = [(ICImageAndMovieThumbnailView *)self hairlineColors];
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
      v15 = [hairlineColors3 objectForKeyedSubscript:v14];
      v16 = [v15 isEqual:colorCopy];

      if (v16)
      {
        break;
      }

      v17 = [colorCopy copy];
      hairlineColors4 = [(ICImageAndMovieThumbnailView *)self hairlineColors];
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
      [hairlineColors4 setObject:v17 forKeyedSubscript:v19];

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

- (void)setHairlineEdges:(unint64_t)edges
{
  if (self->_hairlineEdges != edges)
  {
    self->_hairlineEdges = edges;
    [(ICImageAndMovieThumbnailView *)self updateHairline];
  }
}

- (void)setEdgesToRemoveStartPoint:(unint64_t)point
{
  if (self->_edgesToRemoveStartPoint != point)
  {
    self->_edgesToRemoveStartPoint = point;
    [(ICImageAndMovieThumbnailView *)self updateHairline];
  }
}

- (void)setEdgesToRemoveEndPoint:(unint64_t)point
{
  if (self->_edgesToRemoveEndPoint != point)
  {
    self->_edgesToRemoveEndPoint = point;
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
  movieDurationLabel = [(ICImageAndMovieThumbnailView *)self movieDurationLabel];
  [movieDurationLabel setString:v6];
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

  hairlineColors = [(ICImageAndMovieThumbnailView *)self hairlineColors];
  v4 = [hairlineColors count] > 1;

  return v4;
}

- (BOOL)usesSeparateLayerForHairlineEdge:(unint64_t)edge
{
  usesSeparateLayersForHairlines = [(ICImageAndMovieThumbnailView *)self usesSeparateLayersForHairlines];
  if (usesSeparateLayersForHairlines)
  {
    LOBYTE(usesSeparateLayersForHairlines) = ([(ICImageAndMovieThumbnailView *)self hairlineEdges]& edge) != 0;
  }

  return usesSeparateLayersForHairlines;
}

- (id)hairlineLayerForEdge:(unint64_t)edge
{
  if ([(ICImageAndMovieThumbnailView *)self usesSeparateLayerForHairlineEdge:?])
  {
    hairlineLayers = [(ICImageAndMovieThumbnailView *)self hairlineLayers];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:edge];
    v7 = [hairlineLayers objectForKeyedSubscript:v6];

    if (!v7)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"layer" functionName:"-[ICImageAndMovieThumbnailView hairlineLayerForEdge:]" simulateCrash:1 showAlert:0 format:{@"No layer found for edge %lu", edge}];
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
  borderColor = [(ICImageAndMovieThumbnailView *)self borderColor];

  if (!borderColor)
  {
    if (-[ICImageAndMovieThumbnailView hairlineEdges](self, "hairlineEdges") && (-[ICImageAndMovieThumbnailView hairlineColors](self, "hairlineColors"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v9, v10))
    {
      if (![(ICImageAndMovieThumbnailView *)self usesSeparateLayersForHairlines])
      {
        hairlineColors = [(ICImageAndMovieThumbnailView *)self hairlineColors];
        allValues = [hairlineColors allValues];
        firstObject = [allValues firstObject];
        cGColor = [firstObject CGColor];
        layer = [(ICImageAndMovieThumbnailView *)self layer];
        [layer setBorderColor:cGColor];

        goto LABEL_3;
      }

      hairlineLayers = [(ICImageAndMovieThumbnailView *)self hairlineLayers];

      if (!hairlineLayers)
      {
        [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"self.hairlineLayers" functionName:"-[ICImageAndMovieThumbnailView updateHairline]" simulateCrash:1 showAlert:0 format:@"hairlineLayers not initialized"];
      }

      hairlineLayers2 = [(ICImageAndMovieThumbnailView *)self hairlineLayers];

      if (!hairlineLayers2)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [(ICImageAndMovieThumbnailView *)self setHairlineLayers:v13];
      }

      hairlineLayers3 = [(ICImageAndMovieThumbnailView *)self hairlineLayers];
      v15 = [hairlineLayers3 count];

      if (v15 <= 3)
      {
        do
        {
          hairlineLayers4 = [(ICImageAndMovieThumbnailView *)self hairlineLayers];
          [hairlineLayers4 count];

          v17 = ICRectEdgeAtIndex();
          v18 = objc_alloc_init(MEMORY[0x1E6979398]);
          [v18 setZPosition:1.0];
          hairlineLayers5 = [(ICImageAndMovieThumbnailView *)self hairlineLayers];
          v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
          [hairlineLayers5 setObject:v18 forKeyedSubscript:v20];

          layer2 = [(ICImageAndMovieThumbnailView *)self layer];
          [layer2 addSublayer:v18];

          hairlineLayers6 = [(ICImageAndMovieThumbnailView *)self hairlineLayers];
          v23 = [hairlineLayers6 count];
        }

        while (v23 < 4);
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      hairlineLayers7 = [(ICImageAndMovieThumbnailView *)self hairlineLayers];
      v25 = [hairlineLayers7 countByEnumeratingWithState:&v56 objects:v61 count:16];
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
              objc_enumerationMutation(hairlineLayers7);
            }

            v29 = *(*(&v56 + 1) + 8 * i);
            objc_opt_class();
            hairlineLayers8 = [(ICImageAndMovieThumbnailView *)self hairlineLayers];
            v31 = [hairlineLayers8 objectForKeyedSubscript:v29];
            v32 = ICCheckedDynamicCast();

            hairlineColors2 = [(ICImageAndMovieThumbnailView *)self hairlineColors];
            v34 = [hairlineColors2 objectForKeyedSubscript:v29];
            [v32 setBackgroundColor:{objc_msgSend(v34, "CGColor")}];

            [v32 setHidden:{-[ICImageAndMovieThumbnailView usesSeparateLayerForHairlineEdge:](self, "usesSeparateLayerForHairlineEdge:", objc_msgSend(v29, "unsignedIntegerValue")) ^ 1}];
          }

          v26 = [hairlineLayers7 countByEnumeratingWithState:&v56 objects:v61 count:16];
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
      hairlineLayers9 = [(ICImageAndMovieThumbnailView *)self hairlineLayers];
      v36 = [hairlineLayers9 countByEnumeratingWithState:&v52 objects:v60 count:16];
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
              objc_enumerationMutation(hairlineLayers9);
            }

            v40 = *(*(&v52 + 1) + 8 * j);
            objc_opt_class();
            hairlineLayers10 = [(ICImageAndMovieThumbnailView *)self hairlineLayers];
            v42 = [hairlineLayers10 objectForKeyedSubscript:v40];
            v43 = ICCheckedDynamicCast();

            [v43 removeFromSuperlayer];
          }

          v37 = [hairlineLayers9 countByEnumeratingWithState:&v52 objects:v60 count:16];
        }

        while (v37);
      }

      hairlineLayers11 = [(ICImageAndMovieThumbnailView *)self hairlineLayers];
      [hairlineLayers11 removeAllObjects];
    }

    layer3 = [(ICImageAndMovieThumbnailView *)self layer];
    [layer3 setBorderColor:0];

    layer4 = [(ICImageAndMovieThumbnailView *)self layer];
    [layer4 setBorderWidth:0.0];

    return;
  }

  hairlineColors = [(ICImageAndMovieThumbnailView *)self borderColor];
  cGColor2 = [hairlineColors CGColor];
  layer5 = [(ICImageAndMovieThumbnailView *)self layer];
  [layer5 setBorderColor:cGColor2];

LABEL_3:
  [(ICImageAndMovieThumbnailView *)self hairlineWidthInPoint];
  v8 = v7;
  layer6 = [(ICImageAndMovieThumbnailView *)self layer];
  [layer6 setBorderWidth:v8];
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

- (void)setHairlineWidthUnitIsInPoint:(BOOL)point
{
  if (self->_hairlineWidthUnitIsInPoint != point)
  {
    self->_hairlineWidthUnitIsInPoint = point;
    [(ICImageAndMovieThumbnailView *)self updateHairlineFrames];
  }
}

- (CGRect)frameByApplyingVerticalReductionTo:(CGRect)to edge:(unint64_t)edge
{
  height = to.size.height;
  width = to.size.width;
  y = to.origin.y;
  x = to.origin.x;
  if (([(ICImageAndMovieThumbnailView *)self edgesToRemoveStartPoint]& edge) != 0)
  {
    height = height + -1.0;
  }

  edgesToRemoveEndPoint = [(ICImageAndMovieThumbnailView *)self edgesToRemoveEndPoint];
  v11 = y + 1.0;
  v12 = height + -1.0;
  if ((edgesToRemoveEndPoint & edge) == 0)
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

- (CGRect)frameByApplyingHorizontalReductionTo:(CGRect)to edge:(unint64_t)edge
{
  height = to.size.height;
  width = to.size.width;
  y = to.origin.y;
  x = to.origin.x;
  edgesToRemoveStartPoint = [(ICImageAndMovieThumbnailView *)self edgesToRemoveStartPoint];
  if ((edgesToRemoveStartPoint & edge) != 0)
  {
    v11 = width + -1.0;
  }

  else
  {
    v11 = width;
  }

  if ((edgesToRemoveStartPoint & edge) != 0)
  {
    v12 = x + 1.0;
  }

  else
  {
    v12 = x;
  }

  edgesToRemoveEndPoint = [(ICImageAndMovieThumbnailView *)self edgesToRemoveEndPoint];
  v14 = v11 + -1.0;
  if ((edgesToRemoveEndPoint & edge) == 0)
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
  layer = [(ICImageAndMovieThumbnailView *)self layer];
  [layer bounds];
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