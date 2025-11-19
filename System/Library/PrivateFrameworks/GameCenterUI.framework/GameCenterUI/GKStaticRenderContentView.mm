@interface GKStaticRenderContentView
- (id)description;
- (void)layoutSubviews;
- (void)prepareToReuseSubviewsOfView:(id)a3;
- (void)setContentView:(id)a3;
- (void)setNeedsLayout;
@end

@implementation GKStaticRenderContentView

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(UIView *)self->_contentView recursiveDescription];
  v4 = [v2 stringWithFormat:@"DETACHED: %@", v3];

  return v4;
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  if (self->_contentView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_contentView, a3);
    [(UIView *)self->_contentView setBackgroundColor:0];
    [(UIView *)self->_contentView setOpaque:0];
    [(GKStaticRenderContentView *)self addSubview:self->_contentView];
    [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:1];
    v5 = v6;
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = GKStaticRenderContentView;
  [(GKStaticRenderContentView *)&v3 layoutSubviews];
  [(GKStaticRenderContentView *)self bounds];
  [(UIView *)self->_contentView setFrame:?];
  [(UIView *)self->_contentView updateConstraintsIfNeeded];
  [(UIView *)self->_contentView layoutIfNeeded];
  [(GKStaticRenderContentView *)self setNeedsDisplay];
}

- (void)setNeedsLayout
{
  v3.receiver = self;
  v3.super_class = GKStaticRenderContentView;
  [(GKStaticRenderContentView *)&v3 setNeedsLayout];
  [(UIView *)self->_contentView setNeedsLayout];
}

- (void)prepareToReuseSubviewsOfView:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 prepareForReuse];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [v4 subviews];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(GKStaticRenderContentView *)self prepareToReuseSubviewsOfView:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end