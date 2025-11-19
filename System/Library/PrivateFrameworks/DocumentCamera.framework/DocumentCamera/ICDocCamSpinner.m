@interface ICDocCamSpinner
- (ICDocCamSpinner)initWithView:(id)a3 minimumDuration:(double)a4;
- (void)hide;
- (void)show;
@end

@implementation ICDocCamSpinner

- (ICDocCamSpinner)initWithView:(id)a3 minimumDuration:(double)a4
{
  v6 = a3;
  v20.receiver = self;
  v20.super_class = ICDocCamSpinner;
  v7 = [(ICDocCamSpinner *)&v20 init];
  v8 = v7;
  if (v7)
  {
    showDate = v7->_showDate;
    v7->_showDate = 0;

    v8->_minimumDuration = a4;
    v10 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    activityIndicator = v8->_activityIndicator;
    v8->_activityIndicator = v10;

    [(UIActivityIndicatorView *)v8->_activityIndicator setHidden:1];
    [(UIActivityIndicatorView *)v8->_activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 addSubview:v8->_activityIndicator];
    v12 = [MEMORY[0x277CBEB18] array];
    v13 = [(UIActivityIndicatorView *)v8->_activityIndicator centerXAnchor];
    v14 = [v6 centerXAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    [v12 addObject:v15];

    v16 = [(UIActivityIndicatorView *)v8->_activityIndicator centerYAnchor];
    v17 = [v6 centerYAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    [v12 addObject:v18];

    [MEMORY[0x277CCAAD0] activateConstraints:v12];
  }

  return v8;
}

- (void)show
{
  v3 = [MEMORY[0x277CBEAA8] date];
  [(ICDocCamSpinner *)self setShowDate:v3];

  v4 = [(ICDocCamSpinner *)self animator];

  if (v4)
  {
    v5 = [(ICDocCamSpinner *)self animator];
    [v5 stopAnimation:0];

    v6 = [(ICDocCamSpinner *)self animator];
    [v6 finishAnimationAtPosition:0];

    [(ICDocCamSpinner *)self setAnimator:0];
  }

  v7 = [(ICDocCamSpinner *)self activityIndicator];
  v8 = [v7 isAnimating];

  if ((v8 & 1) == 0)
  {
    v9 = [(ICDocCamSpinner *)self activityIndicator];
    [v9 setAlpha:0.0];

    v10 = [(ICDocCamSpinner *)self activityIndicator];
    [v10 setHidden:0];

    objc_initWeak(&location, self);
    v11 = objc_alloc(MEMORY[0x277D75D40]);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __23__ICDocCamSpinner_show__block_invoke;
    v17[3] = &unk_278F92ED8;
    objc_copyWeak(&v18, &location);
    v12 = [v11 initWithDuration:0 curve:v17 animations:0.25];
    [(ICDocCamSpinner *)self setAnimator:v12];

    v13 = [(ICDocCamSpinner *)self animator];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __23__ICDocCamSpinner_show__block_invoke_2;
    v15[3] = &unk_278F93780;
    objc_copyWeak(&v16, &location);
    [v13 addCompletion:v15];

    v14 = [(ICDocCamSpinner *)self animator];
    [v14 startAnimation];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __23__ICDocCamSpinner_show__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained activityIndicator];
  [v1 setAlpha:1.0];
}

void __23__ICDocCamSpinner_show__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained activityIndicator];
  [v1 startAnimating];
}

- (void)hide
{
  v3 = [(ICDocCamSpinner *)self animator];

  if (v3)
  {
    v4 = [(ICDocCamSpinner *)self animator];
    [v4 stopAnimation:0];

    v5 = [(ICDocCamSpinner *)self animator];
    [v5 finishAnimationAtPosition:0];

    [(ICDocCamSpinner *)self setAnimator:0];
  }

  v6 = [(ICDocCamSpinner *)self activityIndicator];
  v7 = [v6 isAnimating];

  if (v7)
  {
    v8 = [MEMORY[0x277CBEAA8] date];
    v9 = [(ICDocCamSpinner *)self showDate];
    [v8 timeIntervalSinceDate:v9];
    v11 = v10;

    [(ICDocCamSpinner *)self minimumDuration];
    v12 = 0.0;
    if (v11 < v13)
    {
      [(ICDocCamSpinner *)self minimumDuration];
      v12 = v14 - v11;
    }

    objc_initWeak(&location, self);
    v15 = objc_alloc(MEMORY[0x277D75D40]);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __23__ICDocCamSpinner_hide__block_invoke;
    v21[3] = &unk_278F92ED8;
    objc_copyWeak(&v22, &location);
    v16 = [v15 initWithDuration:0 curve:v21 animations:0.25];
    [(ICDocCamSpinner *)self setAnimator:v16];

    v17 = [(ICDocCamSpinner *)self animator];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __23__ICDocCamSpinner_hide__block_invoke_2;
    v19[3] = &unk_278F93780;
    objc_copyWeak(&v20, &location);
    [v17 addCompletion:v19];

    v18 = [(ICDocCamSpinner *)self animator];
    [v18 startAnimationAfterDelay:v12];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

void __23__ICDocCamSpinner_hide__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained activityIndicator];
  [v1 setAlpha:0.0];
}

void __23__ICDocCamSpinner_hide__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained activityIndicator];
  [v1 stopAnimating];
}

@end