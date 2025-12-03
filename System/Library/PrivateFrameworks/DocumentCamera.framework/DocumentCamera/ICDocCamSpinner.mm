@interface ICDocCamSpinner
- (ICDocCamSpinner)initWithView:(id)view minimumDuration:(double)duration;
- (void)hide;
- (void)show;
@end

@implementation ICDocCamSpinner

- (ICDocCamSpinner)initWithView:(id)view minimumDuration:(double)duration
{
  viewCopy = view;
  v20.receiver = self;
  v20.super_class = ICDocCamSpinner;
  v7 = [(ICDocCamSpinner *)&v20 init];
  v8 = v7;
  if (v7)
  {
    showDate = v7->_showDate;
    v7->_showDate = 0;

    v8->_minimumDuration = duration;
    v10 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    activityIndicator = v8->_activityIndicator;
    v8->_activityIndicator = v10;

    [(UIActivityIndicatorView *)v8->_activityIndicator setHidden:1];
    [(UIActivityIndicatorView *)v8->_activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    [viewCopy addSubview:v8->_activityIndicator];
    array = [MEMORY[0x277CBEB18] array];
    centerXAnchor = [(UIActivityIndicatorView *)v8->_activityIndicator centerXAnchor];
    centerXAnchor2 = [viewCopy centerXAnchor];
    v15 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [array addObject:v15];

    centerYAnchor = [(UIActivityIndicatorView *)v8->_activityIndicator centerYAnchor];
    centerYAnchor2 = [viewCopy centerYAnchor];
    v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [array addObject:v18];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }

  return v8;
}

- (void)show
{
  date = [MEMORY[0x277CBEAA8] date];
  [(ICDocCamSpinner *)self setShowDate:date];

  animator = [(ICDocCamSpinner *)self animator];

  if (animator)
  {
    animator2 = [(ICDocCamSpinner *)self animator];
    [animator2 stopAnimation:0];

    animator3 = [(ICDocCamSpinner *)self animator];
    [animator3 finishAnimationAtPosition:0];

    [(ICDocCamSpinner *)self setAnimator:0];
  }

  activityIndicator = [(ICDocCamSpinner *)self activityIndicator];
  isAnimating = [activityIndicator isAnimating];

  if ((isAnimating & 1) == 0)
  {
    activityIndicator2 = [(ICDocCamSpinner *)self activityIndicator];
    [activityIndicator2 setAlpha:0.0];

    activityIndicator3 = [(ICDocCamSpinner *)self activityIndicator];
    [activityIndicator3 setHidden:0];

    objc_initWeak(&location, self);
    v11 = objc_alloc(MEMORY[0x277D75D40]);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __23__ICDocCamSpinner_show__block_invoke;
    v17[3] = &unk_278F92ED8;
    objc_copyWeak(&v18, &location);
    v12 = [v11 initWithDuration:0 curve:v17 animations:0.25];
    [(ICDocCamSpinner *)self setAnimator:v12];

    animator4 = [(ICDocCamSpinner *)self animator];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __23__ICDocCamSpinner_show__block_invoke_2;
    v15[3] = &unk_278F93780;
    objc_copyWeak(&v16, &location);
    [animator4 addCompletion:v15];

    animator5 = [(ICDocCamSpinner *)self animator];
    [animator5 startAnimation];

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
  animator = [(ICDocCamSpinner *)self animator];

  if (animator)
  {
    animator2 = [(ICDocCamSpinner *)self animator];
    [animator2 stopAnimation:0];

    animator3 = [(ICDocCamSpinner *)self animator];
    [animator3 finishAnimationAtPosition:0];

    [(ICDocCamSpinner *)self setAnimator:0];
  }

  activityIndicator = [(ICDocCamSpinner *)self activityIndicator];
  isAnimating = [activityIndicator isAnimating];

  if (isAnimating)
  {
    date = [MEMORY[0x277CBEAA8] date];
    showDate = [(ICDocCamSpinner *)self showDate];
    [date timeIntervalSinceDate:showDate];
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

    animator4 = [(ICDocCamSpinner *)self animator];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __23__ICDocCamSpinner_hide__block_invoke_2;
    v19[3] = &unk_278F93780;
    objc_copyWeak(&v20, &location);
    [animator4 addCompletion:v19];

    animator5 = [(ICDocCamSpinner *)self animator];
    [animator5 startAnimationAfterDelay:v12];

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