@interface MRUExpandableButtonSubtitleView
- (CGSize)sizeThatFits:(CGSize)fits;
- (MRUExpandableButtonSubtitleView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setText:(id)text;
- (void)updateContentSizeCategory;
- (void)updateVisualStyling;
@end

@implementation MRUExpandableButtonSubtitleView

- (MRUExpandableButtonSubtitleView)initWithFrame:(CGRect)frame
{
  v20[1] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = MRUExpandableButtonSubtitleView;
  v3 = [(MRUExpandableButtonSubtitleView *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v5;

    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    [(UILabel *)v3->_titleLabel setNumberOfLines:2];
    LODWORD(v7) = 1051931443;
    [(UILabel *)v3->_titleLabel _setHyphenationFactor:v7];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v3->_titleLabel setTextColor:labelColor];

    [(MRUExpandableButtonSubtitleView *)v3 addSubview:v3->_titleLabel];
    v9 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v10 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"chevron.up.chevron.down"];
    v11 = [v9 initWithImage:v10];
    imageView = v3->_imageView;
    v3->_imageView = v11;

    [(MRUExpandableButtonSubtitleView *)v3 addSubview:v3->_imageView];
    v20[0] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v14 = [(MRUExpandableButtonSubtitleView *)v3 registerForTraitChanges:v13 withAction:sel_updateVisualStyling];

    v19 = objc_opt_class();
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    v16 = [(MRUExpandableButtonSubtitleView *)v3 registerForTraitChanges:v15 withAction:sel_updateContentSizeCategory];

    [(MRUExpandableButtonSubtitleView *)v3 updateContentSizeCategory];
  }

  return v3;
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = MRUExpandableButtonSubtitleView;
  [(MRUExpandableButtonSubtitleView *)&v21 layoutSubviews];
  [(MRUExpandableButtonSubtitleView *)self bounds];
  [(UIImageView *)self->_imageView sizeThatFits:v3, v4];
  UIRectInset();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UILabel *)self->_titleLabel sizeThatFits:v9, v11];
  v22.origin.x = v6;
  v22.origin.y = v8;
  v22.size.width = v10;
  v22.size.height = v12;
  CGRectGetMinY(v22);
  UIRectCenteredXInRect();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(UILabel *)self->_titleLabel setFrame:?];
  v23.origin.x = v14;
  v23.origin.y = v16;
  v23.size.width = v18;
  v23.size.height = v20;
  CGRectGetMaxX(v23);
  UIRectCenteredYInRect();
  [(MRUExpandableButtonSubtitleView *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  [(UIImageView *)self->_imageView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(UIImageView *)self->_imageView sizeThatFits:?];
  v7 = v6;
  [(UILabel *)self->_titleLabel sizeThatFits:width, height];
  if (v7 >= v8)
  {
    v8 = v7;
  }

  v9 = width;
  result.height = v8;
  result.width = v9;
  return result;
}

- (void)setText:(id)text
{
  objc_storeStrong(&self->_text, text);
  textCopy = text;
  [(UILabel *)self->_titleLabel setText:textCopy];

  [(MRUExpandableButtonSubtitleView *)self setNeedsLayout];
}

- (void)updateVisualStyling
{
  stylingProvider = self->_stylingProvider;
  titleLabel = self->_titleLabel;
  traitCollection = [(MRUExpandableButtonSubtitleView *)self traitCollection];
  [(MRUVisualStylingProvider *)stylingProvider applyStyle:0 toView:titleLabel traitCollection:traitCollection];

  v6 = self->_stylingProvider;
  imageView = self->_imageView;
  traitCollection2 = [(MRUExpandableButtonSubtitleView *)self traitCollection];
  [(MRUVisualStylingProvider *)v6 applyStyle:0 toView:imageView traitCollection:traitCollection2];
}

- (void)updateContentSizeCategory
{
  mru_volumeButtonSubtitleFont = [MEMORY[0x1E69DB878] mru_volumeButtonSubtitleFont];
  [(UILabel *)self->_titleLabel setFont:mru_volumeButtonSubtitleFont];
  v3 = [MEMORY[0x1E69DCAD8] configurationWithFont:mru_volumeButtonSubtitleFont];
  [(UIImageView *)self->_imageView setSymbolConfiguration:v3];

  [(MRUExpandableButtonSubtitleView *)self setNeedsLayout];
}

@end