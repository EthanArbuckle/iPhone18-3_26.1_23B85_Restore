@interface CertUIKeyDataCell
- (CertUIKeyDataCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setup;
- (void)_setupConstraints;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation CertUIKeyDataCell

- (CertUIKeyDataCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CertUIKeyDataCell;
  v4 = [(CertUIKeyDataCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CertUIKeyDataCell *)v4 _setup];
  }

  return v5;
}

- (void)_setup
{
  [(CertUIKeyDataCell *)self setSelectionStyle:0];
  v3 = objc_alloc(MEMORY[0x277D756B8]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  keyLabel = self->_keyLabel;
  self->_keyLabel = v8;

  v10 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  valueLabel = self->_valueLabel;
  self->_valueLabel = v10;

  v12 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  v13 = self->_keyLabel;
  self->_keyLabel = v12;

  [(UILabel *)self->_keyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_keyLabel setTextAlignment:0];
  v14 = *MEMORY[0x277D76918];
  v15 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UILabel *)self->_keyLabel setFont:v15];

  [(UILabel *)self->_keyLabel setNumberOfLines:0];
  contentView = [(CertUIKeyDataCell *)self contentView];
  [contentView addSubview:self->_keyLabel];

  v17 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
  v18 = self->_valueLabel;
  self->_valueLabel = v17;

  [(UILabel *)self->_valueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_valueLabel setTextAlignment:2];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [(UILabel *)self->_valueLabel setTextColor:systemGrayColor];

  v20 = [MEMORY[0x277D74300] preferredFontForTextStyle:v14];
  [(UILabel *)self->_valueLabel setFont:v20];

  [(UILabel *)self->_valueLabel setNumberOfLines:0];
  contentView2 = [(CertUIKeyDataCell *)self contentView];
  [contentView2 addSubview:self->_valueLabel];

  [(CertUIKeyDataCell *)self _setupConstraints];
}

- (void)setValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  keyLabel = [(CertUIKeyDataCell *)self keyLabel];
  [keyLabel setText:keyCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    valueLabel4 = [valueCopy componentsJoinedByString:@"\n"];
    valueLabel = [(CertUIKeyDataCell *)self valueLabel];
    [valueLabel setText:valueLabel4];

    valueLabel2 = [(CertUIKeyDataCell *)self valueLabel];
    [valueLabel2 setTextAlignment:0];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    certUIHexString = [valueCopy CertUIHexString];
    valueLabel3 = [(CertUIKeyDataCell *)self valueLabel];
    [valueLabel3 setText:certUIHexString];

    valueLabel4 = [(CertUIKeyDataCell *)self valueLabel];
    [valueLabel4 setTextAlignment:0];
  }

LABEL_6:
  [(CertUIKeyDataCell *)self updateConstraintsIfNeeded];
}

- (void)_setupConstraints
{
  constraints = [(CertUIKeyDataCell *)self constraints];

  if (constraints)
  {
    contentView = [(CertUIKeyDataCell *)self contentView];
    constraints2 = [(CertUIKeyDataCell *)self constraints];
    [contentView removeConstraints:constraints2];

    [(CertUIKeyDataCell *)self setConstraints:0];
  }

  v31 = objc_opt_new();
  v6 = MEMORY[0x277CCAAD0];
  keyLabel = self->_keyLabel;
  contentView2 = [(CertUIKeyDataCell *)self contentView];
  v9 = [v6 constraintWithItem:keyLabel attribute:3 relatedBy:0 toItem:contentView2 attribute:3 multiplier:1.0 constant:10.0];
  [v31 addObject:v9];

  v10 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_valueLabel attribute:3 relatedBy:0 toItem:self->_keyLabel attribute:4 multiplier:1.0 constant:10.0];
  [v31 addObject:v10];

  v11 = MEMORY[0x277CCAAD0];
  v12 = self->_keyLabel;
  contentView3 = [(CertUIKeyDataCell *)self contentView];
  v14 = [v11 constraintWithItem:v12 attribute:5 relatedBy:0 toItem:contentView3 attribute:5 multiplier:1.0 constant:10.0];
  [v31 addObject:v14];

  v15 = MEMORY[0x277CCAAD0];
  valueLabel = self->_valueLabel;
  contentView4 = [(CertUIKeyDataCell *)self contentView];
  v18 = [v15 constraintWithItem:valueLabel attribute:5 relatedBy:0 toItem:contentView4 attribute:5 multiplier:1.0 constant:10.0];
  [v31 addObject:v18];

  v19 = MEMORY[0x277CCAAD0];
  v20 = self->_keyLabel;
  contentView5 = [(CertUIKeyDataCell *)self contentView];
  v22 = [v19 constraintWithItem:v20 attribute:6 relatedBy:0 toItem:contentView5 attribute:6 multiplier:1.0 constant:-10.0];
  [v31 addObject:v22];

  v23 = MEMORY[0x277CCAAD0];
  v24 = self->_valueLabel;
  contentView6 = [(CertUIKeyDataCell *)self contentView];
  v26 = [v23 constraintWithItem:v24 attribute:6 relatedBy:0 toItem:contentView6 attribute:6 multiplier:1.0 constant:-10.0];
  [v31 addObject:v26];

  v27 = MEMORY[0x277CCAAD0];
  contentView7 = [(CertUIKeyDataCell *)self contentView];
  v29 = [v27 constraintWithItem:contentView7 attribute:4 relatedBy:0 toItem:self->_valueLabel attribute:4 multiplier:1.0 constant:10.0];
  [v31 addObject:v29];

  [(CertUIKeyDataCell *)self setConstraints:v31];
  contentView8 = [(CertUIKeyDataCell *)self contentView];
  [contentView8 addConstraints:v31];
}

@end