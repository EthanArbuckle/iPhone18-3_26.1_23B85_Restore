@interface GKComposeHeaderField
- (CGRect)valueFrame;
- (GKComposeHeaderField)initWithFrame:(CGRect)a3;
- (id)valueText;
- (void)setMaxLineCount:(unint64_t)a3;
- (void)setValueText:(id)a3;
@end

@implementation GKComposeHeaderField

- (GKComposeHeaderField)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = GKComposeHeaderField;
  v3 = [(GKBaseComposeHeaderField *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(GKLabel);
    valueLabel = v3->_valueLabel;
    v3->_valueLabel = v4;

    [(GKLabel *)v3->_valueLabel setOpaque:0];
    [(GKLabel *)v3->_valueLabel setBackgroundColor:0];
    [(GKLabel *)v3->_valueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKLabel *)v3->_valueLabel setUserInteractionEnabled:0];
    LODWORD(v6) = 1120403456;
    [(GKLabel *)v3->_valueLabel setContentCompressionResistancePriority:0 forAxis:v6];
    LODWORD(v7) = 1144750080;
    [(GKLabel *)v3->_valueLabel setContentCompressionResistancePriority:1 forAxis:v7];
    [(GKComposeHeaderField *)v3 addSubview:v3->_valueLabel];
    [(GKBaseComposeHeaderField *)v3 addConstraintsForValueView:v3->_valueLabel];
  }

  return v3;
}

- (id)valueText
{
  v2 = [(GKComposeHeaderField *)self valueLabel];
  v3 = [v2 attributedText];
  v4 = [v3 string];

  return v4;
}

- (void)setValueText:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v15 = [v5 stringByTrimmingCharactersInSet:v6];
  }

  else
  {
    v15 = &stru_28612D290;
  }

  v7 = [MEMORY[0x277D0C8B0] textStyle];
  v8 = [v7 composeFields];
  v9 = [v8 emphasized];

  v10 = [MEMORY[0x277D75128] sharedApplication];
  LODWORD(v8) = [v10 userInterfaceLayoutDirection] == 1;

  v11 = [v9 alignment:2 * v8 lineBreakMode:4];

  v12 = [(__CFString *)v15 _gkAttributedStringByApplyingStyle:v11];
  v13 = [v12 length];
  valueLabel = self->_valueLabel;
  if (v13)
  {
    [(GKLabel *)valueLabel setAttributedText:v12];
  }

  else
  {
    [(GKLabel *)valueLabel setText:0];
  }

  [(GKComposeHeaderField *)self invalidateIntrinsicContentSize];
}

- (void)setMaxLineCount:(unint64_t)a3
{
  if ([(GKBaseComposeHeaderField *)self maxLineCount]!= a3)
  {
    v5.receiver = self;
    v5.super_class = GKComposeHeaderField;
    [(GKBaseComposeHeaderField *)&v5 setMaxLineCount:a3];
    [(GKLabel *)self->_valueLabel setNumberOfLines:a3];
  }
}

- (CGRect)valueFrame
{
  v3 = [(GKComposeHeaderField *)self superview];
  [v3 layoutIfNeeded];

  valueLabel = self->_valueLabel;

  [(GKLabel *)valueLabel frame];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

@end