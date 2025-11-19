@interface SFSizeObservingView
- (SFSizeObservingView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setObservedHeightDimension:(id)a3;
@end

@implementation SFSizeObservingView

- (SFSizeObservingView)initWithFrame:(CGRect)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = SFSizeObservingView;
  v3 = [(SFSizeObservingView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFSizeObservingView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFSizeObservingView *)v4 setHidden:1];
    [(SFSizeObservingView *)v4 setUserInteractionEnabled:0];
    v5 = MEMORY[0x1E696ACD8];
    v6 = [(SFSizeObservingView *)v4 heightAnchor];
    v7 = [v6 constraintEqualToConstant:0.0];
    LODWORD(v8) = 1132068864;
    v9 = [v7 sf_withPriority:v8];
    v18[0] = v9;
    v10 = [(SFSizeObservingView *)v4 widthAnchor];
    v11 = [v10 constraintEqualToConstant:0.0];
    LODWORD(v12) = 1132068864;
    v13 = [v11 sf_withPriority:v12];
    v18[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    [v5 activateConstraints:v14];

    v15 = v4;
  }

  return v4;
}

- (void)setObservedHeightDimension:(id)a3
{
  v10 = a3;
  v5 = [(SFSizeObservingView *)self observedHeightDimension];
  v6 = WBSIsEqual();

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_observedHeightDimension, a3);
    [(NSLayoutConstraint *)self->_heightConstraint setActive:0];
    v7 = [(SFSizeObservingView *)self heightAnchor];
    v8 = [v7 constraintEqualToAnchor:v10];
    heightConstraint = self->_heightConstraint;
    self->_heightConstraint = v8;

    [(NSLayoutConstraint *)self->_heightConstraint setActive:1];
    [(SFSizeObservingView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = SFSizeObservingView;
  [(SFSizeObservingView *)&v9 layoutSubviews];
  [(SFSizeObservingView *)self bounds];
  v5 = v3;
  v6 = v4;
  if (self->_lastLayoutSize.width != v3 || self->_lastLayoutSize.height != v4)
  {
    sizeChangeCallback = self->_sizeChangeCallback;
    if (sizeChangeCallback)
    {
      sizeChangeCallback[2](v3, v4);
    }

    self->_lastLayoutSize.width = v5;
    self->_lastLayoutSize.height = v6;
  }
}

@end