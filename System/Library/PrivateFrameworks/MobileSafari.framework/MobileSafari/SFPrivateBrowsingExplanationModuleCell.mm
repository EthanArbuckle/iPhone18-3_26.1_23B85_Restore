@interface SFPrivateBrowsingExplanationModuleCell
- (SFPrivateBrowsingExplanationModuleCell)initWithFrame:(CGRect)frame;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)_setExplanationView:(id)view animated:(BOOL)animated;
- (void)configureUsingBanner:(id)banner;
- (void)layoutSubviews;
@end

@implementation SFPrivateBrowsingExplanationModuleCell

- (SFPrivateBrowsingExplanationModuleCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = SFPrivateBrowsingExplanationModuleCell;
  v3 = [(SFPrivateBrowsingExplanationModuleCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [(UIVisualEffectView *)SFBannerBackgroundView sf_startPageCellBackgroundEffectViewWithShadow:1];
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v4;

    [(SFBannerBackgroundView *)v3->_backgroundView setBannerStyle:1];
    [(SFBannerBackgroundView *)v3->_backgroundView _setGroupName:0];
    [(SFBannerBackgroundView *)v3->_backgroundView _setContinuousCornerRadius:20.0];
    [(SFPrivateBrowsingExplanationModuleCell *)v3 setBackgroundView:v3->_backgroundView];
    [(SFPrivateBrowsingExplanationModuleCell *)v3 setOverrideUserInterfaceStyle:2];
    v6 = v3;
  }

  return v3;
}

- (void)configureUsingBanner:(id)banner
{
  bannerCopy = banner;
  [(SFPrivateBrowsingExplanationModuleCell *)self invalidateIntrinsicContentSize];
  explanationView = self->_explanationView;
  if (explanationView && (-[SFPrivateBrowsingExplanationModuleContentView banner](explanationView, "banner"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 privateBrowsingExplanationState], v7 = objc_msgSend(bannerCopy, "privateBrowsingExplanationState"), v5, v6 == v7))
  {
    [(SFPrivateBrowsingExplanationModuleContentView *)self->_explanationView setBanner:bannerCopy];
  }

  else
  {
    v8 = [[SFPrivateBrowsingExplanationModuleContentView alloc] initWithBanner:bannerCopy];
    [(SFPrivateBrowsingExplanationModuleCell *)self _setExplanationView:v8 animated:self->_explanationView != 0];
  }
}

- (void)_setExplanationView:(id)view animated:(BOOL)animated
{
  viewCopy = view;
  v8 = self->_explanationView;
  if (v8 != viewCopy)
  {
    objc_storeStrong(&self->_explanationView, view);
    contentView = [(SFPrivateBrowsingExplanationModuleCell *)self contentView];
    [contentView addSubview:viewCopy];

    [(SFPrivateBrowsingExplanationModuleCell *)self setNeedsLayout];
    if (animated)
    {
      v10 = MEMORY[0x1E69DD250];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __71__SFPrivateBrowsingExplanationModuleCell__setExplanationView_animated___block_invoke;
      v20[3] = &unk_1E721B400;
      v11 = viewCopy;
      v21 = v11;
      selfCopy = self;
      [v10 performWithoutAnimation:v20];
      v12 = MEMORY[0x1E69DD250];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __71__SFPrivateBrowsingExplanationModuleCell__setExplanationView_animated___block_invoke_2;
      v18[3] = &unk_1E721B360;
      v19 = v8;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __71__SFPrivateBrowsingExplanationModuleCell__setExplanationView_animated___block_invoke_3;
      v16[3] = &unk_1E721B510;
      v17 = v19;
      [v12 animateWithDuration:50331744 delay:v18 options:v16 animations:0.2 completion:0.0];
      v13 = MEMORY[0x1E69DD250];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __71__SFPrivateBrowsingExplanationModuleCell__setExplanationView_animated___block_invoke_4;
      v14[3] = &unk_1E721B360;
      v15 = v11;
      [v13 animateWithDuration:50331744 delay:v14 options:0 animations:0.5 completion:0.06];
    }

    else
    {
      [(SFPrivateBrowsingExplanationModuleContentView *)v8 removeFromSuperview];
    }
  }
}

uint64_t __71__SFPrivateBrowsingExplanationModuleCell__setExplanationView_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 layoutIfNeeded];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SFPrivateBrowsingExplanationModuleCell;
  [(SFPrivateBrowsingExplanationModuleCell *)&v4 layoutSubviews];
  contentView = [(SFPrivateBrowsingExplanationModuleCell *)self contentView];
  [contentView bounds];
  [(SFPrivateBrowsingExplanationModuleContentView *)self->_explanationView setFrame:?];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  v12.receiver = self;
  v12.super_class = SFPrivateBrowsingExplanationModuleCell;
  v4 = [(SFPrivateBrowsingExplanationModuleCell *)&v12 preferredLayoutAttributesFittingAttributes:attributes];
  [v4 bounds];
  [(SFPrivateBrowsingExplanationModuleContentView *)self->_explanationView setFrame:0.0, 0.0, CGRectGetWidth(v14), 2000.0];
  [(SFPrivateBrowsingExplanationModuleContentView *)self->_explanationView layoutIfNeeded];
  [(SFPrivateBrowsingExplanationModuleContentView *)self->_explanationView sizeToFit];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SFPrivateBrowsingExplanationModuleContentView *)self->_explanationView bounds];
  [v4 setFrame:{v6, v8, v10, CGRectGetHeight(v15)}];

  return v4;
}

@end