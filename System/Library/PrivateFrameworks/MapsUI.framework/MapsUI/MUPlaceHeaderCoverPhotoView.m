@interface MUPlaceHeaderCoverPhotoView
- (MUPlaceHeaderCoverPhotoView)initWithAspectRatio:(double)a3;
- (id)maskImage;
- (void)_setupConstraints;
- (void)_updateTransform;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setCardExpansionProgress:(double)a3;
- (void)setImage:(id)a3;
- (void)setScrollYOffset:(double)a3;
@end

@implementation MUPlaceHeaderCoverPhotoView

- (void)setScrollYOffset:(double)a3
{
  if (vabdd_f64(self->_scrollYOffset, a3) > 2.22044605e-16)
  {
    self->_scrollYOffset = a3;
    [(MUPlaceHeaderCoverPhotoView *)self _updateTransform];
  }
}

- (void)setCardExpansionProgress:(double)a3
{
  if (vabdd_f64(self->_cardExpansionProgress, a3) > 2.22044605e-16)
  {
    self->_cardExpansionProgress = a3;
    [(MUPlaceHeaderCoverPhotoView *)self _updateTransform];
  }
}

- (void)setImage:(id)a3
{
  topImageView = self->_topImageView;
  v5 = a3;
  [(MUImageView *)topImageView setImage:v5];
  [(MUImageView *)self->_mirroredImageView setImage:v5];
}

- (void)setBackgroundColor:(id)a3
{
  topImageView = self->_topImageView;
  v5 = a3;
  [(MUImageView *)topImageView setBackgroundColor:v5];
  [(MUImageView *)self->_mirroredImageView setBackgroundColor:v5];
}

- (id)maskImage
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCA80]);
  [v2 setScale:1.0];
  [v2 setPreferredRange:0x7FFFLL];
  v3 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v2 format:{100.0, 100.0}];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__MUPlaceHeaderCoverPhotoView_maskImage__block_invoke;
  v6[3] = &__block_descriptor_48_e40_v16__0__UIGraphicsImageRendererContext_8l;
  v7 = vdupq_n_s64(0x4059000000000000uLL);
  v4 = [v3 imageWithActions:v6];

  return v4;
}

void __40__MUPlaceHeaderCoverPhotoView_maskImage__block_invoke(uint64_t a1, void *a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6979380];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  [v5 setBounds:{0.0, 0.0, *(a1 + 32), *(a1 + 40)}];
  v6 = [MEMORY[0x1E69DC888] clearColor];
  v11[0] = [v6 CGColor];
  v7 = [MEMORY[0x1E69DC888] whiteColor];
  v11[1] = [v7 CGColor];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  [v5 setColors:v8];

  [v5 setLocations:&unk_1F450E2A8];
  v9 = [v4 CGContext];

  [v5 renderInContext:v9];
  v10 = *MEMORY[0x1E69E9840];
}

- (void)_updateTransform
{
  imageContainerView = self->_imageContainerView;
  v12 = *(MEMORY[0x1E695EFD0] + 16);
  *&v21.a = *MEMORY[0x1E695EFD0];
  v13 = *&v21.a;
  *&v21.c = v12;
  *&v21.tx = *(MEMORY[0x1E695EFD0] + 32);
  v11 = *&v21.tx;
  [(UIView *)imageContainerView setTransform:&v21];
  *&v21.a = v13;
  *&v21.c = v12;
  *&v21.tx = v11;
  [(MUPlaceHeaderCoverPhotoView *)self setTransform:&v21];
  cardExpansionProgress = self->_cardExpansionProgress;
  if (cardExpansionProgress < 1.0)
  {
    CGAffineTransformMakeScale(&v20, cardExpansionProgress * -0.25 + 1.25, cardExpansionProgress * -0.25 + 1.25);
    v5 = self->_imageContainerView;
    *&v21.a = *&v20.a;
    *&v21.c = *&v20.c;
    v6 = *&v20.tx;
LABEL_3:
    *&v21.tx = v6;
    p_t1 = &v21;
LABEL_6:
    [(UIView *)v5 setTransform:p_t1];
    return;
  }

  scrollYOffset = self->_scrollYOffset;
  if (scrollYOffset < 0.0)
  {
    CGAffineTransformMakeTranslation(&v19, 0.0, scrollYOffset);
    v21 = v19;
    [(MUPlaceHeaderCoverPhotoView *)self setTransform:&v21];
    v9 = self->_scrollYOffset;
    memset(&v21, 0, sizeof(v21));
    CGAffineTransformMakeScale(&v21, v9 * -0.005 + 1.0, v9 * -0.005 + 1.0);
    [(UIView *)self->_imageContainerView frame];
    memset(&v18, 0, sizeof(v18));
    CGAffineTransformMakeTranslation(&v18, 0.0, v9 * -0.0025 * v10);
    t1 = v21;
    t2 = v18;
    CGAffineTransformConcat(&v17, &t1, &t2);
    v5 = self->_imageContainerView;
    t1 = v17;
    p_t1 = &t1;
    goto LABEL_6;
  }

  if (scrollYOffset > 0.0)
  {
    CGAffineTransformMakeTranslation(&v14, 0.0, scrollYOffset * 0.45);
    v5 = self->_imageContainerView;
    *&v21.a = *&v14.a;
    *&v21.c = *&v14.c;
    v6 = *&v14.tx;
    goto LABEL_3;
  }
}

- (void)_setupConstraints
{
  v69[21] = *MEMORY[0x1E69E9840];
  v44 = MEMORY[0x1E696ACD8];
  v68 = [(MUPlaceHeaderCoverPhotoView *)self heightAnchor];
  v67 = [(MUPlaceHeaderCoverPhotoView *)self widthAnchor];
  v66 = [v68 constraintEqualToAnchor:v67 multiplier:self->_aspectRatio + self->_aspectRatio];
  v69[0] = v66;
  v65 = [(UIView *)self->_imageContainerView leadingAnchor];
  v64 = [(MUPlaceHeaderCoverPhotoView *)self leadingAnchor];
  v63 = [v65 constraintEqualToAnchor:v64];
  v69[1] = v63;
  v62 = [(UIView *)self->_imageContainerView trailingAnchor];
  v61 = [(MUPlaceHeaderCoverPhotoView *)self trailingAnchor];
  v60 = [v62 constraintEqualToAnchor:v61];
  v69[2] = v60;
  v59 = [(UIView *)self->_imageContainerView topAnchor];
  v58 = [(MUPlaceHeaderCoverPhotoView *)self topAnchor];
  v57 = [v59 constraintEqualToAnchor:v58];
  v69[3] = v57;
  v56 = [(UIView *)self->_imageContainerView bottomAnchor];
  v55 = [(MUPlaceHeaderCoverPhotoView *)self bottomAnchor];
  v54 = [v56 constraintEqualToAnchor:v55];
  v69[4] = v54;
  v53 = [(MUImageView *)self->_topImageView leadingAnchor];
  v52 = [(UIView *)self->_imageContainerView leadingAnchor];
  v51 = [v53 constraintEqualToAnchor:v52];
  v69[5] = v51;
  v50 = [(MUImageView *)self->_topImageView trailingAnchor];
  v49 = [(UIView *)self->_imageContainerView trailingAnchor];
  v48 = [v50 constraintEqualToAnchor:v49];
  v69[6] = v48;
  v47 = [(MUImageView *)self->_topImageView topAnchor];
  v46 = [(UIView *)self->_imageContainerView topAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v69[7] = v45;
  v43 = [(MUImageView *)self->_topImageView heightAnchor];
  v42 = [(MUPlaceHeaderCoverPhotoView *)self widthAnchor];
  v41 = [v43 constraintEqualToAnchor:v42 multiplier:self->_aspectRatio];
  v69[8] = v41;
  v40 = [(MUImageView *)self->_mirroredImageView leadingAnchor];
  v39 = [(UIView *)self->_imageContainerView leadingAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v69[9] = v38;
  v37 = [(MUImageView *)self->_mirroredImageView trailingAnchor];
  v36 = [(UIView *)self->_imageContainerView trailingAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v69[10] = v35;
  v34 = [(MUImageView *)self->_mirroredImageView topAnchor];
  v33 = [(MUImageView *)self->_topImageView bottomAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v69[11] = v32;
  v31 = [(MUImageView *)self->_mirroredImageView heightAnchor];
  v30 = [(MUPlaceHeaderCoverPhotoView *)self widthAnchor];
  v29 = [v31 constraintEqualToAnchor:v30 multiplier:self->_aspectRatio];
  v69[12] = v29;
  v28 = [(UIView *)self->_mirroredImageClipView leadingAnchor];
  v27 = [(MUImageView *)self->_mirroredImageView leadingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v69[13] = v26;
  v25 = [(UIView *)self->_mirroredImageClipView trailingAnchor];
  v24 = [(MUImageView *)self->_mirroredImageView trailingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v69[14] = v23;
  v22 = [(UIView *)self->_mirroredImageClipView topAnchor];
  v21 = [(MUImageView *)self->_mirroredImageView topAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v69[15] = v20;
  v19 = [(UIView *)self->_mirroredImageClipView heightAnchor];
  v18 = [(MUImageView *)self->_mirroredImageView heightAnchor];
  v17 = [v19 constraintEqualToAnchor:v18 multiplier:0.699999988];
  v69[16] = v17;
  v16 = [(MUBlurView *)self->_blurView leadingAnchor];
  v15 = [(UIView *)self->_imageContainerView leadingAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v69[17] = v14;
  v3 = [(MUBlurView *)self->_blurView trailingAnchor];
  v4 = [(UIView *)self->_imageContainerView trailingAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  v69[18] = v5;
  v6 = [(MUBlurView *)self->_blurView topAnchor];
  v7 = [(UIView *)self->_imageContainerView topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v69[19] = v8;
  v9 = [(MUBlurView *)self->_blurView bottomAnchor];
  v10 = [(UIView *)self->_imageContainerView bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v69[20] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:21];
  [v44 activateConstraints:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MUPlaceHeaderCoverPhotoView;
  [(MUPlaceHeaderCoverPhotoView *)&v3 layoutSubviews];
  [(MUPlaceHeaderCoverPhotoView *)self bounds];
  [(CAGradientLayer *)self->_gradientLayer setFrame:?];
}

- (MUPlaceHeaderCoverPhotoView)initWithAspectRatio:(double)a3
{
  v36[2] = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = MUPlaceHeaderCoverPhotoView;
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [(MUPlaceHeaderCoverPhotoView *)&v35 initWithFrame:*MEMORY[0x1E695F058], v5, v6, v7];
  v9 = v8;
  if (v8)
  {
    v8->_aspectRatio = a3;
    v10 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v5, v6, v7}];
    imageContainerView = v9->_imageContainerView;
    v9->_imageContainerView = v10;

    [(UIView *)v9->_imageContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MUPlaceHeaderCoverPhotoView *)v9 addSubview:v9->_imageContainerView];
    v12 = [MUBlurView alloc];
    v13 = [(MUPlaceHeaderCoverPhotoView *)v9 maskImage];
    v14 = [(MUBlurView *)v12 initWithVariableBlurWithRadius:v13 maskImage:32.0];
    blurView = v9->_blurView;
    v9->_blurView = v14;

    [(MUBlurView *)v9->_blurView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MUPlaceHeaderCoverPhotoView *)v9 addSubview:v9->_blurView];
    v16 = [[MUImageView alloc] initWithFrame:v4, v5, v6, v7];
    topImageView = v9->_topImageView;
    v9->_topImageView = v16;

    [(MUImageView *)v9->_topImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v9->_imageContainerView addSubview:v9->_topImageView];
    v18 = [[MUImageView alloc] initWithFrame:v4, v5, v6, v7];
    mirroredImageView = v9->_mirroredImageView;
    v9->_mirroredImageView = v18;

    [(MUImageView *)v9->_mirroredImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    CGAffineTransformMakeScale(&v34, 1.0, -1.0);
    v20 = v9->_mirroredImageView;
    v33 = v34;
    [(MUImageView *)v20 setTransform:&v33];
    [(UIView *)v9->_imageContainerView addSubview:v9->_mirroredImageView];
    v21 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v5, v6, v7}];
    mirroredImageClipView = v9->_mirroredImageClipView;
    v9->_mirroredImageClipView = v21;

    [(UIView *)v9->_mirroredImageClipView setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(UIView *)v9->_mirroredImageClipView setBackgroundColor:v23];

    [(MUImageView *)v9->_mirroredImageView addSubview:v9->_mirroredImageClipView];
    v24 = objc_alloc_init(MEMORY[0x1E6979380]);
    gradientLayer = v9->_gradientLayer;
    v9->_gradientLayer = v24;

    v26 = [MEMORY[0x1E69DC888] whiteColor];
    v36[0] = [v26 CGColor];
    v27 = [MEMORY[0x1E69DC888] clearColor];
    v36[1] = [v27 CGColor];
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
    [(CAGradientLayer *)v9->_gradientLayer setColors:v28];

    [(CAGradientLayer *)v9->_gradientLayer setLocations:&unk_1F450E290];
    v29 = v9->_gradientLayer;
    v30 = [(MUPlaceHeaderCoverPhotoView *)v9 layer];
    [v30 setMask:v29];

    [(MUImageView *)v9->_topImageView setAccessibilityIdentifier:@"PlaceHeaderCoverPhotoImage"];
    [(MUPlaceHeaderCoverPhotoView *)v9 _setupConstraints];
  }

  v31 = *MEMORY[0x1E69E9840];
  return v9;
}

@end