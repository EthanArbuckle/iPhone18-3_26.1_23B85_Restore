@interface FULabel
- (NSLayoutConstraint)associatedLabelConstraint;
- (void)awakeFromNib;
- (void)performTap:(id)a3;
- (void)setAssociatedScalingLabel:(id)a3;
- (void)setAttributedText:(id)a3;
- (void)setText:(id)a3;
- (void)setUppercase:(BOOL)a3 usingCurrentLocale:(BOOL)a4;
- (void)updateWidthConstraintWithRatio:(double)a3;
@end

@implementation FULabel

- (void)setUppercase:(BOOL)a3 usingCurrentLocale:(BOOL)a4
{
  if (self->_uppercase != a3 || self->_useCurrentLocale != a4)
  {
    self->_uppercase = a3;
    self->_useCurrentLocale = a4;
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

- (void)performTap:(id)a3
{
  if ([a3 state] == 3)
  {
    v4 = [(FULabel *)self onTap];

    if (v4)
    {
      v5 = [(FULabel *)self onTap];
      v5[2]();
    }
  }
}

- (void)setAssociatedScalingLabel:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_associatedScalingLabel);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_associatedScalingLabel, obj);
    [(FULabel *)self setAdjustsFontSizeToFitWidth:1];
    [obj setAdjustsFontSizeToFitWidth:1];
  }
}

- (void)updateWidthConstraintWithRatio:(double)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedScalingLabel);
  v5 = [WeakRetained associatedLabelConstraint];
  [v5 setActive:0];

  [WeakRetained setAssociatedLabelConstraint:0];
  v6 = [(FULabel *)self associatedLabelConstraint];
  [v6 setActive:0];

  v7 = [WeakRetained text];
  if ([v7 length])
  {
    v8 = [(FULabel *)self text];
    v9 = [v8 length];

    if (v9)
    {
      v10 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:7 relatedBy:0 toItem:WeakRetained attribute:7 multiplier:a3 constant:0.0];
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

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_285EA8C70;
  }

  objc_storeStrong(&self->_stringValue, v6);
  v7 = [(FULabel *)self uppercase];
  stringValue = self->_stringValue;
  if (v7)
  {
    v9 = [(NSString *)stringValue FU_uppercaseStringUsingCurrentLocale:[(FULabel *)self useCurrentLocale]];
  }

  else
  {
    v9 = stringValue;
  }

  v10 = v9;
  WeakRetained = objc_loadWeakRetained(&self->_associatedScalingLabel);
  v12 = [(FULabel *)WeakRetained text];

  if (v12)
  {
    v13 = [(FULabel *)self _defaultAttributes];
    [(NSString *)v10 sizeWithAttributes:v13];
    v15 = v14;

    v16 = [(FULabel *)WeakRetained text];
    v17 = [(FULabel *)self _defaultAttributes];
    [v16 sizeWithAttributes:v17];
    v19 = v18;

    if (v19 <= 0.0 || v15 <= 0.0)
    {
      v21 = 1.0;
    }

    else
    {
      v21 = v15 / v19;
    }

    v22 = [(FULabel *)WeakRetained associatedLabelConstraint];

    if (!v22)
    {
      v24 = self;
      v23 = v21;
      goto LABEL_19;
    }

    v23 = 1.0 / v21;
  }

  else
  {
    v23 = 0.0;
  }

  v24 = WeakRetained;
LABEL_19:
  [(FULabel *)v24 updateWidthConstraintWithRatio:v23];
  v25.receiver = self;
  v25.super_class = FULabel;
  [(TLKLabel *)&v25 setText:v10];
}

- (void)setAttributedText:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:&stru_285EA8C70];
  }

  objc_storeStrong(&self->_attributedStringValue, v5);
  if (!v4)
  {
  }

  v6 = [(FULabel *)self uppercase];
  attributedStringValue = self->_attributedStringValue;
  if (v6)
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
  v11 = [(FULabel *)WeakRetained text];

  if (v11)
  {
    v12 = [(NSAttributedString *)v9 string];
    v13 = [(FULabel *)self _defaultAttributes];
    [v12 sizeWithAttributes:v13];
    v15 = v14;

    v16 = [(FULabel *)WeakRetained text];
    v17 = [(FULabel *)self _defaultAttributes];
    [v16 sizeWithAttributes:v17];
    v19 = v18;

    if (v19 <= 0.0 || v15 <= 0.0)
    {
      v21 = 1.0;
    }

    else
    {
      v21 = v15 / v19;
    }

    v22 = [(FULabel *)WeakRetained associatedLabelConstraint];

    if (!v22)
    {
      v24 = self;
      v23 = v21;
      goto LABEL_20;
    }

    v23 = 1.0 / v21;
  }

  else
  {
    v23 = 0.0;
  }

  v24 = WeakRetained;
LABEL_20:
  [(FULabel *)v24 updateWidthConstraintWithRatio:v23];
}

- (NSLayoutConstraint)associatedLabelConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedLabelConstraint);

  return WeakRetained;
}

@end