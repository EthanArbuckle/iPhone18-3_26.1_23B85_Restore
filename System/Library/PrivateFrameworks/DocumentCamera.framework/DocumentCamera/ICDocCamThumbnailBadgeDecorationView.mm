@interface ICDocCamThumbnailBadgeDecorationView
+ (CGSize)sizeThatFitsCount:(int64_t)count;
- (CGSize)sizeThatFits:(CGSize)fits;
- (ICDocCamThumbnailBadgeDecorationView)initWithFrame:(CGRect)frame;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)tintColorDidChange;
@end

@implementation ICDocCamThumbnailBadgeDecorationView

+ (CGSize)sizeThatFitsCount:(int64_t)count
{
  if (sizeThatFitsCount__onceToken != -1)
  {
    +[ICDocCamThumbnailBadgeDecorationView sizeThatFitsCount:];
  }

  v5 = [self localizedStringForCount:count];
  badgeLabel = [sizeThatFitsCount__metricsView badgeLabel];
  [badgeLabel setText:v5];

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

- (ICDocCamThumbnailBadgeDecorationView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = ICDocCamThumbnailBadgeDecorationView;
  v3 = [(ICDocCamThumbnailBadgeDecorationView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    badgeLabel = v3->_badgeLabel;
    v3->_badgeLabel = v4;

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v3->_badgeLabel setTextColor:whiteColor];

    [(UILabel *)v3->_badgeLabel setTextAlignment:1];
    [(UILabel *)v3->_badgeLabel setClipsToBounds:1];
    tintColor = [(ICDocCamThumbnailBadgeDecorationView *)v3 tintColor];
    [(UILabel *)v3->_badgeLabel setBackgroundColor:tintColor];
  }

  return v3;
}

- (void)applyLayoutAttributes:(id)attributes
{
  v9.receiver = self;
  v9.super_class = ICDocCamThumbnailBadgeDecorationView;
  attributesCopy = attributes;
  [(ICDocCamThumbnailBadgeDecorationView *)&v9 applyLayoutAttributes:attributesCopy];
  v5 = objc_opt_class();
  indexPath = [attributesCopy indexPath];

  v7 = [v5 localizedStringForCount:{objc_msgSend(indexPath, "item") + 1}];
  badgeLabel = [(ICDocCamThumbnailBadgeDecorationView *)self badgeLabel];
  [badgeLabel setText:v7];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  v6.receiver = self;
  v6.super_class = ICDocCamThumbnailBadgeDecorationView;
  v4 = [(ICDocCamThumbnailBadgeDecorationView *)&v6 preferredLayoutAttributesFittingAttributes:attributes];
  [(ICDocCamThumbnailBadgeDecorationView *)self sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  [v4 setSize:?];

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [(ICDocCamThumbnailBadgeDecorationView *)self badgeLabel:fits.width];
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
  badgeLabel = [(ICDocCamThumbnailBadgeDecorationView *)self badgeLabel];
  superview = [badgeLabel superview];

  if (superview != self)
  {
    badgeLabel2 = [(ICDocCamThumbnailBadgeDecorationView *)self badgeLabel];
    [(ICDocCamThumbnailBadgeDecorationView *)self addSubview:badgeLabel2];
  }

  [(ICDocCamThumbnailBadgeDecorationView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  badgeLabel3 = [(ICDocCamThumbnailBadgeDecorationView *)self badgeLabel];
  [badgeLabel3 setFrame:{v7, v9, v11, v13}];

  [(ICDocCamThumbnailBadgeDecorationView *)self bounds];
  Width = CGRectGetWidth(v21);
  [(ICDocCamThumbnailBadgeDecorationView *)self bounds];
  Height = CGRectGetHeight(v22);
  if (Width >= Height)
  {
    Height = Width;
  }

  v17 = ceil(Height * 0.5);
  badgeLabel4 = [(ICDocCamThumbnailBadgeDecorationView *)self badgeLabel];
  layer = [badgeLabel4 layer];
  [layer setCornerRadius:v17];
}

- (void)tintColorDidChange
{
  v5.receiver = self;
  v5.super_class = ICDocCamThumbnailBadgeDecorationView;
  [(ICDocCamThumbnailBadgeDecorationView *)&v5 tintColorDidChange];
  tintColor = [(ICDocCamThumbnailBadgeDecorationView *)self tintColor];
  badgeLabel = [(ICDocCamThumbnailBadgeDecorationView *)self badgeLabel];
  [badgeLabel setBackgroundColor:tintColor];
}

@end