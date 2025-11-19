@interface CKPhotoSearchResultCell
- (CKPhotoSearchResultCell)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)marginInsets;
- (void)_configureDurationLabelForResult:(id)a3;
- (void)_livePhotoUpdated:(id)a3;
- (void)_spatialStatusUpdated:(id)a3;
- (void)_thumbnailGenerated:(id)a3;
- (void)_videoDurationUpdated:(id)a3;
- (void)configureWithQueryResult:(id)a3 searchText:(id)a4 mode:(unint64_t)a5;
- (void)dealloc;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setIsLivePhoto:(BOOL)a3;
- (void)setIsSpatial:(BOOL)a3;
- (void)setIsVideo:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation CKPhotoSearchResultCell

- (CKPhotoSearchResultCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15.receiver = self;
  v15.super_class = CKPhotoSearchResultCell;
  v7 = [(CKPhotoSearchResultCell *)&v15 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{x, y, width, height}];
    [v8 setContentMode:2];
    [v8 setClipsToBounds:1];
    [(CKEditableSearchResultCell *)v7 setImageView:v8];
    v9 = [(CKPhotoSearchResultCell *)v7 contentView];
    [v9 addSubview:v8];

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v7 selector:sel__thumbnailGenerated_ name:@"CKSearchThumbnailDidChange" object:0];

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v7 selector:sel__livePhotoUpdated_ name:@"CKSearchLivePhotoStatusDidChange" object:0];

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v7 selector:sel__videoDurationUpdated_ name:@"CKSearchVideoDurationDidChange" object:0];

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v7 selector:sel__spatialStatusUpdated_ name:@"CKSearchSpatialStatusDidChange" object:0];
  }

  return v7;
}

- (void)layoutSubviews
{
  v96.receiver = self;
  v96.super_class = CKPhotoSearchResultCell;
  [(CKEditableSearchResultCell *)&v96 layoutSubviews];
  v3 = [(CKPhotoSearchResultCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CKEditableSearchResultCell *)self imageView];
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = [(CKPhotoSearchResultCell *)self _shouldReverseLayoutDirection];
  v14 = [(CKEditableSearchResultCell *)self imageView];
  v15 = [v14 image];

  v16 = [(CKPhotoSearchResultCell *)self livePhotoImage];

  if (v16)
  {
    v17 = [(CKPhotoSearchResultCell *)self livePhotoImage];
    [v17 sizeToFit];

    v18 = [(CKPhotoSearchResultCell *)self livePhotoImage];
    [v18 frame];
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = 8.0;
    if (v13)
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

    v27 = [(CKPhotoSearchResultCell *)self livePhotoImage];
    [v27 setFrame:{v25, 8.0, v22, v24}];

    v28 = [(CKPhotoSearchResultCell *)self livePhotoImage];
    [v28 setHidden:(v15 == 0) | !self->_isLivePhoto];
  }

  v29 = [(CKPhotoSearchResultCell *)self durationLabel];
  rect = v11;
  if (v29)
  {
    v30 = v29;
    v31 = [(CKPhotoSearchResultCell *)self durationGradientImage];

    if (v31)
    {
      v99.origin.x = v5;
      v99.origin.y = v7;
      v99.size.width = v9;
      v99.size.height = v11;
      v32 = CGRectGetMaxY(v99) + -25.0;
      v33 = [(CKPhotoSearchResultCell *)self durationGradientImage];
      [v33 setFrame:{v5, v32, v9, 25.0}];

      v34 = [(CKPhotoSearchResultCell *)self durationLabel];
      [v34 sizeToFit];

      v35 = [(CKPhotoSearchResultCell *)self durationLabel];
      [v35 frame];
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
      if (v13)
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

      v55 = v15 == 0;
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
      v58 = [(CKPhotoSearchResultCell *)self durationLabel];
      [v58 setFrame:{v50, v57, v43, v45}];

      v59 = [(CKPhotoSearchResultCell *)self contentView];
      v60 = [(CKPhotoSearchResultCell *)self durationGradientImage];
      [v59 bringSubviewToFront:v60];

      v61 = [(CKPhotoSearchResultCell *)self contentView];
      v62 = [(CKPhotoSearchResultCell *)self durationLabel];
      [v61 bringSubviewToFront:v62];

      v63 = [(CKPhotoSearchResultCell *)self durationLabel];
      [v63 setHidden:v55 | !self->_isVideo];

      v64 = [(CKPhotoSearchResultCell *)self durationGradientImage];
      [v64 setHidden:v55 | !self->_isVideo];

      v7 = v37;
    }
  }

  v65 = [(CKEditableSearchResultCell *)self checkmarkView];

  if (v65)
  {
    v66 = v7;
    [(UILabel *)self->_durationLabel setHidden:1];
    [(UIImageView *)self->_durationGradientImage setHidden:1];
    v67 = [(CKPhotoSearchResultCell *)self contentView];
    v68 = [(CKEditableSearchResultCell *)self checkmarkView];
    [v67 bringSubviewToFront:v68];

    v69 = [(CKEditableSearchResultCell *)self checkmarkView];
    [v69 sizeToFit];

    v70 = [(CKEditableSearchResultCell *)self checkmarkView];
    [v70 frame];
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;

    v79 = 4.0;
    if ((v13 & 1) == 0)
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
    v83 = [(CKEditableSearchResultCell *)self checkmarkView];
    [v83 setFrame:{v79, v82, v76, v78}];
  }

  v84 = [(CKPhotoSearchResultCell *)self spatialBadgeView];

  if (v84)
  {
    [(CKPhotoSearchResultCell *)self bounds];
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v93 = [(CKPhotoSearchResultCell *)self spatialBadgeView];
    [v93 setFrame:{v86, v88, v90, v92}];
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
    v3 = [(CKPhotoSearchResultCell *)self durationLabel];
    [v3 setHidden:1];
  }

  if (self->_durationGradientImage)
  {
    v4 = [(CKPhotoSearchResultCell *)self durationGradientImage];
    [v4 setHidden:1];
  }

  v5 = [(CKEditableSearchResultCell *)self imageView];
  [v5 setImage:0];

  [(CKPhotoSearchResultCell *)self setResultIdentifier:0];
}

- (void)setIsLivePhoto:(BOOL)a3
{
  if (self->_isLivePhoto != a3)
  {
    self->_isLivePhoto = a3;
    v6 = [(CKPhotoSearchResultCell *)self livePhotoImage];
    v20 = v6;
    if (a3)
    {

      if (!v20)
      {
        v7 = [MEMORY[0x1E69DCAD8] configurationWithScale:3];
        v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"livephoto"];
        v9 = [v8 imageWithSymbolConfiguration:v7];

        v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v9];
        v11 = [MEMORY[0x1E69DC888] whiteColor];
        [v10 setTintColor:v11];

        v12 = [(CKPhotoSearchResultCell *)self contentView];
        [v12 addSubview:v10];

        [(CKPhotoSearchResultCell *)self setLivePhotoImage:v10];
        v13 = [v10 layer];
        v14 = [MEMORY[0x1E69DC888] blackColor];
        [v13 setShadowColor:{objc_msgSend(v14, "CGColor")}];

        v15 = [v10 layer];
        LODWORD(v16) = *"333?";
        [v15 setShadowOpacity:v16];

        v17 = [v10 layer];
        [v17 setShadowOffset:{0.0, 1.0}];

        v18 = [v10 layer];
        [v18 setShadowRadius:4.0];

        [(CKPhotoSearchResultCell *)self setNeedsLayout];
      }

      v6 = [(CKPhotoSearchResultCell *)self livePhotoImage];
      v20 = v6;
      v19 = 0;
    }

    else
    {
      v19 = 1;
    }

    [v6 setHidden:v19];
  }
}

- (void)setIsVideo:(BOOL)a3
{
  if (self->_isVideo != a3)
  {
    v4 = a3;
    self->_isVideo = a3;
    v6 = [(CKPhotoSearchResultCell *)self durationLabel];
    v7 = v6;
    if (v4)
    {

      if (!v7)
      {
        v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
        durationLabel = self->_durationLabel;
        self->_durationLabel = v8;

        v10 = self->_durationLabel;
        v11 = [MEMORY[0x1E69DC888] clearColor];
        [(UILabel *)v10 setBackgroundColor:v11];

        v12 = self->_durationLabel;
        v13 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:12.0];
        [(UILabel *)v12 setFont:v13];

        v14 = self->_durationLabel;
        v15 = [MEMORY[0x1E69DC888] whiteColor];
        [(UILabel *)v14 setTextColor:v15];

        [(UILabel *)self->_durationLabel setTextAlignment:4];
        v16 = [(CKPhotoSearchResultCell *)self contentView];
        [v16 addSubview:self->_durationLabel];

        [(CKPhotoSearchResultCell *)self setNeedsLayout];
      }

      v17 = [(CKPhotoSearchResultCell *)self durationGradientImage];

      if (!v17)
      {
        v18 = [MEMORY[0x1E69DCAB8] ckImageNamed:@"CKAssetsSceneBadgeBannerGradient"];
        v19 = [v18 resizableImageWithCapInsets:0 resizingMode:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

        v20 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v19];
        durationGradientImage = self->_durationGradientImage;
        self->_durationGradientImage = v20;
        v22 = v20;

        v23 = [(CKPhotoSearchResultCell *)self contentView];
        [v23 addSubview:v22];

        [(CKPhotoSearchResultCell *)self setNeedsLayout];
      }

      v6 = [(CKPhotoSearchResultCell *)self durationLabel];
      v7 = v6;
      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    [v6 setHidden:v24];

    v25 = [(CKPhotoSearchResultCell *)self durationGradientImage];
    [v25 setHidden:!v4];
  }
}

- (void)setIsSpatial:(BOOL)a3
{
  if (self->_isSpatial != a3)
  {
    v3 = a3;
    self->_isSpatial = a3;
    v5 = [(CKPhotoSearchResultCell *)self spatialBadgeView];
    v6 = v5;
    if (v3)
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
        v7 = [(CKPhotoSearchResultCell *)self spatialBadgeView];
        [v7 removeFromSuperview];

        [(CKPhotoSearchResultCell *)self setSpatialBadgeView:0];
      }
    }
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CKPhotoSearchResultCell;
  [(CKPhotoSearchResultCell *)&v4 dealloc];
}

- (void)configureWithQueryResult:(id)a3 searchText:(id)a4 mode:(unint64_t)a5
{
  v36 = a3;
  v7 = [v36 identifier];
  [(CKPhotoSearchResultCell *)self setResultIdentifier:v7];

  v8 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v9 = [v8 hasCachedPreviewForQueryResult:v36];

  v10 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v11 = v10;
  if ((v9 & 1) == 0)
  {
    [v10 generatePreviewForQueryResult:v36];
    v12 = 0;
    goto LABEL_6;
  }

  v12 = [v10 cachedPreviewForQueryResult:v36];

  if (v12)
  {
    v13 = [(CKEditableSearchResultCell *)self imageView];
    [v13 setImage:v12];

    if (CKIsRunningInMacCatalyst())
    {
      v14 = [(CKEditableSearchResultCell *)self imageView];
      [v14 setContentMode:2];

      v11 = [(CKEditableSearchResultCell *)self imageView];
      [v11 setClipsToBounds:1];
LABEL_6:
    }
  }

  v15 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v16 = [v15 queryResultHasLivePhoto:v36];

  [(CKPhotoSearchResultCell *)self setIsLivePhoto:v16];
  if (v16)
  {
    [(CKPhotoSearchResultCell *)self setIsVideo:0];
  }

  else
  {
    v17 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
    v18 = [v17 queryResultIsVideo:v36];

    [(CKPhotoSearchResultCell *)self setIsVideo:v18];
    if (v18)
    {
      [(CKPhotoSearchResultCell *)self _configureDurationLabelForResult:v36];
    }
  }

  v19 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
  v20 = [v19 queryResultIsSpatial:v36];

  [(CKPhotoSearchResultCell *)self setIsSpatial:v20];
  v21 = CKIsRunningInMacCatalyst();
  if (a5 == 1 || v21)
  {
    v25 = +[CKUIBehavior sharedBehaviors];
    [v25 searchPhotosCellZKWAndDetailsCornerRadius];
    v27 = v26;

    v28 = [(CKEditableSearchResultCell *)self imageView];
    v29 = [v28 layer];
    [v29 setCornerRadius:v27];

    v30 = [(CKPhotoSearchResultCell *)self livePhotoImage];
    v31 = [v30 layer];
    [v31 setCornerRadius:v27];

    v32 = [(CKPhotoSearchResultCell *)self durationGradientImage];
    v33 = [v32 layer];
    [v33 setMasksToBounds:1];

    v34 = [(CKPhotoSearchResultCell *)self durationGradientImage];
    v35 = [v34 layer];
    [v35 setCornerRadius:v27];

    v22 = [(CKPhotoSearchResultCell *)self durationLabel];
    v23 = [v22 layer];
    [v23 setCornerRadius:v27];
  }

  else
  {
    if (CKIsRunningInMacCatalyst())
    {
      goto LABEL_17;
    }

    v22 = [(CKEditableSearchResultCell *)self imageView];
    v23 = [v22 layer];
    v24 = +[CKUIBehavior sharedBehaviors];
    [v24 searchPhotosCellCornerRadius];
    [v23 setCornerRadius:?];
  }

LABEL_17:
}

- (void)_thumbnailGenerated:(id)a3
{
  v12 = [a3 object];
  v4 = [v12 identifier];
  v5 = [(CKPhotoSearchResultCell *)self resultIdentifier];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
    v8 = [v7 cachedPreviewForQueryResult:v12];

    if (v8)
    {
      v9 = [(CKEditableSearchResultCell *)self imageView];
      [v9 setImage:v8];

      if (CKIsRunningInMacCatalyst())
      {
        v10 = [(CKEditableSearchResultCell *)self imageView];
        [v10 setContentMode:2];

        v11 = [(CKEditableSearchResultCell *)self imageView];
        [v11 setClipsToBounds:1];
      }

      [(CKPhotoSearchResultCell *)self setNeedsLayout];
    }
  }
}

- (void)_livePhotoUpdated:(id)a3
{
  v9 = [a3 object];
  v4 = [v9 identifier];
  v5 = [(CKPhotoSearchResultCell *)self resultIdentifier];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
    v8 = [v7 queryResultHasLivePhoto:v9];

    [(CKPhotoSearchResultCell *)self setIsLivePhoto:v8];
    [(CKPhotoSearchResultCell *)self setIsVideo:0];
  }
}

- (void)_videoDurationUpdated:(id)a3
{
  v7 = [a3 object];
  v4 = [v7 identifier];
  v5 = [(CKPhotoSearchResultCell *)self resultIdentifier];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    [(CKPhotoSearchResultCell *)self setIsVideo:1];
    [(CKPhotoSearchResultCell *)self setIsLivePhoto:0];
    [(CKPhotoSearchResultCell *)self _configureDurationLabelForResult:v7];
  }
}

- (void)_configureDurationLabelForResult:(id)a3
{
  v4 = a3;
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
    [v5 durationForVideoResult:v4];
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
    v8 = [(CKPhotoSearchResultCell *)self durationLabel];
    [v8 setText:v7];

    v9 = [(CKPhotoSearchResultCell *)self durationLabel];
    [v9 setHidden:0];

    v10 = [(CKPhotoSearchResultCell *)self durationGradientImage];
    [v10 setHidden:0];
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

- (void)_spatialStatusUpdated:(id)a3
{
  v9 = [a3 object];
  v4 = [v9 identifier];
  v5 = [(CKPhotoSearchResultCell *)self resultIdentifier];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
    v7 = +[CKSearchThumbnailPreviewGenerator sharedInstance];
    v8 = [v7 queryResultIsSpatial:v9];

    [(CKPhotoSearchResultCell *)self setIsSpatial:v8];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = CKPhotoSearchResultCell;
  [(CKEditableSearchResultCell *)&v3 setSelected:a3];
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