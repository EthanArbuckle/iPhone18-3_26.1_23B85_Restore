@interface SUUITabBarBackgroundView
- (SUUITabBarBackgroundView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setBackdropGroupName:(id)name;
- (void)setBackdropStyle:(int64_t)style;
@end

@implementation SUUITabBarBackgroundView

- (SUUITabBarBackgroundView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = SUUITabBarBackgroundView;
  v3 = [(SUUITabBarBackgroundView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SUUITabBarBackgroundView *)v3 setAutoresizingMask:18];
    [(SUUITabBarBackgroundView *)v4 setUserInteractionEnabled:0];
    v5 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:10060];
    backdropView = v4->_backdropView;
    v4->_backdropView = v5;

    [(SUUITabBarBackgroundView *)v4 addSubview:v4->_backdropView];
    v7 = objc_alloc_init(MEMORY[0x277D75D18]);
    borderView = v4->_borderView;
    v4->_borderView = v7;

    v9 = v4->_borderView;
    _barHairlineShadowColor = [MEMORY[0x277D75348] _barHairlineShadowColor];
    [(UIView *)v9 setBackgroundColor:_barHairlineShadowColor];

    [(SUUITabBarBackgroundView *)v4 addSubview:v4->_borderView];
  }

  return v4;
}

- (void)setBackdropGroupName:(id)name
{
  nameCopy = name;
  backdropGroupName = [(SUUITabBarBackgroundView *)self backdropGroupName];
  if (backdropGroupName != nameCopy && ([backdropGroupName isEqualToString:nameCopy] & 1) == 0)
  {
    [(_UIBackdropView *)self->_backdropView setGroupName:nameCopy];
  }
}

- (void)setBackdropStyle:(int64_t)style
{
  borderView = self->_borderView;
  if (style == 11050)
  {
    [MEMORY[0x277D75348] _barStyleBlackHairlineShadowColor];
  }

  else
  {
    [MEMORY[0x277D75348] _barHairlineShadowColor];
  }
  v6 = ;
  [(UIView *)borderView setBackgroundColor:v6];

  backdropView = self->_backdropView;

  [(_UIBackdropView *)backdropView transitionToPrivateStyle:style];
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = SUUITabBarBackgroundView;
  [(SUUITabBarBackgroundView *)&v8 layoutSubviews];
  [(SUUITabBarBackgroundView *)self bounds];
  v4 = v3;
  [(_UIBackdropView *)self->_backdropView setFrame:?];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v7 = 1.0 / v6;

  [(UIView *)self->_borderView setFrame:0.0, 0.0, v4, v7];
}

@end