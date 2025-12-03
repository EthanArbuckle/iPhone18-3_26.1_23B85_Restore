@interface GKComposeHeaderField
- (CGRect)valueFrame;
- (GKComposeHeaderField)initWithFrame:(CGRect)frame;
- (id)valueText;
- (void)setMaxLineCount:(unint64_t)count;
- (void)setValueText:(id)text;
@end

@implementation GKComposeHeaderField

- (GKComposeHeaderField)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = GKComposeHeaderField;
  v3 = [(GKBaseComposeHeaderField *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
  valueLabel = [(GKComposeHeaderField *)self valueLabel];
  attributedText = [valueLabel attributedText];
  string = [attributedText string];

  return string;
}

- (void)setValueText:(id)text
{
  textCopy = text;
  if (textCopy)
  {
    v5 = textCopy;
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v15 = [v5 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  }

  else
  {
    v15 = &stru_28612D290;
  }

  textStyle = [MEMORY[0x277D0C8B0] textStyle];
  composeFields = [textStyle composeFields];
  emphasized = [composeFields emphasized];

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  LODWORD(composeFields) = [mEMORY[0x277D75128] userInterfaceLayoutDirection] == 1;

  v11 = [emphasized alignment:2 * composeFields lineBreakMode:4];

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

- (void)setMaxLineCount:(unint64_t)count
{
  if ([(GKBaseComposeHeaderField *)self maxLineCount]!= count)
  {
    v5.receiver = self;
    v5.super_class = GKComposeHeaderField;
    [(GKBaseComposeHeaderField *)&v5 setMaxLineCount:count];
    [(GKLabel *)self->_valueLabel setNumberOfLines:count];
  }
}

- (CGRect)valueFrame
{
  superview = [(GKComposeHeaderField *)self superview];
  [superview layoutIfNeeded];

  valueLabel = self->_valueLabel;

  [(GKLabel *)valueLabel frame];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

@end