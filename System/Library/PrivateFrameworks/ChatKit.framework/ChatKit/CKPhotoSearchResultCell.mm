@interface CKPhotoSearchResultCell
- (CKPhotoSearchResultCell)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)marginInsets;
- (void)_configureDurationLabelForResult:(id)result;
- (void)_livePhotoUpdated:(id)updated;
- (void)_spatialStatusUpdated:(id)updated;
- (void)_thumbnailGenerated:(id)generated;
- (void)_videoDurationUpdated:(id)updated;
- (void)configureWithQueryResult:(id)result searchText:(id)text mode:(unint64_t)mode;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setIsLivePhoto:(BOOL)photo;
- (void)setIsSpatial:(BOOL)spatial;
- (void)setIsVideo:(BOOL)video;
- (void)setSelected:(BOOL)selected;
@end

@implementation CKPhotoSearchResultCell

- (CKPhotoSearchResultCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v15.receiver = self;
  v15.super_class = CKPhotoSearchResultCell;
  v7 = [(CKPhotoSearchResultCell *)&v15 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{x, y, width, height}];
    [v8 setContentMode:2];
    [v8 setClipsToBounds:1];
    [(CKEditableSearchResultCell *)v7 setImageView:v8];
    contentView = [(CKPhotoSearchResultCell *)v7 contentView];
    [contentView addSubview:v8];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__thumbnailGenerated_ name:@"CKSearchThumbnailDidChange" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel__livePhotoUpdated_ name:@"CKSearchLivePhotoStatusDidChange" object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v7 selector:sel__videoDurationUpdated_ name:@"CKSearchVideoDurationDidChange" object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v7 selector:sel__spatialStatusUpdated_ name:@"CKSearchSpatialStatusDidChange" object:0];
  }

  return v7;
}

- (void)layoutSubviews
{
  v96.receiver = self;
  v96.super_class = CKPhotoSearchResultCell;
  [(CKEditableSearchResultCell *)&v96 layoutSubviews];
  contentView = [(CKPhotoSearchResultCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  imageView = [(CKEditableSearchResultCell *)self imageView];
  [imageView setFrame:{v5, v7, v9, v11}];

  _shouldReverseLayoutDirection = [(CKPhotoSearchResultCell *)self _shouldReverseLayoutDirection];
  imageView2 = [(CKEditableSearchResultCell *)self imageView];
  image = [imageView2 image];

  livePhotoImage = [(CKPhotoSearchResultCell *)self livePhotoImage];

  if (livePhotoImage)
  {
    livePhotoImage2 = [(CKPhotoSearchResultCell *)self livePhotoImage];
    [livePhotoImage2 sizeToFit];

    livePhotoImage3 = [(CKPhotoSearchResultCell *)self livePhotoImage];
    [livePhotoImage3 frame];
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = 8.0;
    if (_shouldReverseLayoutDirection)
    {
      v97.origin.x = v5;
      v97.origin.y = v7;
      v97.size.width = v9;
      v97.size.height = v11;
      Width = CGRectGetWidth(v97);
      v98.origin.y = 8.0;
      v98.origin.x = v20;
      v98.size.width = v22;
      v98.size.height = v24;
      v25 = Width - CGRectGetWidth(v98) + -8.0;
    }

    livePhotoImage4 = [(CKPhotoSearchResultCell *)self livePhotoImage];
    [livePhotoImage4 setFrame:{v25, 8.0, v22, v24}];

    livePhotoImage5 = [(CKPhotoSearchResultCell *)self livePhotoImage];
    [livePhotoImage5 setHidden:(image == 0) | !self->_isLivePhoto];
  }

  durationLabel = [(CKPhotoSearchResultCell *)self durationLabel];
  rect = v11;
  if (durationLabel)
  {
    v30 = durationLabel;
    durationGradientImage = [(CKPhotoSearchResultCell *)self durationGradientImage];

    if (durationGradientImage)
    {
      v99.origin.x = v5;
      v99.origin.y = v7;
      v99.size.width = v9;
      v99.size.height = v11;
      v32 = CGRectGetMaxY(v99) + -25.0;
      durationGradientImage2 = [(CKPhotoSearchResultCell *)self durationGradientImage];
      [durationGradientImage2 setFrame:{v5, v32, v9, 25.0}];

      durationLabel2 = [(CKPhotoSearchResultCell *)self durationLabel];
      [durationLabel2 sizeToFit];

      durationLabel3 = [(CKPhotoSearchResultCell *)self durationLabel];
      [durationLabel3 frame];
      v36 = v11;
      v37 = v7;
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;

      v46 = v5;
      v47 = v37;
      v48 = v9;
      v49 = v36;
      if (_shouldReverseLayoutDirection)
      {
        v50 = CGRectGetMinX(*&v46) + 5.0;
      }

      else
      {
        v94 = v9;
        v51 = v5;
        v52 = v37;
        v53 = v36;
        v54 = CGRectGetMaxX(*&v46) + -5.0;
        v100.origin.x = v39;
        v100.origin.y = v41;
        v100.size.width = v43;
        v100.size.height = v45;
        v50 = v54 - CGRectGetWidth(v100);
        v36 = v53;
        v37 = v52;
        v5 = v51;
        v9 = v94;
      }

      v55 = image == 0;
      v101.origin.x = v5;
      v101.origin.y = v37;
      v101.size.width = v9;
      v101.size.height = v36;
      v56 = CGRectGetMaxY(v101) + -3.0;
      v102.origin.x = v50;
      v102.origin.y = v41;
      v102.size.width = v43;
      v102.size.height = v45;
      v57 = v56 - CGRectGetHeight(v102);
      durationLabel4 = [(CKPhotoSearchResultCell *)self durationLabel];
      [durationLabel4 setFrame:{v50, v57, v43, v45}];

      contentView2 = [(CKPhotoSearchResultCell *)self contentView];
      durationGradientImage3 = [(CKPhotoSearchResultCell *)self durationGradientImage];
      [contentView2 bringSubviewToFront:durationGradientImage3];

      contentView3 = [(CKPhotoSearchResultCell *)self contentView];
      durationLabel5 = [(CKPhotoSearchResultCell *)self durationLabel];
      [contentView3 bringSubviewToFront:durationLabel5];

      durationLabel6 = [(CKPhotoSearchResultCell *)self durationLabel];
      [durationLabel6 setHidden:v55 | !self->_isVideo];

      durationGradientImage4 = [(CKPhotoSearchResultCell *)self durationGradientImage];
      [durationGradientImage4 setHidden:v55 | !self->_isVideo];

      v7 = v37;
    }
  }

  checkmarkView = [(CKEditableSearchResultCell *)self checkmarkView];

  if (checkmarkView)
  {
    v66 = v7;
    [(UILabel *)self->_durationLabel setHidden:1];
    [(UIImageView *)self->_durationGradientImage setHidden:1];
    contentView4 = [(CKPhotoSearchResultCell *)self contentView];
    checkmarkView2 = [(CKEditableSearchResultCell *)self checkmarkView];
    [contentView4 bringSubviewToFront:checkmarkView2];

    checkmarkView3 = [(CKEditableSearchResultCell *)self checkmarkView];
    [checkmarkView3 sizeToFit];

    checkmarkView4 = [(CKEditableSearchResultCell *)self checkmarkView];
    [checkmarkView4 frame];
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;

    v79 = 4.0;
    if ((_shouldReverseLayoutDirection & 1) == 0)
    {
      v103.origin.x = v5;
      v103.origin.y = v66;
      v103.size.width = v9;
      v103.size.height = rect;
      v80 = CGRectGetWidth(v103);
      v104.origin.x = v72;
      v104.origin.y = v74;
      v104.size.width = v76;
      v104.size.height = v78;
      v79 = v80 - CGRectGetWidth(v104) + -4.0;
    }

    v105.origin.x = v5;
    v105.origin.y = v66;
    v105.size.width = v9;
    v105.size.height = rect;
    Height = CGRectGetHeight(v105);
    v106.origin.x = v79;
    v106.origin.y = v74;
    v106.size.width = v76;
    v106.size.height = v78;
    v82 = Height - CGRectGetHeight(v106) + -4.0;
    checkmarkView5 = [(CKEditableSearchResultCell *)self checkmarkView];
    [checkmarkView5 setFrame:{v79, v82, v76, v78}];
  }

  spatialBadgeView = [(CKPhotoSearchResultCell *)self spatialBadgeView];

  if (spatialBadgeView)
  {
    [(CKPhotoSearchResultCell *)self bounds];
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;
    spatialBadgeView2 = [(CKPhotoSearchResultCell *)self spatialBadgeView];
    [spatialBadgeView2 setFrame:{v86, v88, v90, v92}];
  }
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = CKPhotoSearchResultCell;
  [(CKEditableSearchResultCell *)&v6 prepareForReuse];
  [(CKPhotoSearchResultCell *)self setIsLivePhoto:0];
  [(CKPhotoSearchResultCell *)self setIsVideo:0];
  [(CKPhotoSearchResultCell *)self setIsSpatial:0];
  if (self->_durationLabel)
  {
    durationLabel = [(CKPhotoSearchResultCell *)self durationLabel];
    [durationLabel setHidden:1];
  }

  if (self->_durationGradientImage)
  {
    durationGradientImage = [(CKPhotoSearchResultCell *)self durationGradientImage];
    [durationGradientImage setHidden:1];
  }

  imageView = [(CKEditableSearchResultCell *)self imageView];
  [imageView setImage:0];

  [(CKPhotoSearchResultCell *)self setResultIdentifier:0];
}

- (void)setIsLivePhoto:(BOOL)photo
{
  if (self->_isLivePhoto != photo)
  {
    self->_isLivePhoto = photo;
    livePhotoImage = [(CKPhotoSearchResultCell *)self livePhotoImage];
    v20 = livePhotoImage;
    if (photo)
    {

      if (!v20)
      {
        v7 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
        v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"livephoto"];
        v9 = [v8 imageWithSymbolConfiguration:v7];

        v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v9];
        whiteColor = [MEMORY[0x1E69DC888] whiteColor];
        [v10 setTintColor:whiteColor];

        contentView = [(CKPhotoSearchResultCell *)self contentView];
        [contentView addSubview:v10];

        [(CKPhotoSearchResultCell *)self setLivePhotoImage:v10];
        layer = [v10 layer];
        blackColor = [MEMORY[0x1E69DC888] blackColor];
        [layer setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

        layer2 = [v10 layer];
        LODWORD(v16) = *"333?";
        [layer2 setShadowOpacity:v16];

        layer3 = [v10 layer];
        [layer3 setShadowOffset:{0.0, 1.0}];

        layer4 = [v10 layer];
        [layer4 setShadowRadius:4.0];

        [(CKPhotoSearchResultCell *)self setNeedsLayout];
      }

      livePhotoImage = [(CKPhotoSearchResultCell *)self livePhotoImage];
      v20 = livePhotoImage;
      v19 = 0;
    }

    else
    {
      v19 = 1;
    }

    [livePhotoImage setHidden:v19];
  }
}

- (void)setIsVideo:(BOOL)video
{
  if (self->_isVideo != video)
  {
    videoCopy = video;
    self->_isVideo = video;
    durationLabel = [(CKPhotoSearchResultCell *)self durationLabel];
    v7 = durationLabel;
    if (videoCopy)
    {

      if (!v7)
      {
        v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
        durationLabel = self->_durationLabel;
        self->_durationLabel = v8;

        v10 = self->_durationLabel;
        clearColor = [MEMORY[0x1E69DC888] clearColor];
        [(UILabel *)v10 setBackgroundColor:clearColor];

        v12 = self->_durationLabel;
        v13 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:12.0];
        [(UILabel *)v12 setFont:v13];

        v14 = self->_durationLabel;
        whiteColor = [MEMORY[0x1E69DC888] whiteColor];
        [(UILabel *)v14 setTextColor:whiteColor];

        [(UILabel *)self->_durationLabel setTextAlignment:4];
        contentView = [(CKPhotoSearchResultCell *)self contentView];
        [contentView addSubview:self->_durationLabel];

        [(CKPhotoSearchResultCell *)self setNeedsLayout];
      }

      durationGradientImage = [(CKPhotoSearchResultCell *)self durationGradientImage];

      if (!durationGradientImage)
      {
        v18 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"CKAssetsSceneBadgeBannerGradient"];
        v19 = [v18 resizableImageWithCapInsets:0 resizingMode:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

        v20 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v19];
        durationGradientImage = self->_durationGradientImage;
        self->_durationGradientImage = v20;
        v22 = v20;

        contentView2 = [(CKPhotoSearchResultCell *)self contentView];
        [contentView2 addSubview:v22];

        [(CKPhotoSearchResultCell *)self setNeedsLayout];
      }

      durationLabel = [(CKPhotoSearchResultCell *)self durationLabel];
      v7 = durationLabel;
      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    [durationLabel setHidden:v24];

    durationGradientImage2 = [(CKPhotoSearchResultCell *)self durationGradientImage];
    [durationGradientImage2 setHidden:!videoCopy];
  }
}

- (void)setIsSpatial:(BOOL)spatial
{
  if (self->_isSpatial != spatial)
  {
    spatialCopy = spatial;
    self->_isSpatial = spatial;
    spatialBadgeView = [(CKPhotoSearchResultCell *)self spatialBadgeView];
    v6 = spatialBadgeView;
    if (spatialCopy)
    {

      if (!v6)
      {
        v8 = [_TtC7ChatKit25CKMonoskiBadgeViewFactory badgeViewWithSupportsGradient:1];
        [(CKPhotoSearchResultCell *)self addSubview:v8];
        [(CKPhotoSearchResultCell *)self setSpatialBadgeView:v8];
      }
    }

    else
    {

      if (v6)
      {
        spatialBadgeView2 = [(CKPhotoSearchResultCell *)self spatialBadgeView];
        [spatialBadgeView2 removeFromSuperview];

        [(CKPhotoSearchResultCell *)self setSpatialBadgeView:0];
      }
    }
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKPhotoSearchResultCell;
  [(CKPhotoSearchResultCell *)&v4 dealloc];
}

- (void)configureWithQueryResult:(id)result searchText:(id)text mode:(unint64_t)mode
{
  resultCopy = result;
  identifier = [resultCopy identifier];
  [(CKPhotoSearchResultCell *)self setResultIdentifier:identifier];

  v8 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v9 = [v8 hasCachedPreviewForQueryResult:resultCopy];

  v10 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  imageView3 = v10;
  if ((v9 & 1) == 0)
  {
    [v10 generatePreviewForQueryResult:resultCopy];
    v12 = 0;
    goto LABEL_6;
  }

  v12 = [v10 cachedPreviewForQueryResult:resultCopy];

  if (v12)
  {
    imageView = [(CKEditableSearchResultCell *)self imageView];
    [imageView setImage:v12];

    if (CKIsRunningInMacCatalyst())
    {
      imageView2 = [(CKEditableSearchResultCell *)self imageView];
      [imageView2 setContentMode:2];

      imageView3 = [(CKEditableSearchResultCell *)self imageView];
      [imageView3 setClipsToBounds:1];
LABEL_6:
    }
  }

  v15 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v16 = [v15 queryResultHasLivePhoto:resultCopy];

  [(CKPhotoSearchResultCell *)self setIsLivePhoto:v16];
  if (v16)
  {
    [(CKPhotoSearchResultCell *)self setIsVideo:0];
  }

  else
  {
    v17 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
    v18 = [v17 queryResultIsVideo:resultCopy];

    [(CKPhotoSearchResultCell *)self setIsVideo:v18];
    if (v18)
    {
      [(CKPhotoSearchResultCell *)self _configureDurationLabelForResult:resultCopy];
    }
  }

  v19 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v20 = [v19 queryResultIsSpatial:resultCopy];

  [(CKPhotoSearchResultCell *)self setIsSpatial:v20];
  v21 = CKIsRunningInMacCatalyst();
  if (mode == 1 || v21)
  {
    v25 = +[CKUIBehavior sharedBehaviors];
    [v25 searchPhotosCellZKWAndDetailsCornerRadius];
    v27 = v26;

    imageView4 = [(CKEditableSearchResultCell *)self imageView];
    layer = [imageView4 layer];
    [layer setCornerRadius:v27];

    livePhotoImage = [(CKPhotoSearchResultCell *)self livePhotoImage];
    layer2 = [livePhotoImage layer];
    [layer2 setCornerRadius:v27];

    durationGradientImage = [(CKPhotoSearchResultCell *)self durationGradientImage];
    layer3 = [durationGradientImage layer];
    [layer3 setMasksToBounds:1];

    durationGradientImage2 = [(CKPhotoSearchResultCell *)self durationGradientImage];
    layer4 = [durationGradientImage2 layer];
    [layer4 setCornerRadius:v27];

    durationLabel = [(CKPhotoSearchResultCell *)self durationLabel];
    layer5 = [durationLabel layer];
    [layer5 setCornerRadius:v27];
  }

  else
  {
    if (CKIsRunningInMacCatalyst())
    {
      goto LABEL_17;
    }

    durationLabel = [(CKEditableSearchResultCell *)self imageView];
    layer5 = [durationLabel layer];
    v24 = +[CKUIBehavior sharedBehaviors];
    [v24 searchPhotosCellCornerRadius];
    [layer5 setCornerRadius:?];
  }

LABEL_17:
}

- (void)_thumbnailGenerated:(id)generated
{
  object = [generated object];
  identifier = [object identifier];
  resultIdentifier = [(CKPhotoSearchResultCell *)self resultIdentifier];
  v6 = [identifier isEqualToString:resultIdentifier];

  if (v6)
  {
    v7 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
    v8 = [v7 cachedPreviewForQueryResult:object];

    if (v8)
    {
      imageView = [(CKEditableSearchResultCell *)self imageView];
      [imageView setImage:v8];

      if (CKIsRunningInMacCatalyst())
      {
        imageView2 = [(CKEditableSearchResultCell *)self imageView];
        [imageView2 setContentMode:2];

        imageView3 = [(CKEditableSearchResultCell *)self imageView];
        [imageView3 setClipsToBounds:1];
      }

      [(CKPhotoSearchResultCell *)self setNeedsLayout];
    }
  }
}

- (void)_livePhotoUpdated:(id)updated
{
  object = [updated object];
  identifier = [object identifier];
  resultIdentifier = [(CKPhotoSearchResultCell *)self resultIdentifier];
  v6 = [identifier isEqualToString:resultIdentifier];

  if (v6)
  {
    v7 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
    v8 = [v7 queryResultHasLivePhoto:object];

    [(CKPhotoSearchResultCell *)self setIsLivePhoto:v8];
    [(CKPhotoSearchResultCell *)self setIsVideo:0];
  }
}

- (void)_videoDurationUpdated:(id)updated
{
  object = [updated object];
  identifier = [object identifier];
  resultIdentifier = [(CKPhotoSearchResultCell *)self resultIdentifier];
  v6 = [identifier isEqualToString:resultIdentifier];

  if (v6)
  {
    [(CKPhotoSearchResultCell *)self setIsVideo:1];
    [(CKPhotoSearchResultCell *)self setIsLivePhoto:0];
    [(CKPhotoSearchResultCell *)self _configureDurationLabelForResult:object];
  }
}

- (void)_configureDurationLabelForResult:(id)result
{
  resultCopy = result;
  if (_configureDurationLabelForResult___pred_CMTimeGetSecondsCoreMedia != -1)
  {
    [CKPhotoSearchResultCell _configureDurationLabelForResult:];
  }

  v13 = 0uLL;
  v14 = 0;
  v5 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v6 = v5;
  if (v5)
  {
    [v5 durationForVideoResult:resultCopy];
  }

  else
  {
    v13 = 0uLL;
    v14 = 0;
  }

  if (BYTE12(v13))
  {
    v11 = v13;
    v12 = v14;
    v7 = [MEMORY[0x1E69DCCA0] timeStringForSeconds:rint(_configureDurationLabelForResult___CMTimeGetSeconds(&v11)) forceFullWidthComponents:0 isElapsed:1];
    durationLabel = [(CKPhotoSearchResultCell *)self durationLabel];
    [durationLabel setText:v7];

    durationLabel2 = [(CKPhotoSearchResultCell *)self durationLabel];
    [durationLabel2 setHidden:0];

    durationGradientImage = [(CKPhotoSearchResultCell *)self durationGradientImage];
    [durationGradientImage setHidden:0];
  }

  else
  {
    [(UILabel *)self->_durationLabel setHidden:1];
    [(UIImageView *)self->_durationGradientImage setHidden:1];
  }

  [(CKPhotoSearchResultCell *)self setNeedsLayout];
}

void *__60__CKPhotoSearchResultCell__configureDurationLabelForResult___block_invoke()
{
  result = MEMORY[0x193AF5ED0]("CMTimeGetSeconds", @"CoreMedia");
  _configureDurationLabelForResult___CMTimeGetSeconds = result;
  return result;
}

- (void)_spatialStatusUpdated:(id)updated
{
  object = [updated object];
  identifier = [object identifier];
  resultIdentifier = [(CKPhotoSearchResultCell *)self resultIdentifier];
  v6 = [identifier isEqualToString:resultIdentifier];

  if (v6)
  {
    v7 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
    v8 = [v7 queryResultIsSpatial:object];

    [(CKPhotoSearchResultCell *)self setIsSpatial:v8];
  }
}

- (void)setSelected:(BOOL)selected
{
  v3.receiver = self;
  v3.super_class = CKPhotoSearchResultCell;
  [(CKEditableSearchResultCell *)&v3 setSelected:selected];
}

- (UIEdgeInsets)marginInsets
{
  top = self->marginInsets.top;
  left = self->marginInsets.left;
  bottom = self->marginInsets.bottom;
  right = self->marginInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end