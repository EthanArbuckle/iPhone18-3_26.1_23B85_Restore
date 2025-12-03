@interface NTKGreenfieldB640CollectionViewCell
+ (CGSize)cellSizeForWatchBandImage:(id)image watchFaceName:(id)name;
- (void)_populateWithDecodedRecipe:(id)recipe bandImage:(id)image shouldPresentFaceName:(BOOL)name shouldPresentCheckmark:(BOOL)checkmark isSelected:(BOOL)selected;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)updateSeletedState:(BOOL)state;
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
  image = [(UIImageView *)self->_watchBandImageView image];
  [image size];
  v5 = v4;
  image2 = [(UIImageView *)self->_watchBandImageView image];
  [image2 size];
  v8 = v7;

  contentView = [(NTKGreenfieldB640CollectionViewCell *)self contentView];
  [contentView bounds];
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
  contentView2 = [(NTKGreenfieldB640CollectionViewCell *)self contentView];
  [contentView2 bounds];
  v21 = v20;

  [(UILabel *)self->_faceNameLabel sizeThatFits:v21, 1.79769313e308];
  v23 = v22;
  contentView3 = [(NTKGreenfieldB640CollectionViewCell *)self contentView];
  [contentView3 bounds];
  v26 = (v25 - v21) * 0.5;

  [(UILabel *)self->_faceNameLabel setFrame:v26, v18, v21, v23];
  [(UIImageView *)self->_selectedCheckImageView frame];
  image3 = [(UIImageView *)self->_selectedCheckImageView image];
  [image3 size];
  v29 = v28;

  image4 = [(UIImageView *)self->_selectedCheckImageView image];
  [image4 size];
  v32 = v31;

  contentView4 = [(NTKGreenfieldB640CollectionViewCell *)self contentView];
  [contentView4 bounds];
  v35 = v34;
  image5 = [(UIImageView *)self->_selectedCheckImageView image];
  [image5 size];
  v38 = (v35 - v37) * 0.5;

  contentView5 = [(NTKGreenfieldB640CollectionViewCell *)self contentView];
  [contentView5 bounds];
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

- (void)_populateWithDecodedRecipe:(id)recipe bandImage:(id)image shouldPresentFaceName:(BOOL)name shouldPresentCheckmark:(BOOL)checkmark isSelected:(BOOL)selected
{
  selectedCopy = selected;
  nameCopy = name;
  recipeCopy = recipe;
  imageCopy = image;
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

    contentView = [(NTKGreenfieldB640CollectionViewCell *)self contentView];
    [contentView addSubview:self->_watchBandImageView];

    [(UIImageView *)self->_watchBandImageView setImage:imageCopy];
    [(UIImageView *)self->_watchBandImageView setContentMode:1];
  }

  watchFace = [recipeCopy watchFace];
  v19 = [NTKFaceViewController alloc];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __132__NTKGreenfieldB640CollectionViewCell__populateWithDecodedRecipe_bandImage_shouldPresentFaceName_shouldPresentCheckmark_isSelected___block_invoke;
  v41[3] = &unk_278787278;
  v20 = watchFace;
  v44 = v49;
  v45 = v50;
  v46 = v51;
  v42 = v20;
  v47 = v52;
  v43 = v48;
  v21 = [(NTKFaceViewController *)v19 initWithFace:v20 configuration:v41];
  faceView = [(NTKFaceViewController *)v21 faceView];
  faceView = self->_faceView;
  self->_faceView = faceView;

  [(UIImageView *)self->_watchBandImageView addSubview:self->_faceView];
  image = [(UIImageView *)self->_watchBandImageView image];
  [image size];
  v25 = *(&v49 + 1);
  v27 = v26 / *(&v49 + 1);
  image2 = [(UIImageView *)self->_watchBandImageView image];
  [image2 size];
  CGAffineTransformMakeScale(&v40, v27, v29 / v25);
  v30 = self->_faceView;
  v39 = v40;
  [(UIView *)v30 setTransform:&v39];

  if (nameCopy)
  {
    if (!self->_faceNameLabel)
    {
      v31 = objc_alloc_init(MEMORY[0x277D756B8]);
      faceNameLabel = self->_faceNameLabel;
      self->_faceNameLabel = v31;

      [(UILabel *)self->_faceNameLabel setTextAlignment:1];
      systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
      [(UILabel *)self->_faceNameLabel setTextColor:systemWhiteColor];

      v34 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
      [(UILabel *)self->_faceNameLabel setFont:v34];

      [(UILabel *)self->_faceNameLabel setNumberOfLines:0];
      contentView2 = [(NTKGreenfieldB640CollectionViewCell *)self contentView];
      [contentView2 addSubview:self->_faceNameLabel];
    }

    watchFace2 = [recipeCopy watchFace];
    faceSharingName = [watchFace2 faceSharingName];
    [(UILabel *)self->_faceNameLabel setText:faceSharingName];
  }

  self->_shouldPresentCheckmark = checkmark;
  [(NTKGreenfieldB640CollectionViewCell *)self updateSeletedState:selectedCopy];
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

- (void)updateSeletedState:(BOOL)state
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

      contentView = [(NTKGreenfieldB640CollectionViewCell *)self contentView];
      [contentView addSubview:self->_selectedCheckImageView];

      [(UIImageView *)self->_selectedCheckImageView setContentMode:0];
    }

    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    _LayoutConstants_13(&v14);
    if (state)
    {
      v10 = [MEMORY[0x277D755D0] configurationWithPointSize:6 weight:*&v15];
      systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
      v12 = @"checkmark.circle.fill";
    }

    else
    {
      v10 = [MEMORY[0x277D755D0] configurationWithPointSize:2 weight:*&v15];
      systemOrangeColor = [MEMORY[0x277D75348] systemGrayColor];
      v12 = @"circle";
    }

    v13 = [MEMORY[0x277D755B8] systemImageNamed:v12 withConfiguration:v10];
    [(UIImageView *)self->_selectedCheckImageView setImage:v13];

    [(UIImageView *)self->_selectedCheckImageView setTintColor:systemOrangeColor];
  }
}

+ (CGSize)cellSizeForWatchBandImage:(id)image watchFaceName:(id)name
{
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  nameCopy = name;
  imageCopy = image;
  [imageCopy size];
  v8 = v7;
  v9 = [MEMORY[0x277D755D0] configurationWithPointSize:2 weight:*&v23];
  v10 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle.fill" withConfiguration:v9];
  [v10 size];
  v12 = v11;
  v13 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v13 setTextAlignment:1];
  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  [v13 setTextColor:systemWhiteColor];

  v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v13 setFont:v15];

  [v13 setNumberOfLines:0];
  [v13 setText:nameCopy];

  [imageCopy size];
  [v13 sizeThatFits:?];
  v17 = *(&v22 + 1) + v12 + *(&v22 + 1) + v16 + v8 + *&v22;
  [imageCopy size];
  v19 = v18;

  v20 = v19;
  v21 = v17;
  result.height = v21;
  result.width = v20;
  return result;
}

@end