@interface GKMoreExistSectionFooterView
- (GKMoreExistSectionFooterView)initWithFrame:(CGRect)frame;
- (NSString)text;
- (void)setText:(id)text;
@end

@implementation GKMoreExistSectionFooterView

- (GKMoreExistSectionFooterView)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = GKMoreExistSectionFooterView;
  v3 = [(GKMoreExistSectionFooterView *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(GKMoreExistSectionFooterView *)v3 bounds];
    v9 = [[GKLabel alloc] initWithFrame:v5, v6, v7, v8];
    label = v4->_label;
    v4->_label = v9;

    [(GKLabel *)v4->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(GKLabel *)v4->_label setBackgroundColor:0];
    [(GKLabel *)v4->_label setOpaque:0];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v13 = *MEMORY[0x277D0C258] & (*MEMORY[0x277D0C8F0] ^ 1);
    }

    else
    {
      v13 = 1;
    }

    [(GKLabel *)v4->_label setShouldInhibitReplay:v13 & 1];
    v14 = [MEMORY[0x277CCAAD0] constraintWithItem:v4->_label attribute:9 relatedBy:0 toItem:v4 attribute:9 multiplier:1.0 constant:0.0];
    v15 = [MEMORY[0x277CCAAD0] constraintWithItem:v4->_label attribute:10 relatedBy:0 toItem:v4 attribute:10 multiplier:1.0 constant:0.0];
    [(GKMoreExistSectionFooterView *)v4 addConstraint:v14];
    [(GKMoreExistSectionFooterView *)v4 addConstraint:v15];
    [(GKMoreExistSectionFooterView *)v4 addSubview:v4->_label];
  }

  return v4;
}

- (NSString)text
{
  attributedText = [(GKLabel *)self->_label attributedText];
  string = [attributedText string];

  return string;
}

- (void)setText:(id)text
{
  v4 = MEMORY[0x277D0C8B0];
  textCopy = text;
  textStyle = [v4 textStyle];
  tableFooterStyle = [textStyle tableFooterStyle];

  v7 = [textCopy _gkAttributedStringByApplyingStyle:tableFooterStyle];

  [(GKLabel *)self->_label setAttributedText:v7];
}

@end