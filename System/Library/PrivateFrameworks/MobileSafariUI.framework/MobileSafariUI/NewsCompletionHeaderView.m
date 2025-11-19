@interface NewsCompletionHeaderView
- (NewsCompletionHeaderView)initWithReuseIdentifier:(id)a3;
- (void)layoutSubviews;
@end

@implementation NewsCompletionHeaderView

- (NewsCompletionHeaderView)initWithReuseIdentifier:(id)a3
{
  v17.receiver = self;
  v17.super_class = NewsCompletionHeaderView;
  v3 = [(NewsCompletionHeaderView *)&v17 initWithReuseIdentifier:a3];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D755E8]);
    v5 = [MEMORY[0x277D755B8] imageNamed:@"NewsSearchIcon"];
    v6 = [v4 initWithImage:v5];
    newsImage = v3->_newsImage;
    v3->_newsImage = v6;

    v8 = [(NewsCompletionHeaderView *)v3 contentView];
    [v8 addSubview:v3->_newsImage];

    v9 = objc_alloc_init(MEMORY[0x277D756B8]);
    newsLabel = v3->_newsLabel;
    v3->_newsLabel = v9;

    [(UILabel *)v3->_newsLabel setAdjustsFontForContentSizeCategory:1];
    v11 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v3->_newsLabel setBackgroundColor:v11];

    v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [(UILabel *)v3->_newsLabel setFont:v12];

    v13 = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v3->_newsLabel setTextColor:v13];

    v14 = [(NewsCompletionHeaderView *)v3 contentView];
    [v14 addSubview:v3->_newsLabel];

    v15 = v3;
  }

  return v3;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = NewsCompletionHeaderView;
  [(NewsCompletionHeaderView *)&v13 layoutSubviews];
  [(NewsCompletionHeaderView *)self frame];
  v4 = v3 * 0.5;
  v5 = 19.0;
  v6 = v3 * 0.5 * 1.6 + 19.0;
  v7 = [(NewsCompletionHeaderView *)self _shouldReverseLayoutDirection];
  [(NewsCompletionHeaderView *)self frame];
  v8 = CGRectGetWidth(v14) - v6;
  [(NewsCompletionHeaderView *)self frame];
  Height = CGRectGetHeight(v15);
  newsLabel = self->_newsLabel;
  if (v7)
  {
    [(UILabel *)newsLabel setFrame:0.0, 0.0, v8, Height];
    [(NewsCompletionHeaderView *)self frame];
    v11 = CGRectGetWidth(v16) + -19.0;
    p_newsImage = &self->_newsImage;
    [(UIImageView *)*p_newsImage frame];
    v5 = v11 - CGRectGetWidth(v17);
  }

  else
  {
    [(UILabel *)newsLabel setFrame:v6, 0.0, v8, Height];
    p_newsImage = &self->_newsImage;
  }

  [(UIImageView *)*p_newsImage setFrame:v5, v4 * 0.5, v4, v4];
}

@end