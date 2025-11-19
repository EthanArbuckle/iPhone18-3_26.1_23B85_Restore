@interface MUPlacePhotoView
- (BOOL)isZoomed;
- (MUPlacePhotoView)initWithImage:(id)a3;
- (void)_updateObfuscationPosition;
- (void)_updateObfuscationText;
- (void)_updateObfuscationWithPreviousModel:(id)a3;
- (void)layoutSubviews;
- (void)setImage:(id)a3;
- (void)setObfuscationModel:(id)a3;
- (void)zoomWithGestureRecognizer:(id)a3;
@end

@implementation MUPlacePhotoView

- (void)_updateObfuscationPosition
{
  v3 = [(MUPlacePhotoView *)self obfuscationView];

  if (v3)
  {
    v4 = [(MUPlacePhotoView *)self image];
    [v4 size];
    v6 = v5;

    if (v6 != 0.0)
    {
      v7 = [(MUPlacePhotoView *)self image];
      [v7 size];
      v9 = v8;
      v10 = [(MUPlacePhotoView *)self image];
      [v10 size];
      v12 = v9 / v11;

      v13 = [(MUPlacePhotoView *)self imageView];
      [v13 bounds];
      Height = CGRectGetHeight(v28);

      v15 = [(MUPlacePhotoView *)self imageView];
      [v15 bounds];
      Width = CGRectGetWidth(v29);

      v17 = Width / v12;
      v18 = fmin(Height * v12, Width);
      v19 = fmin(v17, Height);
      v20 = [(MUPlacePhotoView *)self obfuscationView];
      [v20 setFrame:{0.0, 0.0, v18, v19}];

      v26 = [(MUPlacePhotoView *)self imageView];
      [v26 center];
      v22 = v21;
      v24 = v23;
      v25 = [(MUPlacePhotoView *)self obfuscationView];
      [v25 setCenter:{v22, v24}];
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

  v5 = [(MUPlacePhotoViewObfuscationModel *)self->_obfuscationModel providerName];
  v6 = v4;
  if ([v5 length])
  {
    v21 = self;
    v22 = *MEMORY[0x1E69DB648];
    v23[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v20 = _MULocalizedStringFromThisBundle(@"View on %@ %@");
    v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v20 attributes:v7];
    v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5 attributes:v7];
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

    self = v21;
  }

  else
  {
    v17 = 0;
  }

  v18 = [(MUPlacePhotoView *)self obfuscationView];
  [v18 setAttributedText:v17];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_updateObfuscationWithPreviousModel:(id)a3
{
  v17 = a3;
  v4 = [v17 tapGestureRecognizer];

  if (v4)
  {
    v5 = [(MUPlacePhotoView *)self obfuscationView];
    v6 = [v17 tapGestureRecognizer];
    [v5 removeGestureRecognizer:v6];
  }

  if (self->_obfuscationModel)
  {
    v7 = [(MUPlacePhotoView *)self obfuscationView];

    if (!v7)
    {
      v8 = [MUPlacePhotoObfuscationView alloc];
      v9 = [(MUPlacePhotoObfuscationView *)v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      [(MUPlacePhotoView *)self setObfuscationView:v9];

      v10 = [(MUPlacePhotoView *)self imageView];
      v11 = [(MUPlacePhotoView *)self obfuscationView];
      [v10 addSubview:v11];

      [(MUPlacePhotoView *)self _updateObfuscationPosition];
    }
  }

  v12 = [(MUPlacePhotoViewObfuscationModel *)self->_obfuscationModel tapGestureRecognizer];

  if (v12)
  {
    v13 = [(MUPlacePhotoView *)self obfuscationView];
    v14 = [(MUPlacePhotoViewObfuscationModel *)self->_obfuscationModel tapGestureRecognizer];
    [v13 addGestureRecognizer:v14];
  }

  v15 = self->_obfuscationModel == 0;
  v16 = [(MUPlacePhotoView *)self obfuscationView];
  [v16 setHidden:v15];

  [(MUPlacePhotoView *)self _updateObfuscationText];
}

- (void)setObfuscationModel:(id)a3
{
  v8 = a3;
  if (([(MUPlacePhotoViewObfuscationModel *)self->_obfuscationModel isEqual:?]& 1) == 0)
  {
    obfuscationModel = self->_obfuscationModel;
    v5 = v8;
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

- (void)zoomWithGestureRecognizer:(id)a3
{
  v22 = a3;
  if ([(MUPlacePhotoView *)self isZoomed])
  {
    [(MUPlacePhotoView *)self minimumZoomScale];
    [(MUPlacePhotoView *)self setZoomScale:1 animated:?];
  }

  else
  {
    [v22 locationInView:self];
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

- (void)setImage:(id)a3
{
  v5 = a3;
  if (([(UIImage *)self->_image isEqual:v5]& 1) == 0)
  {
    objc_storeStrong(&self->_image, a3);
    [(MUPlacePhotoView *)self _updateObfuscationPosition];
    v6 = MEMORY[0x1E69DD250];
    v7 = [(MUPlacePhotoView *)self imageView];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __29__MUPlacePhotoView_setImage___block_invoke;
    v8[3] = &unk_1E821A870;
    v8[4] = self;
    v9 = v5;
    [v6 transitionWithView:v7 duration:5242880 options:v8 animations:0 completion:0.200000003];
  }
}

void __29__MUPlacePhotoView_setImage___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) imageView];
  [v2 setImage:v1];
}

- (MUPlacePhotoView)initWithImage:(id)a3
{
  v39[6] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v37.receiver = self;
  v37.super_class = MUPlacePhotoView;
  v6 = [(MUPlacePhotoView *)&v37 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v6)
  {
    [MEMORY[0x1E69DC888] clearColor];
    v7 = v36 = v5;
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
    objc_storeStrong(&v6->_image, a3);
    v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v6->_image];
    imageView = v6->_imageView;
    v6->_imageView = v8;

    [(UIImageView *)v6->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v6->_imageView setAccessibilityIgnoresInvertColors:1];
    v10 = [MEMORY[0x1E69DC888] clearColor];
    [(UIImageView *)v6->_imageView setBackgroundColor:v10];

    [(UIImageView *)v6->_imageView setContentMode:1];
    [(UIImageView *)v6->_imageView setUserInteractionEnabled:1];
    [(UIImageView *)v6->_imageView setAccessibilityIdentifier:@"ImageView"];
    [(MUPlacePhotoView *)v6 addSubview:v6->_imageView];
    v28 = MEMORY[0x1E696ACD8];
    v35 = [(UIImageView *)v6->_imageView leadingAnchor];
    v34 = [(MUPlacePhotoView *)v6 leadingAnchor];
    v33 = [v35 constraintEqualToAnchor:v34];
    v39[0] = v33;
    v32 = [(UIImageView *)v6->_imageView trailingAnchor];
    v31 = [(MUPlacePhotoView *)v6 trailingAnchor];
    v30 = [v32 constraintEqualToAnchor:v31];
    v39[1] = v30;
    v29 = [(UIImageView *)v6->_imageView topAnchor];
    v27 = [(MUPlacePhotoView *)v6 topAnchor];
    v26 = [v29 constraintEqualToAnchor:v27];
    v39[2] = v26;
    v25 = [(UIImageView *)v6->_imageView bottomAnchor];
    v11 = [(MUPlacePhotoView *)v6 bottomAnchor];
    v12 = [v25 constraintEqualToAnchor:v11];
    v39[3] = v12;
    v13 = [(UIImageView *)v6->_imageView heightAnchor];
    v14 = [(MUPlacePhotoView *)v6 heightAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v39[4] = v15;
    v16 = [(UIImageView *)v6->_imageView widthAnchor];
    v17 = [(MUPlacePhotoView *)v6 widthAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v39[5] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:6];
    [v28 activateConstraints:v19];

    v20 = objc_opt_self();
    v38 = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
    v22 = [(MUPlacePhotoView *)v6 registerForTraitChanges:v21 withAction:sel__updateObfuscationText];

    v5 = v36;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v6;
}

@end