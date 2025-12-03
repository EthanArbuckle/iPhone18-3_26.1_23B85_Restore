@interface FULabel
- (NSLayoutConstraint)associatedLabelConstraint;
- (void)awakeFromNib;
- (void)performTap:(id)tap;
- (void)setAssociatedScalingLabel:(id)label;
- (void)setAttributedText:(id)text;
- (void)setText:(id)text;
- (void)setUppercase:(BOOL)uppercase usingCurrentLocale:(BOOL)locale;
- (void)updateWidthConstraintWithRatio:(double)ratio;
@end

@implementation FULabel

- (void)setUppercase:(BOOL)uppercase usingCurrentLocale:(BOOL)locale
{
  if (self->_uppercase != uppercase || self->_useCurrentLocale != locale)
  {
    self->_uppercase = uppercase;
    self->_useCurrentLocale = locale;
    if (self->_stringValue)
    {
      [(FULabel *)self setText:?];
    }

    if (self->_attributedStringValue)
    {

      [(FULabel *)self setAttributedText:?];
    }
  }
}

- (void)awakeFromNib
{
  v4.receiver = self;
  v4.super_class = FULabel;
  [(FULabel *)&v4 awakeFromNib];
  [(FULabel *)self setUserInteractionEnabled:1];
  v3 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_performTap_];
  [(FULabel *)self addGestureRecognizer:v3];
}

- (void)performTap:(id)tap
{
  if ([tap state] == 3)
  {
    onTap = [(FULabel *)self onTap];

    if (onTap)
    {
      onTap2 = [(FULabel *)self onTap];
      onTap2[2]();
    }
  }
}

- (void)setAssociatedScalingLabel:(id)label
{
  obj = label;
  WeakRetained = objc_loadWeakRetained(&self->_associatedScalingLabel);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_associatedScalingLabel, obj);
    [(FULabel *)self setAdjustsFontSizeToFitWidth:1];
    [obj setAdjustsFontSizeToFitWidth:1];
  }
}

- (void)updateWidthConstraintWithRatio:(double)ratio
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedScalingLabel);
  associatedLabelConstraint = [WeakRetained associatedLabelConstraint];
  [associatedLabelConstraint setActive:0];

  [WeakRetained setAssociatedLabelConstraint:0];
  associatedLabelConstraint2 = [(FULabel *)self associatedLabelConstraint];
  [associatedLabelConstraint2 setActive:0];

  text = [WeakRetained text];
  if ([text length])
  {
    text2 = [(FULabel *)self text];
    v9 = [text2 length];

    if (v9)
    {
      v10 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:7 relatedBy:0 toItem:WeakRetained attribute:7 multiplier:ratio constant:0.0];
      [v10 setActive:1];
      [(FULabel *)self setAssociatedLabelConstraint:v10];

      goto LABEL_6;
    }
  }

  else
  {
  }

  [(FULabel *)self setAssociatedLabelConstraint:0];
LABEL_6:
}

- (void)setText:(id)text
{
  textCopy = text;
  v5 = textCopy;
  if (textCopy)
  {
    v6 = textCopy;
  }

  else
  {
    v6 = &stru_285EA8C70;
  }

  objc_storeStrong(&self->_stringValue, v6);
  uppercase = [(FULabel *)self uppercase];
  stringValue = self->_stringValue;
  if (uppercase)
  {
    v9 = [(NSString *)stringValue FU_uppercaseStringUsingCurrentLocale:[(FULabel *)self useCurrentLocale]];
  }

  else
  {
    v9 = stringValue;
  }

  v10 = v9;
  WeakRetained = objc_loadWeakRetained(&self->_associatedScalingLabel);
  text = [(FULabel *)WeakRetained text];

  if (text)
  {
    _defaultAttributes = [(FULabel *)self _defaultAttributes];
    [(NSString *)v10 sizeWithAttributes:_defaultAttributes];
    v15 = v14;

    text2 = [(FULabel *)WeakRetained text];
    _defaultAttributes2 = [(FULabel *)self _defaultAttributes];
    [text2 sizeWithAttributes:_defaultAttributes2];
    v19 = v18;

    if (v19 <= 0.0 || v15 <= 0.0)
    {
      v21 = 1.0;
    }

    else
    {
      v21 = v15 / v19;
    }

    associatedLabelConstraint = [(FULabel *)WeakRetained associatedLabelConstraint];

    if (!associatedLabelConstraint)
    {
      selfCopy = self;
      v23 = v21;
      goto LABEL_19;
    }

    v23 = 1.0 / v21;
  }

  else
  {
    v23 = 0.0;
  }

  selfCopy = WeakRetained;
LABEL_19:
  [(FULabel *)selfCopy updateWidthConstraintWithRatio:v23];
  v25.receiver = self;
  v25.super_class = FULabel;
  [(TLKLabel *)&v25 setText:v10];
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  v5 = textCopy;
  if (!textCopy)
  {
    v5 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:&stru_285EA8C70];
  }

  objc_storeStrong(&self->_attributedStringValue, v5);
  if (!textCopy)
  {
  }

  uppercase = [(FULabel *)self uppercase];
  attributedStringValue = self->_attributedStringValue;
  if (uppercase)
  {
    v8 = [(NSAttributedString *)attributedStringValue FU_uppercaseAttributedStringCurrentLocale:[(FULabel *)self useCurrentLocale]];
  }

  else
  {
    v8 = attributedStringValue;
  }

  v9 = v8;
  v25.receiver = self;
  v25.super_class = FULabel;
  [(TLKLabel *)&v25 setAttributedText:v8];
  WeakRetained = objc_loadWeakRetained(&self->_associatedScalingLabel);
  text = [(FULabel *)WeakRetained text];

  if (text)
  {
    string = [(NSAttributedString *)v9 string];
    _defaultAttributes = [(FULabel *)self _defaultAttributes];
    [string sizeWithAttributes:_defaultAttributes];
    v15 = v14;

    text2 = [(FULabel *)WeakRetained text];
    _defaultAttributes2 = [(FULabel *)self _defaultAttributes];
    [text2 sizeWithAttributes:_defaultAttributes2];
    v19 = v18;

    if (v19 <= 0.0 || v15 <= 0.0)
    {
      v21 = 1.0;
    }

    else
    {
      v21 = v15 / v19;
    }

    associatedLabelConstraint = [(FULabel *)WeakRetained associatedLabelConstraint];

    if (!associatedLabelConstraint)
    {
      selfCopy = self;
      v23 = v21;
      goto LABEL_20;
    }

    v23 = 1.0 / v21;
  }

  else
  {
    v23 = 0.0;
  }

  selfCopy = WeakRetained;
LABEL_20:
  [(FULabel *)selfCopy updateWidthConstraintWithRatio:v23];
}

- (NSLayoutConstraint)associatedLabelConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedLabelConstraint);

  return WeakRetained;
}

@end