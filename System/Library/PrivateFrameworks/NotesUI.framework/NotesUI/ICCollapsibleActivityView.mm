@interface ICCollapsibleActivityView
- (BOOL)isAnimating;
- (ICCollapsibleActivityView)initWithCoder:(id)coder;
- (ICCollapsibleActivityView)initWithFrame:(CGRect)frame;
- (void)performSetup;
- (void)registerForTraitChanges;
- (void)setCollapsed:(BOOL)collapsed;
@end

@implementation ICCollapsibleActivityView

- (ICCollapsibleActivityView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ICCollapsibleActivityView;
  v3 = [(ICCollapsibleActivityView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICCollapsibleActivityView *)v3 commonInit];
  }

  return v4;
}

- (ICCollapsibleActivityView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = ICCollapsibleActivityView;
  v3 = [(ICCollapsibleActivityView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(ICCollapsibleActivityView *)v3 commonInit];
  }

  return v4;
}

- (void)registerForTraitChanges
{
  ic_traitsAffectingSize = [MEMORY[0x1E69DD1B8] ic_traitsAffectingSize];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__ICCollapsibleActivityView_registerForTraitChanges__block_invoke;
  v5[3] = &unk_1E846B558;
  v5[4] = self;
  v4 = [(ICCollapsibleActivityView *)self registerForTraitChanges:ic_traitsAffectingSize withHandler:v5];
}

uint64_t __52__ICCollapsibleActivityView_registerForTraitChanges__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isCollapsed];
  v3 = *(a1 + 32);

  return [v3 setCollapsed:v2];
}

- (void)setCollapsed:(BOOL)collapsed
{
  v7.receiver = self;
  v7.super_class = ICCollapsibleActivityView;
  [(ICCollapsibleBaseView *)&v7 setCollapsed:?];
  activityIndicator = [(ICCollapsibleActivityView *)self activityIndicator];
  v6 = activityIndicator;
  if (collapsed)
  {
    [activityIndicator stopAnimating];
  }

  else
  {
    [activityIndicator startAnimating];
  }
}

- (void)performSetup
{
  v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  [(ICCollapsibleActivityView *)self setActivityIndicator:v3];

  activityIndicator = [(ICCollapsibleActivityView *)self activityIndicator];
  [activityIndicator setHidesWhenStopped:0];

  activityIndicator2 = [(ICCollapsibleActivityView *)self activityIndicator];
  [(ICCollapsibleBaseView *)self performSetUpWithContentView:activityIndicator2];
}

- (BOOL)isAnimating
{
  activityIndicator = [(ICCollapsibleActivityView *)self activityIndicator];
  isAnimating = [activityIndicator isAnimating];

  return isAnimating;
}

@end