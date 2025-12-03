@interface SFCollaborationUnifiedBarItemView
- (SFCollaborationUnifiedBarItemView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setCollaborationButton:(id)button;
@end

@implementation SFCollaborationUnifiedBarItemView

- (SFCollaborationUnifiedBarItemView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = SFCollaborationUnifiedBarItemView;
  v3 = [(SFUnifiedBarItemView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      [(UIView *)v3 safari_setFlexibleGlassBackgroundEnabled:1];
    }

    v4 = v3;
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SFCollaborationUnifiedBarItemView;
  [(SFUnifiedBarItemView *)&v3 layoutSubviews];
  [(SFCollaborationUnifiedBarItemView *)self bounds];
  [(SFCollaborationUnifiedBarItemView *)self _setContinuousCornerRadius:CGRectGetHeight(v4) * 0.5];
}

- (void)setCollaborationButton:(id)button
{
  v16[2] = *MEMORY[0x1E69E9840];
  buttonCopy = button;
  collaborationButton = self->_collaborationButton;
  if (collaborationButton != buttonCopy)
  {
    [(_SWCollaborationButtonView *)collaborationButton removeFromSuperview];
    objc_storeStrong(&self->_collaborationButton, button);
    if (buttonCopy)
    {
      [(_SWCollaborationButtonView *)buttonCopy setTranslatesAutoresizingMaskIntoConstraints:0];
      contentView = [(SFUnifiedBarItemView *)self contentView];
      [contentView addSubview:buttonCopy];
      v15 = MEMORY[0x1E696ACD8];
      centerXAnchor = [(_SWCollaborationButtonView *)buttonCopy centerXAnchor];
      centerXAnchor2 = [contentView centerXAnchor];
      v10 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      v16[0] = v10;
      centerYAnchor = [(_SWCollaborationButtonView *)buttonCopy centerYAnchor];
      centerYAnchor2 = [contentView centerYAnchor];
      v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v16[1] = v13;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
      [v15 activateConstraints:v14];

      [(SFCollaborationUnifiedBarItemView *)self setPointerStyleProvider:&__block_literal_global_58];
    }
  }
}

id __60__SFCollaborationUnifiedBarItemView_setCollaborationButton___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E69DCDD0];
  v5 = MEMORY[0x1E69DCDC8];
  v6 = a3;
  v7 = [v5 sf_shapeForToolbarButton:a2];
  v8 = [v4 styleWithEffect:v6 shape:v7];

  return v8;
}

@end