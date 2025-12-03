@interface MUPlacePhotoView
- (BOOL)isZoomed;
- (MUPlacePhotoView)initWithImage:(id)image;
- (void)_updateObfuscationPosition;
- (void)_updateObfuscationText;
- (void)_updateObfuscationWithPreviousModel:(id)model;
- (void)layoutSubviews;
- (void)setImage:(id)image;
- (void)setObfuscationModel:(id)model;
- (void)zoomWithGestureRecognizer:(id)recognizer;
@end

@implementation MUPlacePhotoView

- (void)_updateObfuscationPosition
{
  obfuscationView = [(MUPlacePhotoView *)self obfuscationView];

  if (obfuscationView)
  {
    image = [(MUPlacePhotoView *)self image];
    [image size];
    v6 = v5;

    if (v6 != 0.0)
    {
      image2 = [(MUPlacePhotoView *)self image];
      [image2 size];
      v9 = v8;
      image3 = [(MUPlacePhotoView *)self image];
      [image3 size];
      v12 = v9 / v11;

      imageView = [(MUPlacePhotoView *)self imageView];
      [imageView bounds];
      Height = CGRectGetHeight(v28);

      imageView2 = [(MUPlacePhotoView *)self imageView];
      [imageView2 bounds];
      Width = CGRectGetWidth(v29);

      v17 = Width / v12;
      v18 = fmin(Height * v12, Width);
      v19 = fmin(v17, Height);
      obfuscationView2 = [(MUPlacePhotoView *)self obfuscationView];
      [obfuscationView2 setFrame:{0.0, 0.0, v18, v19}];

      imageView3 = [(MUPlacePhotoView *)self imageView];
      [imageView3 center];
      v22 = v21;
      v24 = v23;
      obfuscationView3 = [(MUPlacePhotoView *)self obfuscationView];
      [obfuscationView3 setCenter:{v22, v24}];
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MUPlacePhotoView;
  [(MUPlacePhotoView *)&v3 layoutSubviews];
  [(MUPlacePhotoView *)self _updateObfuscationPosition];
}

- (void)_updateObfuscationText
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v4 = [v3 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];

  providerName = [(MUPlacePhotoViewObfuscationModel *)self->_obfuscationModel providerName];
  v6 = v4;
  if ([providerName length])
  {
    selfCopy = self;
    v22 = *MEMORY[0x1E69DB648];
    v23[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v20 = _MULocalizedStringFromThisBundle(@"View on %@ %@");
    v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v20 attributes:v7];
    v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:providerName attributes:v7];
    v10 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    v11 = [MEMORY[0x1E69DCAD8] configurationWithFont:v6 scale:1];
    v12 = [MEMORY[0x1E69DCAB8] _mapsui_systemImageNamed:@"arrow.up.right.square.fill" withConfiguration:v11];
    v13 = [v12 imageWithRenderingMode:2];
    [v10 setImage:v13];

    v14 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v10];
    v15 = [MEMORY[0x1E696AAB0] localizedAttributedStringWithFormat:v8 options:2, v9, v14];
    v16 = [v15 mutableCopy];

    if (v7)
    {
      [v16 addAttributes:v7 range:{0, objc_msgSend(v16, "length")}];
    }

    v17 = [v16 copy];

    self = selfCopy;
  }

  else
  {
    v17 = 0;
  }

  obfuscationView = [(MUPlacePhotoView *)self obfuscationView];
  [obfuscationView setAttributedText:v17];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_updateObfuscationWithPreviousModel:(id)model
{
  modelCopy = model;
  tapGestureRecognizer = [modelCopy tapGestureRecognizer];

  if (tapGestureRecognizer)
  {
    obfuscationView = [(MUPlacePhotoView *)self obfuscationView];
    tapGestureRecognizer2 = [modelCopy tapGestureRecognizer];
    [obfuscationView removeGestureRecognizer:tapGestureRecognizer2];
  }

  if (self->_obfuscationModel)
  {
    obfuscationView2 = [(MUPlacePhotoView *)self obfuscationView];

    if (!obfuscationView2)
    {
      v8 = [MUPlacePhotoObfuscationView alloc];
      v9 = [(MUPlacePhotoObfuscationView *)v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(MUPlacePhotoView *)self setObfuscationView:v9];

      imageView = [(MUPlacePhotoView *)self imageView];
      obfuscationView3 = [(MUPlacePhotoView *)self obfuscationView];
      [imageView addSubview:obfuscationView3];

      [(MUPlacePhotoView *)self _updateObfuscationPosition];
    }
  }

  tapGestureRecognizer3 = [(MUPlacePhotoViewObfuscationModel *)self->_obfuscationModel tapGestureRecognizer];

  if (tapGestureRecognizer3)
  {
    obfuscationView4 = [(MUPlacePhotoView *)self obfuscationView];
    tapGestureRecognizer4 = [(MUPlacePhotoViewObfuscationModel *)self->_obfuscationModel tapGestureRecognizer];
    [obfuscationView4 addGestureRecognizer:tapGestureRecognizer4];
  }

  v15 = self->_obfuscationModel == 0;
  obfuscationView5 = [(MUPlacePhotoView *)self obfuscationView];
  [obfuscationView5 setHidden:v15];

  [(MUPlacePhotoView *)self _updateObfuscationText];
}

- (void)setObfuscationModel:(id)model
{
  modelCopy = model;
  if (([(MUPlacePhotoViewObfuscationModel *)self->_obfuscationModel isEqual:?]& 1) == 0)
  {
    obfuscationModel = self->_obfuscationModel;
    v5 = modelCopy;
    v6 = self->_obfuscationModel;
    self->_obfuscationModel = v5;
    v7 = obfuscationModel;

    [(MUPlacePhotoView *)self _updateObfuscationWithPreviousModel:v7];
  }
}

- (BOOL)isZoomed
{
  [(MUPlacePhotoView *)self zoomScale];
  v4 = v3;
  [(MUPlacePhotoView *)self minimumZoomScale];
  return v4 != v5;
}

- (void)zoomWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([(MUPlacePhotoView *)self isZoomed])
  {
    [(MUPlacePhotoView *)self minimumZoomScale];
    [(MUPlacePhotoView *)self setZoomScale:1 animated:?];
  }

  else
  {
    [recognizerCopy locationInView:self];
    v5 = v4;
    v7 = v6;
    [(MUPlacePhotoView *)self frame];
    v9 = v8;
    [(MUPlacePhotoView *)self maximumZoomScale];
    v11 = v9 / v10;
    [(MUPlacePhotoView *)self frame];
    v13 = v12;
    [(MUPlacePhotoView *)self maximumZoomScale];
    v15 = v13 / v14;
    v16 = fmax(v5 - v11 * 0.5, 0.0);
    v17 = fmax(v7 - v15 * 0.5, 0.0);
    [(MUPlacePhotoView *)self frame];
    if (v16 + v11 > v18)
    {
      [(MUPlacePhotoView *)self frame];
      v16 = v19 - v11;
    }

    [(MUPlacePhotoView *)self frame];
    if (v17 + v15 > v20)
    {
      [(MUPlacePhotoView *)self frame];
      v17 = v21 - v15;
    }

    [(MUPlacePhotoView *)self zoomToRect:1 animated:v16, v17, v11, v15];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (([(UIImage *)self->_image isEqual:imageCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_image, image);
    [(MUPlacePhotoView *)self _updateObfuscationPosition];
    v6 = MEMORY[0x1E69DD250];
    imageView = [(MUPlacePhotoView *)self imageView];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __29__MUPlacePhotoView_setImage___block_invoke;
    v8[3] = &unk_1E821A870;
    v8[4] = self;
    v9 = imageCopy;
    [v6 transitionWithView:imageView duration:5242880 options:v8 animations:0 completion:0.200000003];
  }
}

void __29__MUPlacePhotoView_setImage___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) imageView];
  [v2 setImage:v1];
}

- (MUPlacePhotoView)initWithImage:(id)image
{
  v39[6] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v37.receiver = self;
  v37.super_class = MUPlacePhotoView;
  v6 = [(MUPlacePhotoView *)&v37 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v6)
  {
    [MEMORY[0x1E69DC888] clearColor];
    v7 = v36 = imageCopy;
    [(MUPlacePhotoView *)v6 setBackgroundColor:v7];

    [(MUPlacePhotoView *)v6 setUserInteractionEnabled:1];
    [(MUPlacePhotoView *)v6 setClipsToBounds:1];
    [(MUPlacePhotoView *)v6 setDelegate:v6];
    [(MUPlacePhotoView *)v6 setContentMode:4];
    [(MUPlacePhotoView *)v6 setMaximumZoomScale:3.0];
    [(MUPlacePhotoView *)v6 setMinimumZoomScale:1.0];
    [(MUPlacePhotoView *)v6 setDecelerationRate:0.850000024];
    [(MUPlacePhotoView *)v6 setShowsVerticalScrollIndicator:0];
    [(MUPlacePhotoView *)v6 setShowsHorizontalScrollIndicator:0];
    [(MUPlacePhotoView *)v6 setAccessibilityIdentifier:@"PlacePhotoView"];
    objc_storeStrong(&v6->_image, image);
    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v6->_image];
    imageView = v6->_imageView;
    v6->_imageView = v8;

    [(UIImageView *)v6->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v6->_imageView setAccessibilityIgnoresInvertColors:1];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIImageView *)v6->_imageView setBackgroundColor:clearColor];

    [(UIImageView *)v6->_imageView setContentMode:1];
    [(UIImageView *)v6->_imageView setUserInteractionEnabled:1];
    [(UIImageView *)v6->_imageView setAccessibilityIdentifier:@"ImageView"];
    [(MUPlacePhotoView *)v6 addSubview:v6->_imageView];
    v28 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UIImageView *)v6->_imageView leadingAnchor];
    leadingAnchor2 = [(MUPlacePhotoView *)v6 leadingAnchor];
    v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v39[0] = v33;
    trailingAnchor = [(UIImageView *)v6->_imageView trailingAnchor];
    trailingAnchor2 = [(MUPlacePhotoView *)v6 trailingAnchor];
    v30 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v39[1] = v30;
    topAnchor = [(UIImageView *)v6->_imageView topAnchor];
    topAnchor2 = [(MUPlacePhotoView *)v6 topAnchor];
    v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v39[2] = v26;
    bottomAnchor = [(UIImageView *)v6->_imageView bottomAnchor];
    bottomAnchor2 = [(MUPlacePhotoView *)v6 bottomAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v39[3] = v12;
    heightAnchor = [(UIImageView *)v6->_imageView heightAnchor];
    heightAnchor2 = [(MUPlacePhotoView *)v6 heightAnchor];
    v15 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v39[4] = v15;
    widthAnchor = [(UIImageView *)v6->_imageView widthAnchor];
    widthAnchor2 = [(MUPlacePhotoView *)v6 widthAnchor];
    v18 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v39[5] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:6];
    [v28 activateConstraints:v19];

    v20 = objc_opt_self();
    v38 = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
    v22 = [(MUPlacePhotoView *)v6 registerForTraitChanges:v21 withAction:sel__updateObfuscationText];

    imageCopy = v36;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v6;
}

@end