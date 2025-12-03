@interface NUActivityIndicatorLoadingView
- (NUActivityIndicatorLoadingView)initWithActivityIndicatorStyle:(int64_t)style;
- (NUActivityIndicatorLoadingView)initWithText:(id)text activityIndicatorStyle:(int64_t)style;
- (void)layoutSubviews;
- (void)loadingViewStartAnimating;
- (void)loadingViewStopAnimating;
@end

@implementation NUActivityIndicatorLoadingView

- (NUActivityIndicatorLoadingView)initWithActivityIndicatorStyle:(int64_t)style
{
  v22.receiver = self;
  v22.super_class = NUActivityIndicatorLoadingView;
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [(NUActivityIndicatorLoadingView *)&v22 initWithFrame:*MEMORY[0x277CBF3A0], v5, v6, v7];
  if (v8)
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(NUActivityIndicatorLoadingView *)v8 setBackgroundColor:systemBackgroundColor];

    v10 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:style];
    activityIndicatorView = v8->_activityIndicatorView;
    v8->_activityIndicatorView = v10;

    [(UIActivityIndicatorView *)v8->_activityIndicatorView setHidesWhenStopped:1];
    v12 = MEMORY[0x277D75348];
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.45];
    v14 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
    v15 = [v12 nu_dynamicColor:v13 withDarkStyleVariant:v14];

    [(UIActivityIndicatorView *)v8->_activityIndicatorView setColor:v15];
    [(NUActivityIndicatorLoadingView *)v8 addSubview:v8->_activityIndicatorView];
    v16 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
    label = v8->_label;
    v8->_label = v16;

    [(UILabel *)v8->_label setTextAlignment:1];
    [(UILabel *)v8->_label setNumberOfLines:1];
    v18 = [MEMORY[0x277D74300] systemFontOfSize:11.0 weight:*MEMORY[0x277D74418]];
    [(UILabel *)v8->_label setFont:v18];

    v19 = NUBundle();
    v20 = [v19 localizedStringForKey:@"LOADING" value:&stru_286E03B58 table:0];
    [(UILabel *)v8->_label setText:v20];

    [(UILabel *)v8->_label setTextColor:v15];
    [(UILabel *)v8->_label setAlpha:0.0];
    [(NUActivityIndicatorLoadingView *)v8 addSubview:v8->_label];
  }

  return v8;
}

- (NUActivityIndicatorLoadingView)initWithText:(id)text activityIndicatorStyle:(int64_t)style
{
  textCopy = text;
  v7 = [(NUActivityIndicatorLoadingView *)self initWithActivityIndicatorStyle:style];
  v8 = v7;
  if (v7)
  {
    [(UILabel *)v7->_label setText:textCopy];
  }

  return v8;
}

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = NUActivityIndicatorLoadingView;
  [(NUActivityIndicatorLoadingView *)&v22 layoutSubviews];
  [(NUActivityIndicatorLoadingView *)self center];
  v4 = v3;
  v6 = v5;
  activityIndicatorView = [(NUActivityIndicatorLoadingView *)self activityIndicatorView];
  [activityIndicatorView setCenter:{v4, v6}];

  label = [(NUActivityIndicatorLoadingView *)self label];
  [label sizeToFit];

  label2 = [(NUActivityIndicatorLoadingView *)self label];
  [label2 frame];
  v11 = v10;
  v13 = v12;

  [(NUActivityIndicatorLoadingView *)self frame];
  v15 = (v14 - v11) * 0.5;
  [(NUActivityIndicatorLoadingView *)self frame];
  v17 = (v16 - v13) * 0.5;
  activityIndicatorView2 = [(NUActivityIndicatorLoadingView *)self activityIndicatorView];
  [activityIndicatorView2 bounds];
  v20 = v17 + v19;

  label3 = [(NUActivityIndicatorLoadingView *)self label];
  [label3 setFrame:{v15, v20, v11, v13}];
}

- (void)loadingViewStartAnimating
{
  activityIndicatorView = [(NUActivityIndicatorLoadingView *)self activityIndicatorView];
  isAnimating = [activityIndicatorView isAnimating];

  if ((isAnimating & 1) == 0)
  {
    activityIndicatorView2 = [(NUActivityIndicatorLoadingView *)self activityIndicatorView];
    [activityIndicatorView2 startAnimating];

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __59__NUActivityIndicatorLoadingView_loadingViewStartAnimating__block_invoke;
    v6[3] = &unk_2799A3498;
    v6[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:0x10000 delay:v6 options:0 animations:0.5 completion:0.0];
  }
}

void __59__NUActivityIndicatorLoadingView_loadingViewStartAnimating__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) label];
  [v1 setAlpha:1.0];
}

- (void)loadingViewStopAnimating
{
  activityIndicatorView = [(NUActivityIndicatorLoadingView *)self activityIndicatorView];
  isAnimating = [activityIndicatorView isAnimating];

  if (isAnimating)
  {
    activityIndicatorView2 = [(NUActivityIndicatorLoadingView *)self activityIndicatorView];
    [activityIndicatorView2 stopAnimating];

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __58__NUActivityIndicatorLoadingView_loadingViewStopAnimating__block_invoke;
    v6[3] = &unk_2799A3498;
    v6[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:0x20000 delay:v6 options:0 animations:0.5 completion:0.0];
  }
}

void __58__NUActivityIndicatorLoadingView_loadingViewStopAnimating__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) label];
  [v1 setAlpha:0.0];
}

@end