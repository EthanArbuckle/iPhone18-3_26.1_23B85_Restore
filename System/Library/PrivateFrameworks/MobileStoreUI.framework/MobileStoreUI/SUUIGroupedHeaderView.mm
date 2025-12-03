@interface SUUIGroupedHeaderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUIGroupedHeaderView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SUUIGroupedHeaderView

- (SUUIGroupedHeaderView)initWithFrame:(CGRect)frame
{
  v20.receiver = self;
  v20.super_class = SUUIGroupedHeaderView;
  v3 = [(SUUIGroupedHeaderView *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] colorWithWhite:0.94 alpha:1.0];
    [(SUUIGroupedHeaderView *)v3 setBackgroundColor:v4];

    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v5;

    v7 = v3->_titleLabel;
    v8 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
    [(UILabel *)v7 setFont:v8];

    v9 = v3->_titleLabel;
    v10 = [MEMORY[0x277D75348] colorWithWhite:0.43 alpha:1.0];
    [(UILabel *)v9 setTextColor:v10];

    [(SUUIGroupedHeaderView *)v3 addSubview:v3->_titleLabel];
    v11 = objc_alloc_init(MEMORY[0x277D75D18]);
    topBorder = v3->_topBorder;
    v3->_topBorder = v11;

    v13 = v3->_topBorder;
    v14 = [MEMORY[0x277D75348] colorWithWhite:0.85 alpha:1.0];
    [(UIView *)v13 setBackgroundColor:v14];

    [(SUUIGroupedHeaderView *)v3 addSubview:v3->_topBorder];
    v15 = objc_alloc_init(MEMORY[0x277D75D18]);
    botBorder = v3->_botBorder;
    v3->_botBorder = v15;

    v17 = v3->_botBorder;
    v18 = [MEMORY[0x277D75348] colorWithWhite:0.85 alpha:1.0];
    [(UIView *)v17 setBackgroundColor:v18];

    [(SUUIGroupedHeaderView *)v3 addSubview:v3->_botBorder];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  text = [(UILabel *)self->_titleLabel text];
  v6 = [text length];

  v7 = 35.0;
  if (v6)
  {
    v7 = width;
  }

  v8 = 56.0;
  if (!v6)
  {
    v8 = height;
  }

  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = SUUIGroupedHeaderView;
  [(SUUIGroupedHeaderView *)&v21 layoutSubviews];
  [(SUUIGroupedHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UILabel *)self->_titleLabel sizeToFit];
  [(UILabel *)self->_titleLabel frame];
  v12 = v11;
  v22.origin.x = v4;
  v22.origin.y = v6;
  v22.size.width = v8;
  v22.size.height = v10;
  MaxY = CGRectGetMaxY(v22);
  [(UILabel *)self->_titleLabel setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v4 + 15.0, MaxY - v12 + -5.0, v8 + 30.0, v12, v4, v6, v8, v10)];
  if (storeShouldReverseLayoutDirection())
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  [(UILabel *)self->_titleLabel setTextAlignment:v14];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v17 = 1.0 / v16;

  [(UIView *)self->_topBorder setFrame:v4, v6, v8, v17];
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];
  v20 = 1.0 / v19;

  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  [(UIView *)self->_botBorder setFrame:v4, CGRectGetMaxY(v23) - v20, v8, v20];
}

@end