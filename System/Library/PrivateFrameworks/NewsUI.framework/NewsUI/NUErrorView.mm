@interface NUErrorView
- (NUErrorView)initWithErrorMessage:(id)message;
- (NUTrait)labelMaxWidthTrait;
- (id)accessibilityLabel;
- (id)attributedStringForErrorMessage:(id)message;
- (void)errorMessage:(id)message;
- (void)layoutSubviews;
@end

@implementation NUErrorView

- (NUErrorView)initWithErrorMessage:(id)message
{
  messageCopy = message;
  v17.receiver = self;
  v17.super_class = NUErrorView;
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  v8 = *(MEMORY[0x277CBF3A0] + 16);
  v9 = *(MEMORY[0x277CBF3A0] + 24);
  v10 = [(NUErrorView *)&v17 initWithFrame:*MEMORY[0x277CBF3A0], v7, v8, v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_errorMessage, message);
    v11->_verticalAlignment = 0;
    v11->_textAlignment = 1;
    v12 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v6, v7, v8, v9}];
    label = v11->_label;
    v11->_label = v12;

    v14 = [MEMORY[0x277D75348] colorWithRed:0.490196078 green:0.498039216 blue:0.498039216 alpha:1.0];
    [(UILabel *)v11->_label setTextColor:v14];

    [(UILabel *)v11->_label setNumberOfLines:0];
    [(UILabel *)v11->_label setAutoresizingMask:2];
    v15 = [(NUErrorView *)v11 attributedStringForErrorMessage:messageCopy];
    [(UILabel *)v11->_label setAttributedText:v15];

    [(NUErrorView *)v11 addSubview:v11->_label];
    [(UILabel *)v11->_label sizeToFit];
  }

  return v11;
}

- (void)layoutSubviews
{
  v32.receiver = self;
  v32.super_class = NUErrorView;
  [(NUErrorView *)&v32 layoutSubviews];
  labelMaxWidthTrait = [(NUErrorView *)self labelMaxWidthTrait];
  traitCollection = [(NUErrorView *)self traitCollection];
  [(NUErrorView *)self bounds];
  [labelMaxWidthTrait valueForTraitCollection:traitCollection size:{v5, v6}];
  v8 = v7;
  label = [(NUErrorView *)self label];
  [label setPreferredMaxLayoutWidth:v8];

  label2 = [(NUErrorView *)self label];
  [label2 frame];
  v12 = v11;

  label3 = [(NUErrorView *)self label];
  [label3 preferredMaxLayoutWidth];
  v15 = v14;

  label4 = [(NUErrorView *)self label];
  [label4 intrinsicContentSize];
  v18 = v17;

  [(NUErrorView *)self bounds];
  v20 = v19;
  label5 = [(NUErrorView *)self label];
  [label5 preferredMaxLayoutWidth];
  v23 = v22;

  verticalAlignment = [(NUErrorView *)self verticalAlignment];
  if (verticalAlignment)
  {
    if (verticalAlignment == 1)
    {
      [(NUErrorView *)self center];
      v12 = v25 + v18 * -0.5;
    }
  }

  else
  {
    [(NUErrorView *)self bounds];
    v12 = v26 / 3.0 + v18 * -0.5;
  }

  v33.origin.x = (v20 - v23) * 0.5;
  v33.origin.y = v12;
  v33.size.width = v15;
  v33.size.height = v18;
  v34 = CGRectIntegral(v33);
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  label6 = [(NUErrorView *)self label];
  [label6 setFrame:{x, y, width, height}];
}

- (void)errorMessage:(id)message
{
  messageCopy = message;
  errorMessage = self->_errorMessage;
  v9 = messageCopy;
  if (!errorMessage || ![(NUErrorMessage *)errorMessage isEqual:messageCopy])
  {
    v6 = [(NUErrorView *)self attributedStringForErrorMessage:v9];
    label = [(NUErrorView *)self label];
    [label setAttributedText:v6];

    label2 = [(NUErrorView *)self label];
    [label2 sizeToFit];

    [(NUErrorView *)self setNeedsLayout];
    [(NUErrorView *)self layoutIfNeeded];
  }

  MEMORY[0x2821F96F8]();
}

- (id)accessibilityLabel
{
  label = [(NUErrorView *)self label];
  text = [label text];

  return text;
}

- (id)attributedStringForErrorMessage:(id)message
{
  messageCopy = message;
  title = [messageCopy title];
  subtitle = [messageCopy subtitle];

  v7 = &stru_286E03B58;
  if (title && subtitle)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%@", title, subtitle];
    v9 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v8];
    v10 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    v12 = *MEMORY[0x277D740A8];
    [v9 addAttribute:*MEMORY[0x277D740A8] value:v10 range:{0, objc_msgSend(title, "length")}];
    [v9 addAttribute:v12 value:v11 range:{objc_msgSend(title, "length"), objc_msgSend(subtitle, "length")}];
    v13 = objc_alloc_init(MEMORY[0x277D74240]);
    [v13 setLineSpacing:2.0];
    [v13 setAlignment:{-[NUErrorView textAlignment](self, "textAlignment")}];
    [v9 addAttribute:*MEMORY[0x277D74118] value:v13 range:{0, objc_msgSend(v9, "length")}];
    v7 = [v9 copy];
  }

  return v7;
}

- (NUTrait)labelMaxWidthTrait
{
  labelMaxWidthTrait = self->_labelMaxWidthTrait;
  if (!labelMaxWidthTrait)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc_init(NUTrait);
    v5 = [(NUTrait *)v4 when:3 block:&__block_literal_global_18];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __33__NUErrorView_labelMaxWidthTrait__block_invoke_2;
    v9[3] = &unk_2799A30F8;
    objc_copyWeak(&v10, &location);
    v6 = [v5 when:12 block:v9];
    v7 = self->_labelMaxWidthTrait;
    self->_labelMaxWidthTrait = v6;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
    labelMaxWidthTrait = self->_labelMaxWidthTrait;
  }

  return labelMaxWidthTrait;
}

double __33__NUErrorView_labelMaxWidthTrait__block_invoke(double a1, uint64_t a2, void *a3)
{
  v4 = [a3 isLandscape];
  v5 = 0.7;
  if (!v4)
  {
    v5 = 0.75;
  }

  return a1 * v5;
}

double __33__NUErrorView_labelMaxWidthTrait__block_invoke_2(uint64_t a1, void *a2, double a3)
{
  if ([a2 isLandscape])
  {
    if (a3 > 540.0)
    {
      v5 = 0.4;
      goto LABEL_7;
    }

LABEL_5:
    v6 = 0.7;
    return a3 * v6;
  }

  if (a3 < 768.0)
  {
    goto LABEL_5;
  }

  v5 = 0.3;
LABEL_7:
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained textAlignment];

  v6 = 0.7;
  if (v8)
  {
    v6 = v5;
  }

  return a3 * v6;
}

@end