@interface ICDocCamThumbnailBadgeDecorationView
+ (CGSize)sizeThatFitsCount:(int64_t)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (ICDocCamThumbnailBadgeDecorationView)initWithFrame:(CGRect)a3;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation ICDocCamThumbnailBadgeDecorationView

+ (CGSize)sizeThatFitsCount:(int64_t)a3
{
  if (sizeThatFitsCount__onceToken != -1)
  {
    +[ICDocCamThumbnailBadgeDecorationView sizeThatFitsCount:];
  }

  v5 = [a1 localizedStringForCount:a3];
  v6 = [sizeThatFitsCount__metricsView badgeLabel];
  [v6 setText:v5];

  v7 = sizeThatFitsCount__metricsView;
  v8 = *MEMORY[0x277CBF3A8];
  v9 = *(MEMORY[0x277CBF3A8] + 8);

  [v7 sizeThatFits:{v8, v9}];
  result.height = v11;
  result.width = v10;
  return result;
}

void __58__ICDocCamThumbnailBadgeDecorationView_sizeThatFitsCount___block_invoke()
{
  v0 = objc_alloc_init(ICDocCamThumbnailBadgeDecorationView);
  v1 = sizeThatFitsCount__metricsView;
  sizeThatFitsCount__metricsView = v0;
}

- (ICDocCamThumbnailBadgeDecorationView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = ICDocCamThumbnailBadgeDecorationView;
  v3 = [(ICDocCamThumbnailBadgeDecorationView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    badgeLabel = v3->_badgeLabel;
    v3->_badgeLabel = v4;

    v6 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v3->_badgeLabel setTextColor:v6];

    [(UILabel *)v3->_badgeLabel setTextAlignment:1];
    [(UILabel *)v3->_badgeLabel setClipsToBounds:1];
    v7 = [(ICDocCamThumbnailBadgeDecorationView *)v3 tintColor];
    [(UILabel *)v3->_badgeLabel setBackgroundColor:v7];
  }

  return v3;
}

- (void)applyLayoutAttributes:(id)a3
{
  v9.receiver = self;
  v9.super_class = ICDocCamThumbnailBadgeDecorationView;
  v4 = a3;
  [(ICDocCamThumbnailBadgeDecorationView *)&v9 applyLayoutAttributes:v4];
  v5 = objc_opt_class();
  v6 = [v4 indexPath];

  v7 = [v5 localizedStringForCount:{objc_msgSend(v6, "item") + 1}];
  v8 = [(ICDocCamThumbnailBadgeDecorationView *)self badgeLabel];
  [v8 setText:v7];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICDocCamThumbnailBadgeDecorationView;
  v4 = [(ICDocCamThumbnailBadgeDecorationView *)&v6 preferredLayoutAttributesFittingAttributes:a3];
  [(ICDocCamThumbnailBadgeDecorationView *)self sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  [v4 setSize:?];

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = [(ICDocCamThumbnailBadgeDecorationView *)self badgeLabel:a3.width];
  [v3 sizeThatFits:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  v5 = v4;
  v7 = v6;

  v8 = v5 + 8.0;
  v9 = v7 + 4.0;
  if (v5 + 8.0 < v7 + 4.0)
  {
    v8 = v7 + 4.0;
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v3 = [(ICDocCamThumbnailBadgeDecorationView *)self badgeLabel];
  v4 = [v3 superview];

  if (v4 != self)
  {
    v5 = [(ICDocCamThumbnailBadgeDecorationView *)self badgeLabel];
    [(ICDocCamThumbnailBadgeDecorationView *)self addSubview:v5];
  }

  [(ICDocCamThumbnailBadgeDecorationView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(ICDocCamThumbnailBadgeDecorationView *)self badgeLabel];
  [v14 setFrame:{v7, v9, v11, v13}];

  [(ICDocCamThumbnailBadgeDecorationView *)self bounds];
  Width = CGRectGetWidth(v21);
  [(ICDocCamThumbnailBadgeDecorationView *)self bounds];
  Height = CGRectGetHeight(v22);
  if (Width >= Height)
  {
    Height = Width;
  }

  v17 = ceil(Height * 0.5);
  v19 = [(ICDocCamThumbnailBadgeDecorationView *)self badgeLabel];
  v18 = [v19 layer];
  [v18 setCornerRadius:v17];
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = ICDocCamThumbnailBadgeDecorationView;
  [(ICDocCamThumbnailBadgeDecorationView *)&v5 tintColorDidChange];
  v3 = [(ICDocCamThumbnailBadgeDecorationView *)self tintColor];
  v4 = [(ICDocCamThumbnailBadgeDecorationView *)self badgeLabel];
  [v4 setBackgroundColor:v3];
}

@end