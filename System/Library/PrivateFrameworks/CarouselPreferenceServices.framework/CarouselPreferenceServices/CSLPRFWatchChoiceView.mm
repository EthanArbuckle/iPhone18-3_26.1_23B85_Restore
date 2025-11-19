@interface CSLPRFWatchChoiceView
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (CSLPRFWatchChoiceView)initWithChoice:(id)a3 delegate:(id)a4 horizontalOffset:(double)a5 selectionHandler:(id)a6;
- (id)_createWatchViewForChoice:(id)a3;
- (void)_addWatchScreenImageIfNecessary:(id)a3;
- (void)_updateWatchViewPreferredWidth;
- (void)selectedByTap:(id)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation CSLPRFWatchChoiceView

- (void)setSelected:(BOOL)a3
{
  [(CSLPRFAppViewChoiceButton *)self->_button setSelected:?];
  button = self->_button;
  if (a3)
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

- (void)selectedByTap:(id)a3
{
  selectionHandler = self->_selectionHandler;
  if (selectionHandler)
  {
    selectionHandler[2](selectionHandler, self->_choice);
  }
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  [(BPSIllustratedWatchView *)self->_watchView setNeedsLayout];
  [(BPSIllustratedWatchView *)self->_watchView layoutIfNeeded];
  v14.receiver = self;
  v14.super_class = CSLPRFWatchChoiceView;
  *&v10 = a4;
  *&v11 = a5;
  [(CSLPRFWatchChoiceView *)&v14 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v10, v11];
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(CSLPRFWatchChoiceView *)self systemLayoutSizeFittingSize:*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CSLPRFWatchChoiceView)initWithChoice:(id)a3 delegate:(id)a4 horizontalOffset:(double)a5 selectionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v37.receiver = self;
  v37.super_class = CSLPRFWatchChoiceView;
  v13 = [(CSLPRFWatchChoiceView *)&v37 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, v11);
    v14->_choice = [v10 choice];
    v15 = MEMORY[0x2318C26B0](v12);
    selectionHandler = v14->_selectionHandler;
    v14->_selectionHandler = v15;

    v14->_horizontalOffset = a5;
    [(CSLPRFWatchChoiceView *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CSLPRFWatchChoiceView *)v14 setAxis:1];
    [(CSLPRFWatchChoiceView *)v14 setAlignment:3];
    [(CSLPRFWatchChoiceView *)v14 setDistribution:3];
    LODWORD(v17) = 1148846080;
    [(CSLPRFWatchChoiceView *)v14 setContentCompressionResistancePriority:1 forAxis:v17];
    LODWORD(v18) = 1148846080;
    [(CSLPRFWatchChoiceView *)v14 setContentHuggingPriority:1 forAxis:v18];
    v19 = [(CSLPRFWatchChoiceView *)v14 _createWatchViewForChoice:v10];
    watchView = v14->_watchView;
    v14->_watchView = v19;

    LODWORD(v21) = 1148846080;
    [(BPSIllustratedWatchView *)v14->_watchView setContentCompressionResistancePriority:1 forAxis:v21];
    [(CSLPRFWatchChoiceView *)v14 addArrangedSubview:v14->_watchView];
    [(CSLPRFWatchChoiceView *)v14 setCustomSpacing:v14->_watchView afterView:28.0];
    [(CSLPRFWatchChoiceView *)v14 _addWatchScreenImageIfNecessary:v10];
    v22 = objc_alloc_init(MEMORY[0x277D756B8]);
    WeakRetained = objc_loadWeakRetained(&v14->_delegate);
    v24 = [v10 label];
    v25 = [WeakRetained localize:v24];

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

- (void)_addWatchScreenImageIfNecessary:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(BPSIllustratedWatchView *)self->_watchView watchScreenImageView];
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 scale];
  v8 = v7;

  v9 = [MEMORY[0x277D37B50] sharedInstance];
  v10 = [v9 getDevicesExcluding:53];
  v11 = [v10 firstObject];

  v12 = [MEMORY[0x277CF3448] shared];
  LOBYTE(v10) = [v12 inWatchSetupFlow];

  if ((v10 & 1) != 0 || !v11)
  {
    v14 = [MEMORY[0x277D37A78] sharedDeviceController];
    v13 = [v14 size];
  }

  else
  {
    v13 = [MEMORY[0x277D37A78] sizeFromPdrDevice:v11];
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

  v17 = [v4 screenImage];

  if (v17)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v18 = [v4 screenImage];
      *buf = 138412546;
      v38 = v18;
      v39 = 2112;
      v40 = v5;
      _os_log_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, ">>>> adding provided %@ to view %@", buf, 0x16u);
    }

    v19 = [v4 screenImage];
    [v5 setImage:v19];
  }

  v20 = [v4 imageProvider];

  if (v20)
  {
    v21 = [v5 image];

    if (v21)
    {
      v22 = 0;
    }

    else
    {
      v22 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
      [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v5 addSubview:v22];
      watchView = self->_watchView;
      v24 = [MEMORY[0x277CCAAD0] constraintWithItem:v22 attribute:10 relatedBy:0 toItem:watchView attribute:10 multiplier:1.0 constant:1.0];
      [(BPSIllustratedWatchView *)watchView addConstraint:v24];

      v25 = self->_watchView;
      v26 = [MEMORY[0x277CCAAD0] constraintWithItem:v22 attribute:9 relatedBy:0 toItem:v25 attribute:9 multiplier:1.0 constant:1.0];
      [(BPSIllustratedWatchView *)v25 addConstraint:v26];

      [v22 startAnimating];
    }

    v27 = self->_watchView;
    v28 = [v4 imageProvider];
    v29 = [v4 choice];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __57__CSLPRFWatchChoiceView__addWatchScreenImageIfNecessary___block_invoke;
    v33[3] = &unk_278744DE8;
    v33[4] = self;
    v34 = v5;
    v35 = v27;
    v36 = v22;
    v30 = v22;
    v31 = v27;
    [v28 retrieveImageForLauncherViewMode:v29 size:v33 completion:{v16, v15}];
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

- (id)_createWatchViewForChoice:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CF3458]);
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 bounds];
  v8 = v7 * 0.5 - self->_horizontalOffset;

  v9 = [MEMORY[0x277CCAE60] valueWithCGSize:{v8, 0.0}];
  [v5 setPreferredCGSizeValue:v9];

  v10 = [v4 imageProvider];

  if (!v10)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = [WeakRetained bundleID];
    [v5 setScreenImageSearchBundleIdentifier:v12];

    v13 = [v4 screenImageName];
    [v5 setScreenImageName:v13];
  }

  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v5;
}

- (void)_updateWatchViewPreferredWidth
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];
  v5 = v4 * 0.5 - self->_horizontalOffset;

  v6 = [MEMORY[0x277CCAE60] valueWithCGSize:{v5, 0.0}];
  [(BPSIllustratedWatchView *)self->_watchView setPreferredCGSizeValue:v6];
}

@end