@interface GKBaseComposeHeaderField
- (CGRect)valueFrame;
- (GKBaseComposeHeaderField)initWithFrame:(CGRect)a3;
- (NSString)nameText;
- (SEL)actionWhenTouched;
- (void)addConstraintsForValueView:(id)a3;
- (void)setActionWhenTouched:(SEL)a3;
- (void)setNameText:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation GKBaseComposeHeaderField

- (GKBaseComposeHeaderField)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = GKBaseComposeHeaderField;
  v3 = [(GKBaseComposeHeaderField *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(GKBaseComposeHeaderField *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4->_maxLineCount = 1;
    [(GKBaseComposeHeaderField *)v4 setUserInteractionEnabled:1];
    v5 = objc_alloc_init(GKLabel);
    nameLabel = v4->_nameLabel;
    v4->_nameLabel = v5;

    [(GKLabel *)v4->_nameLabel setOpaque:0];
    [(GKLabel *)v4->_nameLabel setBackgroundColor:0];
    [(GKLabel *)v4->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKLabel *)v4->_nameLabel setUserInteractionEnabled:0];
    LODWORD(v7) = 1144750080;
    [(GKLabel *)v4->_nameLabel setContentHuggingPriority:0 forAxis:v7];
    LODWORD(v8) = 1148846080;
    [(GKLabel *)v4->_nameLabel setContentCompressionResistancePriority:0 forAxis:v8];
    v9 = [GKHairlineView hairlineViewForAlignment:0];
    separatorView = v4->_separatorView;
    v4->_separatorView = v9;

    [(GKHairlineView *)v4->_separatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKBaseComposeHeaderField *)v4 addSubview:v4->_nameLabel];
    [(GKBaseComposeHeaderField *)v4 addSubview:v4->_separatorView];
    v11 = [MEMORY[0x277CCAAD0] constraintWithItem:v4->_nameLabel attribute:5 relatedBy:0 toItem:v4 attribute:5 multiplier:1.0 constant:0.0];
    v12 = [MEMORY[0x277CCAAD0] constraintWithItem:v4->_nameLabel attribute:12 relatedBy:0 toItem:v4 attribute:3 multiplier:1.0 constant:27.0];
    v13 = [MEMORY[0x277CCAAD0] constraintWithItem:v4->_separatorView attribute:4 relatedBy:0 toItem:v4 attribute:4 multiplier:1.0 constant:0.0];
    v14 = [MEMORY[0x277CCAAD0] constraintWithItem:v4->_separatorView attribute:1 relatedBy:0 toItem:v4 attribute:1 multiplier:1.0 constant:0.0];
    v15 = [MEMORY[0x277CCAAD0] constraintWithItem:v4->_separatorView attribute:2 relatedBy:0 toItem:v4 attribute:2 multiplier:1.0 constant:0.0];
    [(GKBaseComposeHeaderField *)v4 addConstraint:v11];
    [(GKBaseComposeHeaderField *)v4 addConstraint:v12];
    [(GKBaseComposeHeaderField *)v4 addConstraint:v13];
    [(GKBaseComposeHeaderField *)v4 addConstraint:v14];
    [(GKBaseComposeHeaderField *)v4 addConstraint:v15];
  }

  return v4;
}

- (void)addConstraintsForValueView:(id)a3
{
  v13[5] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAAD0];
  nameLabel = self->_nameLabel;
  v6 = a3;
  v7 = [v4 constraintWithItem:v6 attribute:12 relatedBy:0 toItem:nameLabel attribute:12 multiplier:1.0 constant:0.0];
  v8 = [MEMORY[0x277CCAAD0] constraintWithItem:self attribute:4 relatedBy:0 toItem:v6 attribute:11 multiplier:1.0 constant:16.0];
  v9 = [MEMORY[0x277CCAAD0] constraintWithItem:v6 attribute:5 relatedBy:0 toItem:self->_nameLabel attribute:6 multiplier:1.0 constant:6.0];
  v10 = [MEMORY[0x277CCAAD0] constraintWithItem:v6 attribute:6 relatedBy:0 toItem:self attribute:18 multiplier:1.0 constant:0.0];
  v11 = [MEMORY[0x277CCAAD0] constraintWithItem:v6 attribute:8 relatedBy:1 toItem:self->_nameLabel attribute:8 multiplier:1.0 constant:0.0];

  v13[0] = v7;
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v10;
  v13[4] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:5];
  [(GKBaseComposeHeaderField *)self addConstraints:v12];
}

- (NSString)nameText
{
  v2 = [(GKBaseComposeHeaderField *)self nameLabel];
  v3 = [v2 attributedText];
  v4 = [v3 string];

  return v4;
}

- (void)setNameText:(id)a3
{
  v4 = MEMORY[0x277D0C8B0];
  v5 = a3;
  v6 = [v4 textStyle];
  v7 = [v6 composeFields];

  v11 = [v7 alignment:4 lineBreakMode:4];

  v8 = [v5 _gkAttributedStringByApplyingStyle:v11];

  v9 = [v8 length];
  nameLabel = self->_nameLabel;
  if (v9)
  {
    [(GKLabel *)nameLabel setAttributedText:v8];
  }

  else
  {
    [(GKLabel *)nameLabel setText:0];
  }

  [(GKBaseComposeHeaderField *)self invalidateIntrinsicContentSize];
}

- (CGRect)valueFrame
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (self->_actionWhenTouched)
  {
    v7 = [MEMORY[0x277D75128] sharedApplication];
    v8 = v7;
    if (self->_actionWhenTouched)
    {
      actionWhenTouched = self->_actionWhenTouched;
    }

    else
    {
      actionWhenTouched = 0;
    }

    [v7 _gkSendAction:actionWhenTouched viaResponder:self withObject:self];
  }
}

- (SEL)actionWhenTouched
{
  if (self->_actionWhenTouched)
  {
    return self->_actionWhenTouched;
  }

  else
  {
    return 0;
  }
}

- (void)setActionWhenTouched:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_actionWhenTouched = v3;
}

@end