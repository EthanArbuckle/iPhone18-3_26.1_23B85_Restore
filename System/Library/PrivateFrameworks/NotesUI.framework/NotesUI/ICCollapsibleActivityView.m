@interface ICCollapsibleActivityView
- (BOOL)isAnimating;
- (ICCollapsibleActivityView)initWithCoder:(id)a3;
- (ICCollapsibleActivityView)initWithFrame:(CGRect)a3;
- (void)performSetup;
- (void)registerForTraitChanges;
- (void)setCollapsed:(BOOL)a3;
@end

@implementation ICCollapsibleActivityView

- (ICCollapsibleActivityView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ICCollapsibleActivityView;
  v3 = [(ICCollapsibleActivityView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICCollapsibleActivityView *)v3 commonInit];
  }

  return v4;
}

- (ICCollapsibleActivityView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICCollapsibleActivityView;
  v3 = [(ICCollapsibleActivityView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(ICCollapsibleActivityView *)v3 commonInit];
  }

  return v4;
}

- (void)registerForTraitChanges
{
  v3 = [MEMORY[0x1E69DD1B8] ic_traitsAffectingSize];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__ICCollapsibleActivityView_registerForTraitChanges__block_invoke;
  v5[3] = &unk_1E846B558;
  v5[4] = self;
  v4 = [(ICCollapsibleActivityView *)self registerForTraitChanges:v3 withHandler:v5];
}

uint64_t __52__ICCollapsibleActivityView_registerForTraitChanges__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isCollapsed];
  v3 = *(a1 + 32);

  return [v3 setCollapsed:v2];
}

- (void)setCollapsed:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = ICCollapsibleActivityView;
  [(ICCollapsibleBaseView *)&v7 setCollapsed:?];
  v5 = [(ICCollapsibleActivityView *)self activityIndicator];
  v6 = v5;
  if (a3)
  {
    [v5 stopAnimating];
  }

  else
  {
    [v5 startAnimating];
  }
}

- (void)performSetup
{
  v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  [(ICCollapsibleActivityView *)self setActivityIndicator:v3];

  v4 = [(ICCollapsibleActivityView *)self activityIndicator];
  [v4 setHidesWhenStopped:0];

  v5 = [(ICCollapsibleActivityView *)self activityIndicator];
  [(ICCollapsibleBaseView *)self performSetUpWithContentView:v5];
}

- (BOOL)isAnimating
{
  v2 = [(ICCollapsibleActivityView *)self activityIndicator];
  v3 = [v2 isAnimating];

  return v3;
}

@end