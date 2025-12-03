@interface CSLPRFWatchChoiceView
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (CSLPRFWatchChoiceView)initWithChoice:(id)choice delegate:(id)delegate horizontalOffset:(double)offset selectionHandler:(id)handler;
- (id)_createWatchViewForChoice:(id)choice;
- (void)_addWatchScreenImageIfNecessary:(id)necessary;
- (void)_updateWatchViewPreferredWidth;
- (void)selectedByTap:(id)tap;
- (void)setSelected:(BOOL)selected;
@end

@implementation CSLPRFWatchChoiceView

- (void)setSelected:(BOOL)selected
{
  [(CSLPRFAppViewChoiceButton *)self->_button setSelected:?];
  button = self->_button;
  if (selected)
  {
    [MEMORY[0x277D75348] systemOrangeColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }
  v6 = ;
  [(CSLPRFAppViewChoiceButton *)button setTintColor:v6];
}

- (void)selectedByTap:(id)tap
{
  selectionHandler = self->_selectionHandler;
  if (selectionHandler)
  {
    selectionHandler[2](selectionHandler, self->_choice);
  }
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  [(BPSIllustratedWatchView *)self->_watchView setNeedsLayout];
  [(BPSIllustratedWatchView *)self->_watchView layoutIfNeeded];
  v14.receiver = self;
  v14.super_class = CSLPRFWatchChoiceView;
  *&v10 = priority;
  *&v11 = fittingPriority;
  [(CSLPRFWatchChoiceView *)&v14 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v10, v11];
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(CSLPRFWatchChoiceView *)self systemLayoutSizeFittingSize:*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CSLPRFWatchChoiceView)initWithChoice:(id)choice delegate:(id)delegate horizontalOffset:(double)offset selectionHandler:(id)handler
{
  choiceCopy = choice;
  delegateCopy = delegate;
  handlerCopy = handler;
  v37.receiver = self;
  v37.super_class = CSLPRFWatchChoiceView;
  v13 = [(CSLPRFWatchChoiceView *)&v37 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v14->_choice = [choiceCopy choice];
    v15 = MEMORY[0x2318C26B0](handlerCopy);
    selectionHandler = v14->_selectionHandler;
    v14->_selectionHandler = v15;

    v14->_horizontalOffset = offset;
    [(CSLPRFWatchChoiceView *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CSLPRFWatchChoiceView *)v14 setAxis:1];
    [(CSLPRFWatchChoiceView *)v14 setAlignment:3];
    [(CSLPRFWatchChoiceView *)v14 setDistribution:3];
    LODWORD(v17) = 1148846080;
    [(CSLPRFWatchChoiceView *)v14 setContentCompressionResistancePriority:1 forAxis:v17];
    LODWORD(v18) = 1148846080;
    [(CSLPRFWatchChoiceView *)v14 setContentHuggingPriority:1 forAxis:v18];
    v19 = [(CSLPRFWatchChoiceView *)v14 _createWatchViewForChoice:choiceCopy];
    watchView = v14->_watchView;
    v14->_watchView = v19;

    LODWORD(v21) = 1148846080;
    [(BPSIllustratedWatchView *)v14->_watchView setContentCompressionResistancePriority:1 forAxis:v21];
    [(CSLPRFWatchChoiceView *)v14 addArrangedSubview:v14->_watchView];
    [(CSLPRFWatchChoiceView *)v14 setCustomSpacing:v14->_watchView afterView:28.0];
    [(CSLPRFWatchChoiceView *)v14 _addWatchScreenImageIfNecessary:choiceCopy];
    v22 = objc_alloc_init(MEMORY[0x277D756B8]);
    WeakRetained = objc_loadWeakRetained(&v14->_delegate);
    label = [choiceCopy label];
    v25 = [WeakRetained localize:label];

    [v22 setText:v25];
    [v22 setNumberOfLines:0];
    LODWORD(v26) = 1036831949;
    [v22 _setHyphenationFactor:v26];
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v27) = 1148846080;
    [v22 setContentHuggingPriority:1 forAxis:v27];
    LODWORD(v28) = 1148846080;
    [v22 setContentCompressionResistancePriority:1 forAxis:v28];
    [(CSLPRFWatchChoiceView *)v14 addArrangedSubview:v22];
    [(CSLPRFWatchChoiceView *)v14 setCustomSpacing:v22 afterView:0.0];
    v29 = objc_alloc_init(CSLPRFAppViewChoiceButton);
    [(CSLPRFAppViewChoiceButton *)v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CSLPRFAppViewChoiceButton *)v29 setUserInteractionEnabled:1];
    [(CSLPRFAppViewChoiceButton *)v29 addTarget:v14 action:sel_selectedByTap_ forControlEvents:1];
    LODWORD(v30) = 1148846080;
    [(CSLPRFAppViewChoiceButton *)v29 setContentHuggingPriority:1 forAxis:v30];
    LODWORD(v31) = 1148846080;
    [(CSLPRFAppViewChoiceButton *)v29 setContentCompressionResistancePriority:1 forAxis:v31];
    button = v14->_button;
    v14->_button = v29;
    v33 = v29;

    [(CSLPRFWatchChoiceView *)v14 addArrangedSubview:v14->_button];
    v34 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v14 action:sel_selectedByTap_];
    tapRecognizer = v14->_tapRecognizer;
    v14->_tapRecognizer = v34;

    [(CSLPRFWatchChoiceView *)v14 addGestureRecognizer:v14->_tapRecognizer];
  }

  return v14;
}

- (void)_addWatchScreenImageIfNecessary:(id)necessary
{
  v41 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  watchScreenImageView = [(BPSIllustratedWatchView *)self->_watchView watchScreenImageView];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v8 = v7;

  mEMORY[0x277D37B50] = [MEMORY[0x277D37B50] sharedInstance];
  v10 = [mEMORY[0x277D37B50] getDevicesExcluding:53];
  firstObject = [v10 firstObject];

  mEMORY[0x277CF3448] = [MEMORY[0x277CF3448] shared];
  LOBYTE(v10) = [mEMORY[0x277CF3448] inWatchSetupFlow];

  if ((v10 & 1) != 0 || !firstObject)
  {
    mEMORY[0x277D37A78] = [MEMORY[0x277D37A78] sharedDeviceController];
    v13 = [mEMORY[0x277D37A78] size];
  }

  else
  {
    v13 = [MEMORY[0x277D37A78] sizeFromPdrDevice:firstObject];
  }

  if (v13 == 19)
  {
    v15 = 157.0;
    v16 = 128.333333;
  }

  else if (fabs(v8 + -3.0) <= 2.22044605e-16)
  {
    v15 = 127.0;
    v16 = 104.5;
  }

  else
  {
    v15 = 128.0;
    v16 = 103.5;
  }

  screenImage = [necessaryCopy screenImage];

  if (screenImage)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      screenImage2 = [necessaryCopy screenImage];
      *buf = 138412546;
      v38 = screenImage2;
      v39 = 2112;
      v40 = watchScreenImageView;
      _os_log_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, ">>>> adding provided %@ to view %@", buf, 0x16u);
    }

    screenImage3 = [necessaryCopy screenImage];
    [watchScreenImageView setImage:screenImage3];
  }

  imageProvider = [necessaryCopy imageProvider];

  if (imageProvider)
  {
    image = [watchScreenImageView image];

    if (image)
    {
      v22 = 0;
    }

    else
    {
      v22 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
      [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
      [watchScreenImageView addSubview:v22];
      watchView = self->_watchView;
      v24 = [MEMORY[0x277CCAAD0] constraintWithItem:v22 attribute:10 relatedBy:0 toItem:watchView attribute:10 multiplier:1.0 constant:1.0];
      [(BPSIllustratedWatchView *)watchView addConstraint:v24];

      v25 = self->_watchView;
      v26 = [MEMORY[0x277CCAAD0] constraintWithItem:v22 attribute:9 relatedBy:0 toItem:v25 attribute:9 multiplier:1.0 constant:1.0];
      [(BPSIllustratedWatchView *)v25 addConstraint:v26];

      [v22 startAnimating];
    }

    v27 = self->_watchView;
    imageProvider2 = [necessaryCopy imageProvider];
    choice = [necessaryCopy choice];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __57__CSLPRFWatchChoiceView__addWatchScreenImageIfNecessary___block_invoke;
    v33[3] = &unk_278744DE8;
    v33[4] = self;
    v34 = watchScreenImageView;
    v35 = v27;
    v36 = v22;
    v30 = v22;
    v31 = v27;
    [imageProvider2 retrieveImageForLauncherViewMode:choice size:v33 completion:{v16, v15}];
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __57__CSLPRFWatchChoiceView__addWatchScreenImageIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v11 = 138412802;
      v12 = v5;
      v13 = 2112;
      v14 = v3;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, ">>>> %@ adding retrieved image %@ to view %@", &v11, 0x20u);
    }

    [*(a1 + 40) setImage:v3];
    [*(a1 + 48) setNeedsLayout];
    [*(a1 + 48) layoutIfNeeded];
    v7 = *(a1 + 56);
    if (v7)
    {
      [v7 setHidden:1];
      [*(a1 + 56) stopAnimating];
      [*(a1 + 56) removeFromSuperview];
    }
  }

  else if (v4)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = 138412802;
    v12 = v8;
    v13 = 2112;
    v14 = 0;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, ">>>> %@ retrieved image is %@, not adding to view %@", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_createWatchViewForChoice:(id)choice
{
  choiceCopy = choice;
  v5 = objc_alloc_init(MEMORY[0x277CF3458]);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v8 = v7 * 0.5 - self->_horizontalOffset;

  v9 = [MEMORY[0x277CCAE60] valueWithCGSize:{v8, 0.0}];
  [v5 setPreferredCGSizeValue:v9];

  imageProvider = [choiceCopy imageProvider];

  if (!imageProvider)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    bundleID = [WeakRetained bundleID];
    [v5 setScreenImageSearchBundleIdentifier:bundleID];

    screenImageName = [choiceCopy screenImageName];
    [v5 setScreenImageName:screenImageName];
  }

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v5;
}

- (void)_updateWatchViewPreferredWidth
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = v4 * 0.5 - self->_horizontalOffset;

  v6 = [MEMORY[0x277CCAE60] valueWithCGSize:{v5, 0.0}];
  [(BPSIllustratedWatchView *)self->_watchView setPreferredCGSizeValue:v6];
}

@end