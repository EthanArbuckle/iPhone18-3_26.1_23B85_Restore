@interface SUUIScrollingTabBarBackgroundView
- (void)_updateTopHairlineColor;
- (void)layoutSubviews;
- (void)setBackdropBarGroupName:(id)name;
- (void)setShowsBackdrop:(BOOL)backdrop;
- (void)setShowsBottomHairline:(BOOL)hairline;
- (void)setShowsTopHairline:(BOOL)hairline;
- (void)setUsesOpaqueColorForTopHairline:(BOOL)hairline;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SUUIScrollingTabBarBackgroundView

- (void)layoutSubviews
{
  v22.receiver = self;
  v22.super_class = SUUIScrollingTabBarBackgroundView;
  [(SUUIScrollingTabBarBackgroundView *)&v22 layoutSubviews];
  [(SUUIScrollingTabBarBackgroundView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  traitCollection = [(SUUIScrollingTabBarBackgroundView *)self traitCollection];
  [traitCollection displayScale];
  v13 = v12;

  if (v13 < 0.00000011920929)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v13 = v15;
  }

  backdropView = self->_backdropView;
  if (backdropView)
  {
    [(_UIBackdropView *)backdropView setFrame:v4, v6, v8, v10];
  }

  v17 = 1.0 / v13;
  if (self->_topHairlineView)
  {
    v23.origin.x = v4;
    v23.origin.y = v6;
    v23.size.width = v8;
    v23.size.height = v10;
    MinX = CGRectGetMinX(v23);
    v24.origin.x = v4;
    v24.origin.y = v6;
    v24.size.width = v8;
    v24.size.height = v10;
    v19 = CGRectGetMinY(v24) - v17;
    v25.origin.x = v4;
    v25.origin.y = v6;
    v25.size.width = v8;
    v25.size.height = v10;
    [(UIView *)self->_topHairlineView setFrame:MinX, v19, CGRectGetWidth(v25), v17];
  }

  if (self->_bottomHairlineView)
  {
    v26.origin.x = v4;
    v26.origin.y = v6;
    v26.size.width = v8;
    v26.size.height = v10;
    v20 = CGRectGetMinX(v26);
    v27.origin.x = v4;
    v27.origin.y = v6;
    v27.size.width = v8;
    v27.size.height = v10;
    v21 = CGRectGetMaxY(v27) - v17;
    v28.origin.x = v4;
    v28.origin.y = v6;
    v28.size.width = v8;
    v28.size.height = v10;
    [(UIView *)self->_bottomHairlineView setFrame:v20, v21, CGRectGetWidth(v28), v17];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = SUUIScrollingTabBarBackgroundView;
  changeCopy = change;
  [(SUUIScrollingTabBarBackgroundView *)&v10 traitCollectionDidChange:changeCopy];
  [changeCopy displayScale];
  v6 = v5;

  traitCollection = [(SUUIScrollingTabBarBackgroundView *)self traitCollection];
  [traitCollection displayScale];
  v9 = vabdd_f64(v6, v8);

  if (v9 > 0.00000011920929)
  {
    [(SUUIScrollingTabBarBackgroundView *)self setNeedsLayout];
  }
}

- (void)setBackdropBarGroupName:(id)name
{
  backdropView = name;
  v5 = backdropView;
  if (self->_backdropBarGroupName != backdropView)
  {
    v8 = backdropView;
    v6 = [(_UIBackdropView *)backdropView copy];
    backdropBarGroupName = self->_backdropBarGroupName;
    self->_backdropBarGroupName = v6;

    v5 = v8;
    backdropView = self->_backdropView;
    if (backdropView)
    {
      backdropView = [(_UIBackdropView *)backdropView setGroupName:v8];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](backdropView, v5);
}

- (void)setShowsBackdrop:(BOOL)backdrop
{
  if (self->_showsBackdrop != backdrop)
  {
    self->_showsBackdrop = backdrop;
    if (backdrop)
    {
      if (self->_backdropView)
      {
        v4 = 0;
      }

      else
      {
        v5 = objc_alloc(MEMORY[0x277D75DE8]);
        [(SUUIScrollingTabBarBackgroundView *)self bounds];
        v6 = [v5 initWithFrame:2010 privateStyle:?];
        backdropView = self->_backdropView;
        self->_backdropView = v6;

        [(_UIBackdropView *)self->_backdropView setUserInteractionEnabled:0];
        if (self->_backdropBarGroupName)
        {
          [(_UIBackdropView *)self->_backdropView setGroupName:?];
        }

        [(SUUIScrollingTabBarBackgroundView *)self insertSubview:self->_backdropView atIndex:0];
        [(SUUIScrollingTabBarBackgroundView *)self setNeedsLayout];
        v4 = !self->_showsBackdrop;
      }
    }

    else
    {
      v4 = 1;
    }

    v8 = self->_backdropView;

    [(_UIBackdropView *)v8 setHidden:v4];
  }
}

- (void)setShowsBottomHairline:(BOOL)hairline
{
  if (self->_showsBottomHairline != hairline)
  {
    self->_showsBottomHairline = hairline;
    if (hairline)
    {
      if (self->_bottomHairlineView)
      {
        v4 = 0;
      }

      else
      {
        v5 = objc_alloc(MEMORY[0x277D75D18]);
        v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        bottomHairlineView = self->_bottomHairlineView;
        self->_bottomHairlineView = v6;

        v8 = self->_bottomHairlineView;
        _barHairlineShadowColor = [MEMORY[0x277D75348] _barHairlineShadowColor];
        [(UIView *)v8 setBackgroundColor:_barHairlineShadowColor];

        [(UIView *)self->_bottomHairlineView setUserInteractionEnabled:0];
        [(SUUIScrollingTabBarBackgroundView *)self addSubview:self->_bottomHairlineView];
        [(SUUIScrollingTabBarBackgroundView *)self setNeedsLayout];
        v4 = !self->_showsBottomHairline;
      }
    }

    else
    {
      v4 = 1;
    }

    v10 = self->_bottomHairlineView;

    [(UIView *)v10 setHidden:v4];
  }
}

- (void)setShowsTopHairline:(BOOL)hairline
{
  if (self->_showsTopHairline != hairline)
  {
    self->_showsTopHairline = hairline;
    if (hairline)
    {
      if (self->_topHairlineView)
      {
        v4 = 0;
      }

      else
      {
        v5 = objc_alloc(MEMORY[0x277D75D18]);
        v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        topHairlineView = self->_topHairlineView;
        self->_topHairlineView = v6;

        [(UIView *)self->_topHairlineView setUserInteractionEnabled:0];
        [(SUUIScrollingTabBarBackgroundView *)self _updateTopHairlineColor];
        [(SUUIScrollingTabBarBackgroundView *)self addSubview:self->_topHairlineView];
        [(SUUIScrollingTabBarBackgroundView *)self setNeedsLayout];
        v4 = !self->_showsTopHairline;
      }
    }

    else
    {
      v4 = 1;
    }

    v8 = self->_topHairlineView;

    [(UIView *)v8 setHidden:v4];
  }
}

- (void)setUsesOpaqueColorForTopHairline:(BOOL)hairline
{
  if (self->_usesOpaqueColorForTopHairline != hairline)
  {
    self->_usesOpaqueColorForTopHairline = hairline;
    [(SUUIScrollingTabBarBackgroundView *)self _updateTopHairlineColor];
  }
}

- (void)_updateTopHairlineColor
{
  if (self->_usesOpaqueColorForTopHairline)
  {
    [MEMORY[0x277D75348] colorWithWhite:0.615686275 alpha:1.0];
  }

  else
  {
    [MEMORY[0x277D75348] _barHairlineShadowColor];
  }
  v3 = ;
  [(UIView *)self->_topHairlineView setBackgroundColor:v3];
}

@end