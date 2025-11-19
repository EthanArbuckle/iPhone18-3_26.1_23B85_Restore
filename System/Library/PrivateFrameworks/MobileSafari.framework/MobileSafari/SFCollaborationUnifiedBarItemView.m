@interface SFCollaborationUnifiedBarItemView
- (SFCollaborationUnifiedBarItemView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setCollaborationButton:(id)a3;
@end

@implementation SFCollaborationUnifiedBarItemView

- (SFCollaborationUnifiedBarItemView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SFCollaborationUnifiedBarItemView;
  v3 = [(SFUnifiedBarItemView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (void)setCollaborationButton:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  collaborationButton = self->_collaborationButton;
  if (collaborationButton != v5)
  {
    [(_SWCollaborationButtonView *)collaborationButton removeFromSuperview];
    objc_storeStrong(&self->_collaborationButton, a3);
    if (v5)
    {
      [(_SWCollaborationButtonView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      v7 = [(SFUnifiedBarItemView *)self contentView];
      [v7 addSubview:v5];
      v15 = MEMORY[0x1E696ACD8];
      v8 = [(_SWCollaborationButtonView *)v5 centerXAnchor];
      v9 = [v7 centerXAnchor];
      v10 = [v8 constraintEqualToAnchor:v9];
      v16[0] = v10;
      v11 = [(_SWCollaborationButtonView *)v5 centerYAnchor];
      v12 = [v7 centerYAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];
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