@interface NTKGreenfieldB640CollectionViewCell
+ (CGSize)cellSizeForWatchBandImage:(id)a3 watchFaceName:(id)a4;
- (void)_populateWithDecodedRecipe:(id)a3 bandImage:(id)a4 shouldPresentFaceName:(BOOL)a5 shouldPresentCheckmark:(BOOL)a6 isSelected:(BOOL)a7;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)updateSeletedState:(BOOL)a3;
@end

@implementation NTKGreenfieldB640CollectionViewCell

- (void)layoutSubviews
{
  v44.receiver = self;
  v44.super_class = NTKGreenfieldB640CollectionViewCell;
  [(NTKGreenfieldB640CollectionViewCell *)&v44 layoutSubviews];
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  [(UIImageView *)self->_watchBandImageView frame];
  v3 = [(UIImageView *)self->_watchBandImageView image];
  [v3 size];
  v5 = v4;
  v6 = [(UIImageView *)self->_watchBandImageView image];
  [v6 size];
  v8 = v7;

  v9 = [(NTKGreenfieldB640CollectionViewCell *)self contentView];
  [v9 bounds];
  v11 = (v10 - v5) * 0.5;

  [(UIImageView *)self->_watchBandImageView setFrame:v11, 0.0, v5, v8];
  [(UIView *)self->_faceView frame];
  [(UIView *)self->_faceView frame];
  v13 = (v5 - v12) * 0.5;
  [(UIView *)self->_faceView frame];
  v15 = (v8 - v14) * 0.5;
  [(UIView *)self->_faceView frame];
  v17 = v16;
  [(UIView *)self->_faceView frame];
  [(UIView *)self->_faceView setFrame:v13, v15, v17];
  v18 = v8 + *v42 + 0.0;
  [(UILabel *)self->_faceNameLabel frame];
  v19 = [(NTKGreenfieldB640CollectionViewCell *)self contentView];
  [v19 bounds];
  v21 = v20;

  [(UILabel *)self->_faceNameLabel sizeThatFits:v21, 1.79769313e308];
  v23 = v22;
  v24 = [(NTKGreenfieldB640CollectionViewCell *)self contentView];
  [v24 bounds];
  v26 = (v25 - v21) * 0.5;

  [(UILabel *)self->_faceNameLabel setFrame:v26, v18, v21, v23];
  [(UIImageView *)self->_selectedCheckImageView frame];
  v27 = [(UIImageView *)self->_selectedCheckImageView image];
  [v27 size];
  v29 = v28;

  v30 = [(UIImageView *)self->_selectedCheckImageView image];
  [v30 size];
  v32 = v31;

  v33 = [(NTKGreenfieldB640CollectionViewCell *)self contentView];
  [v33 bounds];
  v35 = v34;
  v36 = [(UIImageView *)self->_selectedCheckImageView image];
  [v36 size];
  v38 = (v35 - v37) * 0.5;

  v39 = [(NTKGreenfieldB640CollectionViewCell *)self contentView];
  [v39 bounds];
  v41 = v40 - v32 - *(v42 + 1);

  [(UIImageView *)self->_selectedCheckImageView setFrame:v38, v41, v29, v32];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = NTKGreenfieldB640CollectionViewCell;
  [(NTKGreenfieldB640CollectionViewCell *)&v3 prepareForReuse];
  [(UIView *)self->_faceView removeFromSuperview];
}

- (void)_populateWithDecodedRecipe:(id)a3 bandImage:(id)a4 shouldPresentFaceName:(BOOL)a5 shouldPresentCheckmark:(BOOL)a6 isSelected:(BOOL)a7
{
  v38 = a7;
  v8 = a5;
  v11 = a3;
  v12 = a4;
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  *&v13 = _LayoutConstants_13(&v48).n128_u64[0];
  if (!self->_watchBandImageView)
  {
    v14 = objc_alloc_init(MEMORY[0x277D755E8]);
    watchBandImageView = self->_watchBandImageView;
    self->_watchBandImageView = v14;

    v16 = BPSBackgroundColor();
    [(UIImageView *)self->_watchBandImageView setBackgroundColor:v16];

    v17 = [(NTKGreenfieldB640CollectionViewCell *)self contentView];
    [v17 addSubview:self->_watchBandImageView];

    [(UIImageView *)self->_watchBandImageView setImage:v12];
    [(UIImageView *)self->_watchBandImageView setContentMode:1];
  }

  v18 = [v11 watchFace];
  v19 = [NTKFaceViewController alloc];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __132__NTKGreenfieldB640CollectionViewCell__populateWithDecodedRecipe_bandImage_shouldPresentFaceName_shouldPresentCheckmark_isSelected___block_invoke;
  v41[3] = &unk_278787278;
  v20 = v18;
  v44 = v49;
  v45 = v50;
  v46 = v51;
  v42 = v20;
  v47 = v52;
  v43 = v48;
  v21 = [(NTKFaceViewController *)v19 initWithFace:v20 configuration:v41];
  v22 = [(NTKFaceViewController *)v21 faceView];
  faceView = self->_faceView;
  self->_faceView = v22;

  [(UIImageView *)self->_watchBandImageView addSubview:self->_faceView];
  v24 = [(UIImageView *)self->_watchBandImageView image];
  [v24 size];
  v25 = *(&v49 + 1);
  v27 = v26 / *(&v49 + 1);
  v28 = [(UIImageView *)self->_watchBandImageView image];
  [v28 size];
  CGAffineTransformMakeScale(&v40, v27, v29 / v25);
  v30 = self->_faceView;
  v39 = v40;
  [(UIView *)v30 setTransform:&v39];

  if (v8)
  {
    if (!self->_faceNameLabel)
    {
      v31 = objc_alloc_init(MEMORY[0x277D756B8]);
      faceNameLabel = self->_faceNameLabel;
      self->_faceNameLabel = v31;

      [(UILabel *)self->_faceNameLabel setTextAlignment:1];
      v33 = [MEMORY[0x277D75348] systemWhiteColor];
      [(UILabel *)self->_faceNameLabel setTextColor:v33];

      v34 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
      [(UILabel *)self->_faceNameLabel setFont:v34];

      [(UILabel *)self->_faceNameLabel setNumberOfLines:0];
      v35 = [(NTKGreenfieldB640CollectionViewCell *)self contentView];
      [v35 addSubview:self->_faceNameLabel];
    }

    v36 = [v11 watchFace];
    v37 = [v36 faceSharingName];
    [(UILabel *)self->_faceNameLabel setText:v37];
  }

  self->_shouldPresentCheckmark = a6;
  [(NTKGreenfieldB640CollectionViewCell *)self updateSeletedState:v38];
}

void __132__NTKGreenfieldB640CollectionViewCell__populateWithDecodedRecipe_bandImage_shouldPresentFaceName_shouldPresentCheckmark_isSelected___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  [v7 setDataMode:3];
  [v7 setShouldShowSnapshot:1];
  [v7 setShowsCanonicalContent:1];
  [v7 freeze];
  v3 = [*(a1 + 32) device];
  if ([v3 isLuxo])
  {
    [v3 screenCornerRadius];
    v5 = v4;
  }

  else
  {
    v5 = *(a1 + 72);
  }

  v6 = [v7 faceView];
  [v6 _setContinuousCornerRadius:v5];
}

- (void)updateSeletedState:(BOOL)a3
{
  if (self->_shouldPresentCheckmark)
  {
    v19 = v3;
    v20 = v4;
    if (!self->_selectedCheckImageView)
    {
      v7 = objc_alloc_init(MEMORY[0x277D755E8]);
      selectedCheckImageView = self->_selectedCheckImageView;
      self->_selectedCheckImageView = v7;

      v9 = [(NTKGreenfieldB640CollectionViewCell *)self contentView];
      [v9 addSubview:self->_selectedCheckImageView];

      [(UIImageView *)self->_selectedCheckImageView setContentMode:0];
    }

    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    _LayoutConstants_13(&v14);
    if (a3)
    {
      v10 = [MEMORY[0x277D755D0] configurationWithPointSize:6 weight:*&v15];
      v11 = [MEMORY[0x277D75348] systemOrangeColor];
      v12 = @"checkmark.circle.fill";
    }

    else
    {
      v10 = [MEMORY[0x277D755D0] configurationWithPointSize:2 weight:*&v15];
      v11 = [MEMORY[0x277D75348] systemGrayColor];
      v12 = @"circle";
    }

    v13 = [MEMORY[0x277D755B8] systemImageNamed:v12 withConfiguration:v10];
    [(UIImageView *)self->_selectedCheckImageView setImage:v13];

    [(UIImageView *)self->_selectedCheckImageView setTintColor:v11];
  }
}

+ (CGSize)cellSizeForWatchBandImage:(id)a3 watchFaceName:(id)a4
{
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = a4;
  v6 = a3;
  [v6 size];
  v8 = v7;
  v9 = [MEMORY[0x277D755D0] configurationWithPointSize:2 weight:*&v23];
  v10 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle.fill" withConfiguration:v9];
  [v10 size];
  v12 = v11;
  v13 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v13 setTextAlignment:1];
  v14 = [MEMORY[0x277D75348] systemWhiteColor];
  [v13 setTextColor:v14];

  v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v13 setFont:v15];

  [v13 setNumberOfLines:0];
  [v13 setText:v5];

  [v6 size];
  [v13 sizeThatFits:?];
  v17 = *(&v22 + 1) + v12 + *(&v22 + 1) + v16 + v8 + *&v22;
  [v6 size];
  v19 = v18;

  v20 = v19;
  v21 = v17;
  result.height = v21;
  result.width = v20;
  return result;
}

@end